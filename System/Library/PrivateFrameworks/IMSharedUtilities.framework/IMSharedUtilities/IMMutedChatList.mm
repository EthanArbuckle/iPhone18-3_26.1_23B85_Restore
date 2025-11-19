@interface IMMutedChatList
+ (IMMutedChatList)sharedList;
- (BOOL)isMutedChatForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4 groupID:(id)a5 domainIdentifiers:(id)a6 participantIDs:(id)a7 lastAddressedHandleID:(id)a8 originalGroupID:(id)a9;
- (BOOL)isMutedChatForMuteIdentifiers:(id)a3;
- (IMMutedChatList)init;
- (NSDictionary)mutedChatList;
- (id)groupHashForParticipantIDs:(id)a3 lastAddressedHandleID:(id)a4;
- (id)muteIdentifiersForChatStyle:(unsigned __int8)a3 groupID:(id)a4 domainIdentifiers:(id)a5 participantIDs:(id)a6 lastAddressedHandleID:(id)a7 originalGroupID:(id)a8 chatIdentifier:(id)a9;
- (id)unmuteDateForMuteIdentifier:(id)a3;
- (id)unmuteDateForMuteIdentifiers:(id)a3;
- (void)_handleChatGroupIDChangedNotification:(id)a3;
- (void)_synchronizeMutedChatList:(id)a3 syncToPairedDevice:(BOOL)a4;
- (void)dealloc;
- (void)groupID:(id)a3 didChangeTo:(id)a4 previousDomainIdentifiers:(id)a5 newDomainIdentifiers:(id)a6 forChatIdentifier:(id)a7;
- (void)muteChatWithMuteIdentifiers:(id)a3 untilDate:(id)a4 syncToPairedDevice:(BOOL)a5;
- (void)syncToPairedDeviceIncludingVersion:(BOOL)a3;
- (void)unmuteChatWithMuteIdentifiers:(id)a3 syncToPairedDevice:(BOOL)a4;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__handleChatGroupIDChangedNotification_ name:@"_IMGroupIDChangedNotification" object:0];
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

- (id)muteIdentifiersForChatStyle:(unsigned __int8)a3 groupID:(id)a4 domainIdentifiers:(id)a5 participantIDs:(id)a6 lastAddressedHandleID:(id)a7 originalGroupID:(id)a8 chatIdentifier:(id)a9
{
  v13 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v13 == 45)
  {
    if ([v20 length])
    {
      [v21 addObject:v20];
    }
  }

  else
  {
    if ([v15 length])
    {
      [v21 addObject:v15];
    }

    if ([v16 count])
    {
      v27 = self;
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
      [v16 enumerateKeysAndObjectsUsingBlock:v28];
      v22 = [v36[5] allObjects];
      [v21 addObjectsFromArray:v22];

      v23 = [v30[5] allObjects];
      [v21 addObjectsFromArray:v23];

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);
    }

    v24 = [(IMMutedChatList *)self groupHashForParticipantIDs:v17 lastAddressedHandleID:v18, v27];
    if ([v24 length])
    {
      [v21 addObject:v24];
    }

    if ([v19 length])
    {
      [v21 addObject:v19];
    }
  }

  v25 = [v21 copy];

  return v25;
}

- (BOOL)isMutedChatForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4 groupID:(id)a5 domainIdentifiers:(id)a6 participantIDs:(id)a7 lastAddressedHandleID:(id)a8 originalGroupID:(id)a9
{
  v9 = self;
  v10 = [(IMMutedChatList *)self muteIdentifiersForChatStyle:a4 groupID:a5 domainIdentifiers:a6 participantIDs:a7 lastAddressedHandleID:a8 originalGroupID:a9 chatIdentifier:a3];
  LOBYTE(v9) = [(IMMutedChatList *)v9 isMutedChatForMuteIdentifiers:v10];

  return v9;
}

- (BOOL)isMutedChatForMuteIdentifiers:(id)a3
{
  v3 = [(IMMutedChatList *)self unmuteDateForMuteIdentifiers:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v4 compare:v3] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unmuteDateForMuteIdentifiers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)unmuteDateForMuteIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IMMutedChatList *)self mutedChatList];
  v6 = [v5 objectForKey:v4];

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

- (void)unmuteChatWithMuteIdentifiers:(id)a3 syncToPairedDevice:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v21 = v4;
    v20 = self;
    v19 = [(IMMutedChatList *)self mutedChatList];
    v7 = [v19 mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v6;
    v8 = v6;
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
        [(IMMutedChatList *)v20 _synchronizeMutedChatList:v18 syncToPairedDevice:v21];

        v6 = v22;
        break;
      }
    }
  }
}

- (void)muteChatWithMuteIdentifiers:(id)a3 untilDate:(id)a4 syncToPairedDevice:(BOOL)a5
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    if (!v9)
    {
      [(IMMutedChatList *)self unmuteChatWithMuteIdentifiers:v8 syncToPairedDevice:v5];
      goto LABEL_22;
    }

    v28 = v5;
    v27 = self;
    v10 = [(IMMutedChatList *)self mutedChatList];
    v11 = [v10 mutableCopy];
    v30 = v9;
    [v9 timeIntervalSince1970];
    v13 = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v8;
    v15 = v8;
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
        v21 = [v10 objectForKey:v20];
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
        [(IMMutedChatList *)v27 _synchronizeMutedChatList:v26 syncToPairedDevice:v28];

        v8 = v29;
        v9 = v30;
        break;
      }
    }
  }

LABEL_22:
}

- (void)_synchronizeMutedChatList:(id)a3 syncToPairedDevice:(BOOL)a4
{
  v4 = a4;
  CFPreferencesSetAppValue(@"CKDNDListKey", a3, @"com.apple.MobileSMS.CKDNDList");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS.CKDNDList");
  v6 = IMMutedChatListLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Synchronized Do Not Disturb list", v8, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.CKDNDList.changed", 0, 0, 2u);
  if (v4)
  {
    [(IMMutedChatList *)self syncToPairedDeviceIncludingVersion:0];
  }
}

- (id)groupHashForParticipantIDs:(id)a3 lastAddressedHandleID:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = v6;
  if (v5)
  {
    [v6 addObject:v5];
  }

  v8 = [v7 copy];
  v9 = IMSharedHelperGroupHashForHandleIDs(v8);

  return v9;
}

- (void)syncToPairedDeviceIncludingVersion:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMMutedChatList *)self syncManager];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1AC570AA0](@"NPSManager", @"NanoPreferencesSync"));
    [(IMMutedChatList *)self setSyncManager:v5];
  }

  v6 = [MEMORY[0x1E695DFA8] setWithObject:@"CKDNDListKey"];
  v7 = v6;
  if (v3)
  {
    [v6 addObject:@"CKDNDMigrationKey"];
  }

  [v5 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS.CKDNDList" keys:v7];
  v8 = IMMutedChatListLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "NPSManager synchronizedNanoDomain", v9, 2u);
  }
}

- (void)groupID:(id)a3 didChangeTo:(id)a4 previousDomainIdentifiers:(id)a5 newDomainIdentifiers:(id)a6 forChatIdentifier:(id)a7
{
  v56[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v12)
    {
      if (v13)
      {
        v17 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:v12];
        if (v17)
        {
          v18 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:v13];

          if (!v18)
          {
            v19 = IMMutedChatListLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v13;
              *&buf[22] = 2112;
              v53 = v16;
              _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_DEFAULT, "Chat with previousGroupID (%@) was muted, but that group ID changed. Updating muted chat to new group ID (%@) for chatIdentifier: %@", buf, 0x20u);
            }

            v56[0] = v13;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
            [(IMMutedChatList *)self muteChatWithMuteIdentifiers:v20 untilDate:v17 syncToPairedDevice:1];
          }

          v43 = [v15 __im_setDifferenceBetweenSelfAndObject:v14];
          v21 = [v14 __im_setDifferenceBetweenSelfAndObject:v15];
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

- (void)_handleChatGroupIDChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v14 = [v5 objectForKey:@"_IMGroupIDChangedPreviousGroupIDKey"];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"_IMGroupIDChangedUpdatedGroupIDKey"];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:@"_IMGroupIDChangedChatIdentifierKey"];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:@"_IMGroupIDChangedPreviousGroupIdentifiersKey"];

  v12 = [v4 userInfo];

  v13 = [v12 objectForKey:@"_IMGroupIDChangedUpdatedGroupIdentifiersKey"];

  [(IMMutedChatList *)self groupID:v14 didChangeTo:v7 previousDomainIdentifiers:v11 newDomainIdentifiers:v13 forChatIdentifier:v9];
}

@end