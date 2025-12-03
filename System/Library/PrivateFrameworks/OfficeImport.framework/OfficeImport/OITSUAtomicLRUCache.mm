@interface OITSUAtomicLRUCache
- (id)allKeys;
- (id)allValues;
- (id)objectForKey:(id)key;
- (void)clearEvictionCallbackTarget;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setEvictionCallbackTarget:(id)target selector:(SEL)selector;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation OITSUAtomicLRUCache

- (void)setObject:(id)object forKey:(id)key
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v7 setObject:object forKey:key];
  objc_sync_exit(self);
}

- (void)removeObjectForKey:(id)key
{
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v5 removeObjectForKey:key];
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

- (id)objectForKey:(id)key
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  v5 = [(OITSULRUCache *)&v7 objectForKey:key];
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

- (void)setEvictionCallbackTarget:(id)target selector:(SEL)selector
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = OITSUAtomicLRUCache;
  [(OITSULRUCache *)&v7 setEvictionCallbackTarget:target selector:selector];
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