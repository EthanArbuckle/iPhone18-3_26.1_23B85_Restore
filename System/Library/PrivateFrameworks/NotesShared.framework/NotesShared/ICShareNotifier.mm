@interface ICShareNotifier
+ (BOOL)shouldPreventNotificationsForRecordID:(id)d;
+ (BOOL)shouldShowNotificationForNote:(id)note;
+ (id)notificationTitleForEditors:(id)editors;
+ (id)participantsWithReplicaIDs:(id)ds inNote:(id)note;
+ (id)replicaIDsThatEditedTimestamp:(id)timestamp sinceTimestamp:(id)sinceTimestamp;
+ (void)clearNotificationForRecordID:(id)d;
+ (void)setShouldPreventNotifications:(BOOL)notifications forRecordID:(id)d;
+ (void)showNotificationForNote:(id)note editors:(id)editors;
+ (void)showNotificationIfNecessaryForCloudObject:(id)object accountID:(id)d;
+ (void)showNotificationWithTitle:(id)title message:(id)message userInfo:(id)info;
@end

@implementation ICShareNotifier

+ (void)clearNotificationForRecordID:(id)d
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    recordName = [d recordName];
    v4 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[ICShareNotifier clearNotificationForRecordID:];
    }

    currentNotificationCenter = [MEMORY[0x277CE2028] currentNotificationCenter];
    v7[0] = recordName;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [currentNotificationCenter removeDeliveredNotificationsWithIdentifiers:v6];
  }
}

+ (void)showNotificationIfNecessaryForCloudObject:(id)object accountID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ic_loggingDescription = [v6 ic_loggingDescription];
      v37[0] = @"lastNotifiedTimestamp";
      lastNotifiedTimestamp = [v6 lastNotifiedTimestamp];
      v36 = lastNotifiedTimestamp;
      if (lastNotifiedTimestamp)
      {
        v19 = lastNotifiedTimestamp;
      }

      else
      {
        v19 = @"nil";
      }

      v38[0] = v19;
      v37[1] = @"lastNotifiedDate";
      lastNotifiedDate = [v6 lastNotifiedDate];
      if (lastNotifiedDate)
      {
        v21 = lastNotifiedDate;
      }

      else
      {
        v21 = @"nil";
      }

      v38[1] = v21;
      v37[2] = @"lastViewedTimestamp";
      lastViewedTimestamp = [v6 lastViewedTimestamp];
      v23 = lastViewedTimestamp;
      if (lastViewedTimestamp)
      {
        v24 = lastViewedTimestamp;
      }

      else
      {
        v24 = @"nil";
      }

      v38[2] = v24;
      v37[3] = @"lastViewedModificationDate";
      lastViewedModificationDate = [v6 lastViewedModificationDate];
      v26 = lastViewedModificationDate;
      if (lastViewedModificationDate)
      {
        v27 = lastViewedModificationDate;
      }

      else
      {
        v27 = @"nil";
      }

      v38[3] = v27;
      v37[4] = @"modificationDate";
      modificationDate = [v6 modificationDate];
      v29 = modificationDate;
      if (modificationDate)
      {
        v30 = modificationDate;
      }

      else
      {
        v30 = @"nil";
      }

      v38[4] = v30;
      v37[5] = @"timestamp";
      timestamp = [v6 timestamp];
      v32 = timestamp;
      if (timestamp)
      {
        v33 = timestamp;
      }

      else
      {
        v33 = @"nil";
      }

      v38[5] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
      *buf = 138412546;
      v40 = ic_loggingDescription;
      v41 = 2112;
      v42 = v34;
      _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "Showing notification if necesary for (%@): %@", buf, 0x16u);
    }

    if ([self shouldShowNotificationForNote:v6])
    {
      timestamp2 = [v6 timestamp];
      lastNotifiedTimestamp2 = [v6 lastNotifiedTimestamp];
      v10 = [self replicaIDsThatEditedTimestamp:timestamp2 sinceTimestamp:lastNotifiedTimestamp2];

      v11 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier showNotificationIfNecessaryForCloudObject:v10 accountID:?];
      }

      v12 = [self participantsWithReplicaIDs:v10 inNote:v6];
      v13 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICShareNotifier showNotificationIfNecessaryForCloudObject:v12 accountID:?];
      }

      [self showNotificationForNote:v6 editors:v12];
      timestamp3 = [v6 timestamp];
      [v6 setLastNotifiedTimestamp:timestamp3];

      date = [MEMORY[0x277CBEAA8] date];
      [v6 setLastNotifiedDate:date];

      managedObjectContext = [v6 managedObjectContext];
      [managedObjectContext ic_saveWithLogDescription:@"setting notification metadata"];
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

+ (BOOL)shouldShowNotificationForNote:(id)note
{
  v65 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  if (shouldShowNotificationForNote__onceToken != -1)
  {
    +[ICShareNotifier shouldShowNotificationForNote:];
  }

  if (([self shareNotifierEnabled] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:noteCopy];
    }

    goto LABEL_12;
  }

  if (([noteCopy isSharedViaICloud] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:noteCopy];
    }

    goto LABEL_12;
  }

  recordID = [noteCopy recordID];
  v6 = [self shouldPreventNotificationsForRecordID:recordID];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:noteCopy];
    }

    goto LABEL_12;
  }

  lastNotifiedTimestamp = [noteCopy lastNotifiedTimestamp];
  if (lastNotifiedTimestamp)
  {
  }

  else
  {
    lastViewedTimestamp = [noteCopy lastViewedTimestamp];

    if (!lastViewedTimestamp)
    {
      v7 = os_log_create("com.apple.notes", "Notifications");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      shortLoggingDescription = [noteCopy shortLoggingDescription];
      *buf = 138412290;
      v60 = shortLoggingDescription;
      v31 = "Not showing notification for %@: never notified and never viewed";
      goto LABEL_59;
    }
  }

  modificationDate = [noteCopy modificationDate];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
  v15 = [modificationDate compare:v14];

  if (v15 == -1)
  {
    v7 = os_log_create("com.apple.notes", "Notifications");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    shortLoggingDescription = [noteCopy shortLoggingDescription];
    *buf = 138412290;
    v60 = shortLoggingDescription;
    v31 = "Not showing notification for %@: last modification date was too long ago";
LABEL_59:
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, v31, buf, 0xCu);
    goto LABEL_60;
  }

  lastNotifiedDate = [noteCopy lastNotifiedDate];
  if (lastNotifiedDate)
  {
    v17 = lastNotifiedDate;
    lastNotifiedDate2 = [noteCopy lastNotifiedDate];
    [lastNotifiedDate2 timeIntervalSinceNow];
    v20 = v19;

    v21 = v20 >= 0.0 ? v20 : -v20;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"MinSecondsBetweenSharedNoteNotifications"];
    v24 = v23;

    if (v21 < v24)
    {
      v7 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [noteCopy shortLoggingDescription];
        lastNotifiedDate3 = [noteCopy lastNotifiedDate];
        *buf = 138412546;
        v60 = shortLoggingDescription;
        v61 = 2112;
        v62 = lastNotifiedDate3;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Not showing notification for %@: notified at %@", buf, 0x16u);

LABEL_60:
      }

LABEL_12:
      v8 = 0;
      userRecordName = v7;
      goto LABEL_13;
    }
  }

  lastNotifiedTimestamp2 = [noteCopy lastNotifiedTimestamp];
  if (lastNotifiedTimestamp2)
  {
    lastNotifiedTimestamp3 = [noteCopy lastNotifiedTimestamp];
    timestamp = [noteCopy timestamp];
    v30 = [lastNotifiedTimestamp3 compareTo:timestamp] & 1;
  }

  else
  {
    v30 = 1;
  }

  lastViewedTimestamp2 = [noteCopy lastViewedTimestamp];
  if (lastViewedTimestamp2)
  {
    lastViewedTimestamp3 = [noteCopy lastViewedTimestamp];
    timestamp2 = [noteCopy timestamp];
    v35 = [lastViewedTimestamp3 compareTo:timestamp2] & 1;
  }

  else
  {
    v35 = 1;
  }

  v36 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription2 = [noteCopy shortLoggingDescription];
    v38 = shortLoggingDescription2;
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
    v60 = shortLoggingDescription2;
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

    shortLoggingDescription = [noteCopy shortLoggingDescription];
    *buf = 138412290;
    v60 = shortLoggingDescription;
    v31 = "Not showing notification for %@: no new edits since last view or notification";
    goto LABEL_59;
  }

  account = [noteCopy account];
  userRecordName = [account userRecordName];

  v42 = os_log_create("com.apple.notes", "Notifications");
  v43 = v42;
  if (userRecordName)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      +[ICShareNotifier shouldShowNotificationForNote:];
    }

    timestamp3 = [noteCopy timestamp];
    lastNotifiedTimestamp4 = [noteCopy lastNotifiedTimestamp];
    v7 = [self replicaIDsThatEditedTimestamp:timestamp3 sinceTimestamp:lastNotifiedTimestamp4];

    v46 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier shouldShowNotificationForNote:v7];
    }

    timestamp4 = [noteCopy timestamp];
    lastViewedTimestamp4 = [noteCopy lastViewedTimestamp];
    v49 = [self replicaIDsThatEditedTimestamp:timestamp4 sinceTimestamp:lastViewedTimestamp4];

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
    v53 = noteCopy;
    v57 = v53;
    v58 = userRecordName;
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
      [ICShareNotifier shouldShowNotificationForNote:noteCopy];
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

+ (id)replicaIDsThatEditedTimestamp:(id)timestamp sinceTimestamp:(id)sinceTimestamp
{
  v28 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  sinceTimestampCopy = sinceTimestamp;
  v7 = [MEMORY[0x277CBEB58] set];
  timestamps = [timestampCopy timestamps];
  v9 = [timestamps count];

  timestamps2 = [sinceTimestampCopy timestamps];
  v11 = [timestamps2 count];

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
  obj = [timestampCopy sortedUUIDs];
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
            v19 = [timestampCopy clockForUUID:v18 atIndex:v17];
            if (v19 > [sinceTimestampCopy clockForUUID:v18 atIndex:v17])
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

  allObjects = [v7 allObjects];

  return allObjects;
}

+ (id)participantsWithReplicaIDs:(id)ds inNote:(id)note
{
  v50 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  noteCopy = note;
  v7 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICShareNotifier participantsWithReplicaIDs:dsCopy inNote:noteCopy];
  }

  obj = dsCopy;

  v33 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  serverShare = [noteCopy serverShare];
  participants = [serverShare participants];

  v11 = [participants countByEnumeratingWithState:&v40 objects:v49 count:16];
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
          objc_enumerationMutation(participants);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        userIdentity = [v15 userIdentity];
        userRecordID = [userIdentity userRecordID];
        recordName = [userRecordID recordName];

        if (recordName)
        {
          [dictionary setObject:v15 forKeyedSubscript:recordName];
        }
      }

      v12 = [participants countByEnumeratingWithState:&v40 objects:v49 count:16];
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
        v25 = [noteCopy userIDForReplicaID:{v24, v32}];
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

          v26 = [dictionary objectForKeyedSubscript:v25];
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

  allObjects = [v33 allObjects];

  return allObjects;
}

+ (void)showNotificationForNote:(id)note editors:(id)editors
{
  v23 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  editorsCopy = editors;
  v8 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [editorsCopy count];
    shortLoggingDescription = [noteCopy shortLoggingDescription];
    *buf = 67109378;
    v20 = v9;
    v21 = 2112;
    v22 = shortLoggingDescription;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Showing notification for %d editors for %@", buf, 0x12u);
  }

  v11 = [self notificationTitleForEditors:editorsCopy];
  title = [noteCopy title];
  v13 = title;
  if (v11 && title)
  {
    v14 = os_log_create("com.apple.notes", "Notifications");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICShareNotifier showNotificationForNote:noteCopy editors:v14];
    }

    identifier = [noteCopy identifier];
    v18 = identifier;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [self showNotificationWithTitle:v11 message:v13 userInfo:v16];
  }
}

+ (void)showNotificationWithTitle:(id)title message:(id)message userInfo:(id)info
{
  infoCopy = info;
  messageCopy = message;
  titleCopy = title;
  v10 = [infoCopy objectForKeyedSubscript:@"Note"];
  v11 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ICShareNotifier showNotificationWithTitle:message:userInfo:];
  }

  v12 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v12 setTitle:titleCopy];

  [v12 setBody:messageCopy];
  [v12 setUserInfo:infoCopy];

  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v12 setSound:defaultSound];

  v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v10 content:v12 trigger:0];
  currentNotificationCenter = [MEMORY[0x277CE2028] currentNotificationCenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ICShareNotifier_showNotificationWithTitle_message_userInfo___block_invoke;
  v17[3] = &unk_278195FD8;
  v18 = v10;
  v16 = v10;
  [currentNotificationCenter addNotificationRequest:v14 withCompletionHandler:v17];
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

+ (id)notificationTitleForEditors:(id)editors
{
  v3 = MEMORY[0x277CBC6A0];
  editorsCopy = editors;
  v5 = [v3 ic_displayableNames:editorsCopy maximumNamesCount:2];
  v6 = [v5 count];
  v7 = [editorsCopy count];

  if (v7 == 1 && v6 == 1)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%@ Edited", @"%@ Edited", 0, 1);
    firstObject = [v5 firstObject];
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, firstObject, v13];
    v10 = LABEL_4:;
LABEL_8:

    goto LABEL_9;
  }

  if (v7 == 2 && v6 == 2)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%@ & %@ Edited", @"%@ & %@ Edited", 0, 1);
    firstObject = [v5 objectAtIndexedSubscript:0];
    v11 = [v5 objectAtIndexedSubscript:1];
    v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, firstObject, v11];

    goto LABEL_8;
  }

  if (v7 >= 2 && v6)
  {
    v8 = __ICLocalizedFrameworkString_impl(@"%2$@ & %1$d More Edited", @"%2$@ & %1$d More Edited", 0, 1);
    firstObject = [v5 objectAtIndexedSubscript:0];
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, (v7 - 1), firstObject];
    goto LABEL_4;
  }

  v10 = __ICLocalizedFrameworkString_impl(@"New Edits", @"New Edits", 0, 1);
LABEL_9:

  return v10;
}

+ (BOOL)shouldPreventNotificationsForRecordID:(id)d
{
  recordName = [d recordName];
  v5 = [self defaultsKeyForPreventingNotificationsForIdentifier:recordName];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:v5];

  return v7;
}

+ (void)setShouldPreventNotifications:(BOOL)notifications forRecordID:(id)d
{
  notificationsCopy = notifications;
  recordName = [d recordName];
  v9 = [self defaultsKeyForPreventingNotificationsForIdentifier:recordName];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = standardUserDefaults;
  if (notificationsCopy)
  {
    [standardUserDefaults setBool:1 forKey:v9];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:v9];
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