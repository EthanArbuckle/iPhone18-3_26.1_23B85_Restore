@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)a3;
- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5;
- (id)weakObjectCacheRefForKey:(id)a3;
- (void)dealloc;
- (void)removeObjectForKey:(id)a3;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)a3
{
  v7.receiver = self;
  v7.super_class = MFWeakObjectCache;
  v4 = [(MFWeakObjectCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_block = _Block_copy(a3);
      v5->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
      v5->_dictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  _Block_release(self->_block);

  v3.receiver = self;
  v3.super_class = MFWeakObjectCache;
  [(MFWeakObjectCache *)&v3 dealloc];
}

- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5
{
  v6 = a4;
  v9 = [a3 copyWithZone:0];
  [(NSLock *)self->_lock lock];
  v10 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = [v10 reference];
    if (v11)
    {
      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v9];
  }

  if (v6)
  {
    v11 = (*(self->_block + 2))();
    if (v11)
    {
      v12 = [MEMORY[0x277D24FC0] weakReferenceWithObject:v11];
      if (!v12)
      {
        [MFWeakObjectCache objectForKey:a2 shouldGenerate:self wasCached:v11];
      }

      objc_setAssociatedObject(v11, self, [(MFWeakObjectCache *)self weakObjectCacheRefForKey:v9], 1);
      [(NSMutableDictionary *)self->_dictionary setObject:v12 forKeyedSubscript:v9];
    }

    if (a5)
    {
      v13 = 0;
LABEL_14:
      *a5 = v13;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v11 = 0;
LABEL_12:
  if (a5)
  {
    v13 = 1;
    goto LABEL_14;
  }

LABEL_15:
  [(NSLock *)self->_lock unlock];
  return v11;
}

- (void)removeObjectForKey:(id)a3
{
  [(NSLock *)self->_lock lock];
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{a3), "retainedReference"}];
  v6 = v5;
  if (v5)
  {
    [objc_getAssociatedObject(v5 self)];
    objc_setAssociatedObject(v6, self, 0, 1);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:a3];

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)weakObjectCacheRefForKey:(id)a3
{
  v5 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v5 setCache:self];
  [(_MFWeakObjectCacheRef *)v5 setKey:a3];

  return v5;
}

@end