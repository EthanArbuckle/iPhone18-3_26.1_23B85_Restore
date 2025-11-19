@interface _KSTaskScheduler
+ (id)sharedInstance;
- (_KSTaskScheduler)init;
- (void)registerTask:(id)a3;
- (void)unregisterTask:(id)a3;
@end

@implementation _KSTaskScheduler

- (_KSTaskScheduler)init
{
  v6.receiver = self;
  v6.super_class = _KSTaskScheduler;
  v2 = [(_KSTaskScheduler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEC10] mutableCopy];
    allTasks = v2->_allTasks;
    v2->_allTasks = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___KSTaskScheduler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedManager;

  return v2;
}

- (void)registerTask:(id)a3
{
  v4 = a3;
  allTasks = self->_allTasks;
  v6 = [v4 name];
  [(NSMutableDictionary *)allTasks setObject:v4 forKey:v6];

  v7 = [v4 name];
  v8 = [v7 UTF8String];
  v9 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33___KSTaskScheduler_registerTask___block_invoke;
  handler[3] = &unk_2797F6360;
  v12 = v4;
  v10 = v4;
  xpc_activity_register(v8, v9, handler);
}

- (void)unregisterTask:(id)a3
{
  v5 = [a3 name];
  [(NSMutableDictionary *)self->_allTasks removeObjectForKey:v5];
  v4 = v5;
  xpc_activity_unregister([v5 UTF8String]);
}

@end