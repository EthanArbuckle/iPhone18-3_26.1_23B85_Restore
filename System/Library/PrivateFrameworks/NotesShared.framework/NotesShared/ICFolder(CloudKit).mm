@interface ICFolder(CloudKit)
@end

@implementation ICFolder(CloudKit)

- (void)mergeParentFromRecord:()CloudKit .cold.1(void *a1)
{
  v2 = [a1 shortLoggingDescription];
  v3 = [a1 parentModificationDate];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)mergeParentFromRecord:()CloudKit .cold.2(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)mergeParentFromRecord:()CloudKit .cold.3(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)mergeParentFromRecord:()CloudKit .cold.4(void *a1)
{
  v2 = [a1 className];
  v3 = [a1 identifier];
  v4 = [a1 className];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)fixBrokenReferencesWithError:()CloudKit .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Moving note (%@) to trash folder", a1, 0xCu);
}

@end