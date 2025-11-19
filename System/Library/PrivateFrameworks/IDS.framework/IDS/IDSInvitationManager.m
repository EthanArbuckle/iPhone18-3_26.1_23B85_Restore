@interface IDSInvitationManager
- (BOOL)validateReceivedInvitation:(id)a3;
- (IDSInvitationManager)initWithServiceIdentifier:(id)a3;
- (IDSInvitationManagerDelegate)delegate;
- (NSSet)pendingInvitations;
- (NSSet)receivedInvitations;
- (id)validateStrictDecodingForSentInvitation:(id)a3;
- (void)acceptInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6;
- (void)cancelInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6;
- (void)declineInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6;
- (void)removePendingInvitation:(id)a3;
- (void)removeReceivedInvitation:(id)a3;
- (void)sendInvitationToDestination:(id)a3 expirationDate:(id)a4 context:(id)a5 options:(id)a6 serverAcknowledgedBlock:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingInvitation:(id)a5 withContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingInvitationUpdate:(id)a5 withContext:(id)a6;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setupInvitationsForService:(id)a3;
@end

@implementation IDSInvitationManager

- (IDSInvitationManager)initWithServiceIdentifier:(id)a3
{
  v4 = a3;
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
    v10 = v4;
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
  v5 = [(NSMutableDictionary *)self->_pendingInvitations allValues];
  v6 = [v4 setWithArray:v5];

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
  v5 = [(NSMutableDictionary *)self->_receivedInvitations allValues];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (void)setupInvitationsForService:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = self;
  if (!self->_invitationsLoadedFromDisk)
  {
    v5 = +[IDSDaemonController sharedInstance];
    [v5 blockUntilConnected];

    v6 = +[IDSDaemonController sharedInstance];
    v7 = [v6 listener];
    v48 = [v7 pendingInvitationsForService:v4];

    v8 = +[IDSDaemonController sharedInstance];
    v9 = [v8 listener];
    v47 = [v9 receivedInvitationsForService:v4];

    v10 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v48 allKeys];
      *buf = 138412290;
      v63 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched pending invitations from daemon: %@", buf, 0xCu);
    }

    v12 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v47 allKeys];
      *buf = 138412290;
      v63 = v13;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched received invitations from daemon: %@", buf, 0xCu);
    }

    v43 = v4;

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
            [(NSMutableDictionary *)v46->_pendingInvitations setObject:v25 forKey:v19];
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
            [(NSMutableDictionary *)v46->_receivedInvitations setObject:v39 forKey:v33];
          }

          ++v32;
        }

        while (v29 != v32);
        v29 = [obja countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v29);
    }

    v46->_invitationsLoadedFromDisk = 1;
    v4 = v43;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (id)validateStrictDecodingForSentInvitation:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v25];
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
      v3 = v11;
      goto LABEL_8;
    }

    v3 = v11;
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
  v17 = [v6 userInfo];
  v18 = [v17 objectForKey:*MEMORY[0x1E696A278]];
  v27[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v20 = [v14 initWithDomain:@"com.apple.identityservices.error" code:55 userInfo:v19];

LABEL_8:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)sendInvitationToDestination:(id)a3 expirationDate:(id)a4 context:(id)a5 options:(id)a6 serverAcknowledgedBlock:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v35 = a4;
  v36 = a5;
  v12 = a6;
  v13 = a7;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v15 = [[IDSSentInvitation alloc] initWithDestination:v37 state:1 expirationDate:v35 uniqueID:0 context:v36];
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
  v16 = [(IDSInvitation *)v15 uniqueID];
  v58 = [v16 UUIDString];

  if (v12)
  {
    v17 = [v12 mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v18 = [(IDSInvitation *)v15 uniqueID];
  v19 = [v18 UUIDString];
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
    v24 = v13;
    v45 = v24;
    v41[4] = self;
    v47 = &v49;
    v25 = v15;
    v42 = v25;
    v43 = v37;
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
      v30 = [(IDSInvitation *)v25 uniqueID];
      v31 = [v30 UUIDString];
      [(NSMutableDictionary *)pendingInvitations setObject:v25 forKey:v31];
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
      v30 = v39;
    }

LABEL_19:
    _Block_object_dispose(&v49, 8);
    goto LABEL_20;
  }

  if (v13)
  {
    v22 = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A3B644;
    block[3] = &unk_1E743F110;
    v55 = v13;
    v54 = v21;
    dispatch_async(v22, block);
  }

LABEL_20:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v59, 8);

  v34 = *MEMORY[0x1E69E9840];
}

- (void)cancelInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v15 = [v10 uniqueID];
  v47 = [v15 UUIDString];

  if (v12)
  {
    v16 = [v12 mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = [v10 uniqueID];
  v18 = [v17 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A29888 forKey:@"IDSSendMessageOptionCommand"];
  [v10 setState:3];
  v20 = v11;
  if (!v11)
  {
    v20 = [v10 context];
  }

  [v10 setContext:v20];
  if (!v11)
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
  v22 = v13;
  v37 = v22;
  v34[4] = self;
  v39 = &v41;
  v23 = v10;
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

- (void)acceptInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v15 = [v10 uniqueID];
  v51 = [v15 UUIDString];

  if (v12)
  {
    v16 = [v12 mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = [v10 uniqueID];
  v18 = [v17 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298A0 forKey:@"IDSSendMessageOptionCommand"];
  [v10 setState:4];
  [v10 setContext:v11];
  v20 = MEMORY[0x1E69A5240];
  v21 = [v10 fromID];
  v22 = [v20 destinationWithURI:v21];

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
  v24 = v13;
  v41 = v24;
  v37[4] = self;
  v43 = &v45;
  v25 = v10;
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

- (void)declineInvitation:(id)a3 withContext:(id)a4 options:(id)a5 serverAcknowledgedBlock:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v15 = [v10 uniqueID];
  v52 = [v15 UUIDString];

  if (v12)
  {
    v16 = [v12 mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = [v10 uniqueID];
  v18 = [v17 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298B8 forKey:@"IDSSendMessageOptionCommand"];
  [v10 setState:5];
  v20 = v11;
  if (!v11)
  {
    v20 = [v10 context];
  }

  [v10 setContext:v20];
  if (!v11)
  {
  }

  v21 = MEMORY[0x1E69A5240];
  v22 = [v10 fromID];
  v23 = [v21 destinationWithURI:v22];

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
  v25 = v13;
  v42 = v25;
  v38[4] = self;
  v44 = &v46;
  v26 = v10;
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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v7 = a4;
  objc_storeWeak(&self->_delegate, a3);
  if (v7)
  {
    objc_storeStrong(&self->_delegateQueue, a4);
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

- (BOOL)validateReceivedInvitation:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_195A3CF4C;
  v31[3] = &unk_1E743E878;
  v31[4] = self;
  [v5 performBlock:v31 waitUntilDone:1];

  if (!v4)
  {
    v16 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B29D08();
    }

    goto LABEL_27;
  }

  v6 = [v4 expirationDate];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 expirationDate];
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v8 compare:v9];

    if (v10 == -1)
    {
      v16 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_195B29A88(v4);
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
  v14 = [v4 uniqueID];
  v15 = [v14 UUIDString];
  v16 = [v13 objectForKey:v15];

  if ([v4 state] != 1)
  {
    if (!v16)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29C64(v4);
      }

      goto LABEL_26;
    }

    if (_os_feature_enabled_impl())
    {
      v17 = [v16 senderMergeID];

      if (v17)
      {
        v18 = [v16 senderMergeID];
        v19 = [v4 senderMergeID];
        v20 = [v18 isEqualToString:v19];

        if ((v20 & 1) == 0)
        {
          v21 = +[IDSLogging IDSService];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_195B29B14(v4);
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
          v23 = [v16 senderMergeID];
          v24 = [v4 senderMergeID];
          *buf = 138412546;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Validating Invitation: Stored invitation's sender mergeId {%@} is invalid. Could not compare to received invitation's sender mergeId {%@}", buf, 0x16u);
        }
      }
    }

    v25 = [v4 uniqueID];
    v26 = [v16 uniqueID];
    v27 = [v25 isEqual:v26];

    if ((v27 & 1) == 0)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29BBC(v4);
      }

      goto LABEL_26;
    }
  }

  v28 = 1;
LABEL_28:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)service:(id)a3 account:(id)a4 incomingInvitation:(id)a5 withContext:(id)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:v7])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    v10 = [v7 state];
    if (v10 == 3)
    {
      v30 = +[IDSDaemonController sharedInstance];
      v31 = [v7 uniqueID];
      v32 = [v31 UUIDString];
      v47 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v34 = [(IDSService *)self->_internal accounts];
      v35 = [v34 anyObject];
      v36 = [v35 serviceName];
      [v30 removeReceivedInvitation:v33 forService:v36];

      receivedInvitations = self->_receivedInvitations;
      v38 = [v7 uniqueID];
      v39 = [v38 UUIDString];
      [(NSMutableDictionary *)receivedInvitations removeObjectForKey:v39];

      v40 = [(IDSInvitationManager *)self delegate];
      if (!v40 || (v41 = v40, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D44();
        }

        goto LABEL_19;
      }

      v44 = [(IDSInvitationManager *)self delegate];
      [v44 manager:self senderDidCancelInvitation:v7];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v7 state];
        v27 = [v7 uniqueID];
        v28 = [v27 UUIDString];
        *buf = 134218242;
        v49 = v45;
        v50 = 2112;
        v51 = v28;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate senderDidCancelInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (v10 != 1)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29DBC(v7);
        }

        goto LABEL_19;
      }

      v11 = +[IDSDaemonController sharedInstance];
      v12 = [(IDSService *)self->_internal accounts];
      v13 = [v12 anyObject];
      v14 = [v13 serviceName];
      v15 = [v7 uniqueID];
      v16 = [v15 UUIDString];
      [v11 persistReceivedInvitation:v9 forService:v14 withUniqueID:v16];

      v17 = self->_receivedInvitations;
      v18 = [v7 uniqueID];
      v19 = [v18 UUIDString];
      [(NSMutableDictionary *)v17 setObject:v7 forKey:v19];

      v20 = [(IDSInvitationManager *)self delegate];
      if (!v20 || (v21 = v20, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D80();
        }

        goto LABEL_19;
      }

      v24 = [(IDSInvitationManager *)self delegate];
      [v24 manager:self incomingInvitation:v7];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v7 state];
        v27 = [v7 uniqueID];
        v28 = [v27 UUIDString];
        *buf = 134218242;
        v49 = v26;
        v50 = 2112;
        v51 = v28;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate incomingInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 account:(id)a4 incomingInvitationUpdate:(id)a5 withContext:(id)a6
{
  v52[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:v7])
  {
    v9 = [v7 state];
    if (v9 == 5)
    {
      v30 = +[IDSDaemonController sharedInstance];
      v31 = [v7 uniqueID];
      v32 = [v31 UUIDString];
      v47 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v34 = [(IDSService *)self->_internal accounts];
      v35 = [v34 anyObject];
      v36 = [v35 serviceName];
      [v30 removePendingInvitation:v33 forService:v36];

      pendingInvitations = self->_pendingInvitations;
      v38 = [v7 uniqueID];
      v39 = [v38 UUIDString];
      [(NSMutableDictionary *)pendingInvitations removeObjectForKey:v39];

      v40 = [(IDSInvitationManager *)self delegate];
      if (!v40 || (v41 = v40, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29E6C();
        }

        goto LABEL_19;
      }

      v44 = [(IDSInvitationManager *)self delegate];
      [v44 manager:self receiverDidDeclineInvitation:v7];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v7 state];
        v27 = [v7 uniqueID];
        v28 = [v27 UUIDString];
        *buf = 134218242;
        v49 = v45;
        v50 = 2112;
        v51 = v28;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidDeclineInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (v9 != 4)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EE4(v7);
        }

        goto LABEL_19;
      }

      v10 = +[IDSDaemonController sharedInstance];
      v11 = [v7 uniqueID];
      v12 = [v11 UUIDString];
      v52[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
      v14 = [(IDSService *)self->_internal accounts];
      v15 = [v14 anyObject];
      v16 = [v15 serviceName];
      [v10 removePendingInvitation:v13 forService:v16];

      v17 = self->_pendingInvitations;
      v18 = [v7 uniqueID];
      v19 = [v18 UUIDString];
      [(NSMutableDictionary *)v17 removeObjectForKey:v19];

      v20 = [(IDSInvitationManager *)self delegate];
      if (!v20 || (v21 = v20, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EA8();
        }

        goto LABEL_19;
      }

      v24 = [(IDSInvitationManager *)self delegate];
      [v24 manager:self receiverDidAcceptInvitation:v7];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v7 state];
        v27 = [v7 uniqueID];
        v28 = [v27 UUIDString];
        *buf = 134218242;
        v49 = v26;
        v50 = 2112;
        v51 = v28;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidAcceptInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v10 = a6;
  v90 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v60 = a4;
  v14 = a5;
  v62 = a7;
  v61 = a8;
  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v16 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    if (v10)
    {
      v17 = @"YES";
    }

    *&buf[14] = v17;
    *&buf[22] = 2112;
    v87 = v62;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Identifier {%@}. didSendWithSuccess {%@} with error %@", buf, 0x20u);
  }

  v18 = [(NSMutableDictionary *)self->_pendingInvitations objectForKey:v14];
  if (v18 || ([(NSMutableDictionary *)self->_receivedInvitations objectForKey:v14], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
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
    v58 = v14;
    v71 = v58;
    v73 = &v74;
    [v19 performBlock:v70 waitUntilDone:1];

    if ([v18 state]== 1)
    {
      if (v62)
      {
        [(NSMutableDictionary *)self->_pendingInvitations removeObjectForKey:v58];
      }

      else
      {
        v31 = [v61 destinationCorrelationIdentifier];
        [v18 setSenderMergeID:v31];

        v32 = [v61 fromID];
        v33 = [v32 _stripFZIDPrefix];
        v34 = [v33 _bestGuessURI];
        [v18 setSelfHandle:v34];

        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
        v36 = +[IDSDaemonController sharedInstance];
        v37 = [(IDSService *)self->_internal accounts];
        v38 = [v37 anyObject];
        v39 = [v38 serviceName];
        v40 = [v18 uniqueID];
        v41 = [v40 UUIDString];
        [v36 persistPendingInvitation:v35 forService:v39 withUniqueID:v41];
      }

      if (*(*&buf[8] + 40))
      {
        v42 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v18 state];
          *v82 = 138412546;
          v83 = v58;
          v84 = 2048;
          v85 = v43;
          _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v82, 0x16u);
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A3E2F8;
        block[3] = &unk_1E743EF60;
        v67 = v62;
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

    if (!v62)
    {
      v20 = [v18 state];
      if ((v20 - 4) >= 2)
      {
        if (v20 != 3)
        {
          goto LABEL_25;
        }

        v46 = +[IDSDaemonController sharedInstance];
        v47 = [v18 uniqueID];
        v48 = [v47 UUIDString];
        v81 = v48;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
        v50 = [(IDSService *)self->_internal accounts];
        v51 = [v50 anyObject];
        v52 = [v51 serviceName];
        [v46 removePendingInvitation:v49 forService:v52];

        pendingInvitations = self->_pendingInvitations;
        v29 = [v18 uniqueID];
        v30 = [v29 UUIDString];
        [(NSMutableDictionary *)pendingInvitations removeObjectForKey:v30];
      }

      else
      {
        v21 = +[IDSDaemonController sharedInstance];
        v22 = [v18 uniqueID];
        v23 = [v22 UUIDString];
        v80 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
        v25 = [(IDSService *)self->_internal accounts];
        v26 = [v25 anyObject];
        v27 = [v26 serviceName];
        [v21 removeReceivedInvitation:v24 forService:v27];

        receivedInvitations = self->_receivedInvitations;
        v29 = [v18 uniqueID];
        v30 = [v29 UUIDString];
        [(NSMutableDictionary *)receivedInvitations removeObjectForKey:v30];
      }
    }

LABEL_25:
    if (v75[5])
    {
      v54 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v18 state];
        *v82 = 138412546;
        v83 = v58;
        v84 = 2048;
        v85 = v55;
        _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v82, 0x16u);
      }

      v56 = self->_delegateQueue;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_195A3E32C;
      v63[3] = &unk_1E743E670;
      v65 = &v74;
      v64 = v62;
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

- (void)removePendingInvitation:(id)a3
{
  v9 = a3;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  v6 = [(IDSService *)self->_internal accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  [v5 removePendingInvitation:v9 forService:v8];

  [(NSMutableDictionary *)self->_pendingInvitations removeObjectsForKeys:v9];
}

- (void)removeReceivedInvitation:(id)a3
{
  v9 = a3;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  v6 = [(IDSService *)self->_internal accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  [v5 removeReceivedInvitation:v9 forService:v8];

  [(NSMutableDictionary *)self->_receivedInvitations removeObjectsForKeys:v9];
}

- (IDSInvitationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end