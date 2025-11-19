@interface FCSetValueDictionary
- (FCSetValueDictionary)init;
- (id)_setForKey:(id)a3;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addObject:(id)a3 forKey:(id)a4;
- (void)addObjects:(id)a3 forKey:(id)a4;
- (void)removeObjectsForKey:(id)a3;
@end

@implementation FCSetValueDictionary

- (id)description
{
  v2 = [(FCSetValueDictionary *)self backingDictionary];
  v3 = [v2 description];

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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[FCSetValueDictionary allocWithZone:?]];
  v5 = [(FCSetValueDictionary *)v4 backingDictionary];
  v6 = [(FCSetValueDictionary *)self backingDictionary];
  [v5 addEntriesFromDictionary:v6];

  return v4;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(FCSetValueDictionary *)self _setForKey:a4];
  [v7 addObject:v6];
}

- (void)addObjects:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(FCSetValueDictionary *)self _setForKey:a4];
  [v7 unionSet:v6];
}

- (void)removeObjectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCSetValueDictionary *)self backingDictionary];
  [v5 removeObjectForKey:v4];
}

- (id)keyEnumerator
{
  v2 = [(FCSetValueDictionary *)self backingDictionary];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (id)_setForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCSetValueDictionary *)self backingDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = objc_opt_new();
    [v5 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

@end