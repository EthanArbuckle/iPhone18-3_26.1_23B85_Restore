@interface NSProcessInfo(IntentsFoundation)
- (uint64_t)if_auditToken;
@end

@implementation NSProcessInfo(IntentsFoundation)

- (uint64_t)if_auditToken
{
  *self = 0u;
  *(self + 16) = 0u;
  task_info_outCnt = 8;
  return task_info(*MEMORY[0x277D85F48], 0xFu, self, &task_info_outCnt);
}

@end