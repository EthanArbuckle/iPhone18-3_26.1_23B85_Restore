@interface DKObject
@end

@implementation DKObject

void __55___DKObject_MOConversion__fetchObjectWithUUID_context___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = MEMORY[0x1E695D5B8];
  v4 = +[_DKObject entityName];
  v5 = [v3 entityForName:v4 inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v5];

  v6 = MEMORY[0x1E696AE18];
  v7 = [*(a1 + 40) UUIDString];
  v8 = [v6 predicateWithFormat:@"UUID == %@", v7];
  [v2 setPredicate:v8];

  v9 = *(a1 + 32);
  v16 = 0;
  v10 = [v9 executeFetchRequest:v2 error:&v16];
  v11 = v16;
  v12 = [v10 lastObject];

  if (v12)
  {
    v13 = [v12 objectID];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __55___DKObject_MOConversion__fetchObjectWithUUID_context___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "Fetched object not found:%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end