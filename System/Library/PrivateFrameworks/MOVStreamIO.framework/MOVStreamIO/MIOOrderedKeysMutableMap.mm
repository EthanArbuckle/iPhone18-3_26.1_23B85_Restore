@interface MIOOrderedKeysMutableMap
- (MIOOrderedKeysMutableMap)init;
- (id)allOrderedKeys;
- (id)allValues;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MIOOrderedKeysMutableMap

- (MIOOrderedKeysMutableMap)init
{
  v8.receiver = self;
  v8.super_class = MIOOrderedKeysMutableMap;
  v2 = [(MIOOrderedKeysMutableMap *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keys = v2->_keys;
    v2->_keys = v3;

    v5 = objc_opt_new();
    map = v2->_map;
    v2->_map = v5;
  }

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_keys containsObject:keyCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_keys addObject:keyCopy];
  }

  [(NSMutableDictionary *)selfCopy->_map setObject:objectCopy forKey:keyCopy];
  objc_sync_exit(selfCopy);
}

- (id)allOrderedKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_keys copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_map objectForKey:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)allValues
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_map allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

@end