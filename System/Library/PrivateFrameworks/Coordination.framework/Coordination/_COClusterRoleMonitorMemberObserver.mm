@interface _COClusterRoleMonitorMemberObserver
- (_COClusterRoleMonitorMemberObserver)initWithMember:(id)member inCluster:(id)cluster queue:(id)queue block:(id)block;
- (id)description;
- (void)notify:(id)notify;
@end

@implementation _COClusterRoleMonitorMemberObserver

- (_COClusterRoleMonitorMemberObserver)initWithMember:(id)member inCluster:(id)cluster queue:(id)queue block:(id)block
{
  memberCopy = member;
  clusterCopy = cluster;
  queueCopy = queue;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = _COClusterRoleMonitorMemberObserver;
  v15 = [(_COClusterRoleMonitorMemberObserver *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_member, member);
    v17 = [clusterCopy copy];
    cluster = v16->_cluster;
    v16->_cluster = v17;

    objc_storeStrong(&v16->_queue, queue);
    v19 = [blockCopy copy];
    block = v16->_block;
    v16->_block = v19;

    lastValue = v16->_lastValue;
    v16->_lastValue = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  member = [(_COClusterRoleMonitorMemberObserver *)self member];
  cluster = [(_COClusterRoleMonitorMemberObserver *)self cluster];
  v8 = [v3 stringWithFormat:@"<%@: %p, member = %@, cluster = %@>", v5, self, member, cluster];

  return v8;
}

- (void)notify:(id)notify
{
  notifyCopy = notify;
  lastValue = [(_COClusterRoleMonitorMemberObserver *)self lastValue];

  if (!lastValue)
  {
    v8 = COLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_COClusterRoleMonitorMemberObserver notify:];
    }

    goto LABEL_10;
  }

  lastValue2 = [(_COClusterRoleMonitorMemberObserver *)self lastValue];
  v7 = [notifyCopy isEqual:lastValue2];

  v8 = COLogForCategory(2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      [_COClusterRoleMonitorMemberObserver notify:];
    }

LABEL_10:

    [(_COClusterRoleMonitorMemberObserver *)self setLastValue:notifyCopy];
    queue = [(_COClusterRoleMonitorMemberObserver *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46___COClusterRoleMonitorMemberObserver_notify___block_invoke;
    v11[3] = &unk_278E12368;
    v11[4] = self;
    v12 = notifyCopy;
    dispatch_async(queue, v11);

    goto LABEL_11;
  }

  if (v9)
  {
    [_COClusterRoleMonitorMemberObserver notify:];
  }

LABEL_11:
}

- (void)notify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for changed Role(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ not invoking block due to no change in Role(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for initial Role(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

@end