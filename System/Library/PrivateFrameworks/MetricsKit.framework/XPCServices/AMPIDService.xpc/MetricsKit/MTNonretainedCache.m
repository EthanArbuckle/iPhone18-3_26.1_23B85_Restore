@interface MTNonretainedCache
- (MTNonretainedCache)init;
- (id)objectForKeyedSubscript:(id)a3;
- (id)objectForKeyedSubscript:(id)a3 creation:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
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

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTNonretainedCache *)v5 cache];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 value];
  if (!v8)
  {
    v9 = [(MTNonretainedCache *)v5 cache];
    [v9 setObject:0 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v11)
  {
    v8 = [(MTNonretainedCache *)v7 cache];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (!v9)
    {
      v9 = objc_alloc_init(MTWeakRef);
      v10 = [(MTNonretainedCache *)v7 cache];
      [v10 setObject:v9 forKeyedSubscript:v6];
    }

    [(MTWeakRef *)v9 setValue:v11];
  }

  else
  {
    v9 = [(MTNonretainedCache *)v7 cache];
    [(MTWeakRef *)v9 setObject:0 forKeyedSubscript:v6];
  }

  objc_sync_exit(v7);
}

- (id)objectForKeyedSubscript:(id)a3 creation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MTNonretainedCache *)v8 cache];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (!v10)
  {
    v10 = objc_alloc_init(MTWeakRef);
    v11 = [(MTNonretainedCache *)v8 cache];
    [v11 setObject:v10 forKeyedSubscript:v6];
  }

  v12 = [(MTWeakRef *)v10 value];
  if (!v12)
  {
    v12 = v7[2](v7);
    [(MTWeakRef *)v10 setValue:v12];
  }

  objc_sync_exit(v8);

  return v12;
}

@end