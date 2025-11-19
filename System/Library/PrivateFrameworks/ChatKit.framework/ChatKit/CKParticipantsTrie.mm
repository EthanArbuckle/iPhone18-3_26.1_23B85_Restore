@interface CKParticipantsTrie
- (BOOL)_trieContainsEntity:(id)a3;
- (BOOL)hasPrefix:(id)a3;
- (CKParticipantsTrie)initWithKey:(id)a3;
- (id)_composedCharactersForString:(id)a3 appendRootKey:(BOOL)a4;
- (id)_lastNodeForString:(id)a3;
- (id)entitiesForPrefix:(id)a3;
- (id)rawHandlesForParticipantName:(id)a3;
- (void)_addEntity:(id)a3 named:(id)a4 forCharacters:(id)a5;
- (void)addParticipantName:(id)a3 entity:(id)a4;
- (void)loadHandleEntityFromLastNode:(id)a3 intoResult:(id)a4;
@end

@implementation CKParticipantsTrie

- (CKParticipantsTrie)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKParticipantsTrie;
  v6 = [(CKParticipantsTrie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

- (void)addParticipantName:(id)a3 entity:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6)
  {
    if (!self->_children)
    {
      v7 = objc_opt_new();
      children = self->_children;
      self->_children = v7;
    }

    v9 = [v11 lowercaseString];
    v10 = [(CKParticipantsTrie *)self _composedCharactersForString:v9 appendRootKey:1];
    [(CKParticipantsTrie *)self _addEntity:v6 named:v9 forCharacters:v10];
  }
}

- (BOOL)hasPrefix:(id)a3
{
  v3 = [(CKParticipantsTrie *)self _lastNodeForString:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)rawHandlesForParticipantName:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CKParticipantsTrie *)self _lastNodeForString:v4, 0];
  v7 = [v6 entities];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) defaultIMHandle];
        v13 = [v12 ID];
        [v5 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)entitiesForPrefix:(id)a3
{
  v4 = a3;
  if ([(CKParticipantsTrie *)self hasPrefix:v4])
  {
    v5 = objc_opt_new();
    v6 = [(CKParticipantsTrie *)self _lastNodeForString:v4];
    [(CKParticipantsTrie *)self loadHandleEntityFromLastNode:v6 intoResult:v5];

    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_193];
    if (![v5 count])
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No trie node values for valid prefix: [%@]", v4];
      v11 = [v9 exceptionWithName:@"CKParticipantsTrie/NodeValuesIntegrityError" reason:v10 userInfo:0];

      objc_exception_throw(v11);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

uint64_t __40__CKParticipantsTrie_entitiesForPrefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 fullName];
  v6 = [v4 fullName];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_composedCharactersForString:(id)a3 appendRootKey:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  if (v4)
  {
    v8 = [(CKParticipantsTrie *)self key];
    [v7 addObject:v8];
  }

  v9 = [v6 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CKParticipantsTrie__composedCharactersForString_appendRootKey___block_invoke;
  v12[3] = &unk_1E72F52B0;
  v10 = v7;
  v13 = v10;
  [v6 enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v12}];

  return v10;
}

uint64_t __65__CKParticipantsTrie__composedCharactersForString_appendRootKey___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_addEntity:(id)a3 named:(id)a4 forCharacters:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 firstObject];
  [v9 removeFirstObject];
  [(CKParticipantsTrie *)self children];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v30 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      v17 = [v16 key];
      v18 = [v17 isEqualToString:v10];

      if (v18)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v16;

    if (v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v19 = [[CKParticipantsTrie alloc] initWithKey:v10];
  [v11 addObject:v19];
LABEL_12:
  if (![v9 count])
  {
    v22 = [(CKParticipantsTrie *)v19 entities];

    if (v22)
    {
      v23 = [(CKParticipantsTrie *)v19 entities];
      v24 = [v23 containsObject:v26];

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = [(CKParticipantsTrie *)v19 entities];
      [v25 addObject:v26];
    }

    else
    {
      v25 = [MEMORY[0x1E695DF70] arrayWithObject:v26];
      [(CKParticipantsTrie *)v19 setEntities:v25];
    }

    goto LABEL_21;
  }

  v20 = [(CKParticipantsTrie *)v19 children];

  if (!v20)
  {
    v21 = objc_opt_new();
    [(CKParticipantsTrie *)v19 setChildren:v21];
  }

  [(CKParticipantsTrie *)v19 _addEntity:v26 named:v8 forCharacters:v9];
LABEL_21:
}

- (BOOL)_trieContainsEntity:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CKParticipantsTrie *)self entities];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) defaultIMHandle];
        v10 = [v9 ID];
        v11 = [v4 defaultIMHandle];
        v12 = [v11 ID];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_lastNodeForString:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v23 = v4;
    v5 = [(CKParticipantsTrie *)self _composedCharactersForString:v4 appendRootKey:0];
    v6 = self;
    v7 = [(CKParticipantsTrie *)v6 children];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = v6;
      v24 = v5;
      while (2)
      {
        v11 = [v5 count];

        if (v9 >= v11)
        {
          v6 = v10;
        }

        else
        {
          v12 = [v5 objectAtIndexedSubscript:v9];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [(CKParticipantsTrie *)v10 children];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
LABEL_7:
            v17 = 0;
            while (1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * v17);
              v19 = [v18 key];
              v20 = [v19 compare:v12 options:393];

              if (!v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
                if (v15)
                {
                  goto LABEL_7;
                }

                goto LABEL_18;
              }
            }

            v6 = v18;

            ++v9;
            v8 = [(CKParticipantsTrie *)v6 children];
            v10 = v6;
            v5 = v24;
            if (v8)
            {
              continue;
            }
          }

          else
          {
LABEL_18:

            v6 = v10;
            v5 = v24;
          }
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    if (v9 == [v5 count])
    {
      v21 = v6;
    }

    else
    {
      v21 = 0;
    }

    v4 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)loadHandleEntityFromLastNode:(id)a3 intoResult:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 entities];

  if (v8)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v6 entities];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if (([v7 containsObject:v14] & 1) == 0)
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }
  }

  v15 = [v6 children];
  v16 = [v15 count];

  if (v16)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = [v6 children];
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(CKParticipantsTrie *)self loadHandleEntityFromLastNode:*(*(&v22 + 1) + 8 * j) intoResult:v7];
        }

        v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v19);
    }
  }
}

@end