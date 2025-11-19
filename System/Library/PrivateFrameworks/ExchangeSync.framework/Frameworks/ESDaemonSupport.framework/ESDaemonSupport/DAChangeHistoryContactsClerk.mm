@interface DAChangeHistoryContactsClerk
@end

@implementation DAChangeHistoryContactsClerk

uint64_t __39___DAChangeHistoryContactsClerk_os_log__block_invoke()
{
  os_log_os_log = os_log_create("com.apple.dataaccess", "CardDAV-changehistory");

  return MEMORY[0x2821F96F8]();
}

@end