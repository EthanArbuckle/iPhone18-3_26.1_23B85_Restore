@interface IMAssistiveAccessCommunicationLimitManager
+ (IMAssistiveAccessCommunicationLimitManager)sharedManager;
- (BOOL)_allowsHandleIDs:(id)a3 forCommunicationLimit:(id)a4;
- (BOOL)_isAllowedContact:(id)a3 forCommunicationLimit:(id)a4;
- (BOOL)_isSelectedContact:(id)a3;
- (BOOL)_shouldFilterMessagesForCommunicationLimit:(id)a3;
- (BOOL)allowsConversationWithHandleIDs:(id)a3;
- (BOOL)allowsSendingToHandleIDs:(id)a3;
- (BOOL)isAssistiveAccessRunning;
- (BOOL)shouldFilterIncomingMessages;
- (BOOL)shouldFilterOutgoingMessages;
- (NSArray)favoriteHandleStrings;
- (id)_handleStringForFavoritesEntry:(id)a3;
- (id)_selectedContactFavoritesEntries;
@end

@implementation IMAssistiveAccessCommunicationLimitManager

+ (IMAssistiveAccessCommunicationLimitManager)sharedManager
{
  if (qword_1ED8CA120 != -1)
  {
    sub_1A88C53F4();
  }

  v3 = qword_1ED8CA0F0;

  return v3;
}

- (BOOL)shouldFilterIncomingMessages
{
  v3 = [MEMORY[0x1E6994628] sharedInstance];
  v4 = [v3 incomingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:v4];

  return self;
}

- (BOOL)isAssistiveAccessRunning
{
  v2 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  return v3;
}

- (BOOL)_shouldFilterMessagesForCommunicationLimit:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(IMAssistiveAccessCommunicationLimitManager *)self isAssistiveAccessRunning])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (([v4 isEqualToString:*MEMORY[0x1E6994610]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69945F0]) & 1) == 0)
  {
    if (([v4 isEqualToString:*MEMORY[0x1E6994600]] & 1) == 0)
    {
      v6 = [MEMORY[0x1E6994620] commonLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, "Unhandled Messages communication limit: %@", &v8, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (BOOL)shouldFilterOutgoingMessages
{
  v3 = [MEMORY[0x1E6994628] sharedInstance];
  v4 = [v3 outgoingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:v4];

  return self;
}

- (NSArray)favoriteHandleStrings
{
  v3 = [(IMAssistiveAccessCommunicationLimitManager *)self _selectedContactFavoritesEntries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A86DB3B4;
  v6[3] = &unk_1E782A0A8;
  v6[4] = self;
  v4 = [v3 __imArrayByApplyingBlock:v6];

  return v4;
}

- (BOOL)_allowsHandleIDs:(id)a3 forCommunicationLimit:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:v7])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = +[IMContactStore sharedInstance];
          v15 = [v14 fetchCNContactForHandleWithID:v13];

          LODWORD(v14) = [(IMAssistiveAccessCommunicationLimitManager *)self _isAllowedContact:v15 forCommunicationLimit:v7];
          if (!v14)
          {
            v16 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_13:
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)allowsConversationWithHandleIDs:(id)a3
{
  v4 = MEMORY[0x1E6994628];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 incomingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _allowsHandleIDs:v5 forCommunicationLimit:v7];

  return self;
}

- (BOOL)allowsSendingToHandleIDs:(id)a3
{
  v4 = MEMORY[0x1E6994628];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 outgoingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _allowsHandleIDs:v5 forCommunicationLimit:v7];

  return self;
}

- (BOOL)_isAllowedContact:(id)a3 forCommunicationLimit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMContactStore isCNContactAKnownContact:](IMContactStore, "isCNContactAKnownContact:", v6) && (![v7 isEqualToString:*MEMORY[0x1E6994610]] || -[IMAssistiveAccessCommunicationLimitManager _isSelectedContact:](self, "_isSelectedContact:", v6));

  return v8;
}

- (BOOL)_isSelectedContact:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(IMAssistiveAccessCommunicationLimitManager *)self _selectedContactFavoritesEntries];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v4 identifier];
        v11 = [v9 contactProperty];
        v12 = [v11 contact];
        v13 = [v12 identifier];
        v14 = [v10 isEqual:v13];

        if (v14)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_selectedContactFavoritesEntries
{
  v3 = [(IMAssistiveAccessCommunicationLimitManager *)self favorites];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695CE90]);
    v5 = +[IMContactStore sharedInstance];
    v6 = [v5 getContactStore];
    v7 = [v4 initWithContactStore:v6];
    [(IMAssistiveAccessCommunicationLimitManager *)self setFavorites:v7];
  }

  v8 = [(IMAssistiveAccessCommunicationLimitManager *)self favorites];
  v9 = [v8 entries];
  v10 = [v9 __imArrayByFilteringWithBlock:&unk_1F1BA7AE8];

  return v10;
}

- (id)_handleStringForFavoritesEntry:(id)a3
{
  v3 = [a3 contactProperty];
  v4 = [v3 key];
  if ([v4 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v5 = [v3 value];
    v6 = [v5 formattedStringValue];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v6 = [v3 value];
  }

  else
  {
    v6 = &stru_1F1BB91F0;
  }

  return v6;
}

@end