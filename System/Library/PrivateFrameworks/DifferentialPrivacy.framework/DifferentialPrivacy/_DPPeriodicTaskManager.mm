@interface _DPPeriodicTaskManager
+ (void)registerTask:(id)task;
+ (void)unregisterTask:(id)task;
@end

@implementation _DPPeriodicTaskManager

+ (void)registerTask:(id)task
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v4 = +[_DPLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    name = [taskCopy name];
    *buf = 138412290;
    v14 = name;
    _os_log_impl(&dword_22622D000, v4, OS_LOG_TYPE_INFO, "Registered CTS task %@", buf, 0xCu);
  }

  name2 = [taskCopy name];
  uTF8String = [name2 UTF8String];
  v8 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39___DPPeriodicTaskManager_registerTask___block_invoke;
  handler[3] = &unk_27858A930;
  v12 = taskCopy;
  v9 = taskCopy;
  xpc_activity_register(uTF8String, v8, handler);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterTask:(id)task
{
  name = [task name];
  v3 = name;
  xpc_activity_unregister([name UTF8String]);
}

@end