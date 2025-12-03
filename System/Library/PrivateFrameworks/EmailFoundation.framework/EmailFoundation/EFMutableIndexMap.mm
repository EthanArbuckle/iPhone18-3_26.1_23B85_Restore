@interface EFMutableIndexMap
- (BOOL)hasKeyAtIndex:(unint64_t)index;
- (BOOL)removeKeyAtIndex:(unint64_t)index;
- (EFMutableIndexMap)init;
- (id)_tupleForKey:(int64_t)key;
- (id)description;
- (id)objectForInt64Key:(int64_t)key;
- (int64_t)keyAtIndex:(unint64_t)index;
- (unint64_t)indexOfKey:(int64_t)key;
- (void)addKey:(int64_t)key atIndex:(unint64_t)index object:(id)object;
- (void)enumerateKeysAndIndexesUsingBlock:(id)block;
- (void)enumerateKeysIndexesAndObjectsUsingBlock:(id)block;
- (void)removeAllKeys;
- (void)setObject:(id)object forKey:(int64_t)key;
- (void)shiftKeysStartingAtIndex:(unint64_t)index by:(int64_t)by;
@end

@implementation EFMutableIndexMap

- (EFMutableIndexMap)init
{
  v8.receiver = self;
  v8.super_class = EFMutableIndexMap;
  v2 = [(EFMutableIndexMap *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tuples = v2->_tuples;
    v2->_tuples = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyToTuple = v2->_keyToTuple;
    v2->_keyToTuple = v5;
  }

  return v2;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@: %p", objc_opt_class(), self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__EFMutableIndexMap_description__block_invoke;
  v6[3] = &unk_1E8248DB0;
  v4 = string;
  v7 = v4;
  [(EFMutableIndexMap *)self enumerateKeysIndexesAndObjectsUsingBlock:v6];
  [v4 appendString:@">"];

  return v4;
}

- (void)addKey:(int64_t)key atIndex:(unint64_t)index object:(id)object
{
  objectCopy = object;
  v9 = objc_alloc_init(_EFMutableIndexMapTuple);
  [(_EFMutableIndexMapTuple *)v9 setIndex:index];
  [(_EFMutableIndexMapTuple *)v9 setKey:key];
  [(_EFMutableIndexMapTuple *)v9 setObject:objectCopy];
  v10 = [(NSMutableArray *)self->_tuples ef_indexWhereObjectWouldBeInserted:v9 usingComparator:&__block_literal_global_11];
  if (v10 && v10 <= [(EFMutableIndexMap *)self count])
  {
    v11 = [(NSMutableArray *)self->_tuples objectAtIndex:v10 - 1];
    if (kCompareTuples_block_invoke(v11, v9, v11))
    {
      [(NSMutableArray *)self->_tuples insertObject:v9 atIndex:v10];
    }

    else
    {
      keyToTuple = self->_keyToTuple;
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "key")}];
      [(NSMutableDictionary *)keyToTuple removeObjectForKey:v13];

      v14 = v11;
      [(_EFMutableIndexMapTuple *)v14 setKey:key];
      [(_EFMutableIndexMapTuple *)v14 setObject:objectCopy];
      if ([(_EFMutableIndexMapTuple *)v14 index]!= index)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EFMutableIndexMap.m" lineNumber:82 description:@"This tuple should already be at the correct index"];
      }

      v9 = v14;
    }
  }

  else
  {
    [(NSMutableArray *)self->_tuples insertObject:v9 atIndex:v10];
  }

  v15 = self->_keyToTuple;
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:key];
  v17 = [(NSMutableDictionary *)v15 objectForKey:v16];

  if (v17)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFMutableIndexMap.m" lineNumber:90 description:@"This key already exists"];
  }

  v18 = self->_keyToTuple;
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:key];
  [(NSMutableDictionary *)v18 setObject:v9 forKeyedSubscript:v19];
}

- (BOOL)removeKeyAtIndex:(unint64_t)index
{
  v5 = objc_alloc_init(_EFMutableIndexMapTuple);
  [(_EFMutableIndexMapTuple *)v5 setIndex:index];
  v6 = [(NSMutableArray *)self->_tuples ef_indexOfObject:v5 usingComparator:&__block_literal_global_11];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_tuples objectAtIndex:v6];
    keyToTuple = self->_keyToTuple;
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "key")}];
    [(NSMutableDictionary *)keyToTuple removeObjectForKey:v9];

    [(NSMutableArray *)self->_tuples removeObjectAtIndex:v6];
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)removeAllKeys
{
  [(NSMutableArray *)self->_tuples removeAllObjects];
  keyToTuple = self->_keyToTuple;

  [(NSMutableDictionary *)keyToTuple removeAllObjects];
}

- (void)enumerateKeysAndIndexesUsingBlock:(id)block
{
  blockCopy = block;
  tuples = self->_tuples;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__EFMutableIndexMap_enumerateKeysAndIndexesUsingBlock___block_invoke;
  v7[3] = &unk_1E8248DD8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)tuples enumerateObjectsUsingBlock:v7];
}

void __55__EFMutableIndexMap_enumerateKeysAndIndexesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 key], objc_msgSend(v6, "index"), a4);
}

- (void)enumerateKeysIndexesAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  tuples = self->_tuples;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EFMutableIndexMap_enumerateKeysIndexesAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E8248DD8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)tuples enumerateObjectsUsingBlock:v7];
}

void __62__EFMutableIndexMap_enumerateKeysIndexesAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 key];
  v9 = [v11 index];
  v10 = [v11 object];
  (*(v7 + 16))(v7, v8, v9, v10, a4);
}

- (int64_t)keyAtIndex:(unint64_t)index
{
  v6 = objc_alloc_init(_EFMutableIndexMapTuple);
  [(_EFMutableIndexMapTuple *)v6 setIndex:index];
  v7 = [(NSMutableArray *)self->_tuples ef_indexOfObject:v6 usingComparator:&__block_literal_global_11];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFMutableIndexMap.m" lineNumber:127 description:{@"No key found at index %llu, check before with hasKeyAtIndex or get your math right!", index}];
  }

  v8 = [(NSMutableArray *)self->_tuples objectAtIndexedSubscript:v7];
  v9 = [v8 key];

  return v9;
}

- (BOOL)hasKeyAtIndex:(unint64_t)index
{
  v5 = objc_alloc_init(_EFMutableIndexMapTuple);
  [(_EFMutableIndexMapTuple *)v5 setIndex:index];
  LOBYTE(self) = [(NSMutableArray *)self->_tuples ef_indexOfObject:v5 usingComparator:&__block_literal_global_11]!= 0x7FFFFFFFFFFFFFFFLL;

  return self;
}

- (id)_tupleForKey:(int64_t)key
{
  keyToTuple = self->_keyToTuple;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
  v8 = [(NSMutableDictionary *)keyToTuple objectForKeyedSubscript:v7];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:key];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFMutableIndexMap.m" lineNumber:140 description:{@"Could not find key %@", v11}];
  }

  return v8;
}

- (unint64_t)indexOfKey:(int64_t)key
{
  v3 = [(EFMutableIndexMap *)self _tupleForKey:key];
  index = [v3 index];

  return index;
}

- (id)objectForInt64Key:(int64_t)key
{
  v3 = [(EFMutableIndexMap *)self _tupleForKey:key];
  object = [v3 object];

  return object;
}

- (void)setObject:(id)object forKey:(int64_t)key
{
  objectCopy = object;
  v6 = [(EFMutableIndexMap *)self _tupleForKey:key];
  [v6 setObject:objectCopy];
}

- (void)shiftKeysStartingAtIndex:(unint64_t)index by:(int64_t)by
{
  v7 = [(NSMutableArray *)self->_tuples count];
  if (by && v7)
  {
    if (by < 0)
    {
      if (-by > index)
      {
        v8 = (~(by + index) + index) & ~((~(by + index) + index) >> 63);
      }

      else
      {
        v8 = index - 1;
      }

      v17 = objc_alloc_init(_EFMutableIndexMapTuple);
      [(_EFMutableIndexMapTuple *)v17 setIndex:(by + index) & ~((by + index) >> 63)];
      v9 = [(NSMutableArray *)self->_tuples indexOfObject:v17 inSortedRange:0 options:[(NSMutableArray *)self->_tuples count] usingComparator:1280, &__block_literal_global_11];
      [(_EFMutableIndexMapTuple *)v17 setIndex:v8];
      v10 = [(NSMutableArray *)self->_tuples indexOfObject:v17 inSortedRange:0 options:[(NSMutableArray *)self->_tuples count] usingComparator:1280, &__block_literal_global_11];
      if (v10 == -[NSMutableArray count](self->_tuples, "count") || v10 < -[NSMutableArray count](self->_tuples, "count") && (-[NSMutableArray objectAtIndexedSubscript:](self->_tuples, "objectAtIndexedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 index], v11, v12 > v8))
      {
        --v10;
      }

      [(NSMutableArray *)self->_tuples removeObjectsInRange:v9, v10 - v9 + 1];
    }

    v18 = objc_alloc_init(_EFMutableIndexMapTuple);
    [(_EFMutableIndexMapTuple *)v18 setIndex:index];
    for (i = [(NSMutableArray *)self->_tuples indexOfObject:v18 inSortedRange:0 options:[(NSMutableArray *)self->_tuples count] usingComparator:1280, &__block_literal_global_11]; i < [(NSMutableArray *)self->_tuples count]; ++i)
    {
      v14 = [(NSMutableArray *)self->_tuples objectAtIndexedSubscript:i];
      index = [v14 index];

      v16 = [(NSMutableArray *)self->_tuples objectAtIndexedSubscript:i];
      [v16 setIndex:(index + by) & ~((index + by) >> 63)];
    }
  }
}

@end