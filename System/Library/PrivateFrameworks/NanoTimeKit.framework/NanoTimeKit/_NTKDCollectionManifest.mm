@interface _NTKDCollectionManifest
+ (id)emptyManifest;
- (BOOL)_containsUUID:(id)d;
- (BOOL)addUUID:(id)d withFaceStyle:(int64_t)style;
- (BOOL)removeUUID:(id)d;
- (BOOL)updateOrderWithUUIDs:(id)ds;
- (_NTKDCollectionManifest)init;
- (_NTKDCollectionManifest)initWithContentsOfFile:(id)file;
- (id)description;
- (int64_t)faceStyleForUUID:(id)d;
- (void)_getUUID:(id *)d boxedStyle:(id *)style fromEntry:(id)entry;
- (void)removeAllUUIDs;
- (void)writeToFile:(id)file atomically:(BOOL)atomically;
@end

@implementation _NTKDCollectionManifest

+ (id)emptyManifest
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (_NTKDCollectionManifest)init
{
  v8.receiver = self;
  v8.super_class = _NTKDCollectionManifest;
  v2 = [(_NTKDCollectionManifest *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    orderedUUIDs = v2->_orderedUUIDs;
    v2->_orderedUUIDs = v3;

    v5 = +[NSMutableDictionary dictionary];
    boxedStylesByUUID = v2->_boxedStylesByUUID;
    v2->_boxedStylesByUUID = v5;
  }

  return v2;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"CollectionManifest["];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_orderedUUIDs;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          [v10 integerValue];
          if ((v6 & 1) == 0)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v3 appendString:{@", "}];
          goto LABEL_9;
        }

        if (v6)
        {
          goto LABEL_8;
        }

LABEL_9:
        uUIDString = [v9 UUIDString];
        v13 = NTKFaceStyleDescription();
        [v3 appendFormat:@"(%@:%@)", uUIDString, v13];

        v8 = v8 + 1;
        v6 = 1;
      }

      while (v5 != v8);
      v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v14;
    }

    while (v14);
  }

  [v3 appendString:@"]"];

  return v3;
}

- (int64_t)faceStyleForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:d];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (BOOL)addUUID:(id)d withFaceStyle:(int64_t)style
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:dCopy];

  if (!v7)
  {
    boxedStylesByUUID = self->_boxedStylesByUUID;
    v9 = [NSNumber numberWithInteger:style];
    [(NSMutableDictionary *)boxedStylesByUUID setObject:v9 forKey:dCopy];
  }

  if (([(NSMutableArray *)self->_orderedUUIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_orderedUUIDs addObject:dCopy];
  }

  return v7 == 0;
}

- (BOOL)removeUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:dCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_boxedStylesByUUID removeObjectForKey:dCopy];
  }

  [(NSMutableArray *)self->_orderedUUIDs removeObject:dCopy];

  return v5 != 0;
}

- (BOOL)updateOrderWithUUIDs:(id)ds
{
  selfCopy = self;
  orderedUUIDs = self->_orderedUUIDs;
  dsCopy = ds;
  v6 = [(NSMutableArray *)orderedUUIDs copy];
  v7 = [(NSMutableArray *)selfCopy->_orderedUUIDs mutableCopy];
  [v7 removeObjectsInArray:dsCopy];
  [(NSMutableArray *)selfCopy->_orderedUUIDs removeAllObjects];
  [(NSMutableArray *)selfCopy->_orderedUUIDs addObjectsFromArray:dsCopy];

  [(NSMutableArray *)selfCopy->_orderedUUIDs addObjectsFromArray:v7];
  LOBYTE(selfCopy) = [v6 isEqualToArray:selfCopy->_orderedUUIDs];

  return selfCopy ^ 1;
}

- (void)removeAllUUIDs
{
  [(NSMutableArray *)self->_orderedUUIDs removeAllObjects];
  boxedStylesByUUID = self->_boxedStylesByUUID;

  [(NSMutableDictionary *)boxedStylesByUUID removeAllObjects];
}

- (_NTKDCollectionManifest)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v5 = [(_NTKDCollectionManifest *)self init];
  if (v5)
  {
    v6 = [[NSArray alloc] initWithContentsOfFile:fileCopy];
    if (v6)
    {
      objc_opt_class();
      NTKValidateArray();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v15 = 0;
          v16 = 0;
          [(_NTKDCollectionManifest *)v5 _getUUID:&v16 boxedStyle:&v15 fromEntry:v11];
          v12 = v16;
          v13 = v15;
          [(NSMutableArray *)v5->_orderedUUIDs addObject:v12];
          if (v13)
          {
            [(NSMutableDictionary *)v5->_boxedStylesByUUID setObject:v13 forKey:v12];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)writeToFile:(id)file atomically:(BOOL)atomically
{
  atomicallyCopy = atomically;
  fileCopy = file;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_orderedUUIDs;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[NSMutableDictionary dictionary];
        uUIDString = [v10 UUIDString];
        [v11 setObject:uUIDString forKey:@"uuid"];

        v13 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:v10];
        if (v13)
        {
          [v11 setObject:v13 forKey:@"style"];
        }

        [v5 addObject:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [v5 writeToFile:fileCopy atomically:atomicallyCopy];
}

- (BOOL)_containsUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:d];
  v4 = v3 != 0;

  return v4;
}

- (void)_getUUID:(id *)d boxedStyle:(id *)style fromEntry:(id)entry
{
  entryCopy = entry;
  v7 = [entryCopy objectForKey:@"uuid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSException raise:NSInvalidUnarchiveOperationException format:@"expected a string for key '%@' (instead found %@)", @"uuid", objc_opt_class()];
  }

  v8 = [[NSUUID alloc] initWithUUIDString:v7];
  if (!v8)
  {
    [NSException raise:NSInvalidUnarchiveOperationException format:@"could not generate UUID from string: %@", v7];
  }

  v9 = [entryCopy objectForKey:@"style"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSException raise:NSInvalidUnarchiveOperationException format:@"expected a number for key '%@' (instead found %@)", @"style", objc_opt_class()];
    }
  }

  v10 = v8;
  *d = v8;
  v11 = v9;
  *style = v9;
}

@end