@interface FCSetValueMapTable
- (FCSetValueMapTable)init;
- (id)_setForKey:(id)a3;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (id)objectsForKey:(id)a3;
- (void)addObject:(id)a3 forKey:(id)a4;
- (void)addObjects:(id)a3 forKey:(id)a4;
- (void)removeObject:(id)a3 forKey:(id)a4;
- (void)removeObjectsForKey:(id)a3;
@end

@implementation FCSetValueMapTable

- (id)description
{
  v2 = [(FCSetValueMapTable *)self backingMapTable];
  v3 = [v2 description];

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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [+[FCSetValueMapTable allocWithZone:](FCSetValueMapTable init];
  v6 = [(FCSetValueMapTable *)self backingMapTable];
  v19 = v5;
  v7 = [(FCSetValueMapTable *)v5 backingMapTable];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(FCSetValueMapTable *)self backingMapTable];
  v9 = [v8 keyEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v6 objectForKey:v14];
        v16 = [v15 copyWithZone:a3];
        [v7 setObject:v16 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(FCSetValueMapTable *)self _setForKey:a4];
  [v7 addObject:v6];
}

- (void)removeObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(FCSetValueMapTable *)self _setForKey:a4];
  [v7 removeObject:v6];
}

- (void)addObjects:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(FCSetValueMapTable *)self _setForKey:a4];
  [v7 unionSet:v6];
}

- (id)objectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCSetValueMapTable *)self backingMapTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)removeObjectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCSetValueMapTable *)self backingMapTable];
  [v5 removeObjectForKey:v4];
}

- (id)keyEnumerator
{
  v2 = [(FCSetValueMapTable *)self backingMapTable];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (id)objectEnumerator
{
  v2 = [(FCSetValueMapTable *)self backingMapTable];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (id)_setForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCSetValueMapTable *)self backingMapTable];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v6 = objc_opt_new();
    [v5 setObject:v6 forKey:v4];
  }

  return v6;
}

@end