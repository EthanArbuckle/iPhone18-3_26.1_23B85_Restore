@interface _NTKDCollectionManifest
+ (id)emptyManifest;
- (BOOL)_containsUUID:(id)a3;
- (BOOL)addUUID:(id)a3 withFaceStyle:(int64_t)a4;
- (BOOL)removeUUID:(id)a3;
- (BOOL)updateOrderWithUUIDs:(id)a3;
- (_NTKDCollectionManifest)init;
- (_NTKDCollectionManifest)initWithContentsOfFile:(id)a3;
- (id)description;
- (int64_t)faceStyleForUUID:(id)a3;
- (void)_getUUID:(id *)a3 boxedStyle:(id *)a4 fromEntry:(id)a5;
- (void)removeAllUUIDs;
- (void)writeToFile:(id)a3 atomically:(BOOL)a4;
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
        v12 = [v9 UUIDString];
        v13 = NTKFaceStyleDescription();
        [v3 appendFormat:@"(%@:%@)", v12, v13];

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

- (int64_t)faceStyleForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (BOOL)addUUID:(id)a3 withFaceStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:v6];

  if (!v7)
  {
    boxedStylesByUUID = self->_boxedStylesByUUID;
    v9 = [NSNumber numberWithInteger:a4];
    [(NSMutableDictionary *)boxedStylesByUUID setObject:v9 forKey:v6];
  }

  if (([(NSMutableArray *)self->_orderedUUIDs containsObject:v6]& 1) == 0)
  {
    [(NSMutableArray *)self->_orderedUUIDs addObject:v6];
  }

  return v7 == 0;
}

- (BOOL)removeUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_boxedStylesByUUID removeObjectForKey:v4];
  }

  [(NSMutableArray *)self->_orderedUUIDs removeObject:v4];

  return v5 != 0;
}

- (BOOL)updateOrderWithUUIDs:(id)a3
{
  v3 = self;
  orderedUUIDs = self->_orderedUUIDs;
  v5 = a3;
  v6 = [(NSMutableArray *)orderedUUIDs copy];
  v7 = [(NSMutableArray *)v3->_orderedUUIDs mutableCopy];
  [v7 removeObjectsInArray:v5];
  [(NSMutableArray *)v3->_orderedUUIDs removeAllObjects];
  [(NSMutableArray *)v3->_orderedUUIDs addObjectsFromArray:v5];

  [(NSMutableArray *)v3->_orderedUUIDs addObjectsFromArray:v7];
  LOBYTE(v3) = [v6 isEqualToArray:v3->_orderedUUIDs];

  return v3 ^ 1;
}

- (void)removeAllUUIDs
{
  [(NSMutableArray *)self->_orderedUUIDs removeAllObjects];
  boxedStylesByUUID = self->_boxedStylesByUUID;

  [(NSMutableDictionary *)boxedStylesByUUID removeAllObjects];
}

- (_NTKDCollectionManifest)initWithContentsOfFile:(id)a3
{
  v4 = a3;
  v5 = [(_NTKDCollectionManifest *)self init];
  if (v5)
  {
    v6 = [[NSArray alloc] initWithContentsOfFile:v4];
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

- (void)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v15 = a4;
  v14 = a3;
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
        v12 = [v10 UUIDString];
        [v11 setObject:v12 forKey:@"uuid"];

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

  [v5 writeToFile:v14 atomically:v15];
}

- (BOOL)_containsUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_boxedStylesByUUID objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_getUUID:(id *)a3 boxedStyle:(id *)a4 fromEntry:(id)a5
{
  v12 = a5;
  v7 = [v12 objectForKey:@"uuid"];
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

  v9 = [v12 objectForKey:@"style"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSException raise:NSInvalidUnarchiveOperationException format:@"expected a number for key '%@' (instead found %@)", @"style", objc_opt_class()];
    }
  }

  v10 = v8;
  *a3 = v8;
  v11 = v9;
  *a4 = v9;
}

@end