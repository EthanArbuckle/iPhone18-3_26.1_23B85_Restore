@interface CCDatabaseSetEnumerator
+ (id)defaultEnumeratorWithUseCase:(id)case;
- (BOOL)enumerateAllSets:(id *)sets withOptions:(unsigned __int16)options setIdentifiers:(id)identifiers descriptors:(id)descriptors startAfterSet:(id)set usingBlock:(id)block;
- (CCDatabaseSetEnumerator)initWithReadAccess:(id)access;
@end

@implementation CCDatabaseSetEnumerator

+ (id)defaultEnumeratorWithUseCase:(id)case
{
  caseCopy = case;
  v4 = objc_alloc(objc_opt_class());
  v5 = [CCDataResourceReadAccess defaultInstanceWithUseCase:caseCopy];

  v6 = [v4 initWithReadAccess:v5];

  return v6;
}

- (CCDatabaseSetEnumerator)initWithReadAccess:(id)access
{
  accessCopy = access;
  v9.receiver = self;
  v9.super_class = CCDatabaseSetEnumerator;
  v6 = [(CCDatabaseSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readAccess, access);
  }

  return v7;
}

- (BOOL)enumerateAllSets:(id *)sets withOptions:(unsigned __int16)options setIdentifiers:(id)identifiers descriptors:(id)descriptors startAfterSet:(id)set usingBlock:(id)block
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  descriptorsCopy = descriptors;
  setCopy = set;
  blockCopy = block;
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x2020000000;
  v26[2] = 0;
  readAccess = self->_readAccess;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CCDatabaseSetEnumerator_enumerateAllSets_withOptions_setIdentifiers_descriptors_startAfterSet_usingBlock___block_invoke;
  v22[3] = &unk_1E7C8B198;
  v19 = blockCopy;
  v23 = v19;
  v24 = &v25;
  [(CCDataResourceReadAccess *)readAccess enumerateReadableSets:sets resourceOptions:0 setIdentifiers:identifiersCopy descriptors:descriptorsCopy startAfterSet:setCopy sorted:(optionsCopy >> 1) & 1 usingBlock:v22];
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