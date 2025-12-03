@interface MTNonretainedCache
- (MTNonretainedCache)init;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)objectForKeyedSubscript:(id)subscript creation:(id)creation;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation MTNonretainedCache

- (MTNonretainedCache)init
{
  v5.receiver = self;
  v5.super_class = MTNonretainedCache;
  v2 = [(MTNonretainedCache *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(MTNonretainedCache *)v2 setCache:v3];
  }

  return v2;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTNonretainedCache *)selfCopy cache];
  v7 = [cache objectForKeyedSubscript:subscriptCopy];

  value = [v7 value];
  if (!value)
  {
    cache2 = [(MTNonretainedCache *)selfCopy cache];
    [cache2 setObject:0 forKeyedSubscript:subscriptCopy];
  }

  objc_sync_exit(selfCopy);

  return value;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objectCopy)
  {
    cache = [(MTNonretainedCache *)selfCopy cache];
    cache3 = [cache objectForKeyedSubscript:subscriptCopy];

    if (!cache3)
    {
      cache3 = objc_alloc_init(MTWeakRef);
      cache2 = [(MTNonretainedCache *)selfCopy cache];
      [cache2 setObject:cache3 forKeyedSubscript:subscriptCopy];
    }

    [(MTWeakRef *)cache3 setValue:objectCopy];
  }

  else
  {
    cache3 = [(MTNonretainedCache *)selfCopy cache];
    [(MTWeakRef *)cache3 setObject:0 forKeyedSubscript:subscriptCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)objectForKeyedSubscript:(id)subscript creation:(id)creation
{
  subscriptCopy = subscript;
  creationCopy = creation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTNonretainedCache *)selfCopy cache];
  v10 = [cache objectForKeyedSubscript:subscriptCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MTWeakRef);
    cache2 = [(MTNonretainedCache *)selfCopy cache];
    [cache2 setObject:v10 forKeyedSubscript:subscriptCopy];
  }

  value = [(MTWeakRef *)v10 value];
  if (!value)
  {
    value = creationCopy[2](creationCopy);
    [(MTWeakRef *)v10 setValue:value];
  }

  objc_sync_exit(selfCopy);

  return value;
}

@end