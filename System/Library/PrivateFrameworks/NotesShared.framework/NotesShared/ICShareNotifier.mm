@interface ICShareNotifier
+ (BOOL)shouldPreventNotificationsForRecordID:(id)a3;
+ (BOOL)shouldShowNotificationForNote:(id)a3;
+ (id)notificationTitleForEditors:(id)a3;
+ (id)participantsWithReplicaIDs:(id)a3 inNote:(id)a4;
+ (id)replicaIDsThatEditedTimestamp:(id)a3 sinceTimestamp:(id)a4;
+ (void)clearNotificationForRecordID:(id)a3;
+ (void)setShouldPreventNotifications:(BOOL)a3 forRecordID:(id)a4;
+ (void)showNotificationForNote:(id)a3 editors:(id)a4;
+ (void)showNotificationIfNecessaryForCloudObject:(id)a3 accountID:(id)a4;
+ (void)showNotificationWithTitle:(id)a3 message:(id)a4 userInfo:(id)a5;
@end

@implementation ICShareNotifier

+ (void)clearNotificationForRecordID:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 recordName];
    v4 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[ICShareNotifier clearNotificationForRecordID:];
    }

    v5 = [MEMORY[0x277CE2028] currentNotificationCenter];
    v7[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 removeDeliveredNotificationsWithIdentifiers:v6];
  }
}

+ (void)showNotificationIfNecessaryForCloudObject:(id)a3 accountID:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v6 ic_loggingDescription];
      v37[0] = @"lastNotifiedTimestamp";
      v18 = [v6 lastNotifiedTimestamp];
      v36 = v18;
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = @"nil";
      }

      v38[0] = v19;
      v37[1] = @"lastNotifiedDate";
      v20 = [v6 lastNotifiedDate];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = @"nil";
      }

      v38[1] = v21;
      v37[2] = @"lastViewedTimestamp";
      v22 = [v6 lastViewedTimestamp];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = @"nil";
      }

      v38[2] = v24;
      v37[3] = @"lastViewedModificationDate";
      v25 = [v6 lastViewedModificationDate];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"nil";
      }

      v38[3] = v27;
      v37[4] = @"modificationDate";
      v28 = [v6 modificationDate];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = @"nil";
      }

      v38[4] = v30;
      v37[5] = @"timestamp";
      v31 = [v6 timestamp];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = @"nil";
      }

      v38[5] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
      *buf = 138412546;
      v40 = v17;
      v41 = 2112;
      v42 = v34;
      _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Showing notification if necesary for (%@): %@", buf, 0x16u);
    }

    if ([a1 shouldShowNotificationForNote:v6])
    {
      v8 = [v6 timestamp];
      v9 = [v6 lastNotifiedTimestamp];
      v10 = [a1 replicaIDsThatEditedTimestamp:v8 sinceTimestamp:v9];

      v11 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier showNotificationIfNecessaryForCloudObject:v10 accountID:?];
      }

      v12 = [a1 participantsWithReplicaIDs:v10 inNote:v6];
      v13 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier showNotificationIfNecessaryForCloudObject:v12 accountID:?];
      }

      [a1 showNotificationForNote:v6 editors:v12];
      v14 = [v6 timestamp];
      [v6 setLastNotifiedTimestamp:v14];

      v15 = [MEMORY[0x277CBEAA8] date];
      [v6 setLastNotifiedDate:v15];

      v16 = [v6 managedObjectContext];
      [v16 ic_saveWithLogDescription:@"setting notification metadata"];
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier showNotificationIfNecessaryForCloudObject:v6 accountID:?];
      }

      v10 = v12;
    }
  }
}

+ (BOOL)shouldShowNotificationForNote:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (shouldShowNotificationForNote__onceToken != -1)
  {
    +[ICShareNotifier shouldShowNotificationForNote:];
  }

  if (([a1 shareNotifierEnabled] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v4];
    }

    goto LABEL_12;
  }

  if (([v4 isSharedViaICloud] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v4];
    }

    goto LABEL_12;
  }

  v5 = [v4 recordID];
  v6 = [a1 shouldPreventNotificationsForRecordID:v5];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v4];
    }

    goto LABEL_12;
  }

  v11 = [v4 lastNotifiedTimestamp];
  if (v11)
  {
  }

  else
  {
    v12 = [v4 lastViewedTimestamp];

    if (!v12)
    {
      v7 = os_log_create("com.apple.notes", "Notifications");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v25 = [v4 shortLoggingDescription];
      *buf = 138412290;
      v60 = v25;
      v31 = "Not showing notification for %@: never notified and never viewed";
      goto LABEL_59;
    }
  }

  v13 = [v4 modificationDate];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
  v15 = [v13 compare:v14];

  if (v15 == -1)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v25 = [v4 shortLoggingDescription];
    *buf = 138412290;
    v60 = v25;
    v31 = "Not showing notification for %@: last modification date was too long ago";
LABEL_59:
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, v31, buf, 0xCu);
    goto LABEL_60;
  }

  v16 = [v4 lastNotifiedDate];
  if (v16)
  {
    v17 = v16;
    v18 = [v4 lastNotifiedDate];
    [v18 timeIntervalSinceNow];
    v20 = v19;

    v21 = v20 >= 0.0 ? v20 : -v20;
    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v22 doubleForKey:@"MinSecondsBetweenSharedNoteNotifications"];
    v24 = v23;

    if (v21 < v24)
    {
      v7 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v25 = [v4 shortLoggingDescription];
        v26 = [v4 lastNotifiedDate];
        *buf = 138412546;
        v60 = v25;
        v61 = 2112;
        v62 = v26;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Not showing notification for %@: notified at %@", buf, 0x16u);

LABEL_60:
      }

LABEL_12:
      v8 = 0;
      v9 = v7;
      goto LABEL_13;
    }
  }

  v27 = [v4 lastNotifiedTimestamp];
  if (v27)
  {
    v28 = [v4 lastNotifiedTimestamp];
    v29 = [v4 timestamp];
    v30 = [v28 compareTo:v29] & 1;
  }

  else
  {
    v30 = 1;
  }

  v32 = [v4 lastViewedTimestamp];
  if (v32)
  {
    v33 = [v4 lastViewedTimestamp];
    v34 = [v4 timestamp];
    v35 = [v33 compareTo:v34] & 1;
  }

  else
  {
    v35 = 1;
  }

  v36 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = [v4 shortLoggingDescription];
    v38 = v37;
    v39 = @"N";
    if (v30)
    {
      v40 = @"Y";
    }

    else
    {
      v40 = @"N";
    }

    *buf = 138412802;
    v60 = v37;
    v62 = v40;
    v61 = 2112;
    if (v35)
    {
      v39 = @"Y";
    }

    v63 = 2112;
    v64 = v39;
    _os_log_impl(&dword_214D51000, v36, OS_LOG_TYPE_INFO, "%@ - hasEditsSinceLastNotification:%@, hasEditsSinceLastView:%@", buf, 0x20u);
  }

  if ((v35 & v30) != 1)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v25 = [v4 shortLoggingDescription];
    *buf = 138412290;
    v60 = v25;
    v31 = "Not showing notification for %@: no new edits since last view or notification";
    goto LABEL_59;
  }

  v41 = [v4 account];
  v9 = [v41 userRecordName];

  v42 = os_log_create("com.apple.notes", "Notifications");
  v43 = v42;
  if (v9)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      +[ICShareNotifier shouldShowNotificationForNote:];
    }

    v44 = [v4 timestamp];
    v45 = [v4 lastNotifiedTimestamp];
    v7 = [a1 replicaIDsThatEditedTimestamp:v44 sinceTimestamp:v45];

    v46 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v7];
    }

    v47 = [v4 timestamp];
    v48 = [v4 lastViewedTimestamp];
    v49 = [a1 replicaIDsThatEditedTimestamp:v47 sinceTimestamp:v48];

    v50 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v49];
    }

    v51 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v52 = [v51 setByAddingObjectsFromArray:v49];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __49__ICShareNotifier_shouldShowNotificationForNote___block_invoke_46;
    v56[3] = &unk_278195FB0;
    v53 = v4;
    v57 = v53;
    v58 = v9;
    v8 = [v52 ic_containsObjectPassingTest:v56];
    if ((v8 & 1) == 0)
    {
      v54 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier shouldShowNotificationForNote:v53];
      }
    }

    v55 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v55, OS_LOG_TYPE_INFO, "Found editor excluding the current user, shouldShowNotification -> YES", buf, 2u);
    }
  }

  else
  {
    v49 = v42;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v4];
    }

    v8 = 0;
    v7 = v49;
  }

LABEL_13:
  return v8;
}

void __49__ICShareNotifier_shouldShowNotificationForNote___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = @"MinSecondsBetweenSharedNoteNotifications";
  v3[0] = &unk_282748138;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

uint64_t __49__ICShareNotifier_shouldShowNotificationForNote___block_invoke_46(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [*(a1 + 32) userIDForReplicaID:a2];
  LODWORD(v2) = [*(v2 + 40) isEqualToString:v3];

  return v2 ^ 1;
}

+ (id)replicaIDsThatEditedTimestamp:(id)a3 sinceTimestamp:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v5 timestamps];
  v9 = [v8 count];

  v10 = [v6 timestamps];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v5 sortedUUIDs];
  v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        if (v12)
        {
          v17 = 0;
          v18 = *(*(&v23 + 1) + 8 * i);
          do
          {
            v19 = [v5 clockForUUID:v18 atIndex:v17];
            if (v19 > [v6 clockForUUID:v18 atIndex:v17])
            {
              [v7 addObject:v18];
            }

            ++v17;
          }

          while (v12 != v17);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = [v7 allObjects];

  return v20;
}

+ (id)participantsWithReplicaIDs:(id)a3 inNote:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICShareNotifier participantsWithReplicaIDs:v5 inNote:v6];
  }

  obj = v5;

  v33 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v6 serverShare];
  v10 = [v9 participants];

  v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v15 userIdentity];
        v17 = [v16 userRecordID];
        v18 = [v17 recordName];

        if (v18)
        {
          [v8 setObject:v15 forKeyedSubscript:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v12);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obja = obj;
  v19 = [obja countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v37;
    *&v20 = 138412546;
    v32 = v20;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v24 = *(*(&v36 + 1) + 8 * j);
        v25 = [v6 userIDForReplicaID:{v24, v32}];
        v26 = os_log_create("com.apple.notes", "Notifications");
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          if (v27)
          {
            *buf = v32;
            v45 = v25;
            v46 = 2112;
            v47 = v24;
            _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "Found user ID %@ for replica ID %@", buf, 0x16u);
          }

          v26 = [v8 objectForKeyedSubscript:v25];
          v28 = os_log_create("com.apple.notes", "Notifications");
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
          if (v26)
          {
            if (v29)
            {
              *buf = 138412290;
              v45 = v25;
              _os_log_debug_impl(&dword_214D51000, v28, OS_LOG_TYPE_DEBUG, "Found participant for user ID %@", buf, 0xCu);
            }

            [v33 addObject:v26];
          }

          else
          {
            if (v29)
            {
              *buf = 138412290;
              v45 = v25;
              _os_log_debug_impl(&dword_214D51000, v28, OS_LOG_TYPE_DEBUG, "No participant for user ID %@", buf, 0xCu);
            }
          }
        }

        else if (v27)
        {
          *buf = 138412290;
          v45 = v24;
          _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "No user ID for replica ID %@", buf, 0xCu);
        }
      }

      v21 = [obja countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v21);
  }

  v30 = [v33 allObjects];

  return v30;
}

+ (void)showNotificationForNote:(id)a3 editors:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 count];
    v10 = [v6 shortLoggingDescription];
    *buf = 67109378;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Showing notification for %d editors for %@", buf, 0x12u);
  }

  v11 = [a1 notificationTitleForEditors:v7];
  v12 = [v6 title];
  v13 = v12;
  if (v11 && v12)
  {
    v14 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier showNotificationForNote:v6 editors:v14];
    }

    v15 = [v6 identifier];
    v18 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [a1 showNotificationWithTitle:v11 message:v13 userInfo:v16];
  }
}

+ (void)showNotificationWithTitle:(id)a3 message:(id)a4 userInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 objectForKeyedSubscript:@"Note"];
  v11 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ICShareNotifier showNotificationWithTitle:message:userInfo:];
  }

  v12 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v12 setTitle:v9];

  [v12 setBody:v8];
  [v12 setUserInfo:v7];

  v13 = [MEMORY[0x277CE1FE0] defaultSound];
  [v12 setSound:v13];

  v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v10 content:v12 trigger:0];
  v15 = [MEMORY[0x277CE2028] currentNotificationCenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke;
  v17[3] = &unk_278195FD8;
  v18 = v10;
  v16 = v10;
  [v15 addNotificationRequest:v14 withCompletionHandler:v17];
}

void __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Notifications");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke_cold_2(a1, v5, v6);
  }
}

+ (id)notificationTitleForEditors:(id)a3
{
  v3 = MEMORY[0x277CBC6A0];
  v4 = a3;
  v5 = [v3 ic_displayableNames:v4 maximumNamesCount:2];
  v6 = [v5 count];
  v7 = [v4 count];

  if (v7 == 1 && v6 == 1)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%@ Edited", @"%@ Edited", 0, 1);
    v9 = [v5 firstObject];
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, v9, v13];
    v10 = LABEL_4:;
LABEL_8:

    goto LABEL_9;
  }

  if (v7 == 2 && v6 == 2)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%@ & %@ Edited", @"%@ & %@ Edited", 0, 1);
    v9 = [v5 objectAtIndexedSubscript:0];
    v11 = [v5 objectAtIndexedSubscript:1];
    v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, v9, v11];

    goto LABEL_8;
  }

  if (v7 >= 2 && v6)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%2$@ & %1$d More Edited", @"%2$@ & %1$d More Edited", 0, 1);
    v9 = [v5 objectAtIndexedSubscript:0];
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, (v7 - 1), v9];
    goto LABEL_4;
  }

  v10 = __ICLocalizedFrameworkString_impl(@"New Edits", @"New Edits", 0, 1);
LABEL_9:

  return v10;
}

+ (BOOL)shouldPreventNotificationsForRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [a1 defaultsKeyForPreventingNotificationsForIdentifier:v4];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 BOOLForKey:v5];

  return v7;
}

+ (void)setShouldPreventNotifications:(BOOL)a3 forRecordID:(id)a4
{
  v4 = a3;
  v6 = [a4 recordName];
  v9 = [a1 defaultsKeyForPreventingNotificationsForIdentifier:v6];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = v7;
  if (v4)
  {
    [v7 setBool:1 forKey:v9];
  }

  else
  {
    [v7 removeObjectForKey:v9];
  }
}

+ (void)clearNotificationForRecordID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3(&dword_214D51000, v0, v1, "Attempting to clear notification for %@", v2);
}

+ (void)showNotificationIfNecessaryForCloudObject:(void *)a1 accountID:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)showNotificationIfNecessaryForCloudObject:(void *)a1 accountID:.cold.2(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)showNotificationIfNecessaryForCloudObject:(void *)a1 accountID:.cold.3(void *a1)
{
  [a1 count];
  v2 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3(&dword_214D51000, v0, v1, "Found current user record name (%@)", v2);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.7(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.8(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)shouldShowNotificationForNote:(void *)a1 .cold.9(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)participantsWithReplicaIDs:(void *)a1 inNote:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 componentsJoinedByString:{@", "}];
  v4 = [a2 shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

+ (void)showNotificationForNote:(void *)a1 editors:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 identifier];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [a1 modificationDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = 138412546;
  v9 = v4;
  v10 = 2048;
  v11 = v7;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Requesting notification for %@ %f seconds after it was last modified.", &v8, 0x16u);
}

+ (void)showNotificationWithTitle:message:userInfo:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3(&dword_214D51000, v0, v1, "Delivering user notification for %@", v2);
}

void __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error adding notification request for %@: %@", &v4, 0x16u);
}

void __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412290;
  v5 = v3;
  OUTLINED_FUNCTION_2_3(&dword_214D51000, a2, a3, "Added notification request for %@", &v4);
}

@end