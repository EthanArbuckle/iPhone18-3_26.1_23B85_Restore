@interface FigCaptureTrie
- (BOOL)containsParentPath:(id)path;
- (BOOL)containsPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (FigCaptureTrie)init;
- (FigCaptureTrie)initWithPath:(id)path;
- (FigCaptureTrie)initWithPathArray:(id)array;
- (NSDictionary)children;
- (id)_extractFrom:(id)from writeTarget:(id)target destinationMutability:(int)mutability overwrite:(BOOL)overwrite;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)extractFrom:(id)from;
- (id)generatePathArray;
- (id)getSubTrie:(id)trie;
- (void)_addPath:(id)path index:(unint64_t)index;
- (void)_enumeratePathsWithPrefix:(id)prefix stop:(BOOL *)stop processLeaf:(id)leaf;
- (void)dealloc;
- (void)extractFrom:(id)from writeInto:(id)into assumeMutable:(BOOL)mutable overwrite:(BOOL)overwrite;
@end

@implementation FigCaptureTrie

- (FigCaptureTrie)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureTrie;
  return [(FigCaptureTrie *)&v3 init];
}

- (FigCaptureTrie)initWithPath:(id)path
{
  v4 = [(FigCaptureTrie *)self init];
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [path countByEnumeratingWithState:&v14 objects:v13 count:16];
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      v8 = *v15;
      v6 = v4;
      do
      {
        v9 = 0;
        v10 = v6;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(path);
          }

          v11 = *(*(&v14 + 1) + 8 * v9);
          v6 = objc_alloc_init(FigCaptureTrie);
          v10->_subTries = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:v11];

          ++v9;
          v10 = v6;
        }

        while (v7 != v9);
        v7 = [path countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v7);
    }

    v6->_complete = 1;
  }

  return v4;
}

- (FigCaptureTrie)initWithPathArray:(id)array
{
  v4 = [(FigCaptureTrie *)self init];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [array countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(array);
          }

          [(FigCaptureTrie *)v4 addPath:*(*(&v11 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [array countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureTrie;
  [(FigCaptureTrie *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"FigCaptureTrie: {\n"];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__FigCaptureTrie_description__block_invoke;
  v5[3] = &unk_1E798F640;
  v5[4] = v3;
  v5[5] = v6;
  [(FigCaptureTrie *)self enumeratePaths:v5];
  [v3 appendString:@"}"];
  _Block_object_dispose(v6, 8);
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[FigCaptureTrie allocWithZone:](FigCaptureTrie init];
  v5->_complete = self->_complete;
  if (self->_subTries)
  {
    v5->_subTries = objc_alloc_init(MEMORY[0x1E695DF90]);
    subTries = self->_subTries;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__FigCaptureTrie_copyWithZone___block_invoke;
    v8[3] = &unk_1E798F668;
    v8[4] = v5;
    v8[5] = zone;
    [(NSMutableDictionary *)subTries enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v5;
}

void __31__FigCaptureTrie_copyWithZone___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyWithZone:*(a1 + 40)];
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:a2];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_complete == *(equal + 8) && (subTries = self->_subTries, (subTries == 0) != (*(equal + 2) != 0)))
    {
      if (!subTries || (v6 = [(NSMutableDictionary *)subTries isEqual:?]) != 0)
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (NSDictionary)children
{
  v2 = [(NSMutableDictionary *)self->_subTries copy];

  return v2;
}

- (void)_addPath:(id)path index:(unint64_t)index
{
  if ([path count] == index)
  {
    self->_complete = 1;
  }

  else
  {
    v7 = [path objectAtIndexedSubscript:index];
    subTries = self->_subTries;
    if (!subTries)
    {
      subTries = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_subTries = subTries;
    }

    v9 = [(NSMutableDictionary *)subTries objectForKeyedSubscript:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(FigCaptureTrie);
      [(NSMutableDictionary *)self->_subTries setObject:v9 forKeyedSubscript:v7];
    }

    [(FigCaptureTrie *)v9 _addPath:path index:index + 1];
  }
}

- (BOOL)containsPath:(id)path
{
  v3 = [(FigCaptureTrie *)self getSubTrie:path];
  if (v3)
  {
    LOBYTE(v3) = v3[8];
  }

  return v3;
}

- (BOOL)containsParentPath:(id)path
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [path countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(path);
      }

      complete = self->_complete;
      if (complete)
      {
        break;
      }

      v10 = [(NSMutableDictionary *)self->_subTries objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v8)];
      if (!v10)
      {
        break;
      }

      self = v10;
      if (v6 == ++v8)
      {
        v6 = [path countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return self->_complete;
      }
    }
  }

  else
  {
    return self->_complete;
  }

  return complete;
}

- (id)getSubTrie:(id)trie
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [trie countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(trie);
      }

      self = [(NSMutableDictionary *)self->_subTries objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v8)];
      if (!self)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [trie countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return self;
      }
    }
  }

  return self;
}

- (void)_enumeratePathsWithPrefix:(id)prefix stop:(BOOL *)stop processLeaf:(id)leaf
{
  if (!self->_complete || (v11 = 0, (*(leaf + 2))(leaf, prefix, &v11, stop), !*stop) && (v11 & 1) == 0)
  {
    subTries = self->_subTries;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__FigCaptureTrie__enumeratePathsWithPrefix_stop_processLeaf___block_invoke;
    v10[3] = &unk_1E798F690;
    v10[5] = leaf;
    v10[6] = stop;
    v10[4] = prefix;
    [(NSMutableDictionary *)subTries enumerateKeysAndObjectsUsingBlock:v10];
  }
}

uint64_t __61__FigCaptureTrie__enumeratePathsWithPrefix_stop_processLeaf___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 _enumeratePathsWithPrefix:objc_msgSend(*(a1 + 32) stop:"arrayByAddingObject:" processLeaf:{a2), *(a1 + 48), *(a1 + 40)}];
  *a4 = **(a1 + 48);
  return result;
}

- (id)extractFrom:(id)from
{
  result = [(FigCaptureTrie *)self _extractFrom:from writeTarget:0 destinationMutability:2 overwrite:1];
  if (!result)
  {
    v4 = MEMORY[0x1E695DF90];

    return [v4 dictionary];
  }

  return result;
}

- (void)extractFrom:(id)from writeInto:(id)into assumeMutable:(BOOL)mutable overwrite:(BOOL)overwrite
{
  if (self->_complete)
  {
    if (overwrite)
    {
      [into removeAllObjects];

      [into addEntriesFromDictionary:from];
    }
  }

  else
  {
    if (mutable)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(FigCaptureTrie *)self _extractFrom:from writeTarget:into destinationMutability:v8 overwrite:overwrite];
  }
}

- (id)_extractFrom:(id)from writeTarget:(id)target destinationMutability:(int)mutability overwrite:(BOOL)overwrite
{
  if (!self->_complete)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    if ([(NSMutableDictionary *)self->_subTries count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!target || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (mutability)
          {
            targetCopy = target;
            v21[5] = targetCopy;
            if (mutability == 1)
            {
              mutabilityCopy = 0;
            }

            else
            {
              mutabilityCopy = mutability;
            }
          }

          else
          {
            mutabilityCopy = 0;
          }

          subTries = self->_subTries;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __75__FigCaptureTrie__extractFrom_writeTarget_destinationMutability_overwrite___block_invoke;
          v17[3] = &unk_1E798F6B8;
          v17[4] = from;
          v17[5] = target;
          v18 = mutabilityCopy;
          overwriteCopy = overwrite;
          v17[6] = self;
          v17[7] = &v20;
          [(NSMutableDictionary *)subTries enumerateKeysAndObjectsUsingBlock:v17];
        }
      }
    }

    v9 = v21[5];
    _Block_object_dispose(&v20, 8);
    return v9;
  }

  if (target && !overwrite)
  {
    return 0;
  }

  fromCopy = from;

  return fromCopy;
}

uint64_t __75__FigCaptureTrie__extractFrom_writeTarget_destinationMutability_overwrite___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (result)
  {
    result = [a3 _extractFrom:result writeTarget:objc_msgSend(*(a1 + 40) destinationMutability:"objectForKeyedSubscript:" overwrite:{a2), *(a1 + 64), *(a1 + 68)}];
    if (result)
    {
      v7 = result;
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = [v8 mutableCopy];
        }

        else
        {
          v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 48) + 16), "count")}];
        }

        *(*(*(a1 + 56) + 8) + 40) = v9;
      }

      v10 = *(*(*(a1 + 56) + 8) + 40);

      return [v10 setObject:v7 forKeyedSubscript:a2];
    }
  }

  return result;
}

- (id)generatePathArray
{
  array = [MEMORY[0x1E695DF70] array];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FigCaptureTrie_generatePathArray__block_invoke;
  v5[3] = &unk_1E798F6E0;
  v5[4] = array;
  [(FigCaptureTrie *)self enumeratePaths:v5];
  return array;
}

@end