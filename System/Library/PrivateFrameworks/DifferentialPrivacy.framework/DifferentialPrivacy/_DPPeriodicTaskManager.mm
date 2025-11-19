@interface _DPPeriodicTaskManager
+ (void)registerTask:(id)a3;
+ (void)unregisterTask:(id)a3;
@end

@implementation _DPPeriodicTaskManager

+ (void)registerTask:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_DPLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 name];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_22622D000, v4, OS_LOG_TYPE_INFO, "Registered CTS task %@", buf, 0xCu);
  }

  v6 = [v3 name];
  v7 = [v6 UTF8String];
  v8 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39___DPPeriodicTaskManager_registerTask___block_invoke;
  handler[3] = &unk_27858A930;
  v12 = v3;
  v9 = v3;
  xpc_activity_register(v7, v8, handler);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterTask:(id)a3
{
  v4 = [a3 name];
  v3 = v4;
  xpc_activity_unregister([v4 UTF8String]);
}

@end