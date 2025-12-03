@interface NSMutableDictionary(MCMDeeplyMutable)
- (id)MCM_deepCopy;
- (id)_createOrConvertToMutableDictionaryFromDictionary:()MCMDeeplyMutable;
- (id)_dictionaryAtKeyPath:()MCMDeeplyMutable;
- (id)_findKeyPathsSortedByDepthFirstOfKindOfClass:()MCMDeeplyMutable;
- (id)_mutableDictionaryAtKeyPath:()MCMDeeplyMutable;
- (void)MCM_overlayDictionary:()MCMDeeplyMutable existingValuesTakePrecedent:;
- (void)MCM_replaceDeepDictionariesWithReplaceHandler:()MCMDeeplyMutable;
- (void)_overlayValueAtKey:()MCMDeeplyMutable intoTargetDictionary:fromSourceDictionary:targetTakePrecedent:nestedDictionaryHandler:;
@end

@implementation NSMutableDictionary(MCMDeeplyMutable)

- (id)_createOrConvertToMutableDictionaryFromDictionary:()MCMDeeplyMutable
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || (dictionary = [v3 mutableCopy]) == 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)_mutableDictionaryAtKeyPath:()MCMDeeplyMutable
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = selfCopy;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v17 + 1) + 8 * v10);
        v13 = [v11 objectForKeyedSubscript:v12];
        v9 = [selfCopy _createOrConvertToMutableDictionaryFromDictionary:v13];
        [v11 setObject:v9 forKeyedSubscript:v12];

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_dictionaryAtKeyPath:()MCMDeeplyMutable
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        selfCopy = [v10 objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)_findKeyPathsSortedByDepthFirstOfKindOfClass:()MCMDeeplyMutable
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v3 = [v2 initWithObjects:{MEMORY[0x1E695E0F0], 0}];
  v4 = v3;
  while ([v3 count])
  {
    anyObject = [v4 anyObject];
    [v4 removeObject:anyObject];
    v6 = [self _dictionaryAtKeyPath:anyObject];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          if (objc_opt_isKindOfClass())
          {
            v13 = [anyObject arrayByAddingObject:v11];
            [v1 addObject:v13];
            [v4 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v8);
    }

    v3 = v4;
  }

  [v1 sortUsingComparator:&__block_literal_global_1271];
  v14 = [v1 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_overlayValueAtKey:()MCMDeeplyMutable intoTargetDictionary:fromSourceDictionary:targetTakePrecedent:nestedDictionaryHandler:
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [a5 objectForKeyedSubscript:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[2](v12, v13);
  }

  else if (!a6 || ([v11 objectForKeyedSubscript:v16], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    [v11 setObject:v13 forKeyedSubscript:{v16, v16}];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)MCM_deepCopy
{
  v22 = *MEMORY[0x1E69E9840];
  [self _findKeyPathsSortedByDepthFirstOfKindOfClass:objc_opt_class()];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [self _dictionaryAtKeyPath:v6];
        lastObject = [v6 lastObject];
        v9 = [v6 mutableCopy];
        [v9 removeLastObject];
        v10 = [v9 copy];
        v11 = [self _mutableDictionaryAtKeyPath:v10];
        v12 = [v7 copy];
        [v11 setObject:v12 forKeyedSubscript:lastObject];
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v3);
  }

  v13 = [self copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)MCM_overlayDictionary:()MCMDeeplyMutable existingValuesTakePrecedent:
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = v4;
  [dictionary setObject:v4 forKeyedSubscript:MEMORY[0x1E695E0F0]];
  while ([dictionary count])
  {
    context = objc_autoreleasePoolPush();
    allKeys = [dictionary allKeys];
    firstObject = [allKeys firstObject];

    v8 = [dictionary objectForKeyedSubscript:firstObject];
    [dictionary removeObjectForKey:firstObject];
    v9 = [self _mutableDictionaryAtKeyPath:firstObject];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v8 allKeys];
    v10 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [firstObject arrayByAddingObject:v14];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __91__NSMutableDictionary_MCMDeeplyMutable__MCM_overlayDictionary_existingValuesTakePrecedent___block_invoke;
          v23[3] = &unk_1E86AFDC8;
          v24 = dictionary;
          v25 = v15;
          v16 = v15;
          [self _overlayValueAtKey:v14 intoTargetDictionary:v9 fromSourceDictionary:v8 targetTakePrecedent:a4 nestedDictionaryHandler:v23];
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(context);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)MCM_replaceDeepDictionariesWithReplaceHandler:()MCMDeeplyMutable
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self _findKeyPathsSortedByDepthFirstOfKindOfClass:objc_opt_class()];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [self _dictionaryAtKeyPath:v8];
        v10 = v4[2](v4, v8, v9);
        if (v10 != v9)
        {
          lastObject = [v8 lastObject];
          v12 = [v8 mutableCopy];
          [v12 removeLastObject];
          v13 = [v12 copy];
          v14 = [self _mutableDictionaryAtKeyPath:v13];
          v15 = v14;
          if (v10)
          {
            [v14 setObject:v10 forKeyedSubscript:lastObject];
          }

          else
          {
            [v14 removeObjectForKey:lastObject];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end