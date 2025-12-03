@interface ICExpansionState
+ (ICExpansionState)sharedExpansionState;
- (BOOL)isSectionIdentiferExpanded:(id)expanded inContext:(id)context;
- (ICExpansionState)init;
- (NSDictionary)archiveDictionary;
- (id)archivableIdentifierForItemIdentifier:(id)identifier;
- (id)collapsedObjectIDsInContext:(id)context;
- (id)description;
- (id)expandedObjectIDsInContext:(id)context;
- (id)identifierForArchivableIdentifier:(id)identifier itemType:(int64_t)type;
- (id)itemIdentifiersExpanded:(BOOL)expanded itemType:(int64_t)type context:(id)context;
- (id)normalizedContext:(id)context;
- (id)normalizedItemIdentifier:(id)identifier;
- (int64_t)itemTypeForItemIdentifier:(id)identifier;
- (void)applyArchiveDictionary:(id)dictionary;
- (void)collapseItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context;
- (void)expandItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context;
- (void)setExpanded:(BOOL)expanded itemIdentifier:(id)identifier itemType:(int64_t)type context:(id)context;
@end

@implementation ICExpansionState

+ (ICExpansionState)sharedExpansionState
{
  if (sharedExpansionState_onceToken != -1)
  {
    +[ICExpansionState sharedExpansionState];
  }

  v3 = sharedExpansionState_instance;

  return v3;
}

uint64_t __40__ICExpansionState_sharedExpansionState__block_invoke()
{
  sharedExpansionState_instance = objc_alloc_init(ICExpansionState);

  return MEMORY[0x1EEE66BB8]();
}

- (ICExpansionState)init
{
  v6.receiver = self;
  v6.super_class = ICExpansionState;
  v2 = [(ICExpansionState *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    expansionState = v2->_expansionState;
    v2->_expansionState = dictionary;
  }

  return v2;
}

- (NSDictionary)archiveDictionary
{
  v51 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  expansionState = [(ICExpansionState *)self expansionState];
  allKeys = [expansionState allKeys];

  obj = allKeys;
  v27 = [allKeys countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v27)
  {
    v25 = *v45;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v5;
        v6 = *(*(&v44 + 1) + 8 * v5);
        expansionState2 = [(ICExpansionState *)self expansionState];
        v28 = v6;
        v8 = [expansionState2 objectForKeyedSubscript:v6];

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v33 = v8;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        allKeys2 = [v8 allKeys];
        v34 = [allKeys2 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v34)
        {
          v31 = *v41;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v41 != v31)
              {
                objc_enumerationMutation(allKeys2);
              }

              v35 = *(*(&v40 + 1) + 8 * i);
              v10 = [v33 objectForKeyedSubscript:?];
              dictionary3 = [MEMORY[0x1E695DF90] dictionary];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              allKeys3 = [v10 allKeys];
              v13 = [allKeys3 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v37;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v37 != v15)
                    {
                      objc_enumerationMutation(allKeys3);
                    }

                    v17 = *(*(&v36 + 1) + 8 * j);
                    v18 = [(ICExpansionState *)self archivableIdentifierForItemIdentifier:v17];
                    v19 = [v10 objectForKeyedSubscript:v17];
                    [dictionary3 setObject:v19 forKeyedSubscript:v18];
                  }

                  v14 = [allKeys3 countByEnumeratingWithState:&v36 objects:v48 count:16];
                }

                while (v14);
              }

              v20 = [dictionary3 copy];
              [dictionary2 setObject:v20 forKeyedSubscript:v35];
            }

            v34 = [allKeys2 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v34);
        }

        v21 = [dictionary2 copy];
        [dictionary setObject:v21 forKeyedSubscript:v28];

        v5 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v27);
  }

  v22 = [dictionary copy];

  return v22;
}

- (void)applyArchiveDictionary:(id)dictionary
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  dictionaryCopy = dictionary;
  obj = [dictionaryCopy allKeys];
  v22 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v22)
  {
    v20 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v6 = [dictionaryCopy objectForKeyedSubscript:v5];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = v6;
        allKeys = [v6 allKeys];
        v27 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v27)
        {
          v25 = *v34;
          do
          {
            v7 = 0;
            do
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(allKeys);
              }

              v28 = v7;
              v8 = *(*(&v33 + 1) + 8 * v7);
              v9 = [v26 objectForKeyedSubscript:v8];
              v10 = ICExpansionStateItemTypeFromString(v8);
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              allKeys2 = [v9 allKeys];
              v12 = [allKeys2 countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v30;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v30 != v14)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v16 = *(*(&v29 + 1) + 8 * i);
                    v17 = [(ICExpansionState *)self identifierForArchivableIdentifier:v16 itemType:v10];
                    v18 = [v9 objectForKeyedSubscript:v16];
                    -[ICExpansionState setExpanded:itemIdentifier:itemType:context:](self, "setExpanded:itemIdentifier:itemType:context:", [v18 BOOLValue], v17, v10, v5);
                  }

                  v13 = [allKeys2 countByEnumeratingWithState:&v29 objects:v41 count:16];
                }

                while (v13);
              }

              v7 = v28 + 1;
            }

            while (v28 + 1 != v27);
            v27 = [allKeys countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v27);
        }

        v4 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v22);
  }
}

- (id)expandedObjectIDsInContext:(id)context
{
  v3 = [(ICExpansionState *)self expandedItemIdentifiersWithItemType:0 context:context];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)collapsedObjectIDsInContext:(id)context
{
  v3 = [(ICExpansionState *)self collapsedItemIdentifiersWithItemType:0 context:context];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)itemIdentifiersExpanded:(BOOL)expanded itemType:(int64_t)type context:(id)context
{
  expandedCopy = expanded;
  v31 = *MEMORY[0x1E69E9840];
  v8 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  v10 = [expansionState objectForKeyedSubscript:v8];
  v11 = v10;
  v25 = v8;
  if (type > 2)
  {
    v12 = @"ICExpansionStateItemTypeUnknown";
  }

  else
  {
    v12 = off_1E8469E28[type];
  }

  v13 = [v10 objectForKeyedSubscript:v12];

  v14 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [v13 allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v13 objectForKeyedSubscript:v20];
        bOOLValue = [v21 BOOLValue];

        if (bOOLValue == expandedCopy)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v23 = [v14 copy];

  return v23;
}

- (BOOL)isSectionIdentiferExpanded:(id)expanded inContext:(id)context
{
  expandedCopy = expanded;
  v7 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  v9 = [expansionState objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:@"ICExpansionStateItemTypeSectionIdentifier"];

  expansionStateContext = [expandedCopy expansionStateContext];

  v12 = [v10 objectForKeyedSubscript:expansionStateContext];

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)expandItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(ICExpansionState *)self expandItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:type context:contextCopy];
      }

      while (v11 != v13);
      v11 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)collapseItemIdentifiers:(id)identifiers itemType:(int64_t)type context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(ICExpansionState *)self collapseItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:type context:contextCopy];
      }

      while (v11 != v13);
      v11 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  archiveDictionary = [(ICExpansionState *)self archiveDictionary];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, archiveDictionary];

  return v7;
}

- (void)setExpanded:(BOOL)expanded itemIdentifier:(id)identifier itemType:(int64_t)type context:(id)context
{
  expandedCopy = expanded;
  identifierCopy = identifier;
  v10 = [(ICExpansionState *)self normalizedContext:context];
  expansionState = [(ICExpansionState *)self expansionState];
  dictionary = [expansionState objectForKeyedSubscript:v10];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    expansionState2 = [(ICExpansionState *)self expansionState];
    [expansionState2 setObject:dictionary forKeyedSubscript:v10];
  }

  if (type == -1)
  {
    type = [(ICExpansionState *)self itemTypeForItemIdentifier:identifierCopy];
  }

  v14 = [(ICExpansionState *)self normalizedItemIdentifier:identifierCopy];
  v15 = v14;
  if (type != -1 && v14)
  {
    if (type > 2)
    {
      v16 = @"ICExpansionStateItemTypeUnknown";
    }

    else
    {
      v16 = off_1E8469E28[type];
    }

    dictionary2 = [dictionary objectForKeyedSubscript:v16];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      if (type > 2)
      {
        v18 = @"ICExpansionStateItemTypeUnknown";
      }

      else
      {
        v18 = off_1E8469E28[type];
      }

      [dictionary setObject:dictionary2 forKeyedSubscript:v18];
    }

    v19 = [MEMORY[0x1E696AD98] numberWithBool:expandedCopy];
    [dictionary2 setObject:v19 forKeyedSubscript:v15];
  }
}

- (id)normalizedContext:(id)context
{
  if (context)
  {
    return context;
  }

  else
  {
    return @"ICExpansionStateGlobalContext";
  }
}

- (int64_t)itemTypeForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy conformsToProtocol:&unk_1F4FE3D00])
  {
    v4 = 1;
  }

  else if ([identifierCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)normalizedItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  expansionStateContext = identifierCopy;
  if ([identifierCopy conformsToProtocol:&unk_1F4FE3D00])
  {
    expansionStateContext = [identifierCopy expansionStateContext];
  }

  return expansionStateContext;
}

- (id)archivableIdentifierForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uRIRepresentation = [identifierCopy URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifierCopy = identifierCopy;
    }

    else
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", identifierCopy];
    }

    absoluteString = identifierCopy;
  }

  return absoluteString;
}

- (id)identifierForArchivableIdentifier:(id)identifier itemType:(int64_t)type
{
  identifierCopy = identifier;
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  persistentStoreCoordinator = [mEMORY[0x1E69B7800] persistentStoreCoordinator];

  persistentStoreCoordinator2 = [MEMORY[0x1E69B7140] persistentStoreCoordinator];
  if (type)
  {
    v9 = identifierCopy;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:identifierCopy];
    if (v10)
    {
      v11 = [persistentStoreCoordinator ic_managedObjectIDForURIRepresentation:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [persistentStoreCoordinator2 ic_managedObjectIDForURIRepresentation:v10];
      }

      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end