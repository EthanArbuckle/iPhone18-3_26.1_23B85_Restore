@interface HMFMutableOrderedDictionary
- (HMFMutableOrderedDictionary)initWithCapacity:(unint64_t)a3;
- (HMFMutableOrderedDictionary)initWithObjects:(id)a3 orderedKeySet:(id)a4;
- (NSArray)allKeys;
- (NSArray)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)setBySortingDictionary:(id)a3 keyComparator:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setOrderedDictionary:(id)a3;
@end

@implementation HMFMutableOrderedDictionary

- (HMFMutableOrderedDictionary)initWithObjects:(id)a3 orderedKeySet:(id)a4
{
  v5.receiver = self;
  v5.super_class = HMFMutableOrderedDictionary;
  return [(HMFOrderedDictionary *)&v5 initWithObjects:a3 orderedKeySet:a4];
}

- (HMFMutableOrderedDictionary)initWithCapacity:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  v6 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:a3];
  v7 = [(HMFMutableOrderedDictionary *)self initWithObjects:v5 orderedKeySet:v6];

  return v7;
}

- (NSArray)allKeys
{
  v2 = [(NSOrderedSet *)self->super._keys array];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allValues
{
  v2 = [(NSArray *)self->super._objects copy];

  return v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v11 = a4;
  keys = self->super._keys;
  v7 = a3;
  v8 = [(NSOrderedSet *)keys indexOfObject:v11];
  objects = self->super._objects;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSArray *)objects addObject:v7];

    v10 = self->super._keys;
    v7 = [v11 copyWithZone:0];
    [(NSOrderedSet *)v10 addObject:v7];
  }

  else
  {
    [(NSArray *)objects replaceObjectAtIndex:v8 withObject:v7];
  }
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  if (a3)
  {
    [(HMFMutableOrderedDictionary *)self setObject:a3 forKey:a4];
  }

  else
  {
    [(HMFMutableOrderedDictionary *)self removeObjectForKey:a4];
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = [(NSOrderedSet *)self->super._keys indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSArray *)self->super._objects removeObjectAtIndex:v4];
    keys = self->super._keys;

    [(NSOrderedSet *)keys removeObjectAtIndex:v5];
  }
}

- (void)removeObjectsForKeys:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  if (v5 >= 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSOrderedSet *)self->super._keys indexOfObject:*(*(&v14 + 1) + 8 * v11), v14];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addIndex:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(NSArray *)self->super._objects removeObjectsAtIndexes:v6];
    [(NSOrderedSet *)self->super._keys removeObjectsAtIndexes:v6];
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = [v4 firstObject];
    [(HMFMutableOrderedDictionary *)self removeObjectForKey:v6];
LABEL_14:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setOrderedDictionary:(id)a3
{
  objects = self->super._objects;
  v5 = *(a3 + 1);
  v6 = a3;
  [(NSArray *)objects setArray:v5];
  [(NSOrderedSet *)self->super._keys removeAllObjects];
  keys = self->super._keys;
  v8 = v6[2];

  [(NSOrderedSet *)keys unionOrderedSet:v8];
}

- (void)setBySortingDictionary:(id)a3 keyComparator:(id)a4
{
  v7 = 0;
  v8 = 0;
  sortKeysAndValuesOfDictionary(a3, a4, &v8, &v7);
  v5 = v7;
  [(NSArray *)self->super._objects setArray:v7];
  [(NSOrderedSet *)self->super._keys removeAllObjects];
  v6 = v8;
  [(NSOrderedSet *)self->super._keys addObjectsFromArray:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMFOrderedDictionary alloc];
  v5 = [(NSArray *)self->super._objects copy];
  v6 = [(NSOrderedSet *)self->super._keys copy];
  v7 = [(HMFOrderedDictionary *)v4 initWithObjects:v5 orderedKeySet:v6];

  return v7;
}

@end