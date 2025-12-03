@interface IMAssistiveAccessCommunicationLimitManager
+ (IMAssistiveAccessCommunicationLimitManager)sharedManager;
- (BOOL)_allowsHandleIDs:(id)ds forCommunicationLimit:(id)limit;
- (BOOL)_isAllowedContact:(id)contact forCommunicationLimit:(id)limit;
- (BOOL)_isSelectedContact:(id)contact;
- (BOOL)_shouldFilterMessagesForCommunicationLimit:(id)limit;
- (BOOL)allowsConversationWithHandleIDs:(id)ds;
- (BOOL)allowsSendingToHandleIDs:(id)ds;
- (BOOL)isAssistiveAccessRunning;
- (BOOL)shouldFilterIncomingMessages;
- (BOOL)shouldFilterOutgoingMessages;
- (NSArray)favoriteHandleStrings;
- (id)_handleStringForFavoritesEntry:(id)entry;
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
  mEMORY[0x1E6994628] = [MEMORY[0x1E6994628] sharedInstance];
  incomingCommunicationLimit = [mEMORY[0x1E6994628] incomingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:incomingCommunicationLimit];

  return self;
}

- (BOOL)isAssistiveAccessRunning
{
  mEMORY[0x1E6994660] = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994660] isClarityBoardEnabled];

  return isClarityBoardEnabled;
}

- (BOOL)_shouldFilterMessagesForCommunicationLimit:(id)limit
{
  v10 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  if (![(IMAssistiveAccessCommunicationLimitManager *)self isAssistiveAccessRunning])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (([limitCopy isEqualToString:*MEMORY[0x1E6994610]] & 1) == 0 && (objc_msgSend(limitCopy, "isEqualToString:", *MEMORY[0x1E69945F0]) & 1) == 0)
  {
    if (([limitCopy isEqualToString:*MEMORY[0x1E6994600]] & 1) == 0)
    {
      commonLog = [MEMORY[0x1E6994620] commonLog];
      if (os_log_type_enabled(commonLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = limitCopy;
        _os_log_impl(&dword_1A85E5000, commonLog, OS_LOG_TYPE_DEFAULT, "Unhandled Messages communication limit: %@", &v8, 0xCu);
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
  mEMORY[0x1E6994628] = [MEMORY[0x1E6994628] sharedInstance];
  outgoingCommunicationLimit = [mEMORY[0x1E6994628] outgoingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:outgoingCommunicationLimit];

  return self;
}

- (NSArray)favoriteHandleStrings
{
  _selectedContactFavoritesEntries = [(IMAssistiveAccessCommunicationLimitManager *)self _selectedContactFavoritesEntries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A86DB3B4;
  v6[3] = &unk_1E782A0A8;
  v6[4] = self;
  v4 = [_selectedContactFavoritesEntries __imArrayByApplyingBlock:v6];

  return v4;
}

- (BOOL)_allowsHandleIDs:(id)ds forCommunicationLimit:(id)limit
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  limitCopy = limit;
  if ([(IMAssistiveAccessCommunicationLimitManager *)self _shouldFilterMessagesForCommunicationLimit:limitCopy])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = dsCopy;
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

          LODWORD(v14) = [(IMAssistiveAccessCommunicationLimitManager *)self _isAllowedContact:v15 forCommunicationLimit:limitCopy];
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

- (BOOL)allowsConversationWithHandleIDs:(id)ds
{
  v4 = MEMORY[0x1E6994628];
  dsCopy = ds;
  sharedInstance = [v4 sharedInstance];
  incomingCommunicationLimit = [sharedInstance incomingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _allowsHandleIDs:dsCopy forCommunicationLimit:incomingCommunicationLimit];

  return self;
}

- (BOOL)allowsSendingToHandleIDs:(id)ds
{
  v4 = MEMORY[0x1E6994628];
  dsCopy = ds;
  sharedInstance = [v4 sharedInstance];
  outgoingCommunicationLimit = [sharedInstance outgoingCommunicationLimit];
  LOBYTE(self) = [(IMAssistiveAccessCommunicationLimitManager *)self _allowsHandleIDs:dsCopy forCommunicationLimit:outgoingCommunicationLimit];

  return self;
}

- (BOOL)_isAllowedContact:(id)contact forCommunicationLimit:(id)limit
{
  contactCopy = contact;
  limitCopy = limit;
  v8 = +[IMContactStore isCNContactAKnownContact:](IMContactStore, "isCNContactAKnownContact:", contactCopy) && (![limitCopy isEqualToString:*MEMORY[0x1E6994610]] || -[IMAssistiveAccessCommunicationLimitManager _isSelectedContact:](self, "_isSelectedContact:", contactCopy));

  return v8;
}

- (BOOL)_isSelectedContact:(id)contact
{
  v21 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _selectedContactFavoritesEntries = [(IMAssistiveAccessCommunicationLimitManager *)self _selectedContactFavoritesEntries];
  v6 = [_selectedContactFavoritesEntries countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(_selectedContactFavoritesEntries);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        identifier = [contactCopy identifier];
        contactProperty = [v9 contactProperty];
        contact = [contactProperty contact];
        identifier2 = [contact identifier];
        v14 = [identifier isEqual:identifier2];

        if (v14)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [_selectedContactFavoritesEntries countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  favorites = [(IMAssistiveAccessCommunicationLimitManager *)self favorites];

  if (!favorites)
  {
    v4 = objc_alloc(MEMORY[0x1E695CE90]);
    v5 = +[IMContactStore sharedInstance];
    getContactStore = [v5 getContactStore];
    v7 = [v4 initWithContactStore:getContactStore];
    [(IMAssistiveAccessCommunicationLimitManager *)self setFavorites:v7];
  }

  favorites2 = [(IMAssistiveAccessCommunicationLimitManager *)self favorites];
  entries = [favorites2 entries];
  v10 = [entries __imArrayByFilteringWithBlock:&unk_1F1BA7AE8];

  return v10;
}

- (id)_handleStringForFavoritesEntry:(id)entry
{
  contactProperty = [entry contactProperty];
  v4 = [contactProperty key];
  if ([v4 isEqualToString:*MEMORY[0x1E695C330]])
  {
    value = [contactProperty value];
    formattedStringValue = [value formattedStringValue];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C208]])
  {
    formattedStringValue = [contactProperty value];
  }

  else
  {
    formattedStringValue = &stru_1F1BB91F0;
  }

  return formattedStringValue;
}

@end