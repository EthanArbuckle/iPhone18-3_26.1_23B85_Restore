@interface COClusterRoleMonitorMemberObserver
@end

@implementation COClusterRoleMonitorMemberObserver

void __46___COClusterRoleMonitorMemberObserver_notify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v2[2](v2, *(a1 + 40));
}

@end