@interface FCSetValueDictionary
- (FCSetValueDictionary)init;
- (id)_setForKey:(id)key;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object forKey:(id)key;
- (void)addObjects:(id)objects forKey:(id)key;
- (void)removeObjectsForKey:(id)key;
@end

@implementation FCSetValueDictionary

- (id)description
{
  backingDictionary = [(FCSetValueDictionary *)self backingDictionary];
  v3 = [backingDictionary description];

  return v3;
}

- (FCSetValueDictionary)init
{
  v6.receiver = self;
  v6.super_class = FCSetValueDictionary;
  v2 = [(FCSetValueDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = v3;
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[FCSetValueDictionary allocWithZone:?]];
  backingDictionary = [(FCSetValueDictionary *)v4 backingDictionary];
  backingDictionary2 = [(FCSetValueDictionary *)self backingDictionary];
  [backingDictionary addEntriesFromDictionary:backingDictionary2];

  return v4;
}

- (void)addObject:(id)object forKey:(id)key
{
  objectCopy = object;
  v7 = [(FCSetValueDictionary *)self _setForKey:key];
  [v7 addObject:objectCopy];
}

- (void)addObjects:(id)objects forKey:(id)key
{
  objectsCopy = objects;
  v7 = [(FCSetValueDictionary *)self _setForKey:key];
  [v7 unionSet:objectsCopy];
}

- (void)removeObjectsForKey:(id)key
{
  keyCopy = key;
  backingDictionary = [(FCSetValueDictionary *)self backingDictionary];
  [backingDictionary removeObjectForKey:keyCopy];
}

- (id)keyEnumerator
{
  backingDictionary = [(FCSetValueDictionary *)self backingDictionary];
  keyEnumerator = [backingDictionary keyEnumerator];

  return keyEnumerator;
}

- (id)_setForKey:(id)key
{
  keyCopy = key;
  backingDictionary = [(FCSetValueDictionary *)self backingDictionary];
  v6 = [backingDictionary objectForKeyedSubscript:keyCopy];
  if (!v6)
  {
    v6 = objc_opt_new();
    [backingDictionary setObject:v6 forKeyedSubscript:keyCopy];
  }

  return v6;
}

@end