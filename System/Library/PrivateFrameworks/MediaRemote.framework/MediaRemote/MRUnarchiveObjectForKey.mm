@interface MRUnarchiveObjectForKey
@end

@implementation MRUnarchiveObjectForKey

id ___MRUnarchiveObjectForKey_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MSVPropertyListDataClasses();
  v5 = [v4 setByAddingObjectsFromSet:*(a1 + 32)];

  v10 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v3 error:&v10];

  v7 = v10;
  if (v7)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___MRUnarchiveObjectForKey_block_invoke_cold_1();
    }
  }

  return v6;
}

void ___MRUnarchiveObjectForKey_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRSerializationUtility] unarchive failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end