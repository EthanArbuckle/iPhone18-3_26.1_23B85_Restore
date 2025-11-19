@interface MIOOrderedKeysMutableMap
- (MIOOrderedKeysMutableMap)init;
- (id)allOrderedKeys;
- (id)allValues;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (([(NSMutableArray *)v7->_keys containsObject:v6]& 1) == 0)
  {
    [(NSMutableArray *)v7->_keys addObject:v6];
  }

  [(NSMutableDictionary *)v7->_map setObject:v8 forKey:v6];
  objc_sync_exit(v7);
}

- (id)allOrderedKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_keys copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_map objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)allValues
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_map allValues];
  objc_sync_exit(v2);

  return v3;
}

@end