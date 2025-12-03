@interface CKParticipantsTrie
- (BOOL)_trieContainsEntity:(id)entity;
- (BOOL)hasPrefix:(id)prefix;
- (CKParticipantsTrie)initWithKey:(id)key;
- (id)_composedCharactersForString:(id)string appendRootKey:(BOOL)key;
- (id)_lastNodeForString:(id)string;
- (id)entitiesForPrefix:(id)prefix;
- (id)rawHandlesForParticipantName:(id)name;
- (void)_addEntity:(id)entity named:(id)named forCharacters:(id)characters;
- (void)addParticipantName:(id)name entity:(id)entity;
- (void)loadHandleEntityFromLastNode:(id)node intoResult:(id)result;
@end

@implementation CKParticipantsTrie

- (CKParticipantsTrie)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = CKParticipantsTrie;
  v6 = [(CKParticipantsTrie *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
  }

  return v7;
}

- (void)addParticipantName:(id)name entity:(id)entity
{
  nameCopy = name;
  entityCopy = entity;
  if (nameCopy && entityCopy)
  {
    if (!self->_children)
    {
      v7 = objc_opt_new();
      children = self->_children;
      self->_children = v7;
    }

    lowercaseString = [nameCopy lowercaseString];
    v10 = [(CKParticipantsTrie *)self _composedCharactersForString:lowercaseString appendRootKey:1];
    [(CKParticipantsTrie *)self _addEntity:entityCopy named:lowercaseString forCharacters:v10];
  }
}

- (BOOL)hasPrefix:(id)prefix
{
  v3 = [(CKParticipantsTrie *)self _lastNodeForString:prefix];
  v4 = v3 != 0;

  return v4;
}

- (id)rawHandlesForParticipantName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CKParticipantsTrie *)self _lastNodeForString:nameCopy, 0];
  entities = [v6 entities];

  v8 = [entities countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(entities);
        }

        defaultIMHandle = [*(*(&v16 + 1) + 8 * i) defaultIMHandle];
        v13 = [defaultIMHandle ID];
        [v5 addObject:v13];
      }

      v9 = [entities countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)entitiesForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([(CKParticipantsTrie *)self hasPrefix:prefixCopy])
  {
    v5 = objc_opt_new();
    v6 = [(CKParticipantsTrie *)self _lastNodeForString:prefixCopy];
    [(CKParticipantsTrie *)self loadHandleEntityFromLastNode:v6 intoResult:v5];

    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_193];
    if (![v5 count])
    {
      v9 = MEMORY[0x1E695DF30];
      prefixCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No trie node values for valid prefix: [%@]", prefixCopy];
      v11 = [v9 exceptionWithName:@"CKParticipantsTrie/NodeValuesIntegrityError" reason:prefixCopy userInfo:0];

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

- (id)_composedCharactersForString:(id)string appendRootKey:(BOOL)key
{
  keyCopy = key;
  stringCopy = string;
  v7 = objc_opt_new();
  if (keyCopy)
  {
    v8 = [(CKParticipantsTrie *)self key];
    [v7 addObject:v8];
  }

  v9 = [stringCopy length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CKParticipantsTrie__composedCharactersForString_appendRootKey___block_invoke;
  v12[3] = &unk_1E72F52B0;
  v10 = v7;
  v13 = v10;
  [stringCopy enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v12}];

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

- (void)_addEntity:(id)entity named:(id)named forCharacters:(id)characters
{
  v32 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  namedCopy = named;
  charactersCopy = characters;
  firstObject = [charactersCopy firstObject];
  [charactersCopy removeFirstObject];
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
      v18 = [v17 isEqualToString:firstObject];

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

  v19 = [[CKParticipantsTrie alloc] initWithKey:firstObject];
  [v11 addObject:v19];
LABEL_12:
  if (![charactersCopy count])
  {
    entities = [(CKParticipantsTrie *)v19 entities];

    if (entities)
    {
      entities2 = [(CKParticipantsTrie *)v19 entities];
      v24 = [entities2 containsObject:entityCopy];

      if (v24)
      {
        goto LABEL_21;
      }

      entities3 = [(CKParticipantsTrie *)v19 entities];
      [entities3 addObject:entityCopy];
    }

    else
    {
      entities3 = [MEMORY[0x1E695DF70] arrayWithObject:entityCopy];
      [(CKParticipantsTrie *)v19 setEntities:entities3];
    }

    goto LABEL_21;
  }

  children = [(CKParticipantsTrie *)v19 children];

  if (!children)
  {
    v21 = objc_opt_new();
    [(CKParticipantsTrie *)v19 setChildren:v21];
  }

  [(CKParticipantsTrie *)v19 _addEntity:entityCopy named:namedCopy forCharacters:charactersCopy];
LABEL_21:
}

- (BOOL)_trieContainsEntity:(id)entity
{
  v20 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  entities = [(CKParticipantsTrie *)self entities];
  v6 = [entities countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(entities);
        }

        defaultIMHandle = [*(*(&v15 + 1) + 8 * i) defaultIMHandle];
        v10 = [defaultIMHandle ID];
        defaultIMHandle2 = [entityCopy defaultIMHandle];
        v12 = [defaultIMHandle2 ID];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [entities countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_lastNodeForString:(id)string
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    v23 = stringCopy;
    v5 = [(CKParticipantsTrie *)self _composedCharactersForString:stringCopy appendRootKey:0];
    selfCopy = self;
    children = [(CKParticipantsTrie *)selfCopy children];
    if (children)
    {
      children3 = children;
      v9 = 0;
      v10 = selfCopy;
      v24 = v5;
      while (2)
      {
        v11 = [v5 count];

        if (v9 >= v11)
        {
          selfCopy = v10;
        }

        else
        {
          v12 = [v5 objectAtIndexedSubscript:v9];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          children2 = [(CKParticipantsTrie *)v10 children];
          v14 = [children2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
                objc_enumerationMutation(children2);
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
                v15 = [children2 countByEnumeratingWithState:&v25 objects:v29 count:16];
                if (v15)
                {
                  goto LABEL_7;
                }

                goto LABEL_18;
              }
            }

            selfCopy = v18;

            ++v9;
            children3 = [(CKParticipantsTrie *)selfCopy children];
            v10 = selfCopy;
            v5 = v24;
            if (children3)
            {
              continue;
            }
          }

          else
          {
LABEL_18:

            selfCopy = v10;
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
      v21 = selfCopy;
    }

    else
    {
      v21 = 0;
    }

    stringCopy = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)loadHandleEntityFromLastNode:(id)node intoResult:(id)result
{
  v32 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  resultCopy = result;
  entities = [nodeCopy entities];

  if (entities)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    entities2 = [nodeCopy entities];
    v10 = [entities2 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(entities2);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if (([resultCopy containsObject:v14] & 1) == 0)
          {
            [resultCopy addObject:v14];
          }
        }

        v11 = [entities2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }
  }

  children = [nodeCopy children];
  v16 = [children count];

  if (v16)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    children2 = [nodeCopy children];
    v18 = [children2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
            objc_enumerationMutation(children2);
          }

          [(CKParticipantsTrie *)self loadHandleEntityFromLastNode:*(*(&v22 + 1) + 8 * j) intoResult:resultCopy];
        }

        v19 = [children2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v19);
    }
  }
}

@end