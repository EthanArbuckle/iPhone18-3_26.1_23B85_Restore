@interface ICCloudNotificationsController
+ (id)sharedController;
+ (void)registerForUserNotificationsWithCompletionHandler:(id)a3;
- (BOOL)isSubscribedToMentionNotificationsForAccount:(id)a3;
- (PDSRegistrar)pdsClient;
- (void)batchUpdateTopicSubscriptionsAllAccountsInContext:(id)a3;
- (void)batchUpdateTopicSubscriptionsForDSIDs:(id)a3;
- (void)removeAllPDSRegistrationsForUser:(id)a3;
- (void)removeAllTopicSubscriptionsForAccount:(id)a3;
- (void)sendMentionNotificationToParticipant:(id)a3 inlineAttachmentRecordName:(id)a4 shareRecordName:(id)a5 shareOwnerUserId:(id)a6 accountId:(id)a7 noteRecordName:(id)a8 senderName:(id)a9 noteTitle:(id)a10 mentionSnippet:(id)a11 callback:(id)a12;
- (void)updateSubscriptionPreferenceForMentionNotifications:(BOOL)a3 forAccount:(id)a4;
@end

@implementation ICCloudNotificationsController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICCloudNotificationsController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (void)registerForUserNotificationsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[ICCloudNotificationsController registerForUserNotificationsWithCompletionHandler:];
  }

  v5 = [MEMORY[0x277CE2028] currentNotificationCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke;
  v12[3] = &unk_278195D58;
  v13 = v3;
  v6 = v3;
  [v5 requestAuthorizationWithOptions:7 completionHandler:v12];

  v7 = +[ICNoteContext sharedContext];
  v8 = [v7 workerManagedObjectContext];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__ICCloudNotificationsController_registerForUserNotificationsWithCompletionHandler___block_invoke_34;
  v10[3] = &unk_278194B00;
  v11 = v8;
  v9 = v8;
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

- (BOOL)isSubscribedToMentionNotificationsForAccount:(id)a3
{
  objc_opt_class();
  v3 = [MEMORY[0x277D36260] objectForKey:@"ICMentionsShouldNotifyMeDefaultsKey"];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)updateSubscriptionPreferenceForMentionNotifications:(BOOL)a3 forAccount:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277D36260];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithBool:v4];
  [v6 setObject:v9 forKey:@"ICMentionsShouldNotifyMeDefaultsKey"];

  v10 = [v8 managedObjectContext];

  [(ICCloudNotificationsController *)self batchUpdateTopicSubscriptionsAllAccountsInContext:v10];
}

- (void)removeAllTopicSubscriptionsForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 dsid];
  if ([v5 length])
  {
    v6 = [MEMORY[0x277D37AD0] userWithDSID:v5];
    [(ICCloudNotificationsController *)self removeAllPDSRegistrationsForUser:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICCloudNotificationsController *)v4 removeAllTopicSubscriptionsForAccount:v7];
    }
  }
}

- (void)batchUpdateTopicSubscriptionsAllAccountsInContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [ICAccount allCloudKitAccountsInContext:a3];
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
          v12 = [v11 dsid];
          [v5 ic_addNonNilObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ICCloudNotificationsController *)self batchUpdateTopicSubscriptionsForDSIDs:v5];
}

- (void)batchUpdateTopicSubscriptionsForDSIDs:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudNotificationsController *)v3 batchUpdateTopicSubscriptionsForDSIDs:v4];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
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
        v13 = [(ICCloudNotificationsController *)self pdsClient];
        v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
        v42 = 0;
        v15 = [v13 batchUpdateRegistrations:v14 forUser:v11 error:&v42];
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

        v18 = [v16 code];
        v19 = os_log_create("com.apple.notes", "Notifications");
        v20 = v19;
        if (v18 == -202)
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

  v23 = [(ICCloudNotificationsController *)self pdsClient];
  v41 = 0;
  v24 = [v23 activeUsersWithError:&v41];
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
        v33 = [v32 userID];
        v34 = [v5 containsObject:v33];

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

- (void)removeAllPDSRegistrationsForUser:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudNotificationsController removeAllPDSRegistrationsForUser:];
  }

  v6 = [(ICCloudNotificationsController *)self pdsClient];
  v11 = 0;
  v7 = [v6 removeAllRegistrationsFromUser:v4 error:&v11];
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

- (void)sendMentionNotificationToParticipant:(id)a3 inlineAttachmentRecordName:(id)a4 shareRecordName:(id)a5 shareOwnerUserId:(id)a6 accountId:(id)a7 noteRecordName:(id)a8 senderName:(id)a9 noteTitle:(id)a10 mentionSnippet:(id)a11 callback:(id)a12
{
  v27 = a12;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = +[ICCloudContext sharedContext];
  v29 = [v26 invernessClientForAccountID:v21];

  [v29 sendMentionNotificationWithRecipientUserId:v25 senderName:v19 noteTitle:v18 mentionSnippet:v17 shareRecordName:v23 shareOwnerUserId:v22 noteRecordName:v20 inlineAttachmentRecordName:v24 callback:v27];
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