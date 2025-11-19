@interface DCLRUCache
+ (id)cacheCollection;
+ (void)purgeAllCaches;
- (DCLRUCache)initWithMaxSize:(unint64_t)a3;
- (DCLRUCacheDelegate)delegate;
- (id)objectForKey:(id)a3;
- (void)p_removeOldestObject;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation DCLRUCache

+ (id)cacheCollection
{
  if (cacheCollection_onceToken != -1)
  {
    +[DCLRUCache cacheCollection];
  }

  v3 = cacheCollection_sCacheCollection;

  return v3;
}

void __29__DCLRUCache_cacheCollection__block_invoke()
{
  v0 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  v1 = cacheCollection_sCacheCollection;
  cacheCollection_sCacheCollection = v0;
}

- (DCLRUCache)initWithMaxSize:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = DCLRUCache;
  v4 = [(DCLRUCache *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->mMax = a3;
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:a3];
    mData = v5->mData;
    v5->mData = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    mOrderedKeys = v5->mOrderedKeys;
    v5->mOrderedKeys = v8;

    v10 = [objc_opt_class() cacheCollection];
    [v10 addPointer:v5];

    v11 = v5;
  }

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(NSMutableArray *)self->mOrderedKeys count]>= self->mMax)
  {
    [(DCLRUCache *)self p_removeOldestObject];
  }

  v7 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];
  }

  [(NSMapTable *)self->mData setObject:v8 forKey:v6];
  [(NSMutableArray *)self->mOrderedKeys addObject:v6];
}

- (void)removeObjectForKey:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMapTable *)self->mData removeObjectForKey:v6];
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v5];
  }
}

- (void)removeAllObjects
{
  [(NSMutableArray *)self->mOrderedKeys removeAllObjects];
  mData = self->mData;

  [(NSMapTable *)mData removeAllObjects];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v6 = [(NSMapTable *)self->mData objectForKey:v4];
    [(NSMutableArray *)self->mOrderedKeys addObject:v4];
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];
  }

  return v6;
}

+ (void)purgeAllCaches
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[DCLRUCache cacheCollection];
  v3 = [v2 allObjects];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeAllObjects];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_removeOldestObject
{
  v6 = [(NSMutableArray *)self->mOrderedKeys objectAtIndex:0];
  v3 = [(DCLRUCache *)self delegate];

  if (v3)
  {
    v4 = [(NSMapTable *)self->mData objectForKey:v6];
    v5 = [(DCLRUCache *)self delegate];
    [v5 willEvictObject:v4 forKey:v6];
  }

  [(NSMapTable *)self->mData removeObjectForKey:v6];
  [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:0];
}

- (DCLRUCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end