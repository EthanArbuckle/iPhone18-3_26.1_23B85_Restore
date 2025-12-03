@interface IMDContactStoreChangeHistoryEventsHandler
- (BOOL)isAcceptedCNID:(id)d;
- (BOOL)isCuratedCNID:(id)d;
- (IMDContactStoreChangeHistoryEventsHandler)initWithAliasToCNIDMap:(id)map;
- (id)generateCNIDToAliasesMapFrom:(id)from;
- (id)getCachedAcceptedContactIdentifiers;
- (id)matchAliasesFromCacheForCNContact:(id)contact;
- (id)updateWithCurrentAcceptedContactsMap:(id)map;
- (void)addAliasToCNIDToAliasMap:(id)map withCNID:(id)d;
- (void)handleAddOrUpdateEventForCNContact:(id)contact;
- (void)handleDeleteEventForContactIdentifier:(id)identifier;
- (void)removeAliasFromCNIDToAliasesMap:(id)map withCNID:(id)d;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation IMDContactStoreChangeHistoryEventsHandler

- (IMDContactStoreChangeHistoryEventsHandler)initWithAliasToCNIDMap:(id)map
{
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = IMDContactStoreChangeHistoryEventsHandler;
  v6 = [(IMDContactStoreChangeHistoryEventsHandler *)&v12 init];
  if (v6)
  {
    if (IMAdditionalContactsLoggingEnabled())
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, " Initializing with alisToCNIDMap", v11, 2u);
        }
      }

      [IMContactStore logDictionary:mapCopy];
    }

    objc_storeStrong(&v6->_aliasToCNIDMap, map);
    v8 = [(IMDContactStoreChangeHistoryEventsHandler *)v6 generateCNIDToAliasesMapFrom:mapCopy];
    CNIDToAliasesMap = v6->_CNIDToAliasesMap;
    v6->_CNIDToAliasesMap = v8;
  }

  return v6;
}

- (BOOL)isAcceptedCNID:(id)d
{
  dCopy = d;
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E695CD58] isCoreRecentsAcceptedIdentifier:dCopy];
  }

  else
  {
    v4 = [dCopy hasPrefix:@"CNCoreRecentsContactStore://com.apple.introductions.accepted"];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isCuratedCNID:(id)d
{
  dCopy = d;
  if ([(IMDContactStoreChangeHistoryEventsHandler *)self isUnknownCNID:dCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(IMDContactStoreChangeHistoryEventsHandler *)self isAcceptedCNID:dCopy];
  }

  return v5;
}

- (id)getCachedAcceptedContactIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_CNIDToAliasesMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(IMDContactStoreChangeHistoryEventsHandler *)self isAcceptedCNID:v9])
        {
          [array addObject:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)updateWithCurrentAcceptedContactsMap:(id)map
{
  v69 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v4 = MEMORY[0x1E695DFA8];
  getCachedAcceptedContactIdentifiers = [(IMDContactStoreChangeHistoryEventsHandler *)self getCachedAcceptedContactIdentifiers];
  v6 = [v4 setWithArray:getCachedAcceptedContactIdentifiers];

  array = [MEMORY[0x1E695DF70] array];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1A8635408;
  v59[3] = &unk_1E7826240;
  v59[4] = self;
  v8 = v6;
  v60 = v8;
  v9 = array;
  v61 = v9;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v59];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 count];
      *buf = 134217984;
      v63 = v11;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "updateWithCurrentAcceptedContactsMap: updating with %lu currently accepted contacts", buf, 0xCu);
    }
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v12)
  {
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_CNIDToAliasesMap objectForKey:v15];
        if ([v16 count])
        {
          [array2 addObjectsFromArray:v16];
        }

        [(IMDContactStoreChangeHistoryEventsHandler *)self handleDeleteEventForContactIdentifier:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v12);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = v9;
  v45 = [v41 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v45)
  {
    v44 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v44)
        {
          v18 = v17;
          objc_enumerationMutation(v41);
          v17 = v18;
        }

        v46 = v17;
        v19 = *(*(&v51 + 1) + 8 * v17);
        v20 = [(IMDContactStoreChangeHistoryEventsHandler *)self matchAliasesFromCacheForCNContact:v19];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v47 objects:v66 count:16];
        if (v22)
        {
          v23 = 0;
          v24 = *v48;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [(NSMutableDictionary *)self->_aliasToCNIDMap objectForKey:*(*(&v47 + 1) + 8 * j)];
              if ([(IMDContactStoreChangeHistoryEventsHandler *)self isCuratedCNID:v26])
              {

                goto LABEL_35;
              }

              if ([(IMDContactStoreChangeHistoryEventsHandler *)self isUnknownCNID:v26])
              {
                v23 = 1;
              }

              else
              {
                identifier = [v19 identifier];
                v28 = [v26 isEqualToString:identifier];

                v23 |= v28 ^ 1;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v47 objects:v66 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

          if (v23)
          {
            firstObject = [v21 firstObject];
            v30 = firstObject == 0;

            if (!v30)
            {
              firstObject2 = [v21 firstObject];
              [dictionary setValue:v19 forKey:firstObject2];
            }

            [(IMDContactStoreChangeHistoryEventsHandler *)self handleAddOrUpdateEventForCNContact:v19];
          }
        }

        else
        {
LABEL_35:
        }

        v17 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [v41 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v45);
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [dictionary count];
      v34 = [obj count];
      *buf = 134218240;
      v63 = v33;
      v64 = 2048;
      v65 = v34;
      _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "updateWithCurrentAcceptedContactsMap: added/updated count: %lu removed count: %lu", buf, 0x16u);
    }
  }

  v35 = objc_alloc_init(IMDAcceptedContactStoreChanges);
  v36 = [dictionary copy];
  [(IMDAcceptedContactStoreChanges *)v35 setUpdatedMap:v36];

  allObjects = [obj allObjects];
  [(IMDAcceptedContactStoreChanges *)v35 setDeletedCNIDs:allObjects];

  return v35;
}

- (id)generateCNIDToAliasesMapFrom:(id)from
{
  v3 = MEMORY[0x1E695DF90];
  fromCopy = from;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86355F0;
  v8[3] = &unk_1E7826C50;
  v6 = dictionary;
  v9 = v6;
  [fromCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (void)removeAliasFromCNIDToAliasesMap:(id)map withCNID:(id)d
{
  mapCopy = map;
  dCopy = d;
  if ([mapCopy length] && objc_msgSend(dCopy, "length"))
  {
    v7 = [(NSMutableDictionary *)self->_CNIDToAliasesMap objectForKey:dCopy];
    if ([v7 containsObject:mapCopy])
    {
      [v7 removeObject:mapCopy];
    }

    v8 = [v7 count];
    CNIDToAliasesMap = self->_CNIDToAliasesMap;
    if (v8)
    {
      [(NSMutableDictionary *)CNIDToAliasesMap setObject:v7 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)CNIDToAliasesMap removeObjectForKey:dCopy];
    }
  }
}

- (void)addAliasToCNIDToAliasMap:(id)map withCNID:(id)d
{
  mapCopy = map;
  dCopy = d;
  if ([mapCopy length] && objc_msgSend(dCopy, "length"))
  {
    v7 = [(NSMutableDictionary *)self->_CNIDToAliasesMap objectForKey:dCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v7 addObject:mapCopy];
    [(NSMutableDictionary *)self->_CNIDToAliasesMap setObject:v7 forKey:dCopy];
  }
}

- (void)visitDropEverythingEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Handling a Drop everything change history event", v7, 2u);
    }
  }

  aliasToCNIDMap = self->_aliasToCNIDMap;
  self->_aliasToCNIDMap = 0;

  [(IMDContactStoreChangeHistoryEventsHandler *)self setReceivedDropEverythingEvent:1];
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Handling a Add Contact change history event", v7, 2u);
    }
  }

  contact = [eventCopy contact];
  [(IMDContactStoreChangeHistoryEventsHandler *)self handleAddOrUpdateEventForCNContact:contact];
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Handling a Update Contact change history event", v7, 2u);
    }
  }

  contact = [eventCopy contact];
  [(IMDContactStoreChangeHistoryEventsHandler *)self handleAddOrUpdateEventForCNContact:contact];
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Handling a Delete Contact change history event", v7, 2u);
    }
  }

  contactIdentifier = [eventCopy contactIdentifier];
  [(IMDContactStoreChangeHistoryEventsHandler *)self handleDeleteEventForContactIdentifier:contactIdentifier];
}

- (void)handleDeleteEventForContactIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(NSMutableDictionary *)self->_CNIDToAliasesMap objectForKey:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Removing alias %@ from _aliasToCNIDMap ", buf, 0xCu);
          }
        }

        [(NSMutableDictionary *)self->_aliasToCNIDMap removeObjectForKey:v8];
        [(NSMutableDictionary *)self->_aliasToCNIDMap setObject:@"__kIMDCNPersonNotFound" forKey:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  if ([v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = identifierCopy;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Removing entry for contactIdentifier %@ from _CNIDToAliasesMap ", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_CNIDToAliasesMap removeObjectForKey:identifierCopy];
  }
}

- (void)handleAddOrUpdateEventForCNContact:(id)contact
{
  v44 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    [(IMDContactStoreChangeHistoryEventsHandler *)self matchAliasesFromCacheForCNContact:contactCopy];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v5)
    {
      v6 = *v35;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v34 + 1) + 8 * i);
          v9 = [(NSMutableDictionary *)self->_aliasToCNIDMap objectForKey:v8];
          if ([v9 length])
          {
            if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
            {
              v10 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v40 = v9;
                v41 = 2112;
                v42 = v8;
                _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, " Removing CNID %@ from _aliasToCNIDMap for alias %@", buf, 0x16u);
              }
            }

            [(NSMutableDictionary *)self->_aliasToCNIDMap removeObjectForKey:v8];
            identifier = [contactCopy identifier];
            [(IMDContactStoreChangeHistoryEventsHandler *)self removeAliasFromCNIDToAliasesMap:v8 withCNID:identifier];
          }

          aliasToCNIDMap = self->_aliasToCNIDMap;
          identifier2 = [contactCopy identifier];
          [(NSMutableDictionary *)aliasToCNIDMap setObject:identifier2 forKey:v8];

          identifier3 = [contactCopy identifier];
          [(IMDContactStoreChangeHistoryEventsHandler *)self addAliasToCNIDToAliasMap:v8 withCNID:identifier3];

          if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              identifier4 = [contactCopy identifier];
              *buf = 138412546;
              v40 = identifier4;
              v41 = 2112;
              v42 = v8;
              _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, " Adding CNID %@ to _aliasToCNIDMap for alias %@", buf, 0x16u);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v5);
    }

    CNIDToAliasesMap = self->_CNIDToAliasesMap;
    identifier5 = [contactCopy identifier];
    v19 = [(NSMutableDictionary *)CNIDToAliasesMap objectForKey:identifier5];
    v28 = [v19 mutableCopy];

    v20 = [v28 count];
    if (v20 > [obj count])
    {
      [v28 removeObjectsInArray:obj];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v28;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v22)
      {
        v23 = *v31;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v30 + 1) + 8 * j);
            [(NSMutableDictionary *)self->_aliasToCNIDMap removeObjectForKey:v25];
            [(NSMutableDictionary *)self->_aliasToCNIDMap setObject:@"__kIMDCNPersonNotFound" forKey:v25];
            if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v40 = v25;
                _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, " Removing entry for alias %@ from _aliasToCNIDMap and replacing with __kIMDCNPersonNotFound", buf, 0xCu);
              }
            }

            identifier6 = [contactCopy identifier];
            [(IMDContactStoreChangeHistoryEventsHandler *)self removeAliasFromCNIDToAliasesMap:v25 withCNID:identifier6];
          }

          v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v22);
      }
    }
  }
}

- (id)matchAliasesFromCacheForCNContact:(id)contact
{
  v29 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = [IMContactStore IDsFromCNContact:?];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_aliasToCNIDMap objectForKeyedSubscript:v10];

        if (v11)
        {
          [array addObject:v10];
        }

        else if (MEMORY[0x1AC570A50](v10) && ([v10 hasPrefix:@"+"] & 1) == 0)
        {
          v12 = [IMContactStore IDWithCurrentLocaleITUCode:v10];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v12;
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Re-attempting to lookup cache with ID & ITU: %@", buf, 0xCu);
            }
          }

          v14 = [(NSMutableDictionary *)self->_aliasToCNIDMap objectForKeyedSubscript:v12];

          if (v14)
          {
            [array addObject:v12];
          }

          else
          {
            aliasToCNIDMap = self->_aliasToCNIDMap;
            v16 = [@"+" stringByAppendingString:v10];
            v17 = [(NSMutableDictionary *)aliasToCNIDMap objectForKeyedSubscript:v16];

            if (v17)
            {
              v18 = [@"+" stringByAppendingString:v10];
              [array addObject:v18];
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = [array copy];

  return v19;
}

@end