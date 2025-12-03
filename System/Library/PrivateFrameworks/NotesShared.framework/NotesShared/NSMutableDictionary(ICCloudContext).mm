@interface NSMutableDictionary(ICCloudContext)
- (void)ic_addZoneID:()ICCloudContext forAccountID:;
- (void)ic_removeZoneID:()ICCloudContext forAccountID:;
@end

@implementation NSMutableDictionary(ICCloudContext)

- (void)ic_addZoneID:()ICCloudContext forAccountID:
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(ICCloudContext) ic_addZoneID:forAccountID:];
    }

    goto LABEL_10;
  }

  if (!v6)
  {
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(ICCloudContext) ic_addZoneID:forAccountID:];
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [self objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB58] set];
  }

  [self setObject:v8 forKeyedSubscript:v7];
  [v8 addObject:v6];

LABEL_11:
}

- (void)ic_removeZoneID:()ICCloudContext forAccountID:
{
  v6 = a3;
  if (a4)
  {
    v7 = [self objectForKeyedSubscript:a4];
    v8 = v7;
    if (v7)
    {
      [v7 removeObject:v6];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(ICCloudContext) ic_removeZoneID:forAccountID:];
    }
  }
}

- (void)ic_addZoneID:()ICCloudContext forAccountID:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)ic_addZoneID:()ICCloudContext forAccountID:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)ic_removeZoneID:()ICCloudContext forAccountID:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end