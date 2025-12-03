@interface IMMutedChatList
+ (IMMutedChatList)sharedList;
- (BOOL)isMutedChatForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID;
- (BOOL)isMutedChatForMuteIdentifiers:(id)identifiers;
- (IMMutedChatList)init;
- (NSDictionary)mutedChatList;
- (id)groupHashForParticipantIDs:(id)ds lastAddressedHandleID:(id)d;
- (id)muteIdentifiersForChatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID chatIdentifier:(id)identifier;
- (id)unmuteDateForMuteIdentifier:(id)identifier;
- (id)unmuteDateForMuteIdentifiers:(id)identifiers;
- (void)_handleChatGroupIDChangedNotification:(id)notification;
- (void)_synchronizeMutedChatList:(id)list syncToPairedDevice:(BOOL)device;
- (void)dealloc;
- (void)groupID:(id)d didChangeTo:(id)to previousDomainIdentifiers:(id)identifiers newDomainIdentifiers:(id)domainIdentifiers forChatIdentifier:(id)identifier;
- (void)muteChatWithMuteIdentifiers:(id)identifiers untilDate:(id)date syncToPairedDevice:(BOOL)device;
- (void)syncToPairedDeviceIncludingVersion:(BOOL)version;
- (void)unmuteChatWithMuteIdentifiers:(id)identifiers syncToPairedDevice:(BOOL)device;
@end

@implementation IMMutedChatList

+ (IMMutedChatList)sharedList
{
  if (qword_1ED8C9D98 != -1)
  {
    sub_1A85FFAA8();
  }

  v3 = qword_1ED8C9D90;

  return v3;
}

- (IMMutedChatList)init
{
  v6.receiver = self;
  v6.super_class = IMMutedChatList;
  v2 = [(IMMutedChatList *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1A86AAC80, @"com.apple.MobileSMS.CKDNDList.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleChatGroupIDChangedNotification_ name:@"_IMGroupIDChangedNotification" object:0];
  }

  return v2;
}

- (NSDictionary)mutedChatList
{
  v2 = CFPreferencesCopyAppValue(@"CKDNDListKey", @"com.apple.MobileSMS.CKDNDList");
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = IMMutedChatList;
  [(IMMutedChatList *)&v4 dealloc];
}

- (id)muteIdentifiersForChatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID chatIdentifier:(id)identifier
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  dsCopy = ds;
  iDCopy = iD;
  groupIDCopy = groupID;
  identifierCopy = identifier;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (styleCopy == 45)
  {
    if ([identifierCopy length])
    {
      [v21 addObject:identifierCopy];
    }
  }

  else
  {
    if ([dCopy length])
    {
      [v21 addObject:dCopy];
    }

    if ([identifiersCopy count])
    {
      selfCopy = self;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_1A8601F74;
      v39 = sub_1A86021A8;
      v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_1A8601F74;
      v33 = sub_1A86021A8;
      v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A86AB048;
      v28[3] = &unk_1E78295C0;
      v28[4] = &v35;
      v28[5] = &v29;
      [identifiersCopy enumerateKeysAndObjectsUsingBlock:v28];
      allObjects = [v36[5] allObjects];
      [v21 addObjectsFromArray:allObjects];

      allObjects2 = [v30[5] allObjects];
      [v21 addObjectsFromArray:allObjects2];

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);
    }

    selfCopy = [(IMMutedChatList *)self groupHashForParticipantIDs:dsCopy lastAddressedHandleID:iDCopy, selfCopy];
    if ([selfCopy length])
    {
      [v21 addObject:selfCopy];
    }

    if ([groupIDCopy length])
    {
      [v21 addObject:groupIDCopy];
    }
  }

  v25 = [v21 copy];

  return v25;
}

- (BOOL)isMutedChatForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID
{
  selfCopy = self;
  v10 = [(IMMutedChatList *)self muteIdentifiersForChatStyle:style groupID:d domainIdentifiers:identifiers participantIDs:ds lastAddressedHandleID:iD originalGroupID:groupID chatIdentifier:identifier];
  LOBYTE(selfCopy) = [(IMMutedChatList *)selfCopy isMutedChatForMuteIdentifiers:v10];

  return selfCopy;
}

- (BOOL)isMutedChatForMuteIdentifiers:(id)identifiers
{
  v3 = [(IMMutedChatList *)self unmuteDateForMuteIdentifiers:identifiers];
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = [date compare:v3] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unmuteDateForMuteIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)unmuteDateForMuteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutedChatList = [(IMMutedChatList *)self mutedChatList];
  v6 = [mutedChatList objectForKey:identifierCopy];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unmuteChatWithMuteIdentifiers:(id)identifiers syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  v30 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v21 = deviceCopy;
    selfCopy = self;
    mutedChatList = [(IMMutedChatList *)self mutedChatList];
    v7 = [mutedChatList mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = identifiersCopy;
    v8 = identifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];

        if (v14)
        {
          [v7 removeObjectForKey:v13];
          v15 = IMMutedChatListLogHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v28 = v13;
          v16 = v15;
          v17 = "Unmuting chat with identifier: %@";
        }

        else
        {
          v15 = IMMutedChatListLogHandle();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v28 = v13;
          v16 = v15;
          v17 = "Can't unmute chat with identifier: %@, that wasn't muted to begin with...";
        }

        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
LABEL_13:
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (!v10)
      {
LABEL_15:

        v18 = [v7 copy];
        [(IMMutedChatList *)selfCopy _synchronizeMutedChatList:v18 syncToPairedDevice:v21];

        identifiersCopy = v22;
        break;
      }
    }
  }
}

- (void)muteChatWithMuteIdentifiers:(id)identifiers untilDate:(id)date syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dateCopy = date;
  if ([identifiersCopy count])
  {
    if (!dateCopy)
    {
      [(IMMutedChatList *)self unmuteChatWithMuteIdentifiers:identifiersCopy syncToPairedDevice:deviceCopy];
      goto LABEL_22;
    }

    v28 = deviceCopy;
    selfCopy = self;
    mutedChatList = [(IMMutedChatList *)self mutedChatList];
    v11 = [mutedChatList mutableCopy];
    v30 = dateCopy;
    [dateCopy timeIntervalSince1970];
    v13 = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = identifiersCopy;
    v15 = identifiersCopy;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = v16;
    v18 = *v32;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [mutedChatList objectForKey:v20];
        if (v21 && [v14 isEqualToNumber:v21])
        {
          v22 = IMMutedChatListLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 0;
          v23 = v22;
          v24 = "Same unmute time, not updating";
          v25 = 2;
        }

        else if (v13 <= 0.0)
        {
          [v11 removeObjectForKey:v20];
          v22 = IMMutedChatListLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 138412546;
          v36 = v30;
          v37 = 2112;
          v38 = v20;
          v23 = v22;
          v24 = "Updating unmute time to %@ for chat with identifier: %@";
          v25 = 22;
        }

        else
        {
          [v11 setObject:v14 forKey:v20];
          v22 = IMMutedChatListLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v36 = v20;
          v23 = v22;
          v24 = "Muting chat with identifier: %@";
          v25 = 12;
        }

        _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
LABEL_18:
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (!v17)
      {
LABEL_20:

        v26 = [v11 copy];
        [(IMMutedChatList *)selfCopy _synchronizeMutedChatList:v26 syncToPairedDevice:v28];

        identifiersCopy = v29;
        dateCopy = v30;
        break;
      }
    }
  }

LABEL_22:
}

- (void)_synchronizeMutedChatList:(id)list syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  CFPreferencesSetAppValue(@"CKDNDListKey", list, @"com.apple.MobileSMS.CKDNDList");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS.CKDNDList");
  v6 = IMMutedChatListLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Synchronized Do Not Disturb list", v8, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.CKDNDList.changed", 0, 0, 2u);
  if (deviceCopy)
  {
    [(IMMutedChatList *)self syncToPairedDeviceIncludingVersion:0];
  }
}

- (id)groupHashForParticipantIDs:(id)ds lastAddressedHandleID:(id)d
{
  dCopy = d;
  v6 = [ds mutableCopy];
  v7 = v6;
  if (dCopy)
  {
    [v6 addObject:dCopy];
  }

  v8 = [v7 copy];
  v9 = IMSharedHelperGroupHashForHandleIDs(v8);

  return v9;
}

- (void)syncToPairedDeviceIncludingVersion:(BOOL)version
{
  versionCopy = version;
  syncManager = [(IMMutedChatList *)self syncManager];
  if (!syncManager)
  {
    syncManager = objc_alloc_init(MEMORY[0x1AC570AA0](@"NPSManager", @"NanoPreferencesSync"));
    [(IMMutedChatList *)self setSyncManager:syncManager];
  }

  v6 = [MEMORY[0x1E695DFA8] setWithObject:@"CKDNDListKey"];
  v7 = v6;
  if (versionCopy)
  {
    [v6 addObject:@"CKDNDMigrationKey"];
  }

  [syncManager synchronizeUserDefaultsDomain:@"com.apple.MobileSMS.CKDNDList" keys:v7];
  v8 = IMMutedChatListLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "NPSManager synchronizedNanoDomain", v9, 2u);
  }
}

- (void)groupID:(id)d didChangeTo:(id)to previousDomainIdentifiers:(id)identifiers newDomainIdentifiers:(id)domainIdentifiers forChatIdentifier:(id)identifier
{
  v56[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  toCopy = to;
  identifiersCopy = identifiers;
  domainIdentifiersCopy = domainIdentifiers;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (dCopy)
    {
      if (toCopy)
      {
        v17 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:dCopy];
        if (v17)
        {
          v18 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:toCopy];

          if (!v18)
          {
            v19 = IMMutedChatListLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = dCopy;
              *&buf[12] = 2112;
              *&buf[14] = toCopy;
              *&buf[22] = 2112;
              v53 = identifierCopy;
              _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Chat with previousGroupID (%@) was muted, but that group ID changed. Updating muted chat to new group ID (%@) for chatIdentifier: %@", buf, 0x20u);
            }

            v56[0] = toCopy;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
            [(IMMutedChatList *)self muteChatWithMuteIdentifiers:v20 untilDate:v17 syncToPairedDevice:1];
          }

          v43 = [domainIdentifiersCopy __im_setDifferenceBetweenSelfAndObject:identifiersCopy];
          v21 = [identifiersCopy __im_setDifferenceBetweenSelfAndObject:domainIdentifiersCopy];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v53 = sub_1A8601F74;
          v54 = sub_1A86021A8;
          v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v46 = 0;
          v47 = &v46;
          v48 = 0x3032000000;
          v49 = sub_1A8601F74;
          v50 = sub_1A86021A8;
          v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = sub_1A86ABF74;
          v45[3] = &unk_1E7829610;
          v45[4] = self;
          v45[5] = buf;
          [v43 enumerateKeysAndObjectsUsingBlock:v45];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = sub_1A86AC060;
          v44[3] = &unk_1E7829610;
          v44[4] = self;
          v44[5] = &v46;
          [v21 enumerateKeysAndObjectsUsingBlock:v44];
          [(IMMutedChatList *)self muteChatWithMuteIdentifiers:*(*&buf[8] + 40) untilDate:v17 syncToPairedDevice:1];
          [(IMMutedChatList *)self unmuteChatWithMuteIdentifiers:v47[5] syncToPairedDevice:1];
          _Block_object_dispose(&v46, 8);

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v17 = IMMutedChatListLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C38F0(v17, v36, v37, v38, v39, v40, v41, v42);
        }
      }
    }

    else
    {
      v17 = IMMutedChatListLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3928(v17, v29, v30, v31, v32, v33, v34, v35);
      }
    }
  }

  else
  {
    v17 = IMMutedChatListLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3960(v17, v22, v23, v24, v25, v26, v27, v28);
    }
  }
}

- (void)_handleChatGroupIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v14 = [userInfo objectForKey:@"_IMGroupIDChangedPreviousGroupIDKey"];

  userInfo2 = [notificationCopy userInfo];
  v7 = [userInfo2 objectForKey:@"_IMGroupIDChangedUpdatedGroupIDKey"];

  userInfo3 = [notificationCopy userInfo];
  v9 = [userInfo3 objectForKey:@"_IMGroupIDChangedChatIdentifierKey"];

  userInfo4 = [notificationCopy userInfo];
  v11 = [userInfo4 objectForKey:@"_IMGroupIDChangedPreviousGroupIdentifiersKey"];

  userInfo5 = [notificationCopy userInfo];

  v13 = [userInfo5 objectForKey:@"_IMGroupIDChangedUpdatedGroupIdentifiersKey"];

  [(IMMutedChatList *)self groupID:v14 didChangeTo:v7 previousDomainIdentifiers:v11 newDomainIdentifiers:v13 forChatIdentifier:v9];
}

@end