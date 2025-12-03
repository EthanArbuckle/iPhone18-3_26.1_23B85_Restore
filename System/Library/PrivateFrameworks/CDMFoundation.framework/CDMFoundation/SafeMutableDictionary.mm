@interface SafeMutableDictionary
- (SafeMutableDictionary)init;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SafeMutableDictionary

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = self->dictionary;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->dictionary objectForKeyedSubscript:keyCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = self->dictionary;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->dictionary setObject:objectCopy forKeyedSubscript:keyCopy];
  objc_sync_exit(v7);
}

- (SafeMutableDictionary)init
{
  v6.receiver = self;
  v6.super_class = SafeMutableDictionary;
  v2 = [(SafeMutableDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->dictionary;
    v2->dictionary = v3;
  }

  return v2;
}

@end