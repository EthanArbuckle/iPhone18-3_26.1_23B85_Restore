@interface _EDDisplayNameGroupingTrie
- (_EDDisplayNameGroupingTrie)init;
- (id)_addressesInGroupWithRoot:(id)a3;
- (id)_findTopLevelGroupsForStart:(id)a3;
- (id)findGroups;
- (void)insertDisplayName:(id)a3 addressID:(id)a4;
@end

@implementation _EDDisplayNameGroupingTrie

- (_EDDisplayNameGroupingTrie)init
{
  v6.receiver = self;
  v6.super_class = _EDDisplayNameGroupingTrie;
  v2 = [(_EDDisplayNameGroupingTrie *)&v6 init];
  if (v2)
  {
    v3 = [[_EDDisplayNameGroupingTrieNode alloc] initWithValue:0];
    root = v2->_root;
    v2->_root = v3;
  }

  return v2;
}

- (void)insertDisplayName:(id)a3 addressID:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a4;
  v6 = [v22 lowercaseString];
  v29 = 0;
  v7 = [v6 ef_wordComponentsForLocale:0 minimumWordLength:0 componentLimit:50 remainingString:&v29];
  v24 = v29;

  if (v24)
  {
    v31[0] = v7;
    v31[1] = v24;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v9 = [v8 ef_flatten];

    v10 = +[EDBusinessCommonPrefixGroupingUpgradeStep log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_EDDisplayNameGroupingTrie insertDisplayName:v10 addressID:?];
    }

    v7 = v9;
  }

  if ([v7 count])
  {
    v11 = [(_EDDisplayNameGroupingTrie *)self root];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          v17 = [v11 children];
          v18 = [v17 objectForKeyedSubscript:v16];

          if (v18)
          {
            v19 = v18;

            if ([v19 isEndOfName])
            {
              [v19 addAddressID:v23];

              goto LABEL_18;
            }
          }

          else
          {
            [v11 addChild:v16];
            v20 = [v11 children];
            v19 = [v20 objectForKeyedSubscript:v16];
          }

          v11 = v19;

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    [v11 setIsEndOfName:1];
    [v11 addAddressID:v23];
    v19 = v11;
LABEL_18:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)findGroups
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_EDDisplayNameGroupingTrie *)self root];
  v4 = [(_EDDisplayNameGroupingTrie *)self _findTopLevelGroupsForStart:v3];

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 addressIDs];
        v12 = [v11 firstObject];

        if (v12)
        {
          v13 = [(_EDDisplayNameGroupingTrie *)self _addressesInGroupWithRoot:v10];
          [v5 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_addressesInGroupWithRoot:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v3, 0}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v4 count])
  {
    v6 = [v4 ef_popElement];
    v7 = v6;
    if (!v6)
    {
      break;
    }

    if ([v6 isEndOfName])
    {
      v8 = [v7 addressIDs];
      [v5 addObjectsFromArray:v8];
    }

    v9 = [v7 children];
    v10 = [v9 allValues];
    [v4 addObjectsFromArray:v10];
  }

  return v5;
}

- (id)_findTopLevelGroupsForStart:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v3, 0}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v4 count])
  {
    v6 = [v4 ef_popElement];
    v7 = v6;
    if (!v6)
    {
      break;
    }

    if ([v6 isEndOfName])
    {
      [v5 addObject:v7];
    }

    else
    {
      v8 = [v7 children];
      v9 = [v8 allValues];
      [v4 addObjectsFromArray:v9];
    }
  }

  return v5;
}

- (void)insertDisplayName:(os_log_t)log addressID:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = 50;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Display name contains over %lu tokens. Truncating.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end