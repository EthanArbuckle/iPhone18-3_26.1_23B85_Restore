@interface ICLRUCache
+ (id)cacheCollection;
+ (void)purgeAllCaches;
- (ICLRUCache)initWithMaxSize:(unint64_t)size;
- (ICLRUCacheDelegate)delegate;
- (id)objectForKey:(id)key;
- (void)p_removeOldestObject;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ICLRUCache

+ (id)cacheCollection
{
  if (cacheCollection_onceToken_0 != -1)
  {
    +[ICLRUCache cacheCollection];
  }

  v3 = cacheCollection_sCacheCollection_0;

  return v3;
}

uint64_t __29__ICLRUCache_cacheCollection__block_invoke()
{
  cacheCollection_sCacheCollection_0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

- (ICLRUCache)initWithMaxSize:(unint64_t)size
{
  v13.receiver = self;
  v13.super_class = ICLRUCache;
  v4 = [(ICLRUCache *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->mMax = size;
    v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:size];
    mData = v5->mData;
    v5->mData = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
    mOrderedKeys = v5->mOrderedKeys;
    v5->mOrderedKeys = v8;

    cacheCollection = [objc_opt_class() cacheCollection];
    [cacheCollection addPointer:v5];

    v11 = v5;
  }

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(NSMutableArray *)self->mOrderedKeys count]>= self->mMax)
  {
    [(ICLRUCache *)self p_removeOldestObject];
  }

  v7 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:keyCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];
  }

  [(NSMapTable *)self->mData setObject:objectCopy forKey:keyCopy];
  [(NSMutableArray *)self->mOrderedKeys addObject:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMapTable *)self->mData removeObjectForKey:keyCopy];
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v5];
  }
}

- (void)removeAllObjects
{
  [(NSMutableArray *)self->mOrderedKeys removeAllObjects];
  mData = self->mData;

  [(NSMapTable *)mData removeAllObjects];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:keyCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v6 = [(NSMapTable *)self->mData objectForKey:keyCopy];
    [(NSMutableArray *)self->mOrderedKeys addObject:keyCopy];
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];
  }

  return v6;
}

+ (void)purgeAllCaches
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[ICLRUCache cacheCollection];
  allObjects = [v2 allObjects];

  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeAllObjects];
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_removeOldestObject
{
  v6 = [(NSMutableArray *)self->mOrderedKeys objectAtIndex:0];
  delegate = [(ICLRUCache *)self delegate];

  if (delegate)
  {
    v4 = [(NSMapTable *)self->mData objectForKey:v6];
    delegate2 = [(ICLRUCache *)self delegate];
    [delegate2 willEvictObject:v4 forKey:v6];
  }

  [(NSMapTable *)self->mData removeObjectForKey:v6];
  [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:0];
}

- (ICLRUCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end