@interface MFAccountAutoFetchController
@end

@implementation MFAccountAutoFetchController

void ___ef_log_MFAccountAutoFetchController_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFAccountAutoFetchController");
  v1 = _ef_log_MFAccountAutoFetchController_log;
  _ef_log_MFAccountAutoFetchController_log = v0;
}

- (void)fetchNow:(os_log_t)log withMailboxes:fromAccount:completion:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Trying to fetch with %@ account that doesn't have a task manager", buf, 0xCu);
}

@end