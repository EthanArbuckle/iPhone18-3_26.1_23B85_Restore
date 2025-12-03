@interface MSASPhoneInvitations
- (MSASPhoneInvitations)init;
- (void)addPendingPhoneInvitations:(id)invitations toOwnedAlbum:(id)album inStateMachin:(id)machin;
- (void)removeSharingRelationships:(id)relationships forAlbum:(id)album;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation MSASPhoneInvitations

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    userInfo = [errorCopy userInfo];
    *buf = 138544642;
    v26 = serviceCopy;
    v27 = 2112;
    v28 = accountCopy;
    v29 = 2114;
    v30 = identifierCopy;
    v31 = 1024;
    v32 = successCopy;
    v33 = 2114;
    v34 = errorCopy;
    v35 = 2114;
    v36 = userInfo;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IDS: Get send message callback for service %{public}@ account %@ identifier %{public}@ success %d error %{public}@ info %{public}@", buf, 0x3Au);

    if (!identifierCopy)
    {
      goto LABEL_11;
    }
  }

  else if (!identifierCopy)
  {
    goto LABEL_11;
  }

  v16 = [(NSMutableDictionary *)self->_sendMessageIdentifierToPhone objectForKey:identifierCopy];
  if (v16)
  {
    [(NSMutableDictionary *)self->_sendMessageIdentifierToPhone removeObjectForKey:identifierCopy];
    delegate = [(MSASStateMachine *)self->_stateMachine delegate];
    [delegate MSASStateMachine:self->_stateMachine didFinishSendingInvitationByPhone:v16 toOwnedAlbum:self->_album info:0 error:errorCopy];

    if (successCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        album = self->_album;
        *buf = 138412802;
        v26 = accountCopy;
        v27 = 2114;
        v28 = album;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Successfully send message from %@ for album %{public}@ with IDS identifier %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = self->_album;
      userInfo2 = [errorCopy userInfo];
      v22 = [v19 stringWithFormat:@"IDS: Failed to send message from %@ for album %@ with identifier %@. Error: %@ Info: %@", accountCopy, v20, identifierCopy, errorCopy, userInfo2];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v22;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeSharingRelationships:(id)relationships forAlbum:(id)album
{
  v61 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  selfCopy = self;
  albumCopy = album;
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(relationshipsCopy, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = relationshipsCopy;
  v35 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v35)
  {
    v34 = *v44;
    v9 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        phones = [v11 phones];
        v13 = [phones countByEnumeratingWithState:&v39 objects:v59 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v40;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v40 != v15)
              {
                objc_enumerationMutation(phones);
              }

              v17 = *(*(&v39 + 1) + 8 * j);
              v18 = MEMORY[0x245D7B3A0](v17, 0, 1);
              if (v18)
              {
                [v8 addObject:v18];
              }

              else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v50 = v17;
                _os_log_error_impl(&dword_245B99000, v9, OS_LOG_TYPE_ERROR, "IDS: Failed to create IDS identifier from %@", buf, 0xCu);
              }
            }

            v14 = [phones countByEnumeratingWithState:&v39 objects:v59 count:16];
          }

          while (v14);
        }
      }

      v35 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v35);
  }

  if ([v8 count])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v20 = [standardUserDefaults valueForKey:@"MSASPhoneInvitationDebugFakeAlbumUUID"];

    if ([v20 length])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v20;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Using debugFakeAlbumGUID %@", buf, 0xCu);
      }

      [albumCopy setGUID:v20];
    }

    v38 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:albumCopy requiringSecureCoding:1 error:&v38];
    v22 = v38;
    if (v21)
    {
      v57[0] = @"albumData";
      v57[1] = @"type";
      v58[0] = v21;
      v58[1] = @"delete";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        v50 = v23;
        v51 = 2112;
        v52 = anyObject;
        v53 = 2112;
        v54 = v8;
        v55 = 2114;
        v56 = albumCopy;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message %{public}@ from %@ to %@ for album %{public}@", buf, 0x2Au);
      }

      v47 = *MEMORY[0x277D18650];
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v48 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

      idsService = selfCopy->_idsService;
      v36 = 0;
      v37 = 0;
      LODWORD(v24) = [(IDSService *)idsService sendMessage:v23 fromAccount:anyObject toDestinations:v8 priority:300 options:v25 identifier:&v37 error:&v36];
      v27 = v37;
      v28 = v36;
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v50 = v27;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message with identifier %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v28;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to send message. Error: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to archive an album object: %{public}@", buf, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)addPendingPhoneInvitations:(id)invitations toOwnedAlbum:(id)album inStateMachin:(id)machin
{
  albumCopy = album;
  objc_storeStrong(&self->_stateMachine, machin);
  machinCopy = machin;
  invitationsCopy = invitations;
  objc_storeStrong(&self->_album, album);
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__MSASPhoneInvitations_addPendingPhoneInvitations_toOwnedAlbum_inStateMachin___block_invoke;
  v16[3] = &unk_278E90528;
  v17 = albumCopy;
  v18 = anyObject;
  selfCopy = self;
  v14 = anyObject;
  v15 = albumCopy;
  [invitationsCopy enumerateKeysAndObjectsUsingBlock:v16];
}

void __78__MSASPhoneInvitations_addPendingPhoneInvitations_toOwnedAlbum_inStateMachin___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setMetadataValue:a3 forKey:@"phoneInvitationToken"];
    v6 = *(a1 + 32);
    v26 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v26];
    v8 = v26;
    if (v7)
    {
      v9 = MEMORY[0x245D7B3A0](v5, 0, 1);
      if (v9)
      {
        v23 = v8;
        v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
        v37[0] = @"albumData";
        v37[1] = @"type";
        v38[0] = v7;
        v38[1] = @"new";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138544130;
          v30 = v11;
          v31 = 2112;
          v32 = v12;
          v33 = 2112;
          v34 = v10;
          v35 = 2114;
          v36 = v13;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message %{public}@ from %@ to %@ for album %{public}@", buf, 0x2Au);
        }

        v27[0] = *MEMORY[0x277D18650];
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
        v27[1] = *MEMORY[0x277D185A0];
        v28[0] = v14;
        v28[1] = MEMORY[0x277CBEC28];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

        v16 = *(a1 + 40);
        v17 = *(*(a1 + 48) + 24);
        v24 = 0;
        v25 = 0;
        v18 = v10;
        v19 = [v17 sendMessage:v11 fromAccount:v16 toDestinations:v10 priority:300 options:v15 identifier:&v25 error:&v24];
        v20 = v25;
        v21 = v24;
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v30 = v20;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message with identifier %{public}@", buf, 0xCu);
          }

          [*(*(a1 + 48) + 32) setObject:v5 forKey:v20];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v21;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to send message. Error: %{public}@", buf, 0xCu);
        }

        v8 = v23;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v5;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to create IDS identifier from %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to archive an album object: %{public}@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (MSASPhoneInvitations)init
{
  v8.receiver = self;
  v8.super_class = MSASPhoneInvitations;
  v2 = [(MSASPhoneInvitations *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.photostream"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sendMessageIdentifierToPhone = v2->_sendMessageIdentifierToPhone;
    v2->_sendMessageIdentifierToPhone = dictionary;
  }

  return v2;
}

@end