@interface IMContactStoreChangeHistoryEventsHandler
- (BOOL)isAcceptedCNID:(id)d;
- (BOOL)isCuratedCNID:(id)d;
- (id)acceptedIdentifiersFromIdentifiers:(id)identifiers;
- (void)postDeleteContactNotificationForContactIdentifier:(id)identifier;
- (void)postNotificationForCNContact:(id)contact eventType:(unint64_t)type handleIDsToProcess:(id)process;
- (void)processChangeEventForContact:(id)contact contactFromCache:(id)cache eventType:(unint64_t)type handleID:(id)d;
- (void)processContactChangeEventForContact:(id)contact ofEventType:(unint64_t)type;
- (void)updateWithCurrentAcceptedContactsMap:(id)map;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation IMContactStoreChangeHistoryEventsHandler

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
  if ([(IMContactStoreChangeHistoryEventsHandler *)self isUnknownCNID:dCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(IMContactStoreChangeHistoryEventsHandler *)self isAcceptedCNID:dCopy];
  }

  return v5;
}

- (void)visitDropEverythingEvent:(id)event
{
  eventCopy = event;
  [(IMContactStoreChangeHistoryEventsHandler *)self setReceivedDropEverythingEvent:1];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Handling a Drop everything change history event", v8, 2u);
    }
  }

  v6 = +[IMContactStore sharedInstance];
  [v6 handleDropEverythingEvent];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMCSChangeHistoryDropEverythingEventNotification object:self];
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
  [(IMContactStoreChangeHistoryEventsHandler *)self processContactChangeEventForContact:contact ofEventType:1];
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
  [(IMContactStoreChangeHistoryEventsHandler *)self postDeleteContactNotificationForContactIdentifier:contactIdentifier];
}

- (void)postDeleteContactNotificationForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{identifierCopy, @"__kIMCSChangeHistoryContactIdentifierKey", 0}];
  }

  else
  {
    v4 = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMCSChangeHistoryDeleteContactEventNotification object:self userInfo:v4];
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
  [(IMContactStoreChangeHistoryEventsHandler *)self processContactChangeEventForContact:contact ofEventType:2];
}

- (id)acceptedIdentifiersFromIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = identifiersCopy;
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
        if ([(IMContactStoreChangeHistoryEventsHandler *)self isAcceptedCNID:v11, v13])
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)updateWithCurrentAcceptedContactsMap:(id)map
{
  v75 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v3 = +[IMContactStore sharedInstance];
  getCNIDToHandleIDsMap = [v3 getCNIDToHandleIDsMap];

  v4 = +[IMContactStore sharedInstance];
  getIDToCNContactMap = [v4 getIDToCNContactMap];

  array = [MEMORY[0x1E695DF70] array];
  v7 = MEMORY[0x1E695DFA8];
  allKeys = [getCNIDToHandleIDsMap allKeys];
  v9 = [(IMContactStoreChangeHistoryEventsHandler *)self acceptedIdentifiersFromIdentifiers:allKeys];
  v10 = [v7 setWithArray:v9];

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = sub_1A86193C0;
  v64[3] = &unk_1E7826240;
  v64[4] = self;
  v11 = v10;
  v65 = v11;
  v12 = array;
  v66 = v12;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v64];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v68 = v14;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "updateWithCurrentAcceptedContactsMap: updating with %lu currently accepted contacts", buf, 0xCu);
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v15)
  {
    v16 = *v61;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(obj);
        }

        [(IMContactStoreChangeHistoryEventsHandler *)self postDeleteContactNotificationForContactIdentifier:*(*(&v60 + 1) + 8 * i)];
      }

      v15 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v15);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v12;
  v44 = [v41 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v44)
  {
    v43 = *v57;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v56 + 1) + 8 * j);
        v19 = [IMContactStore IDsFromCNContact:?];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v52 objects:v72 count:16];
        if (v21)
        {
          v22 = *v53;
          while (2)
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = [getIDToCNContactMap objectForKey:*(*(&v52 + 1) + 8 * k)];
              if ([IMContactStore isCNContactAKnownContact:v24])
              {
                identifier = [v24 identifier];
                v26 = [(IMContactStoreChangeHistoryEventsHandler *)self isCuratedCNID:identifier];

                if (v26)
                {

                  goto LABEL_28;
                }
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v52 objects:v72 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        [array2 addObject:v46];
LABEL_28:
      }

      v44 = [v41 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v44);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = array2;
  v28 = [v27 countByEnumeratingWithState:&v48 objects:v71 count:16];
  if (v28)
  {
    v29 = *v49;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v48 + 1) + 8 * m);
        identifier2 = [v31 identifier];
        v33 = [getCNIDToHandleIDsMap objectForKey:identifier2];
        v34 = [v33 count] == 0;

        if (v34)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        [(IMContactStoreChangeHistoryEventsHandler *)self processContactChangeEventForContact:v31 ofEventType:v35];
      }

      v28 = [v27 countByEnumeratingWithState:&v48 objects:v71 count:16];
    }

    while (v28);
  }

  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v27 count];
      v38 = [obj count];
      *buf = 134218240;
      v68 = v37;
      v69 = 2048;
      v70 = v38;
      _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "updateWithCurrentAcceptedContactsMap: added/updated count: %lu removed count: %lu", buf, 0x16u);
    }
  }
}

- (void)processContactChangeEventForContact:(id)contact ofEventType:(unint64_t)type
{
  v83 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v58 = contactCopy;
    v5 = [IMContactStore IDsFromCNContact:contactCopy];
    v6 = +[IMContactStore sharedInstance];
    identifier = [v58 identifier];
    v8 = [v6 handleIDsForCNID:identifier];

    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v9)
    {
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * i);
          if (([v5 containsObject:v12] & 1) == 0)
          {
            v13 = +[IMContactStore sharedInstance];
            v14 = [v13 getContactForID:v12];

            [(IMContactStoreChangeHistoryEventsHandler *)self processChangeEventForContact:v58 contactFromCache:v14 eventType:type handleID:v12];
            [v54 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
      }

      while (v9);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v50 = v5;
    v52 = [v50 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v52)
    {
      v51 = *v68;
      *&v15 = 138412290;
      v49 = v15;
      do
      {
        v16 = 0;
        do
        {
          if (*v68 != v51)
          {
            v17 = v16;
            objc_enumerationMutation(v50);
            v16 = v17;
          }

          v55 = v16;
          v18 = *(*(&v67 + 1) + 8 * v16);
          v19 = +[IMContactStore sharedInstance];
          v20 = [v19 getContactForID:v18];

          v21 = v18;
          v22 = MEMORY[0x1AC570A50]();
          if (v20)
          {
            v23 = 0;
          }

          else
          {
            v23 = v22;
          }

          if (v23 != 1)
          {
            v27 = v21;
            goto LABEL_57;
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v24 = obj;
          v25 = [v24 countByEnumeratingWithState:&v63 objects:v80 count:16];
          if (v25)
          {
            v20 = 0;
            v26 = *v64;
            v27 = v21;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v64 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v63 + 1) + 8 * j);
                if ([v29 containsString:v27])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v30 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v77 = v29;
                      v78 = 2112;
                      v79 = v21;
                      _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "Re-attempting to lookup cache with ID: %@. Previous ID was %@", buf, 0x16u);
                    }
                  }

                  v31 = v29;

                  v32 = +[IMContactStore sharedInstance];
                  v33 = [v32 getContactForID:v31];

                  v27 = v31;
                  v20 = v33;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v63 objects:v80 count:16];
            }

            while (v25);

            if (v20)
            {
              goto LABEL_57;
            }
          }

          else
          {

            v27 = v21;
          }

          if ([v27 hasPrefix:@"+"])
          {
            v20 = 0;
          }

          else
          {
            v34 = [IMContactStore IDWithCurrentLocaleITUCode:v27];
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = v49;
                v77 = v34;
                _os_log_impl(&dword_1A85E5000, v35, OS_LOG_TYPE_INFO, "Re-attempting to lookup cache with ID & ITU: %@", buf, 0xCu);
              }
            }

            v36 = +[IMContactStore sharedInstance];
            getAllKeysFromIDToCNContactMap = [v36 getAllKeysFromIDToCNContactMap];

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v38 = getAllKeysFromIDToCNContactMap;
            v39 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
            if (v39)
            {
              v40 = *v60;
LABEL_45:
              v41 = 0;
              while (1)
              {
                if (*v60 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v59 + 1) + 8 * v41);
                if ([v42 isEqualToString:v34])
                {
                  break;
                }

                v43 = [@"+" stringByAppendingString:v27];
                v44 = [v42 isEqualToString:v43];

                if (v44)
                {
                  v46 = [@"+" stringByAppendingString:v27];
                  goto LABEL_55;
                }

                if (v39 == ++v41)
                {
                  v39 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
                  if (v39)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_52;
                }
              }

              v46 = v42;
LABEL_55:
              v45 = v46;

              goto LABEL_56;
            }

LABEL_52:
            v45 = v27;
LABEL_56:

            v47 = +[IMContactStore sharedInstance];
            v20 = [v47 getContactForID:v45];

            v27 = v45;
          }

LABEL_57:
          [(IMContactStoreChangeHistoryEventsHandler *)self processChangeEventForContact:v58 contactFromCache:v20 eventType:type handleID:v27];
          if ([v27 length])
          {
            [v54 addObject:v27];
          }

          v16 = v55 + 1;
        }

        while (v55 + 1 != v52);
        v52 = [v50 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v52);
    }

    [(IMContactStoreChangeHistoryEventsHandler *)self postNotificationForCNContact:v58 eventType:type handleIDsToProcess:v54];
    contactCopy = v58;
  }

  else if (IMOSLoggingEnabled())
  {
    v48 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v48, OS_LOG_TYPE_INFO, "Invalid Contact, not handling contact change event.", buf, 2u);
    }
  }
}

- (void)processChangeEventForContact:(id)contact contactFromCache:(id)cache eventType:(unint64_t)type handleID:(id)d
{
  v42 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  cacheCopy = cache;
  dCopy = d;
  v32 = contactCopy;
  if (type == 2)
  {
    v17 = [IMContactStore IDsFromCNContact:contactCopy];
    v18 = [IMContactStore IDsFromCNContact:cacheCopy];
    v30 = [v18 mutableCopy];

    if ([v17 containsObject:dCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = dCopy;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Removing contact for ID %@ from Contact Store cache and adding the new one.", buf, 0xCu);
        }
      }

      v20 = +[IMContactStore sharedInstance];
      [v20 replaceContact:contactCopy withID:dCopy];
    }

    v21 = [v30 count];
    if (v21 > [v17 count])
    {
      [v31 removeObjectsInArray:v17];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v31;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v23)
      {
        v24 = *v34;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v33 + 1) + 8 * i);
            v27 = +[IMContactStore sharedInstance];
            [v27 replaceWithMutableContactForID:v26];
          }

          v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v23);
      }
    }
  }

  else if (type == 1)
  {
    v12 = [IMContactStore isCNContactAKnownContact:cacheCopy];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [IMContactStore isCNContactAKnownContact:cacheCopy];
          v16 = @"NO";
          if (v15)
          {
            v16 = @"YES";
          }

          *buf = 138412546;
          v39 = dCopy;
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Not prcoessing add event for ID already known to us %@. isAKnownContact:%@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v13)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = dCopy;
          _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Removing contact for ID %@ from Contact Store cache and adding the new one.", buf, 0xCu);
        }
      }

      v29 = +[IMContactStore sharedInstance];
      [v29 replaceContact:contactCopy withID:dCopy];
    }
  }
}

- (void)postNotificationForCNContact:(id)contact eventType:(unint64_t)type handleIDsToProcess:(id)process
{
  contactCopy = contact;
  processCopy = process;
  v10 = [processCopy count];
  if (contactCopy && v10)
  {
    if (type == 1)
    {
      v11 = &IMCSChangeHistoryAddContactEventNotification;
    }

    else
    {
      if (type != 2)
      {
        v16 = 0;
        v17 = 0;
        goto LABEL_13;
      }

      v11 = &IMCSChangeHistoryUpdateContactEventNotification;
    }

    v13 = MEMORY[0x1E695DF20];
    v14 = [processCopy copy];
    v15 = [contactCopy copy];
    v16 = [v13 dictionaryWithObjectsAndKeys:{v14, @"__kIMCSChangeHistoryHandleIDsKey", v15, @"__kIMCSChangeHistoryContactKey", 0}];

    v17 = *v11;
LABEL_13:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:v17 object:self userInfo:v16];

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "No handleIDs to process or invalid CNContact.", buf, 2u);
    }
  }

LABEL_14:
}

@end