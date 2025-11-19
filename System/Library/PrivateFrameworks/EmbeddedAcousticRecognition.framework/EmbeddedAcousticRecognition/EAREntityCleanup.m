@interface EAREntityCleanup
@end

@implementation EAREntityCleanup

- (void)applyRegex:(os_log_t)log toString:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B501D000, log, OS_LOG_TYPE_ERROR, "Regex error: %@", buf, 0xCu);
}

@end