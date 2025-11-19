@interface _COClusterRoleMonitorSnapshotObserver
- (id)description;
- (id)initInCluster:(id)a3 queue:(id)a4 block:(id)a5;
- (void)notify:(id)a3;
@end

@implementation _COClusterRoleMonitorSnapshotObserver

- (id)initInCluster:(id)a3 queue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _COClusterRoleMonitorSnapshotObserver;
  v11 = [(_COClusterRoleMonitorSnapshotObserver *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    cluster = v11->_cluster;
    v11->_cluster = v12;

    objc_storeStrong(&v11->_queue, a4);
    v14 = [v10 copy];
    block = v11->_block;
    v11->_block = v14;

    lastValue = v11->_lastValue;
    v11->_lastValue = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_COClusterRoleMonitorSnapshotObserver *)self cluster];
  v7 = [v3 stringWithFormat:@"<%@: %p, cluster = %@>", v5, self, v6];

  return v7;
}

- (void)notify:(id)a3
{
  v4 = a3;
  v5 = [(_COClusterRoleMonitorSnapshotObserver *)self lastValue];

  if (!v5)
  {
    v8 = COLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_COClusterRoleMonitorSnapshotObserver notify:];
    }

    goto LABEL_10;
  }

  v6 = [(_COClusterRoleMonitorSnapshotObserver *)self lastValue];
  v7 = [v4 isEqualToSet:v6];

  v8 = COLogForCategory(2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      [_COClusterRoleMonitorSnapshotObserver notify:];
    }

LABEL_10:

    [(_COClusterRoleMonitorSnapshotObserver *)self setLastValue:v4];
    v10 = [(_COClusterRoleMonitorSnapshotObserver *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48___COClusterRoleMonitorSnapshotObserver_notify___block_invoke;
    v11[3] = &unk_278E12368;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);

    goto LABEL_11;
  }

  if (v9)
  {
    [_COClusterRoleMonitorSnapshotObserver notify:];
  }

LABEL_11:
}

- (void)notify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for changed Snapshot(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ not invoking block due to no change in Snapshot(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for initial Snapshot(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

@end