@interface IDSInvitationManager
- (BOOL)validateReceivedInvitation:(id)invitation;
- (IDSInvitationManager)initWithServiceIdentifier:(id)identifier;
- (IDSInvitationManagerDelegate)delegate;
- (NSSet)pendingInvitations;
- (NSSet)receivedInvitations;
- (id)validateStrictDecodingForSentInvitation:(id)invitation;
- (void)acceptInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)cancelInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)declineInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)removePendingInvitation:(id)invitation;
- (void)removeReceivedInvitation:(id)invitation;
- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date context:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingInvitation:(id)invitation withContext:(id)context;
- (void)service:(id)service account:(id)account incomingInvitationUpdate:(id)update withContext:(id)context;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setupInvitationsForService:(id)service;
@end

@implementation IDSInvitationManager

- (IDSInvitationManager)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IDSInvitationManager;
  v5 = [(IDSInvitationManager *)&v11 init];
  if (v5)
  {
    v6 = +[IDSInternalQueueController sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A3A49C;
    v8[3] = &unk_1E743EA30;
    v9 = v5;
    v10 = identifierCopy;
    [v6 performBlock:v8 waitUntilDone:1];
  }

  return v5;
}

- (NSSet)pendingInvitations
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A3A688;
  v8[3] = &unk_1E743E878;
  v8[4] = self;
  [v3 performBlock:v8 waitUntilDone:1];

  v4 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)self->_pendingInvitations allValues];
  v6 = [v4 setWithArray:allValues];

  return v6;
}

- (NSSet)receivedInvitations
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A3A7E0;
  v8[3] = &unk_1E743E878;
  v8[4] = self;
  [v3 performBlock:v8 waitUntilDone:1];

  v4 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)self->_receivedInvitations allValues];
  v6 = [v4 setWithArray:allValues];

  return v6;
}

- (void)setupInvitationsForService:(id)service
{
  v67 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  selfCopy = self;
  if (!self->_invitationsLoadedFromDisk)
  {
    v5 = +[IDSDaemonController sharedInstance];
    [v5 blockUntilConnected];

    v6 = +[IDSDaemonController sharedInstance];
    listener = [v6 listener];
    v48 = [listener pendingInvitationsForService:serviceCopy];

    v8 = +[IDSDaemonController sharedInstance];
    listener2 = [v8 listener];
    v47 = [listener2 receivedInvitationsForService:serviceCopy];

    v10 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v48 allKeys];
      *buf = 138412290;
      v63 = allKeys;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched pending invitations from daemon: %@", buf, 0xCu);
    }

    v12 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      allKeys2 = [v47 allKeys];
      *buf = 138412290;
      v63 = allKeys2;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched received invitations from daemon: %@", buf, 0xCu);
    }

    v43 = serviceCopy;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [v48 allKeys];
    v14 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      v17 = *MEMORY[0x1E696A508];
      do
      {
        v18 = 0;
        do
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v57 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x1E696ACD0]);
          v21 = [v48 objectForKey:v19];
          v56 = 0;
          v22 = [v20 initForReadingFromData:v21 error:&v56];
          v23 = v56;

          [v22 _enableStrictSecureDecodingMode];
          [v22 setDecodingFailurePolicy:0];
          v24 = objc_opt_class();
          v55 = v23;
          v25 = [v22 decodeTopLevelObjectOfClass:v24 forKey:v17 error:&v55];
          v26 = v55;

          if (v26)
          {
            v27 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v63 = v19;
              v64 = 2112;
              v65 = v26;
              _os_log_error_impl(&dword_1959FF000, v27, OS_LOG_TYPE_ERROR, "setupInvitationsForService: Failed to unarchive pending invitation {%@} with error {%@}", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)selfCopy->_pendingInvitations setObject:v25 forKey:v19];
          }

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v15);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obja = [v47 allKeys];
    v28 = [obja countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v52;
      v31 = *MEMORY[0x1E696A508];
      do
      {
        v32 = 0;
        do
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v51 + 1) + 8 * v32);
          v34 = objc_alloc(MEMORY[0x1E696ACD0]);
          v35 = [v47 objectForKey:v33];
          v50 = 0;
          v36 = [v34 initForReadingFromData:v35 error:&v50];
          v37 = v50;

          [v36 _enableStrictSecureDecodingMode];
          [v36 setDecodingFailurePolicy:0];
          v38 = objc_opt_class();
          v49 = v37;
          v39 = [v36 decodeTopLevelObjectOfClass:v38 forKey:v31 error:&v49];
          v40 = v49;

          if (v40)
          {
            v41 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v63 = v33;
              v64 = 2112;
              v65 = v40;
              _os_log_error_impl(&dword_1959FF000, v41, OS_LOG_TYPE_ERROR, "setupInvitationsForService: Failed to unarchive received invitation {%@} with error {%@}", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)selfCopy->_receivedInvitations setObject:v39 forKey:v33];
          }

          ++v32;
        }

        while (v29 != v32);
        v29 = [obja countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v29);
    }

    selfCopy->_invitationsLoadedFromDisk = 1;
    serviceCopy = v43;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (id)validateStrictDecodingForSentInvitation:(id)invitation
{
  v27[2] = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v25 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v25];
  v5 = v25;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v24 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v24];
    v8 = v24;
    [v7 _enableStrictSecureDecodingMode];
    [v7 setDecodingFailurePolicy:0];
    v9 = objc_opt_class();
    v10 = *MEMORY[0x1E696A508];
    v23 = v8;
    v11 = [v7 decodeTopLevelObjectOfClass:v9 forKey:v10 error:&v23];
    v6 = v23;

    if (!v6)
    {
      v20 = 0;
      invitationCopy = v11;
      goto LABEL_8;
    }

    invitationCopy = v11;
  }

  v12 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_195B29858();
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate strict decoding for invitation"];
  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E696A578];
  v27[0] = v13;
  v16 = *MEMORY[0x1E696AA08];
  v26[0] = v15;
  v26[1] = v16;
  userInfo = [v6 userInfo];
  v18 = [userInfo objectForKey:*MEMORY[0x1E696A278]];
  v27[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v20 = [v14 initWithDomain:@"com.apple.identityservices.error" code:55 userInfo:v19];

LABEL_8:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date context:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v69 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  dateCopy = date;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v15 = [[IDSSentInvitation alloc] initWithDestination:destinationCopy state:1 expirationDate:dateCopy uniqueID:0 context:contextCopy];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_195A006D4;
  v63 = sub_195A03D10;
  v64 = 0;
  v56 = 0;
  v57[0] = &v56;
  v57[1] = 0x3032000000;
  v57[2] = sub_195A006D4;
  v57[3] = sub_195A03D10;
  uniqueID = [(IDSInvitation *)v15 uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v17 = [optionsCopy mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [(IDSInvitation *)v15 uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v20 = IDSGetUUIDData();
  [v17 setValue:v20 forKey:@"IDSSendMessageOptionUUID"];

  [v17 setValue:&unk_1F0A29870 forKey:@"IDSSendMessageOptionCommand"];
  v21 = [(IDSInvitationManager *)self validateStrictDecodingForSentInvitation:v15];
  if (!v21)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = -86;
    v23 = +[IDSInternalQueueController sharedInstance];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_195A3B65C;
    v41[3] = &unk_1E743F7F8;
    v46 = &v56;
    v24 = blockCopy;
    v45 = v24;
    v41[4] = self;
    v47 = &v49;
    v25 = v15;
    v42 = v25;
    v43 = destinationCopy;
    v44 = v17;
    v48 = &v59;
    [v23 performBlock:v41 waitUntilDone:1];

    v26 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v50 + 24))
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = v60[5];
      *buf = 138412546;
      v66 = v27;
      v67 = 2112;
      v68 = v28;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "sendInvitationToDestination: received %@ from IDSService with error {%@}", buf, 0x16u);
    }

    if (*(v50 + 24) == 1)
    {
      pendingInvitations = self->_pendingInvitations;
      uniqueID3 = [(IDSInvitation *)v25 uniqueID];
      uUIDString3 = [uniqueID3 UUIDString];
      [(NSMutableDictionary *)pendingInvitations setObject:v25 forKey:uUIDString3];
    }

    else
    {
      v32 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_195B298C8(v57);
      }

      if (!v24)
      {
        goto LABEL_19;
      }

      delegateQueue = self->_delegateQueue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_195A3B774;
      v38[3] = &unk_1E743F820;
      v39 = v24;
      v40 = &v59;
      dispatch_async(delegateQueue, v38);
      uniqueID3 = v39;
    }

LABEL_19:
    _Block_object_dispose(&v49, 8);
    goto LABEL_20;
  }

  if (blockCopy)
  {
    v22 = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A3B644;
    block[3] = &unk_1E743F110;
    v55 = blockCopy;
    v54 = v21;
    dispatch_async(v22, block);
  }

LABEL_20:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v59, 8);

  v34 = *MEMORY[0x1E69E9840];
}

- (void)cancelInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_195A006D4;
  v52 = sub_195A03D10;
  v53 = 0;
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x3032000000;
  v46[2] = sub_195A006D4;
  v46[3] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A29888 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:3];
  context = contextCopy;
  if (!contextCopy)
  {
    context = [invitationCopy context];
  }

  [invitationCopy setContext:context];
  if (!contextCopy)
  {
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = -86;
  v21 = +[IDSInternalQueueController sharedInstance];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_195A3BC68;
  v34[3] = &unk_1E743F848;
  v38 = &v45;
  v22 = blockCopy;
  v37 = v22;
  v34[4] = self;
  v39 = &v41;
  v23 = invitationCopy;
  v35 = v23;
  v24 = v16;
  v36 = v24;
  v40 = &v48;
  [v21 performBlock:v34 waitUntilDone:1];

  v25 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v42 + 24))
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = v49[5];
    *buf = 138412546;
    v55 = v26;
    v56 = 2112;
    v57 = v27;
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "cancelInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v42[3] & 1) == 0)
  {
    v28 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_195B29938(v46);
    }

    if (v22)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A3BDB0;
      block[3] = &unk_1E743F820;
      v32 = v22;
      v33 = &v48;
      dispatch_async(delegateQueue, block);
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v48, 8);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)acceptInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v62 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_195A006D4;
  v56 = sub_195A03D10;
  v57 = 0;
  v49 = 0;
  v50[0] = &v49;
  v50[1] = 0x3032000000;
  v50[2] = sub_195A006D4;
  v50[3] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298A0 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:4];
  [invitationCopy setContext:contextCopy];
  v20 = MEMORY[0x1E69A5240];
  fromID = [invitationCopy fromID];
  v22 = [v20 destinationWithURI:fromID];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = -86;
  v23 = +[IDSInternalQueueController sharedInstance];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_195A3C2BC;
  v37[3] = &unk_1E743F7F8;
  v42 = &v49;
  v24 = blockCopy;
  v41 = v24;
  v37[4] = self;
  v43 = &v45;
  v25 = invitationCopy;
  v38 = v25;
  v26 = v22;
  v39 = v26;
  v27 = v16;
  v40 = v27;
  v44 = &v52;
  [v23 performBlock:v37 waitUntilDone:1];

  v28 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v46 + 24))
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v30 = v53[5];
    *buf = 138412546;
    v59 = v29;
    v60 = 2112;
    v61 = v30;
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "acceptInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v46[3] & 1) == 0)
  {
    v31 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_195B299A8(v50);
    }

    if (v24)
    {
      delegateQueue = self->_delegateQueue;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_195A3C3DC;
      v34[3] = &unk_1E743F820;
      v35 = v24;
      v36 = &v52;
      dispatch_async(delegateQueue, v34);
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v52, 8);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)declineInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v63 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_195A006D4;
  v57 = sub_195A03D10;
  v58 = 0;
  v50 = 0;
  v51[0] = &v50;
  v51[1] = 0x3032000000;
  v51[2] = sub_195A006D4;
  v51[3] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298B8 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:5];
  context = contextCopy;
  if (!contextCopy)
  {
    context = [invitationCopy context];
  }

  [invitationCopy setContext:context];
  if (!contextCopy)
  {
  }

  v21 = MEMORY[0x1E69A5240];
  fromID = [invitationCopy fromID];
  v23 = [v21 destinationWithURI:fromID];

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = -86;
  v24 = +[IDSInternalQueueController sharedInstance];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_195A3C924;
  v38[3] = &unk_1E743F7F8;
  v43 = &v50;
  v25 = blockCopy;
  v42 = v25;
  v38[4] = self;
  v44 = &v46;
  v26 = invitationCopy;
  v39 = v26;
  v27 = v23;
  v40 = v27;
  v28 = v16;
  v41 = v28;
  v45 = &v53;
  [v24 performBlock:v38 waitUntilDone:1];

  v29 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v47 + 24))
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = v54[5];
    *buf = 138412546;
    v60 = v30;
    v61 = 2112;
    v62 = v31;
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "declineInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v47[3] & 1) == 0)
  {
    v32 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_195B29A18(v51);
    }

    if (v25)
    {
      delegateQueue = self->_delegateQueue;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_195A3CA44;
      v35[3] = &unk_1E743F820;
      v36 = v25;
      v37 = &v53;
      dispatch_async(delegateQueue, v35);
    }
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v53, 8);
  v34 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  if (queueCopy)
  {
    objc_storeStrong(&self->_delegateQueue, queue);
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v9 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A3CB48;
  v10[3] = &unk_1E743E878;
  v10[4] = self;
  [v9 performBlock:v10 waitUntilDone:1];
}

- (BOOL)validateReceivedInvitation:(id)invitation
{
  v36 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v5 = +[IDSInternalQueueController sharedInstance];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_195A3CF4C;
  v31[3] = &unk_1E743E878;
  v31[4] = self;
  [v5 performBlock:v31 waitUntilDone:1];

  if (!invitationCopy)
  {
    v16 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B29D08();
    }

    goto LABEL_27;
  }

  expirationDate = [invitationCopy expirationDate];
  if (expirationDate)
  {
    v7 = expirationDate;
    expirationDate2 = [invitationCopy expirationDate];
    date = [MEMORY[0x1E695DF00] date];
    v10 = [expirationDate2 compare:date];

    if (v10 == -1)
    {
      v16 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_195B29A88(invitationCopy);
      }

      goto LABEL_27;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 32;
  if (isKindOfClass)
  {
    v12 = 24;
  }

  v13 = *(&self->super.isa + v12);
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];
  v16 = [v13 objectForKey:uUIDString];

  if ([invitationCopy state] != 1)
  {
    if (!v16)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29C64(invitationCopy);
      }

      goto LABEL_26;
    }

    if (_os_feature_enabled_impl())
    {
      senderMergeID = [v16 senderMergeID];

      if (senderMergeID)
      {
        senderMergeID2 = [v16 senderMergeID];
        senderMergeID3 = [invitationCopy senderMergeID];
        v20 = [senderMergeID2 isEqualToString:senderMergeID3];

        if ((v20 & 1) == 0)
        {
          v21 = +[IDSLogging IDSService];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_195B29B14(invitationCopy);
          }

LABEL_26:

LABEL_27:
          v28 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v22 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          senderMergeID4 = [v16 senderMergeID];
          senderMergeID5 = [invitationCopy senderMergeID];
          *buf = 138412546;
          v33 = senderMergeID4;
          v34 = 2112;
          v35 = senderMergeID5;
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Validating Invitation: Stored invitation's sender mergeId {%@} is invalid. Could not compare to received invitation's sender mergeId {%@}", buf, 0x16u);
        }
      }
    }

    uniqueID2 = [invitationCopy uniqueID];
    uniqueID3 = [v16 uniqueID];
    v27 = [uniqueID2 isEqual:uniqueID3];

    if ((v27 & 1) == 0)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29BBC(invitationCopy);
      }

      goto LABEL_26;
    }
  }

  v28 = 1;
LABEL_28:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)service:(id)service account:(id)account incomingInvitation:(id)invitation withContext:(id)context
{
  v52 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:invitationCopy])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:0];
    state = [invitationCopy state];
    if (state == 3)
    {
      v30 = +[IDSDaemonController sharedInstance];
      uniqueID = [invitationCopy uniqueID];
      uUIDString = [uniqueID UUIDString];
      v47 = uUIDString;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      accounts = [(IDSService *)self->_internal accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      [v30 removeReceivedInvitation:v33 forService:serviceName];

      receivedInvitations = self->_receivedInvitations;
      uniqueID2 = [invitationCopy uniqueID];
      uUIDString2 = [uniqueID2 UUIDString];
      [(NSMutableDictionary *)receivedInvitations removeObjectForKey:uUIDString2];

      delegate = [(IDSInvitationManager *)self delegate];
      if (!delegate || (v41 = delegate, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D44();
        }

        goto LABEL_19;
      }

      delegate2 = [(IDSInvitationManager *)self delegate];
      [delegate2 manager:self senderDidCancelInvitation:invitationCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [invitationCopy state];
        uniqueID3 = [invitationCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v49 = state2;
        v50 = 2112;
        v51 = uUIDString3;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate senderDidCancelInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (state != 1)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29DBC(invitationCopy);
        }

        goto LABEL_19;
      }

      v11 = +[IDSDaemonController sharedInstance];
      accounts2 = [(IDSService *)self->_internal accounts];
      anyObject2 = [accounts2 anyObject];
      serviceName2 = [anyObject2 serviceName];
      uniqueID4 = [invitationCopy uniqueID];
      uUIDString4 = [uniqueID4 UUIDString];
      [v11 persistReceivedInvitation:v9 forService:serviceName2 withUniqueID:uUIDString4];

      v17 = self->_receivedInvitations;
      uniqueID5 = [invitationCopy uniqueID];
      uUIDString5 = [uniqueID5 UUIDString];
      [(NSMutableDictionary *)v17 setObject:invitationCopy forKey:uUIDString5];

      delegate3 = [(IDSInvitationManager *)self delegate];
      if (!delegate3 || (v21 = delegate3, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D80();
        }

        goto LABEL_19;
      }

      delegate4 = [(IDSInvitationManager *)self delegate];
      [delegate4 manager:self incomingInvitation:invitationCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [invitationCopy state];
        uniqueID3 = [invitationCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v49 = state3;
        v50 = 2112;
        v51 = uUIDString3;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate incomingInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account incomingInvitationUpdate:(id)update withContext:(id)context
{
  v52[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:updateCopy])
  {
    state = [updateCopy state];
    if (state == 5)
    {
      v30 = +[IDSDaemonController sharedInstance];
      uniqueID = [updateCopy uniqueID];
      uUIDString = [uniqueID UUIDString];
      v47 = uUIDString;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      accounts = [(IDSService *)self->_internal accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      [v30 removePendingInvitation:v33 forService:serviceName];

      pendingInvitations = self->_pendingInvitations;
      uniqueID2 = [updateCopy uniqueID];
      uUIDString2 = [uniqueID2 UUIDString];
      [(NSMutableDictionary *)pendingInvitations removeObjectForKey:uUIDString2];

      delegate = [(IDSInvitationManager *)self delegate];
      if (!delegate || (v41 = delegate, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29E6C();
        }

        goto LABEL_19;
      }

      delegate2 = [(IDSInvitationManager *)self delegate];
      [delegate2 manager:self receiverDidDeclineInvitation:updateCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [updateCopy state];
        uniqueID3 = [updateCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v49 = state2;
        v50 = 2112;
        v51 = uUIDString3;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidDeclineInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (state != 4)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EE4(updateCopy);
        }

        goto LABEL_19;
      }

      v10 = +[IDSDaemonController sharedInstance];
      uniqueID4 = [updateCopy uniqueID];
      uUIDString4 = [uniqueID4 UUIDString];
      v52[0] = uUIDString4;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
      accounts2 = [(IDSService *)self->_internal accounts];
      anyObject2 = [accounts2 anyObject];
      serviceName2 = [anyObject2 serviceName];
      [v10 removePendingInvitation:v13 forService:serviceName2];

      v17 = self->_pendingInvitations;
      uniqueID5 = [updateCopy uniqueID];
      uUIDString5 = [uniqueID5 UUIDString];
      [(NSMutableDictionary *)v17 removeObjectForKey:uUIDString5];

      delegate3 = [(IDSInvitationManager *)self delegate];
      if (!delegate3 || (v21 = delegate3, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EA8();
        }

        goto LABEL_19;
      }

      delegate4 = [(IDSInvitationManager *)self delegate];
      [delegate4 manager:self receiverDidAcceptInvitation:updateCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [updateCopy state];
        uniqueID3 = [updateCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v49 = state3;
        v50 = 2112;
        v51 = uUIDString3;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidAcceptInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v90 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v16 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    if (successCopy)
    {
      v17 = @"YES";
    }

    *&buf[14] = v17;
    *&buf[22] = 2112;
    v87 = errorCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Identifier {%@}. didSendWithSuccess {%@} with error %@", buf, 0x20u);
  }

  v18 = [(NSMutableDictionary *)self->_pendingInvitations objectForKey:identifierCopy];
  if (v18 || ([(NSMutableDictionary *)self->_receivedInvitations objectForKey:identifierCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v87 = sub_195A3E220;
    v88 = sub_195A3E24C;
    v89 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = sub_195A3E220;
    v78 = sub_195A3E24C;
    v79 = 0;
    v19 = +[IDSInternalQueueController sharedInstance];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_195A3E254;
    v70[3] = &unk_1E743F870;
    v72 = buf;
    v70[4] = self;
    v58 = identifierCopy;
    v71 = v58;
    v73 = &v74;
    [v19 performBlock:v70 waitUntilDone:1];

    if ([v18 state]== 1)
    {
      if (errorCopy)
      {
        [(NSMutableDictionary *)self->_pendingInvitations removeObjectForKey:v58];
      }

      else
      {
        destinationCorrelationIdentifier = [contextCopy destinationCorrelationIdentifier];
        [v18 setSenderMergeID:destinationCorrelationIdentifier];

        fromID = [contextCopy fromID];
        _stripFZIDPrefix = [fromID _stripFZIDPrefix];
        _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];
        [v18 setSelfHandle:_bestGuessURI];

        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
        v36 = +[IDSDaemonController sharedInstance];
        accounts = [(IDSService *)self->_internal accounts];
        anyObject = [accounts anyObject];
        serviceName = [anyObject serviceName];
        uniqueID = [v18 uniqueID];
        uUIDString = [uniqueID UUIDString];
        [v36 persistPendingInvitation:v35 forService:serviceName withUniqueID:uUIDString];
      }

      if (*(*&buf[8] + 40))
      {
        v42 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          state = [v18 state];
          *v82 = 138412546;
          v83 = v58;
          v84 = 2048;
          v85 = state;
          _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v82, 0x16u);
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A3E2F8;
        block[3] = &unk_1E743EF60;
        v67 = errorCopy;
        v69 = buf;
        v68 = v18;
        dispatch_async(delegateQueue, block);

        v45 = v67;
        goto LABEL_32;
      }

      v45 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v82 = 138412290;
        v83 = v58;
LABEL_31:
        _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: No invitation ack block found with identifier {%@}", v82, 0xCu);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (!errorCopy)
    {
      state2 = [v18 state];
      if ((state2 - 4) >= 2)
      {
        if (state2 != 3)
        {
          goto LABEL_25;
        }

        v46 = +[IDSDaemonController sharedInstance];
        uniqueID2 = [v18 uniqueID];
        uUIDString2 = [uniqueID2 UUIDString];
        v81 = uUIDString2;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
        accounts2 = [(IDSService *)self->_internal accounts];
        anyObject2 = [accounts2 anyObject];
        serviceName2 = [anyObject2 serviceName];
        [v46 removePendingInvitation:v49 forService:serviceName2];

        pendingInvitations = self->_pendingInvitations;
        uniqueID3 = [v18 uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        [(NSMutableDictionary *)pendingInvitations removeObjectForKey:uUIDString3];
      }

      else
      {
        v21 = +[IDSDaemonController sharedInstance];
        uniqueID4 = [v18 uniqueID];
        uUIDString4 = [uniqueID4 UUIDString];
        v80 = uUIDString4;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
        accounts3 = [(IDSService *)self->_internal accounts];
        anyObject3 = [accounts3 anyObject];
        serviceName3 = [anyObject3 serviceName];
        [v21 removeReceivedInvitation:v24 forService:serviceName3];

        receivedInvitations = self->_receivedInvitations;
        uniqueID3 = [v18 uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        [(NSMutableDictionary *)receivedInvitations removeObjectForKey:uUIDString3];
      }
    }

LABEL_25:
    if (v75[5])
    {
      v54 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [v18 state];
        *v82 = 138412546;
        v83 = v58;
        v84 = 2048;
        v85 = state3;
        _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v82, 0x16u);
      }

      v56 = self->_delegateQueue;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_195A3E32C;
      v63[3] = &unk_1E743E670;
      v65 = &v74;
      v64 = errorCopy;
      dispatch_async(v56, v63);
      v45 = v64;
      goto LABEL_32;
    }

    v45 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 138412290;
      v83 = v58;
      goto LABEL_31;
    }

LABEL_32:

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_33;
  }

  v18 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_195B29F94();
  }

LABEL_33:

  v57 = *MEMORY[0x1E69E9840];
}

- (void)removePendingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  accounts = [(IDSService *)self->_internal accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  [v5 removePendingInvitation:invitationCopy forService:serviceName];

  [(NSMutableDictionary *)self->_pendingInvitations removeObjectsForKeys:invitationCopy];
}

- (void)removeReceivedInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  accounts = [(IDSService *)self->_internal accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  [v5 removeReceivedInvitation:invitationCopy forService:serviceName];

  [(NSMutableDictionary *)self->_receivedInvitations removeObjectsForKeys:invitationCopy];
}

- (IDSInvitationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end