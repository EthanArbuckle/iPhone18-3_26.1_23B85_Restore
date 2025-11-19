@interface CKConversationMutedChatListMigrator
- (id)_dnd_deprecated_globalIdentifierForChat:(id)a3;
- (void)migrateMutedChatListInfoIfNeeded;
- (void)performMutedChatListMigrationIfNecessary;
@end

@implementation CKConversationMutedChatListMigrator

- (void)migrateMutedChatListInfoIfNeeded
{
  v3 = +[CKConversationList sharedConversationList];
  v4 = [v3 conversations];
  v5 = [v4 count];

  if (v5)
  {

    [(CKConversationMutedChatListMigrator *)self performMutedChatListMigrationIfNecessary];
  }
}

- (void)performMutedChatListMigrationIfNecessary
{
  v52 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CKDNDMigrationKey", @"com.apple.MobileSMS.CKDNDList", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v38 = AppIntegerValue;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = +[CKConversationList sharedConversationList];
    v6 = [v5 conversations];

    v7 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      v39 = self;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v44 + 1) + 8 * i) chat];
          v12 = [v11 valueForChatProperty:@"CKChatUnmuteTime"];
          v13 = v12;
          if (v12)
          {
            [v12 doubleValue];
            if (v14 > 0.0)
            {
              v15 = MEMORY[0x1E695DF00];
              [v13 doubleValue];
              v16 = [v15 dateWithTimeIntervalSince1970:?];
              if (v16)
              {
                v17 = v16;
                v18 = [MEMORY[0x1E695DFB0] null];
                [v11 setValue:v18 forChatProperty:@"CKChatUnmuteTime"];

                v19 = [MEMORY[0x1E69A8180] sharedList];
                v20 = [(CKConversationMutedChatListMigrator *)self _dnd_deprecated_globalIdentifierForChat:v11];
                v21 = v20;
                if (v20)
                {
                  v50 = v20;
                  [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
                  v22 = v8;
                  v23 = v9;
                  v25 = v24 = v6;
                  [v19 muteChatWithMuteIdentifiers:v25 untilDate:v17 syncToPairedDevice:0];

                  v6 = v24;
                  v9 = v23;
                  v8 = v22;
                }

                self = v39;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v8);
    }

    AppIntegerValue = v38;
  }

  if (AppIntegerValue <= 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = +[CKConversationList sharedConversationList];
    v27 = [v26 conversations];

    v28 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v40 + 1) + 8 * j) chat];
          v33 = [MEMORY[0x1E69A8180] sharedList];
          v34 = [(CKConversationMutedChatListMigrator *)self _dnd_deprecated_globalIdentifierForChat:v32];
          v35 = [v33 unmuteDateForMuteIdentifier:v34];

          if (v35)
          {
            v36 = [MEMORY[0x1E69A8180] sharedList];
            [v36 muteChat:v32 untilDate:v35 syncToPairedDevice:0];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v29);
    }

    CFPreferencesSetAppValue(@"CKDNDMigrationKey", &unk_1F04E7AD0, @"com.apple.MobileSMS.CKDNDList");
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS.CKDNDList");
    v37 = [MEMORY[0x1E69A8180] sharedList];
    [v37 syncToPairedDeviceIncludingVersion:1];
  }
}

- (id)_dnd_deprecated_globalIdentifierForChat:(id)a3
{
  v3 = a3;
  if ([v3 chatStyle] == 45)
  {
    [v3 chatIdentifier];
  }

  else
  {
    [v3 groupID];
  }
  v4 = ;

  return v4;
}

@end