@interface ICAtomicLRUCache
- (id)allKeys;
- (id)objectForKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ICAtomicLRUCache

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9.receiver = v8;
  v9.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v9 setObject:v6 forKey:v7];
  objc_sync_exit(v8);
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v6 removeObjectForKey:v4];
  objc_sync_exit(v5);
}

- (void)removeAllObjects
{
  v2 = self;
  objc_sync_enter(v2);
  v3.receiver = v2;
  v3.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v3 removeAllObjects];
  objc_sync_exit(v2);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8.receiver = v5;
  v8.super_class = ICAtomicLRUCache;
  v6 = [(ICLRUCache *)&v8 objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)allKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v6.receiver = v2;
  v6.super_class = ICAtomicLRUCache;
  v3 = [(ICLRUCache *)&v6 allKeys];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

@end