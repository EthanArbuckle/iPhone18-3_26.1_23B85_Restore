@interface _DKObjectMOConverter
- (_DKObjectMOConverter)init;
- (id)dataIntervalsFromManagedObjects:(id)objects;
- (id)insertObject:(id)object inManagedObjectContext:(id)context;
- (id)objectsFromManagedObjects:(id)objects;
@end

@implementation _DKObjectMOConverter

- (_DKObjectMOConverter)init
{
  v3.receiver = self;
  v3.super_class = _DKObjectMOConverter;
  result = [(_DKObjectMOConverter *)&v3 init];
  if (result)
  {
    *&result->_readMetadata = 257;
  }

  return result;
}

- (id)objectsFromManagedObjects:(id)objects
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = [objectsCopy count];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  context = objc_autoreleasePoolPush();
  initWithReporting = 0;
  if (v5 >= 2 && self->_deduplicateValues)
  {
    initWithReporting = [[_DKObjectFromMOCache alloc] initWithReporting];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = objectsCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        readMetadata = [(_DKObjectMOConverter *)self readMetadata];
        excludedMetadataKeys = [(_DKObjectMOConverter *)self excludedMetadataKeys];
        v15 = [_DKObject objectFromManagedObject:v11 readMetadata:readMetadata excludedMetadataKeys:excludedMetadataKeys cache:initWithReporting];

        if (v15)
        {
          [v20 addObject:v15];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)dataIntervalsFromManagedObjects:(id)objects
{
  v30 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = objectsCopy;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        entity = [v8 entity];
        name = [entity name];
        v11 = +[_DKEvent entityName];
        v12 = [name isEqualToString:v11];

        if (v12)
        {
          v13 = MEMORY[0x1E695DF00];
          v14 = v8;
          [v14 startDate];
          v15 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
          v16 = MEMORY[0x1E695DF00];
          [v14 endDate];
          v18 = v17;

          v19 = [v16 dateWithTimeIntervalSinceReferenceDate:v18];
          v20 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 endDate:v19];
          [v23 addObject:v20];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)insertObject:(id)object inManagedObjectContext:(id)context
{
  objectCopy = object;
  v7 = MEMORY[0x1E695D5B8];
  contextCopy = context;
  entityName = [objc_opt_class() entityName];
  v10 = [v7 insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  if (self)
  {
    [objectCopy copyToManagedObject:v10];
  }

  return v10;
}

@end