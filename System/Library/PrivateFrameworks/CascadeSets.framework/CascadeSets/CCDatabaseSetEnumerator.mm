@interface CCDatabaseSetEnumerator
+ (id)defaultEnumeratorWithUseCase:(id)a3;
- (BOOL)enumerateAllSets:(id *)a3 withOptions:(unsigned __int16)a4 setIdentifiers:(id)a5 descriptors:(id)a6 startAfterSet:(id)a7 usingBlock:(id)a8;
- (CCDatabaseSetEnumerator)initWithReadAccess:(id)a3;
@end

@implementation CCDatabaseSetEnumerator

+ (id)defaultEnumeratorWithUseCase:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [CCDataResourceReadAccess defaultInstanceWithUseCase:v3];

  v6 = [v4 initWithReadAccess:v5];

  return v6;
}

- (CCDatabaseSetEnumerator)initWithReadAccess:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCDatabaseSetEnumerator;
  v6 = [(CCDatabaseSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readAccess, a3);
  }

  return v7;
}

- (BOOL)enumerateAllSets:(id *)a3 withOptions:(unsigned __int16)a4 setIdentifiers:(id)a5 descriptors:(id)a6 startAfterSet:(id)a7 usingBlock:(id)a8
{
  v11 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x2020000000;
  v26[2] = 0;
  readAccess = self->_readAccess;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CCDatabaseSetEnumerator_enumerateAllSets_withOptions_setIdentifiers_descriptors_startAfterSet_usingBlock___block_invoke;
  v22[3] = &unk_1E7C8B198;
  v19 = v17;
  v23 = v19;
  v24 = &v25;
  [(CCDataResourceReadAccess *)readAccess enumerateReadableSets:a3 resourceOptions:0 setIdentifiers:v14 descriptors:v15 startAfterSet:v16 sorted:(v11 >> 1) & 1 usingBlock:v22];
  v20 = __biome_log_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetEnumerator enumerateAllSets:v26 withOptions:v20 setIdentifiers:? descriptors:? startAfterSet:? usingBlock:?];
  }

  _Block_object_dispose(&v25, 8);
  return 1;
}

uint64_t __108__CCDatabaseSetEnumerator_enumerateAllSets_withOptions_setIdentifiers_descriptors_startAfterSet_usingBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateAllSets:(uint64_t)a1 withOptions:(NSObject *)a2 setIdentifiers:descriptors:startAfterSet:usingBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Enumerated %lu total set(s)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end