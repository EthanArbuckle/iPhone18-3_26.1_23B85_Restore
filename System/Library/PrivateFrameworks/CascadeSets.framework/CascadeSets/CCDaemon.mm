@interface CCDaemon
+ (void)resetRootDirectoryIfNecessary;
- (CCDaemon)initWithQueue:(id)queue setBookkeeping:(id)bookkeeping;
- (void)start;
@end

@implementation CCDaemon

- (CCDaemon)initWithQueue:(id)queue setBookkeeping:(id)bookkeeping
{
  queueCopy = queue;
  bookkeepingCopy = bookkeeping;
  v20.receiver = self;
  v20.super_class = CCDaemon;
  v9 = [(CCDaemon *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [[CCSetChangeRelayServer alloc] initWithQueue:queueCopy];
    relayServer = v10->_relayServer;
    v10->_relayServer = v11;

    objc_storeStrong(&v10->_setBookkeeping, bookkeeping);
    v13 = [[CCScheduledTasks alloc] initWithSetBookkeeping:bookkeepingCopy];
    scheduledTasks = v10->_scheduledTasks;
    v10->_scheduledTasks = v13;

    v15 = [[CCMaintenanceServer alloc] initWithQueue:queueCopy setBookkeeping:bookkeepingCopy];
    maintenanceServer = v10->_maintenanceServer;
    v10->_maintenanceServer = v15;
  }

  [(CCSetChangeRelayServer *)v10->_relayServer activate];
  [(CCMaintenanceServer *)v10->_maintenanceServer activate];
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_DEFAULT, "Initialized CCDaemon", v19, 2u);
  }

  return v10;
}

- (void)start
{
  +[CCDaemon resetRootDirectoryIfNecessary];
  scheduledTasks = self->_scheduledTasks;

  [(CCScheduledTasks *)scheduledTasks register];
}

+ (void)resetRootDirectoryIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to resolve container for legacySetsRootDirectoryURL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__CCDaemon_resetRootDirectoryIfNecessary__block_invoke()
{
  v0 = __biome_log_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B6DB2000, v0, OS_LOG_TYPE_DEFAULT, "Finished removing the root directory", v1, 2u);
  }
}

@end