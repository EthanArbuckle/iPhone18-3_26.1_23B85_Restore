@interface FCSetValueMapTable
- (FCSetValueMapTable)init;
- (id)_setForKey:(id)key;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)objectsForKey:(id)key;
- (void)addObject:(id)object forKey:(id)key;
- (void)addObjects:(id)objects forKey:(id)key;
- (void)removeObject:(id)object forKey:(id)key;
- (void)removeObjectsForKey:(id)key;
@end

@implementation FCSetValueMapTable

- (id)description
{
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  v3 = [backingMapTable description];

  return v3;
}

- (FCSetValueMapTable)init
{
  v6.receiver = self;
  v6.super_class = FCSetValueMapTable;
  v2 = [(FCSetValueMapTable *)&v6 init];
  if (v2)
  {
    v3 = [FCMapTable mapTableWithKeyOptions:0 valueOptions:0];
    backingMapTable = v2->_backingMapTable;
    v2->_backingMapTable = v3;
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [+[FCSetValueMapTable allocWithZone:](FCSetValueMapTable init];
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  v19 = v5;
  backingMapTable2 = [(FCSetValueMapTable *)v5 backingMapTable];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  backingMapTable3 = [(FCSetValueMapTable *)self backingMapTable];
  keyEnumerator = [backingMapTable3 keyEnumerator];

  v10 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [backingMapTable objectForKey:v14];
        v16 = [v15 copyWithZone:zone];
        [backingMapTable2 setObject:v16 forKey:v14];
      }

      v11 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)addObject:(id)object forKey:(id)key
{
  objectCopy = object;
  v7 = [(FCSetValueMapTable *)self _setForKey:key];
  [v7 addObject:objectCopy];
}

- (void)removeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  v7 = [(FCSetValueMapTable *)self _setForKey:key];
  [v7 removeObject:objectCopy];
}

- (void)addObjects:(id)objects forKey:(id)key
{
  objectsCopy = objects;
  v7 = [(FCSetValueMapTable *)self _setForKey:key];
  [v7 unionSet:objectsCopy];
}

- (id)objectsForKey:(id)key
{
  keyCopy = key;
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  v6 = [backingMapTable objectForKey:keyCopy];

  return v6;
}

- (void)removeObjectsForKey:(id)key
{
  keyCopy = key;
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  [backingMapTable removeObjectForKey:keyCopy];
}

- (id)keyEnumerator
{
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  keyEnumerator = [backingMapTable keyEnumerator];

  return keyEnumerator;
}

- (id)objectEnumerator
{
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  objectEnumerator = [backingMapTable objectEnumerator];

  return objectEnumerator;
}

- (id)_setForKey:(id)key
{
  keyCopy = key;
  backingMapTable = [(FCSetValueMapTable *)self backingMapTable];
  v6 = [backingMapTable objectForKey:keyCopy];
  if (!v6)
  {
    v6 = objc_opt_new();
    [backingMapTable setObject:v6 forKey:keyCopy];
  }

  return v6;
}

@end