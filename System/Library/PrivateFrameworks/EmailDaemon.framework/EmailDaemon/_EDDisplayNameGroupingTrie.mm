@interface _EDDisplayNameGroupingTrie
- (_EDDisplayNameGroupingTrie)init;
- (id)_addressesInGroupWithRoot:(id)root;
- (id)_findTopLevelGroupsForStart:(id)start;
- (id)findGroups;
- (void)insertDisplayName:(id)name addressID:(id)d;
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

- (void)insertDisplayName:(id)name addressID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  lowercaseString = [nameCopy lowercaseString];
  v29 = 0;
  v7 = [lowercaseString ef_wordComponentsForLocale:0 minimumWordLength:0 componentLimit:50 remainingString:&v29];
  v24 = v29;

  if (v24)
  {
    v31[0] = v7;
    v31[1] = v24;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    ef_flatten = [v8 ef_flatten];

    v10 = +[EDBusinessCommonPrefixGroupingUpgradeStep log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_EDDisplayNameGroupingTrie insertDisplayName:v10 addressID:?];
    }

    v7 = ef_flatten;
  }

  if ([v7 count])
  {
    root = [(_EDDisplayNameGroupingTrie *)self root];
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
          children = [root children];
          v18 = [children objectForKeyedSubscript:v16];

          if (v18)
          {
            v19 = v18;

            if ([v19 isEndOfName])
            {
              [v19 addAddressID:dCopy];

              goto LABEL_18;
            }
          }

          else
          {
            [root addChild:v16];
            children2 = [root children];
            v19 = [children2 objectForKeyedSubscript:v16];
          }

          root = v19;

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    [root setIsEndOfName:1];
    [root addAddressID:dCopy];
    v19 = root;
LABEL_18:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)findGroups
{
  v21 = *MEMORY[0x1E69E9840];
  root = [(_EDDisplayNameGroupingTrie *)self root];
  v4 = [(_EDDisplayNameGroupingTrie *)self _findTopLevelGroupsForStart:root];

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
        addressIDs = [v10 addressIDs];
        firstObject = [addressIDs firstObject];

        if (firstObject)
        {
          v13 = [(_EDDisplayNameGroupingTrie *)self _addressesInGroupWithRoot:v10];
          [v5 setObject:v13 forKeyedSubscript:firstObject];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_addressesInGroupWithRoot:(id)root
{
  rootCopy = root;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{rootCopy, 0}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v4 count])
  {
    ef_popElement = [v4 ef_popElement];
    v7 = ef_popElement;
    if (!ef_popElement)
    {
      break;
    }

    if ([ef_popElement isEndOfName])
    {
      addressIDs = [v7 addressIDs];
      [v5 addObjectsFromArray:addressIDs];
    }

    children = [v7 children];
    allValues = [children allValues];
    [v4 addObjectsFromArray:allValues];
  }

  return v5;
}

- (id)_findTopLevelGroupsForStart:(id)start
{
  startCopy = start;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{startCopy, 0}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v4 count])
  {
    ef_popElement = [v4 ef_popElement];
    v7 = ef_popElement;
    if (!ef_popElement)
    {
      break;
    }

    if ([ef_popElement isEndOfName])
    {
      [v5 addObject:v7];
    }

    else
    {
      children = [v7 children];
      allValues = [children allValues];
      [v4 addObjectsFromArray:allValues];
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