@interface _COClusterRoleMonitorRoleObserver
- (_COClusterRoleMonitorRoleObserver)initWithRole:(id)a3 inCluster:(id)a4 queue:(id)a5 block:(id)a6;
- (id)description;
- (void)notify:(id)a3;
@end

@implementation _COClusterRoleMonitorRoleObserver

- (_COClusterRoleMonitorRoleObserver)initWithRole:(id)a3 inCluster:(id)a4 queue:(id)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = _COClusterRoleMonitorRoleObserver;
  v15 = [(_COClusterRoleMonitorRoleObserver *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_role, a3);
    v17 = [v12 copy];
    cluster = v16->_cluster;
    v16->_cluster = v17;

    objc_storeStrong(&v16->_queue, a5);
    v19 = [v14 copy];
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
  v6 = [(_COClusterRoleMonitorRoleObserver *)self role];
  v7 = [(_COClusterRoleMonitorRoleObserver *)self cluster];
  v8 = [v3 stringWithFormat:@"<%@: %p, role = %@, cluster = %@>", v5, self, v6, v7];

  return v8;
}

- (void)notify:(id)a3
{
  v4 = a3;
  v5 = [(_COClusterRoleMonitorRoleObserver *)self lastValue];

  if (!v5)
  {
    v8 = COLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_COClusterRoleMonitorRoleObserver notify:];
    }

    goto LABEL_10;
  }

  v6 = [(_COClusterRoleMonitorRoleObserver *)self lastValue];
  v7 = [v4 isEqualToSet:v6];

  v8 = COLogForCategory(2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      [_COClusterRoleMonitorRoleObserver notify:];
    }

LABEL_10:

    [(_COClusterRoleMonitorRoleObserver *)self setLastValue:v4];
    v10 = [(_COClusterRoleMonitorRoleObserver *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44___COClusterRoleMonitorRoleObserver_notify___block_invoke;
    v11[3] = &unk_278E12368;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v10, v11);

    goto LABEL_11;
  }

  if (v9)
  {
    [_COClusterRoleMonitorRoleObserver notify:];
  }

LABEL_11:
}

- (void)notify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for changed Members(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ not invoking block due to no change in Members(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notify:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "%@ invoking block for initial Members(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

@end