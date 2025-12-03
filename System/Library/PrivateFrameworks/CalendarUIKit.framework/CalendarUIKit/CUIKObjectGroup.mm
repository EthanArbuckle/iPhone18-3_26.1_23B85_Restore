@interface CUIKObjectGroup
+ (id)_identifierForObject:(id)object;
+ (id)_objectMapForObjects:(id)objects;
- (BOOL)_newSeriesSpawnedWithObject:(id)object;
- (BOOL)objectsBelongInGroup:(id)group;
- (CUIKObjectGroup)initWithObjects:(id)objects;
- (id)description;
- (id)objectIdentifiers;
- (id)objects;
- (id)originalObjects;
- (id)shiftedOccurrencePreviouslySpawnedByIdentifier:(id)identifier;
- (void)newObject:(id)object spawnedFromObject:(id)fromObject;
@end

@implementation CUIKObjectGroup

- (CUIKObjectGroup)initWithObjects:(id)objects
{
  objectsCopy = objects;
  v11.receiver = self;
  v11.super_class = CUIKObjectGroup;
  v5 = [(CUIKObjectGroup *)&v11 init];
  if (v5)
  {
    v6 = [objc_opt_class() _objectMapForObjects:objectsCopy];
    [(CUIKObjectGroup *)v5 setOriginalObjectMap:v6];

    v7 = MEMORY[0x1E695DF90];
    originalObjectMap = [(CUIKObjectGroup *)v5 originalObjectMap];
    v9 = [v7 dictionaryWithDictionary:originalObjectMap];
    [(CUIKObjectGroup *)v5 setObjectMap:v9];
  }

  return v5;
}

+ (id)_objectMapForObjects:(id)objects
{
  v20 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objectsCopy;
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
        v13 = [self _identifierForObject:v11];
        [dictionary setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return dictionary;
}

+ (id)_identifierForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy eventOccurrenceID];
  }

  else
  {
    [objectCopy uniqueIdentifier];
  }
  v4 = ;

  return v4;
}

- (BOOL)_newSeriesSpawnedWithObject:(id)object
{
  v35 = *MEMORY[0x1E69E9840];
  uniqueIdentifier = [object uniqueIdentifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  spawnedObjectIdentifiers = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
  keys = [spawnedObjectIdentifiers keys];

  v23 = [keys countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v7 = *v30;
    v21 = *v30;
    selfCopy = self;
    v24 = keys;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(keys);
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
              localUID = [v16 localUID];
              v18 = [localUID isEqualToString:uniqueIdentifier];

              if (v18)
              {

                v19 = 1;
                keys = v24;
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
        self = selfCopy;
        keys = v24;
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

- (BOOL)objectsBelongInGroup:(id)group
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  groupCopy = group;
  v5 = [groupCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(groupCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [objc_opt_class() _identifierForObject:v10];
        originalObjectMap = [(CUIKObjectGroup *)self originalObjectMap];
        v13 = [originalObjectMap objectForKeyedSubscript:v11];

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

      v6 = [groupCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  originalObjectMap2 = [(CUIKObjectGroup *)self originalObjectMap];
  v17 = [originalObjectMap2 count];

  v15 = v17 == v7 || v17 == v7 + v20;
LABEL_21:

  return v15;
}

- (void)newObject:(id)object spawnedFromObject:(id)fromObject
{
  objectCopy = object;
  fromObjectCopy = fromObject;
  v7 = [objc_opt_class() _identifierForObject:fromObjectCopy];
  originalObjectMap = [(CUIKObjectGroup *)self originalObjectMap];
  v9 = [originalObjectMap objectForKey:v7];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([fromObjectCopy isMainOccurrence])
      {
        localUID = [fromObjectCopy localUID];

        v7 = localUID;
      }
    }
  }

  originalObjectMap2 = [(CUIKObjectGroup *)self originalObjectMap];
  v12 = [originalObjectMap2 objectForKey:v7];

  if (v12)
  {
    v13 = [objc_opt_class() _identifierForObject:objectCopy];
    if (([v13 isEqualToString:v7] & 1) == 0)
    {
      spawnedObjectIdentifiers = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];

      if (!spawnedObjectIdentifiers)
      {
        v15 = [objc_alloc(MEMORY[0x1E6992F78]) initWithDefaultClass:objc_opt_class()];
        [(CUIKObjectGroup *)self setSpawnedObjectIdentifiers:v15];
      }

      spawnedObjectIdentifiers2 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
      v17 = [spawnedObjectIdentifiers2 objectForKey:v7];
      [v17 addObject:v13];

      objectMap = [(CUIKObjectGroup *)self objectMap];
      [objectMap setObject:objectCopy forKeyedSubscript:v13];
    }
  }
}

- (id)shiftedOccurrencePreviouslySpawnedByIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E6966AC8] recurrenceIdentifierWithString:identifierCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  spawnedObjectIdentifiers = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
  v7 = [spawnedObjectIdentifiers existingObjectForKey:identifierCopy];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v17 = identifierCopy;
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
        localUID = [v12 localUID];
        localUID2 = [v5 localUID];
        v15 = [localUID isEqualToString:localUID2];

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
    identifierCopy = v17;
  }

  return v8;
}

- (id)objectIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  objectMap = [(CUIKObjectGroup *)self objectMap];
  allKeys = [objectMap allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)objects
{
  objectMap = [(CUIKObjectGroup *)self objectMap];
  allValues = [objectMap allValues];

  return allValues;
}

- (id)originalObjects
{
  originalObjectMap = [(CUIKObjectGroup *)self originalObjectMap];
  allValues = [originalObjectMap allValues];

  return allValues;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  originalObjectMap = [(CUIKObjectGroup *)self originalObjectMap];
  allKeys = [originalObjectMap allKeys];
  [string appendFormat:@"originalIdentifiers: %@ \n", allKeys];

  objectIdentifiers = [(CUIKObjectGroup *)self objectIdentifiers];
  [string appendFormat:@"currentIdentifiers: %@ \n", objectIdentifiers];

  spawnedObjectIdentifiers = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];

  if (spawnedObjectIdentifiers)
  {
    spawnedObjectIdentifiers2 = [(CUIKObjectGroup *)self spawnedObjectIdentifiers];
    finalDictionary = [spawnedObjectIdentifiers2 finalDictionary];
    [string appendFormat:@"spawnedIdentifiers: %@", finalDictionary];
  }

  return string;
}

@end