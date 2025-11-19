@interface ICExpansionState
+ (ICExpansionState)sharedExpansionState;
- (BOOL)isSectionIdentiferExpanded:(id)a3 inContext:(id)a4;
- (ICExpansionState)init;
- (NSDictionary)archiveDictionary;
- (id)archivableIdentifierForItemIdentifier:(id)a3;
- (id)collapsedObjectIDsInContext:(id)a3;
- (id)description;
- (id)expandedObjectIDsInContext:(id)a3;
- (id)identifierForArchivableIdentifier:(id)a3 itemType:(int64_t)a4;
- (id)itemIdentifiersExpanded:(BOOL)a3 itemType:(int64_t)a4 context:(id)a5;
- (id)normalizedContext:(id)a3;
- (id)normalizedItemIdentifier:(id)a3;
- (int64_t)itemTypeForItemIdentifier:(id)a3;
- (void)applyArchiveDictionary:(id)a3;
- (void)collapseItemIdentifiers:(id)a3 itemType:(int64_t)a4 context:(id)a5;
- (void)expandItemIdentifiers:(id)a3 itemType:(int64_t)a4 context:(id)a5;
- (void)setExpanded:(BOOL)a3 itemIdentifier:(id)a4 itemType:(int64_t)a5 context:(id)a6;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    expansionState = v2->_expansionState;
    v2->_expansionState = v3;
  }

  return v2;
}

- (NSDictionary)archiveDictionary
{
  v51 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = [(ICExpansionState *)self expansionState];
  v4 = [v3 allKeys];

  obj = v4;
  v27 = [v4 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
        v7 = [(ICExpansionState *)self expansionState];
        v28 = v6;
        v8 = [v7 objectForKeyedSubscript:v6];

        v32 = [MEMORY[0x1E695DF90] dictionary];
        v33 = v8;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v30 = [v8 allKeys];
        v34 = [v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v34)
        {
          v31 = *v41;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v41 != v31)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v40 + 1) + 8 * i);
              v10 = [v33 objectForKeyedSubscript:?];
              v11 = [MEMORY[0x1E695DF90] dictionary];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v12 = [v10 allKeys];
              v13 = [v12 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v36 + 1) + 8 * j);
                    v18 = [(ICExpansionState *)self archivableIdentifierForItemIdentifier:v17];
                    v19 = [v10 objectForKeyedSubscript:v17];
                    [v11 setObject:v19 forKeyedSubscript:v18];
                  }

                  v14 = [v12 countByEnumeratingWithState:&v36 objects:v48 count:16];
                }

                while (v14);
              }

              v20 = [v11 copy];
              [v32 setObject:v20 forKeyedSubscript:v35];
            }

            v34 = [v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v34);
        }

        v21 = [v32 copy];
        [v26 setObject:v21 forKeyedSubscript:v28];

        v5 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v27);
  }

  v22 = [v26 copy];

  return v22;
}

- (void)applyArchiveDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = a3;
  obj = [v21 allKeys];
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
        v6 = [v21 objectForKeyedSubscript:v5];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = v6;
        v24 = [v6 allKeys];
        v27 = [v24 countByEnumeratingWithState:&v33 objects:v42 count:16];
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
                objc_enumerationMutation(v24);
              }

              v28 = v7;
              v8 = *(*(&v33 + 1) + 8 * v7);
              v9 = [v26 objectForKeyedSubscript:v8];
              v10 = ICExpansionStateItemTypeFromString(v8);
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v11 = [v9 allKeys];
              v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
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
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v29 + 1) + 8 * i);
                    v17 = [(ICExpansionState *)self identifierForArchivableIdentifier:v16 itemType:v10];
                    v18 = [v9 objectForKeyedSubscript:v16];
                    -[ICExpansionState setExpanded:itemIdentifier:itemType:context:](self, "setExpanded:itemIdentifier:itemType:context:", [v18 BOOLValue], v17, v10, v5);
                  }

                  v13 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
                }

                while (v13);
              }

              v7 = v28 + 1;
            }

            while (v28 + 1 != v27);
            v27 = [v24 countByEnumeratingWithState:&v33 objects:v42 count:16];
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

- (id)expandedObjectIDsInContext:(id)a3
{
  v3 = [(ICExpansionState *)self expandedItemIdentifiersWithItemType:0 context:a3];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)collapsedObjectIDsInContext:(id)a3
{
  v3 = [(ICExpansionState *)self collapsedItemIdentifiersWithItemType:0 context:a3];
  v4 = [v3 ic_objectsOfClass:objc_opt_class()];

  return v4;
}

- (id)itemIdentifiersExpanded:(BOOL)a3 itemType:(int64_t)a4 context:(id)a5
{
  v6 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v8 = [(ICExpansionState *)self normalizedContext:a5];
  v9 = [(ICExpansionState *)self expansionState];
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = v10;
  v25 = v8;
  if (a4 > 2)
  {
    v12 = @"ICExpansionStateItemTypeUnknown";
  }

  else
  {
    v12 = off_1E8469E28[a4];
  }

  v13 = [v10 objectForKeyedSubscript:v12];

  v14 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v13 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v13 objectForKeyedSubscript:v20];
        v22 = [v21 BOOLValue];

        if (v22 == v6)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v23 = [v14 copy];

  return v23;
}

- (BOOL)isSectionIdentiferExpanded:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = [(ICExpansionState *)self normalizedContext:a4];
  v8 = [(ICExpansionState *)self expansionState];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:@"ICExpansionStateItemTypeSectionIdentifier"];

  v11 = [v6 expansionStateContext];

  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)expandItemIdentifiers:(id)a3 itemType:(int64_t)a4 context:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(ICExpansionState *)self expandItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:a4 context:v9];
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)collapseItemIdentifiers:(id)a3 itemType:(int64_t)a4 context:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(ICExpansionState *)self collapseItemIdentifier:*(*(&v14 + 1) + 8 * v13++) itemType:a4 context:v9];
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICExpansionState *)self archiveDictionary];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, v6];

  return v7;
}

- (void)setExpanded:(BOOL)a3 itemIdentifier:(id)a4 itemType:(int64_t)a5 context:(id)a6
{
  v8 = a3;
  v20 = a4;
  v10 = [(ICExpansionState *)self normalizedContext:a6];
  v11 = [(ICExpansionState *)self expansionState];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (!v12)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = [(ICExpansionState *)self expansionState];
    [v13 setObject:v12 forKeyedSubscript:v10];
  }

  if (a5 == -1)
  {
    a5 = [(ICExpansionState *)self itemTypeForItemIdentifier:v20];
  }

  v14 = [(ICExpansionState *)self normalizedItemIdentifier:v20];
  v15 = v14;
  if (a5 != -1 && v14)
  {
    if (a5 > 2)
    {
      v16 = @"ICExpansionStateItemTypeUnknown";
    }

    else
    {
      v16 = off_1E8469E28[a5];
    }

    v17 = [v12 objectForKeyedSubscript:v16];
    if (!v17)
    {
      v17 = [MEMORY[0x1E695DF90] dictionary];
      if (a5 > 2)
      {
        v18 = @"ICExpansionStateItemTypeUnknown";
      }

      else
      {
        v18 = off_1E8469E28[a5];
      }

      [v12 setObject:v17 forKeyedSubscript:v18];
    }

    v19 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    [v17 setObject:v19 forKeyedSubscript:v15];
  }
}

- (id)normalizedContext:(id)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return @"ICExpansionStateGlobalContext";
  }
}

- (int64_t)itemTypeForItemIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F4FE3D00])
  {
    v4 = 1;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)normalizedItemIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 conformsToProtocol:&unk_1F4FE3D00])
  {
    v4 = [v3 expansionStateContext];
  }

  return v4;
}

- (id)archivableIdentifierForItemIdentifier:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 URIRepresentation];
    v5 = [v4 absoluteString];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v3;
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
    }

    v5 = v6;
  }

  return v5;
}

- (id)identifierForArchivableIdentifier:(id)a3 itemType:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69B7800] sharedContext];
  v7 = [v6 persistentStoreCoordinator];

  v8 = [MEMORY[0x1E69B7140] persistentStoreCoordinator];
  if (a4)
  {
    v9 = v5;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    if (v10)
    {
      v11 = [v7 ic_managedObjectIDForURIRepresentation:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v8 ic_managedObjectIDForURIRepresentation:v10];
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