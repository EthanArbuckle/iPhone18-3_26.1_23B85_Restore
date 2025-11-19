@interface OITSUAtomicLRUCache
- (id)allKeys;
- (id)allValues;
- (id)objectForKey:(id)a3;
- (void)clearEvictionCallbackTarget;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation OITSUAtomicLRUCache

- (void)setObject:(id)a3 forKey:(id)a4
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v7 setObject:a3 forKey:a4];
  objc_sync_exit(self);
}

- (void)removeObjectForKey:(id)a3
{
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v5 removeObjectForKey:a3];
  objc_sync_exit(self);
}

- (void)removeAllObjects
{
  objc_sync_enter(self);
  v3.receiver = self;
  v3.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v3 removeAllObjects];
  objc_sync_exit(self);
}

- (id)objectForKey:(id)a3
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  v5 = [(OITSULRUCache *)&v7 objectForKey:a3];
  objc_sync_exit(self);
  return v5;
}

- (id)allValues
{
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = OITSUAtomicLRUCache;
  v3 = [(NSArray *)[(OITSULRUCache *)&v5 allValues] copy];
  objc_sync_exit(self);
  return v3;
}

- (id)allKeys
{
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = OITSUAtomicLRUCache;
  v3 = [(NSArray *)[(OITSULRUCache *)&v5 allKeys] copy];
  objc_sync_exit(self);
  return v3;
}

- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v7 setEvictionCallbackTarget:a3 selector:a4];
  objc_sync_exit(self);
}

- (void)clearEvictionCallbackTarget
{
  objc_sync_enter(self);
  v3.receiver = self;
  v3.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v3 clearEvictionCallbackTarget];
  objc_sync_exit(self);
}

@end