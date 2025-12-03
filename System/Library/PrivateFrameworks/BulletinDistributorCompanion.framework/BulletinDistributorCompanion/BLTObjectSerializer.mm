@interface BLTObjectSerializer
+ (id)serializeObject:(id)object nulls:(id *)nulls error:(id *)error;
+ (id)unserializeObject:(id)object nulls:(id)nulls error:(id *)error;
@end

@implementation BLTObjectSerializer

+ (id)serializeObject:(id)object nulls:(id *)nulls error:(id *)error
{
  v19 = 0;
  v7 = [object objectWithNoNSNulls:&v19];
  v8 = v19;
  if (v7)
  {
    v18 = 0;
    v9 = *MEMORY[0x277CBECE8];
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v7, kCFPropertyListBinaryFormat_v1_0, 0, &v18);
    v11 = Data;
    if (!v18 || Data)
    {
      if (nulls && v8)
      {
        v13 = CFPropertyListCreateData(v9, v8, kCFPropertyListBinaryFormat_v1_0, 0, &v18);
        v14 = v13;
        if (!v18 || v13)
        {
          v16 = v13;
          *nulls = v14;
        }

        else
        {
          v15 = blt_general_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [BLTObjectSerializer serializeObject:v15 nulls:? error:?];
          }

          if (error)
          {
            *error = v18;
          }

          CFRelease(v18);
        }
      }
    }

    else
    {
      v12 = blt_general_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [BLTObjectSerializer serializeObject:v7 nulls:&v18 error:?];
      }

      if (error)
      {
        *error = v18;
      }

      CFRelease(v18);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)unserializeObject:(id)object nulls:(id)nulls error:(id *)error
{
  objectCopy = object;
  nullsCopy = nulls;
  if (!objectCopy)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_20;
  }

  error = 0;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], objectCopy, 0, 0, &error);
  v11 = v10;
  if (error && !v10)
  {
    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLTObjectSerializer unserializeObject:objectCopy nulls:&error error:?];
    }

    if (error)
    {
      *error = error;
    }

    CFRelease(error);
    goto LABEL_9;
  }

  if (nullsCopy)
  {
    v18 = 0;
    v13 = CFPropertyListCreateWithData(v9, nullsCopy, 0, 0, &v18);
    v14 = v13;
    if (!v18 || v13)
    {
      v16 = [v11 objectWithNSNulls:v13];

      v11 = v16;
    }

    else
    {
      v15 = blt_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BLTObjectSerializer unserializeObject:nullsCopy nulls:&v18 error:?];
      }

      if (error)
      {
        *error = v18;
      }

      CFRelease(v18);
    }
  }

LABEL_20:

  return v11;
}

+ (void)serializeObject:(uint64_t)a1 nulls:(uint64_t *)a2 error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v3, v4, "Failed to serialized value (%@) with error: %@");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)serializeObject:(uint64_t *)a1 nulls:(NSObject *)a2 error:.cold.2(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412546;
  v5 = 0;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Failed to serialized value (%@) with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)unserializeObject:(uint64_t)a1 nulls:(uint64_t *)a2 error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v3, v4, "Failed to unserialized data (%@) with error: %@");
  v5 = *MEMORY[0x277D85DE8];
}

@end