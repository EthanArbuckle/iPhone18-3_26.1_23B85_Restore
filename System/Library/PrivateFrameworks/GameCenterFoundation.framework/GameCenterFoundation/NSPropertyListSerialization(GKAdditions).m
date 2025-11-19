@interface NSPropertyListSerialization(GKAdditions)
+ (id)_gkTypesafePropertyListWithData:()GKAdditions withClass:;
@end

@implementation NSPropertyListSerialization(GKAdditions)

+ (id)_gkTypesafePropertyListWithData:()GKAdditions withClass:
{
  if (a3)
  {
    v8 = 0;
    v9 = 200;
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:&v9 error:&v8];
    v4 = v8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      v6 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [NSPropertyListSerialization(GKAdditions) _gkTypesafePropertyListWithData:v6 withClass:?];
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_gkTypesafePropertyListWithData:()GKAdditions withClass:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  v6 = 0;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "unexpected class %@ encountered during property list deserialization to %@. will return a nil result", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end