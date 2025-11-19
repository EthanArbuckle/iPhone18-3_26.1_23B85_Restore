@interface _CDCoreDataContextPersisting
+ (id)persistenceWithDirectory:(id)a3;
+ (id)persistenceWithStorage:(id)a3;
- (BOOL)_withMOFromEntityWithName:(id)a3 andUniqunessPredicate:(id)a4 insert:(BOOL)a5 update:(id)a6;
- (BOOL)fromEntityWithName:(id)a3 deleteObjectsMatching:(id)a4;
- (BOOL)fromEntityWithName:(id)a3 fetchAllObjectsMatchingPredicate:(id)a4 handlingMOs:(id)a5;
- (_CDCoreDataContextPersisting)initWithStorage:(id)a3;
- (id)loadRegistrations;
- (id)loadValues;
- (id)uniquenessPredicateForKeyPath:(id)a3;
- (id)uniqunessPredicateForRegistration:(id)a3;
- (void)_deleteKeyPaths:(id)a3;
- (void)deleteAllData;
- (void)deleteDataCreatedBefore:(id)a3;
- (void)deleteRegistration:(id)a3;
- (void)saveRegistration:(id)a3;
- (void)saveValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation _CDCoreDataContextPersisting

- (_CDCoreDataContextPersisting)initWithStorage:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _CDCoreDataContextPersisting;
  v6 = [(_CDCoreDataContextPersisting *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreduetcontext.service.coredatapersistence", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_storage, a3);
    v10 = [MEMORY[0x1E696AB50] set];
    keyPathRegistrationCount = v6->_keyPathRegistrationCount;
    v6->_keyPathRegistrationCount = v10;
  }

  return v6;
}

+ (id)persistenceWithDirectory:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"_DKDataModel" ofType:@"momd"];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v9 = [objc_alloc(MEMORY[0x1E6997950]) initWithDirectory:v5 databaseName:@"knowledge" modelURL:v8 readOnly:0 localOnly:1];

  v10 = [[a1 alloc] initWithStorage:v9];

  return v10;
}

+ (id)persistenceWithStorage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStorage:v4];

  return v5;
}

- (BOOL)_withMOFromEntityWithName:(id)a3 andUniqunessPredicate:(id)a4 insert:(BOOL)a5 update:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v13 = [(_CDCoreDataContextPersisting *)self getMOC];
  if (!v13)
  {
    v14 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_CDCoreDataContextPersisting _withMOFromEntityWithName:v14 andUniqunessPredicate:? insert:? update:?];
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke;
  v21[3] = &unk_1E78862E8;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v27 = a5;
  v18 = v12;
  v25 = v18;
  v26 = &v28;
  [v17 performWithOptions:4 andBlock:v21];
  v19 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v19;
}

- (BOOL)fromEntityWithName:(id)a3 deleteObjectsMatching:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = [(_CDCoreDataContextPersisting *)self getMOC];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___CDCoreDataContextPersisting_fromEntityWithName_deleteObjectsMatching___block_invoke;
  v14[3] = &unk_1E7886310;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = &v19;
  [v11 performWithOptions:4 andBlock:v14];
  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v12;
}

- (BOOL)fromEntityWithName:(id)a3 fetchAllObjectsMatchingPredicate:(id)a4 handlingMOs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CDCoreDataContextPersisting *)self getMOC];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___CDCoreDataContextPersisting_fromEntityWithName_fetchAllObjectsMatchingPredicate_handlingMOs___block_invoke;
  v17[3] = &unk_1E7886338;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v12 = v10;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  [v13 performWithOptions:4 andBlock:v17];

  return 0;
}

- (id)uniquenessPredicateForKeyPath:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 deviceID];
  v5 = MEMORY[0x1E696AE18];
  if (v4)
  {
    v6 = [v3 deviceID];
    v7 = [v5 predicateWithFormat:@"deviceID == %@", v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"deviceID == NULL"];
  }

  v8 = MEMORY[0x1E696AE18];
  v9 = [v3 key];
  v10 = [v8 predicateWithFormat:@"key == %@", v9];

  v11 = [v3 isUserCentric];
  v12 = MEMORY[0x1E696AE18];
  if (v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isUserCentric")}];
    v14 = [v12 predicateWithFormat:@"isUserCentric == %@", v13];
  }

  else
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isUserCentric == NULL"];
  }

  v15 = [v3 isEphemeral];
  v16 = MEMORY[0x1E696AE18];
  if (v15)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isEphemeral")}];
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

- (id)uniqunessPredicateForRegistration:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 identifier];
  v5 = [v3 predicateWithFormat:@"identifier == %@", v4];

  return v5;
}

- (void)saveValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke;
  block[3] = &unk_1E7886228;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

- (void)_deleteKeyPaths:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
          v15 = [v11 deviceID];
          v16 = [v12 predicateWithFormat:@"key == %@ AND isUserCentric == %@ AND deviceID == %@", v13, v14, v15];
          [v5 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  v19 = [v17 orPredicateWithSubpredicates:v18];

  [(_CDCoreDataContextPersisting *)self fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:v19];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)saveRegistration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49___CDCoreDataContextPersisting_saveRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)deleteRegistration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___CDCoreDataContextPersisting_deleteRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)deleteDataCreatedBefore:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___CDCoreDataContextPersisting_deleteDataCreatedBefore___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)loadValues
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42___CDCoreDataContextPersisting_loadValues__block_invoke;
  v11 = &unk_1E7886250;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(queue, &v8);
  v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{v5, v8, v9, v10, v11, v12}];

  return v6;
}

- (id)loadRegistrations
{
  v3 = [MEMORY[0x1E695DF70] array];
  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke;
  v11 = &unk_1E7886250;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(queue, &v8);
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:{v5, v8, v9, v10, v11, v12}];

  return v6;
}

@end