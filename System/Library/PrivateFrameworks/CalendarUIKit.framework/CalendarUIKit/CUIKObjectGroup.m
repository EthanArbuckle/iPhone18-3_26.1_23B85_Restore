@interface CUIKObjectGroup
+ (id)_identifierForObject:(id)a3;
+ (id)_objectMapForObjects:(id)a3;
- (BOOL)_newSeriesSpawnedWithObject:(id)a3;
- (BOOL)objectsBelongInGroup:(id)a3;
- (CUIKObjectGroup)initWithObjects:(id)a3;
- (id)description;
- (id)objectIdentifiers;
- (id)objects;
- (id)originalObjects;
- (id)shiftedOccurrencePreviouslySpawnedByIdentifier:(id)a3;
- (void)newObject:(id)a3 spawnedFromObject:(id)a4;
@end

@implementation CUIKObjectGroup

- (CUIKObjectGroup)initWithObjects:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CUIKObjectGroup;
  v5 = [(CUIKObjectGroup *)&v11 init];
  if (v5)
  {
    v6 = [objc_opt_class() _objectMapForObjects:v4];
    [(CUIKObjectGroup *)v5 setOriginalObjectMap:v6];

    v7 = MEMORY[0x1E695DF90];
    v8 = [(CUIKObjectGroup *)v5 originalObjectMap];
    v9 = [v7 dictionaryWithDictionary:v8];
    [(CUIKObjectGroup *)v5 setObjectMap:v9];
  }

  return v5;
}

+ (id)_objectMapForObjects:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 copy];
        v13 = [a1 _identifierForObject:v11];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_identifierForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 eventOccurrenceID];
  }

  else
  {
    [v3 uniqueIdentifier];
  }
  v4 = ;

  return v4;
}

- (BOOL)_newSeriesSpawnedWithObject:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a3 uniqueIdentifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
  v6 = [v5 keys];

  v23 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v7 = *v30;
    v21 = *v30;
    v22 = self;
    v24 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers:v21];
        v11 = [v10 existingObjectForKey:v9];

        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [MEMORY[0x1E6966AC8] recurrenceIdentifierWithString:*(*(&v25 + 1) + 8 * i)];
              v17 = [v16 localUID];
              v18 = [v17 isEqualToString:v4];

              if (v18)
              {

                v19 = 1;
                v6 = v24;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        ++v8;
        self = v22;
        v6 = v24;
        v7 = v21;
      }

      while (v8 != v23);
      v19 = 0;
      v23 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (BOOL)objectsBelongInGroup:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = 0;
    v7 = 0;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [objc_opt_class() _identifierForObject:v10];
        v12 = [(CUIKObjectGroup *)self originalObjectMap];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          ++v7;
        }

        else
        {
          v14 = [(CUIKObjectGroup *)self _newSeriesSpawnedWithObject:v10];

          if (!v14)
          {

            v15 = 0;
            goto LABEL_21;
          }

          ++v20;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
    v7 = 0;
  }

  v16 = [(CUIKObjectGroup *)self originalObjectMap];
  v17 = [v16 count];

  v15 = v17 == v7 || v17 == v7 + v20;
LABEL_21:

  return v15;
}

- (void)newObject:(id)a3 spawnedFromObject:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _identifierForObject:v6];
  v8 = [(CUIKObjectGroup *)self originalObjectMap];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isMainOccurrence])
      {
        v10 = [v6 localUID];

        v7 = v10;
      }
    }
  }

  v11 = [(CUIKObjectGroup *)self originalObjectMap];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    v13 = [objc_opt_class() _identifierForObject:v19];
    if (([v13 isEqualToString:v7] & 1) == 0)
    {
      v14 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];

      if (!v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E6992F78]) initWithDefaultClass:objc_opt_class()];
        [(CUIKObjectGroup *)self setSpawnedObjectIdentifiers:v15];
      }

      v16 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
      v17 = [v16 objectForKey:v7];
      [v17 addObject:v13];

      v18 = [(CUIKObjectGroup *)self objectMap];
      [v18 setObject:v19 forKeyedSubscript:v13];
    }
  }
}

- (id)shiftedOccurrencePreviouslySpawnedByIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6966AC8] recurrenceIdentifierWithString:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
  v7 = [v6 existingObjectForKey:v4];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v17 = v4;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E6966AC8] recurrenceIdentifierWithString:v11];
        v13 = [v12 localUID];
        v14 = [v5 localUID];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v8 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v4 = v17;
  }

  return v8;
}

- (id)objectIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(CUIKObjectGroup *)self objectMap];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)objects
{
  v2 = [(CUIKObjectGroup *)self objectMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)originalObjects
{
  v2 = [(CUIKObjectGroup *)self originalObjectMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CUIKObjectGroup *)self originalObjectMap];
  v5 = [v4 allKeys];
  [v3 appendFormat:@"originalIdentifiers: %@ \n", v5];

  v6 = [(CUIKObjectGroup *)self objectIdentifiers];
  [v3 appendFormat:@"currentIdentifiers: %@ \n", v6];

  v7 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];

  if (v7)
  {
    v8 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
    v9 = [v8 finalDictionary];
    [v3 appendFormat:@"spawnedIdentifiers: %@", v9];
  }

  return v3;
}

@end