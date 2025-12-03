@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)block;
- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached;
- (id)weakObjectCacheRefForKey:(id)key;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = MFWeakObjectCache;
  v4 = [(MFWeakObjectCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (block)
    {
      v4->_block = _Block_copy(block);
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

- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached
{
  generateCopy = generate;
  v9 = [key copyWithZone:0];
  [(NSLock *)self->_lock lock];
  v10 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v9];
  if (v10)
  {
    reference = [v10 reference];
    if (reference)
    {
      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v9];
  }

  if (generateCopy)
  {
    reference = (*(self->_block + 2))();
    if (reference)
    {
      v12 = [MEMORY[0x277D24FC0] weakReferenceWithObject:reference];
      if (!v12)
      {
        [MFWeakObjectCache objectForKey:a2 shouldGenerate:self wasCached:reference];
      }

      objc_setAssociatedObject(reference, self, [(MFWeakObjectCache *)self weakObjectCacheRefForKey:v9], 1);
      [(NSMutableDictionary *)self->_dictionary setObject:v12 forKeyedSubscript:v9];
    }

    if (cached)
    {
      v13 = 0;
LABEL_14:
      *cached = v13;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  reference = 0;
LABEL_12:
  if (cached)
  {
    v13 = 1;
    goto LABEL_14;
  }

LABEL_15:
  [(NSLock *)self->_lock unlock];
  return reference;
}

- (void)removeObjectForKey:(id)key
{
  [(NSLock *)self->_lock lock];
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{key), "retainedReference"}];
  v6 = v5;
  if (v5)
  {
    [objc_getAssociatedObject(v5 self)];
    objc_setAssociatedObject(v6, self, 0, 1);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:key];

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)weakObjectCacheRefForKey:(id)key
{
  v5 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v5 setCache:self];
  [(_MFWeakObjectCacheRef *)v5 setKey:key];

  return v5;
}

@end