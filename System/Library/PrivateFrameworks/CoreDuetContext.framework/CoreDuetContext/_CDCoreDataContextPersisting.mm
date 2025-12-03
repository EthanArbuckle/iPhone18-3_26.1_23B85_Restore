@interface _CDCoreDataContextPersisting
+ (id)persistenceWithDirectory:(id)directory;
+ (id)persistenceWithStorage:(id)storage;
- (BOOL)_withMOFromEntityWithName:(id)name andUniqunessPredicate:(id)predicate insert:(BOOL)insert update:(id)update;
- (BOOL)fromEntityWithName:(id)name deleteObjectsMatching:(id)matching;
- (BOOL)fromEntityWithName:(id)name fetchAllObjectsMatchingPredicate:(id)predicate handlingMOs:(id)os;
- (_CDCoreDataContextPersisting)initWithStorage:(id)storage;
- (id)loadRegistrations;
- (id)loadValues;
- (id)uniquenessPredicateForKeyPath:(id)path;
- (id)uniqunessPredicateForRegistration:(id)registration;
- (void)_deleteKeyPaths:(id)paths;
- (void)deleteAllData;
- (void)deleteDataCreatedBefore:(id)before;
- (void)deleteRegistration:(id)registration;
- (void)saveRegistration:(id)registration;
- (void)saveValue:(id)value forKeyPath:(id)path;
@end

@implementation _CDCoreDataContextPersisting

- (_CDCoreDataContextPersisting)initWithStorage:(id)storage
{
  storageCopy = storage;
  v13.receiver = self;
  v13.super_class = _CDCoreDataContextPersisting;
  v6 = [(_CDCoreDataContextPersisting *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreduetcontext.service.coredatapersistence", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_storage, storage);
    v10 = [MEMORY[0x1E696AB50] set];
    keyPathRegistrationCount = v6->_keyPathRegistrationCount;
    v6->_keyPathRegistrationCount = v10;
  }

  return v6;
}

+ (id)persistenceWithDirectory:(id)directory
{
  v4 = MEMORY[0x1E696AAE8];
  directoryCopy = directory;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"_DKDataModel" ofType:@"momd"];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v9 = [objc_alloc(MEMORY[0x1E6997950]) initWithDirectory:directoryCopy databaseName:@"knowledge" modelURL:v8 readOnly:0 localOnly:1];

  v10 = [[self alloc] initWithStorage:v9];

  return v10;
}

+ (id)persistenceWithStorage:(id)storage
{
  storageCopy = storage;
  v5 = [[self alloc] initWithStorage:storageCopy];

  return v5;
}

- (BOOL)_withMOFromEntityWithName:(id)name andUniqunessPredicate:(id)predicate insert:(BOOL)insert update:(id)update
{
  nameCopy = name;
  predicateCopy = predicate;
  updateCopy = update;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  getMOC = [(_CDCoreDataContextPersisting *)self getMOC];
  if (!getMOC)
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [_CDCoreDataContextPersisting _withMOFromEntityWithName:contextChannel andUniqunessPredicate:? insert:? update:?];
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke;
  v21[3] = &unk_1E78862E8;
  v15 = nameCopy;
  v22 = v15;
  v16 = predicateCopy;
  v23 = v16;
  v17 = getMOC;
  v24 = v17;
  insertCopy = insert;
  v18 = updateCopy;
  v25 = v18;
  v26 = &v28;
  [v17 performWithOptions:4 andBlock:v21];
  v19 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v19;
}

- (BOOL)fromEntityWithName:(id)name deleteObjectsMatching:(id)matching
{
  nameCopy = name;
  matchingCopy = matching;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  getMOC = [(_CDCoreDataContextPersisting *)self getMOC];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___CDCoreDataContextPersisting_fromEntityWithName_deleteObjectsMatching___block_invoke;
  v14[3] = &unk_1E7886310;
  v9 = nameCopy;
  v15 = v9;
  v10 = matchingCopy;
  v16 = v10;
  v11 = getMOC;
  v17 = v11;
  v18 = &v19;
  [v11 performWithOptions:4 andBlock:v14];
  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v12;
}

- (BOOL)fromEntityWithName:(id)name fetchAllObjectsMatchingPredicate:(id)predicate handlingMOs:(id)os
{
  nameCopy = name;
  predicateCopy = predicate;
  osCopy = os;
  getMOC = [(_CDCoreDataContextPersisting *)self getMOC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___CDCoreDataContextPersisting_fromEntityWithName_fetchAllObjectsMatchingPredicate_handlingMOs___block_invoke;
  v17[3] = &unk_1E7886338;
  v18 = nameCopy;
  v19 = predicateCopy;
  v20 = getMOC;
  v21 = osCopy;
  v12 = osCopy;
  v13 = getMOC;
  v14 = predicateCopy;
  v15 = nameCopy;
  [v13 performWithOptions:4 andBlock:v17];

  return 0;
}

- (id)uniquenessPredicateForKeyPath:(id)path
{
  v24[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  deviceID = [pathCopy deviceID];
  v5 = MEMORY[0x1E696AE18];
  if (deviceID)
  {
    deviceID2 = [pathCopy deviceID];
    v7 = [v5 predicateWithFormat:@"deviceID == %@", deviceID2];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"deviceID == NULL"];
  }

  v8 = MEMORY[0x1E696AE18];
  v9 = [pathCopy key];
  v10 = [v8 predicateWithFormat:@"key == %@", v9];

  isUserCentric = [pathCopy isUserCentric];
  v12 = MEMORY[0x1E696AE18];
  if (isUserCentric)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pathCopy, "isUserCentric")}];
    v14 = [v12 predicateWithFormat:@"isUserCentric == %@", v13];
  }

  else
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isUserCentric == NULL"];
  }

  isEphemeral = [pathCopy isEphemeral];
  v16 = MEMORY[0x1E696AE18];
  if (isEphemeral)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(pathCopy, "isEphemeral")}];
    v18 = [v16 predicateWithFormat:@"isEphemeral == %@", v17];
  }

  else
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isEphemeral == NULL"];
  }

  v19 = MEMORY[0x1E696AB28];
  v24[0] = v10;
  v24[1] = v7;
  v24[2] = v14;
  v24[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)uniqunessPredicateForRegistration:(id)registration
{
  v3 = MEMORY[0x1E696AE18];
  identifier = [registration identifier];
  v5 = [v3 predicateWithFormat:@"identifier == %@", identifier];

  return v5;
}

- (void)saveValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = pathCopy;
  selfCopy = self;
  v14 = valueCopy;
  v9 = valueCopy;
  v10 = pathCopy;
  dispatch_sync(queue, block);
}

- (void)_deleteKeyPaths:(id)paths
{
  v26 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 isEphemeral] && !-[NSCountedSet countForObject:](self->_keyPathRegistrationCount, "countForObject:", v11))
        {
          v12 = MEMORY[0x1E696AE18];
          v13 = [v11 key];
          v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isUserCentric")}];
          deviceID = [v11 deviceID];
          v16 = [v12 predicateWithFormat:@"key == %@ AND isUserCentric == %@ AND deviceID == %@", v13, v14, deviceID];
          [array addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  v19 = [v17 orPredicateWithSubpredicates:v18];

  [(_CDCoreDataContextPersisting *)self fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:v19];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)saveRegistration:(id)registration
{
  registrationCopy = registration;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49___CDCoreDataContextPersisting_saveRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = registrationCopy;
  selfCopy = self;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)deleteRegistration:(id)registration
{
  registrationCopy = registration;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___CDCoreDataContextPersisting_deleteRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = registrationCopy;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)deleteAllData
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CDCoreDataContextPersisting_deleteAllData__block_invoke;
  block[3] = &unk_1E7886288;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)deleteDataCreatedBefore:(id)before
{
  beforeCopy = before;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___CDCoreDataContextPersisting_deleteDataCreatedBefore___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = beforeCopy;
  selfCopy = self;
  v6 = beforeCopy;
  dispatch_sync(queue, v7);
}

- (id)loadValues
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42___CDCoreDataContextPersisting_loadValues__block_invoke;
  v11 = &unk_1E7886250;
  selfCopy = self;
  v13 = dictionary;
  v5 = dictionary;
  dispatch_sync(queue, &v8);
  v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{v5, v8, v9, v10, v11, selfCopy}];

  return v6;
}

- (id)loadRegistrations
{
  array = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke;
  v11 = &unk_1E7886250;
  selfCopy = self;
  v13 = array;
  v5 = array;
  dispatch_sync(queue, &v8);
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:{v5, v8, v9, v10, v11, selfCopy}];

  return v6;
}

@end