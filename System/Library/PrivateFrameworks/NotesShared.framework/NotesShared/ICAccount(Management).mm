@interface ICAccount(Management)
@end

@implementation ICAccount(Management)

+ (void)newAccountWithIdentifier:()Management type:context:persistentStore:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)deleteAccount:()Management .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)deleteAccount:()Management .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error removing account files subdirectory %@ %@");
}

+ (void)cloudKitAccountInContext:()Management .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Retrieved primary iCloud Apple Account {identifier: %@}", buf, 0xCu);
}

+ (void)defaultAccountInContext:()Management .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)defaultAccountInContext:()Management .cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end