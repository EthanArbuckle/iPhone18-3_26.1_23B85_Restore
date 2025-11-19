@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5;
- (id)objectForKey:(id)a3 wasCached:(BOOL *)a4;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MFWeakObjectCache;
  v5 = [(MFWeakObjectCache *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
      block = v6->_block;
      v6->_block = v7;

      v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
      lock = v6->_lock;
      v6->_lock = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dictionary = v6->_dictionary;
      v6->_dictionary = v11;
    }

    else
    {
      dictionary = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v3 = [(MFWeakObjectCache *)self objectForKey:a3 shouldGenerate:1 wasCached:0];

  return v3;
}

- (id)objectForKey:(id)a3 wasCached:(BOOL *)a4
{
  v4 = [(MFWeakObjectCache *)self objectForKey:a3 shouldGenerate:1 wasCached:a4];

  return v4;
}

- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5
{
  v6 = a4;
  v9 = a3;
  v10 = [v9 copyWithZone:0];

  [(NSLock *)self->_lock lock];
  v11 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 reference];
    if (v13)
    {
      v14 = v12;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v10];
  }

  if (!v6)
  {
    v14 = 0;
    v13 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

LABEL_13:
    v19 = 1;
LABEL_16:
    *a5 = v19;
    goto LABEL_17;
  }

  v13 = (*(self->_block + 2))();
  if (!v13)
  {
    v14 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = [MEMORY[0x1E69AD788] weakReferenceWithObject:v13];
  if (!v14)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MFWeakObjectCache.m" lineNumber:106 description:{@"couldn't create a weak reference for %@", v13}];
  }

  v15 = v13;
  v16 = self;
  v17 = v10;
  v18 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v18 setCache:v16];
  [(_MFWeakObjectCacheRef *)v18 setKey:v17];
  objc_setAssociatedObject(v15, v16, v18, 1);

  [(NSMutableDictionary *)self->_dictionary setObject:v14 forKeyedSubscript:v17];
  if (a5)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [(NSLock *)self->_lock unlock];

  return v13;
}

- (void)removeObjectForKey:(id)a3
{
  v7 = a3;
  [(NSLock *)self->_lock lock];
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v7];
  v5 = [v4 reference];
  v6 = v5;
  if (v5)
  {
    _removeDestructionHandler(v5, self);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v7];
  [(NSLock *)self->_lock unlock];
}

- (void)removeAllObjects
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_dictionary allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) reference];
        v8 = v7;
        if (v7)
        {
          _removeDestructionHandler(v7, self);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_dictionary removeAllObjects];
  [(NSLock *)self->_lock unlock];
  v9 = *MEMORY[0x1E69E9840];
}

@end