@interface ICAtomicLRUCache
- (id)allKeys;
- (id)objectForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ICAtomicLRUCache

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9.receiver = selfCopy;
  v9.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v9 setObject:objectCopy forKey:keyCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v6 removeObjectForKey:keyCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeAllObjects
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3.receiver = selfCopy;
  v3.super_class = ICAtomicLRUCache;
  [(ICLRUCache *)&v3 removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = ICAtomicLRUCache;
  v6 = [(ICLRUCache *)&v8 objectForKey:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)allKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = ICAtomicLRUCache;
  allKeys = [(ICLRUCache *)&v6 allKeys];
  v4 = [allKeys copy];

  objc_sync_exit(selfCopy);

  return v4;
}

@end