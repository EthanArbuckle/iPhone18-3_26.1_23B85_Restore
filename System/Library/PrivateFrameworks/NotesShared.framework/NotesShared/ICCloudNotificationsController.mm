@interface ICCloudNotificationsController
+ (id)sharedController;
+ (void)registerForUserNotificationsWithCompletionHandler:(id)handler;
- (BOOL)isSubscribedToMentionNotificationsForAccount:(id)account;
- (PDSRegistrar)pdsClient;
- (void)batchUpdateTopicSubscriptionsAllAccountsInContext:(id)context;
- (void)batchUpdateTopicSubscriptionsForDSIDs:(id)ds;
- (void)removeAllPDSRegistrationsForUser:(id)user;
- (void)removeAllTopicSubscriptionsForAccount:(id)account;
- (void)sendMentionNotificationToParticipant:(id)participant inlineAttachmentRecordName:(id)name shareRecordName:(id)recordName shareOwnerUserId:(id)id accountId:(id)accountId noteRecordName:(id)noteRecordName senderName:(id)senderName noteTitle:(id)self0 mentionSnippet:(id)self1 callback:(id)self2;
- (void)updateSubscriptionPreferenceForMentionNotifications:(BOOL)notifications forAccount:(id)account;
@end

@implementation ICCloudNotificationsController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICCloudNotificationsController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_controller;

  return v2;
}

void __50__ICCloudNotificationsController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_controller;
  sharedController_controller = v1;
}

+ (void)registerForUserNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[ICCloudNotificationsController registerForUserNotificationsWithCompletionHandler:];
  }

  currentNotificationCenter = [MEMORY[0x277CE2028] currentNotificationCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke;
  v12[3] = &unk_278195D58;
  v13 = handlerCopy;
  v6 = handlerCopy;
  [currentNotificationCenter requestAuthorizationWithOptions:7 completionHandler:v12];

  v7 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v7 workerManagedObjectContext];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke_34;
  v10[3] = &unk_278194B00;
  v11 = workerManagedObjectContext;
  v9 = workerManagedObjectContext;
  [v9 performBlock:v10];
}

void __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = os_log_create("com.apple.notes", "Notifications");
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke_cold_2();
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "User did not grant authorization for user notifications", v10, 2u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"ICUserNotificationRegistrationCompleted" object:0];
}

void __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke_34(uint64_t a1)
{
  v2 = +[ICCloudNotificationsController sharedController];
  [v2 batchUpdateTopicSubscriptionsAllAccountsInContext:*(a1 + 32)];
}

- (PDSRegistrar)pdsClient
{
  if (pdsClient_onceToken != -1)
  {
    [ICCloudNotificationsController pdsClient];
  }

  v3 = pdsClient_client;

  return v3;
}

void __43__ICCloudNotificationsController_pdsClient__block_invoke()
{
  v5 = 0;
  v0 = [objc_alloc(MEMORY[0x277D37AB8]) initWithClientID:@"Notes" error:&v5];
  v1 = v5;
  v2 = pdsClient_client;
  pdsClient_client = v0;

  if (pdsClient_client)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__ICCloudNotificationsController_pdsClient__block_invoke_cold_1();
    }
  }
}

- (BOOL)isSubscribedToMentionNotificationsForAccount:(id)account
{
  objc_opt_class();
  v3 = [MEMORY[0x277D36260] objectForKey:@"ICMentionsShouldNotifyMeDefaultsKey"];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)updateSubscriptionPreferenceForMentionNotifications:(BOOL)notifications forAccount:(id)account
{
  notificationsCopy = notifications;
  v6 = MEMORY[0x277D36260];
  v7 = MEMORY[0x277CCABB0];
  accountCopy = account;
  v9 = [v7 numberWithBool:notificationsCopy];
  [v6 setObject:v9 forKey:@"ICMentionsShouldNotifyMeDefaultsKey"];

  managedObjectContext = [accountCopy managedObjectContext];

  [(ICCloudNotificationsController *)self batchUpdateTopicSubscriptionsAllAccountsInContext:managedObjectContext];
}

- (void)removeAllTopicSubscriptionsForAccount:(id)account
{
  accountCopy = account;
  dsid = [accountCopy dsid];
  if ([dsid length])
  {
    v6 = [MEMORY[0x277D37AD0] userWithDSID:dsid];
    [(ICCloudNotificationsController *)self removeAllPDSRegistrationsForUser:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICCloudNotificationsController *)accountCopy removeAllTopicSubscriptionsForAccount:v7];
    }
  }
}

- (void)batchUpdateTopicSubscriptionsAllAccountsInContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [ICAccount allCloudKitAccountsInContext:context];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(ICCloudNotificationsController *)self isSubscribedToMentionNotificationsForAccount:v11, v13])
        {
          dsid = [v11 dsid];
          [v5 ic_addNonNilObject:dsid];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ICCloudNotificationsController *)self batchUpdateTopicSubscriptionsForDSIDs:v5];
}

- (void)batchUpdateTopicSubscriptionsForDSIDs:(id)ds
{
  v55 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudNotificationsController *)dsCopy batchUpdateTopicSubscriptionsForDSIDs:v4];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v44;
    *&v7 = 138412802;
    v35 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277D37AD0] userWithDSID:{*(*(&v43 + 1) + 8 * i), v35}];
        v12 = [objc_alloc(MEMORY[0x277D37AC0]) initWithTopic:@"com.apple.notes.mentions" qualifier:&stru_2827172C0 pushEnvironment:0];
        pdsClient = [(ICCloudNotificationsController *)self pdsClient];
        v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
        v42 = 0;
        v15 = [pdsClient batchUpdateRegistrations:v14 forUser:v11 error:&v42];
        v16 = v42;

        if (v15)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v20 = os_log_create("com.apple.notes", "Notifications");
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          *buf = 138412546;
          v49 = v12;
          v50 = 2112;
          v51 = v11;
          v21 = v20;
          v22 = "Successfully updated PDS registration (%@) for user (%@)";
          goto LABEL_17;
        }

        code = [v16 code];
        v19 = os_log_create("com.apple.notes", "Notifications");
        v20 = v19;
        if (code == -202)
        {
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          *buf = 138412546;
          v49 = v12;
          v50 = 2112;
          v51 = v11;
          v21 = v20;
          v22 = "Successfully updated PDS registration (ignoring PDSRegistrarErrorCodeFailedPersisting -- see rdar://72400974) (%@) for user (%@)";
LABEL_17:
          _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0x16u);
          goto LABEL_20;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = v35;
          v49 = v12;
          v50 = 2112;
          v51 = v11;
          v52 = 2112;
          v53 = v16;
          _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Error updating PDS registration (%@) for user (%@): %@", buf, 0x20u);
        }

LABEL_20:
      }

      v8 = [v5 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v8);
  }

  pdsClient2 = [(ICCloudNotificationsController *)self pdsClient];
  v41 = 0;
  v24 = [pdsClient2 activeUsersWithError:&v41];
  v25 = v41;

  if (!v24 || v25)
  {
    v26 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICCloudNotificationsController batchUpdateTopicSubscriptionsForDSIDs:];
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v24;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v37 + 1) + 8 * j);
        userID = [v32 userID];
        v34 = [v5 containsObject:userID];

        if ((v34 & 1) == 0)
        {
          [(ICCloudNotificationsController *)self removeAllPDSRegistrationsForUser:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v29);
  }
}

- (void)removeAllPDSRegistrationsForUser:(id)user
{
  userCopy = user;
  v5 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudNotificationsController removeAllPDSRegistrationsForUser:];
  }

  pdsClient = [(ICCloudNotificationsController *)self pdsClient];
  v11 = 0;
  v7 = [pdsClient removeAllRegistrationsFromUser:userCopy error:&v11];
  v8 = v11;

  v9 = os_log_create("com.apple.notes", "Notifications");
  v10 = v9;
  if (!v7 || v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICCloudNotificationsController removeAllPDSRegistrationsForUser:];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudNotificationsController removeAllPDSRegistrationsForUser:];
  }
}

- (void)sendMentionNotificationToParticipant:(id)participant inlineAttachmentRecordName:(id)name shareRecordName:(id)recordName shareOwnerUserId:(id)id accountId:(id)accountId noteRecordName:(id)noteRecordName senderName:(id)senderName noteTitle:(id)self0 mentionSnippet:(id)self1 callback:(id)self2
{
  callbackCopy = callback;
  snippetCopy = snippet;
  titleCopy = title;
  senderNameCopy = senderName;
  noteRecordNameCopy = noteRecordName;
  accountIdCopy = accountId;
  idCopy = id;
  recordNameCopy = recordName;
  nameCopy = name;
  participantCopy = participant;
  v26 = +[ICCloudContext sharedContext];
  v29 = [v26 invernessClientForAccountID:accountIdCopy];

  [v29 sendMentionNotificationWithRecipientUserId:participantCopy senderName:senderNameCopy noteTitle:titleCopy mentionSnippet:snippetCopy shareRecordName:recordNameCopy shareOwnerUserId:idCopy noteRecordName:noteRecordNameCopy inlineAttachmentRecordName:nameCopy callback:callbackCopy];
}

- (void)removeAllTopicSubscriptionsForAccount:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Unable to find DSID for account (%@). Cannot remove PDS registrations.", v4, 0xCu);
}

- (void)batchUpdateTopicSubscriptionsForDSIDs:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 allObjects];
  v4 = [v3 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Batch updating topic subscriptions for DSIDs: %@", v5, 0xCu);
}

- (void)removeAllPDSRegistrationsForUser:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeAllPDSRegistrationsForUser:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_214D51000, v1, OS_LOG_TYPE_ERROR, "Error removing all PDS registrations for user (%@): %@", v2, 0x16u);
}

- (void)removeAllPDSRegistrationsForUser:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end