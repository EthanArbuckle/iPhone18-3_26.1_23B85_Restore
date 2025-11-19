@interface NSProcessInfo(IntentsFoundation)
- (uint64_t)if_auditToken;
@end

@implementation NSProcessInfo(IntentsFoundation)

- (uint64_t)if_auditToken
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  task_info_outCnt = 8;
  return task_info(*MEMORY[0x277D85F48], 0xFu, a1, &task_info_outCnt);
}

@end