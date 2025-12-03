@interface CCSetChangeRemoteXPCNotifier
+ (id)sharedInstance;
- (CCSetChangeRemoteXPCNotifier)init;
- (id)client;
- (void)notifyChangeToSet:(id)set;
- (void)notifyChangeToSet:(id)set completion:(id)completion;
@end

@implementation CCSetChangeRemoteXPCNotifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CCSetChangeRemoteXPCNotifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_0 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_0, block);
  }

  v2 = sharedInstance__pasExprOnceResult_0;

  return v2;
}

void __46__CCSetChangeRemoteXPCNotifier_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v3;

  objc_autoreleasePoolPop(v2);
}

- (CCSetChangeRemoteXPCNotifier)init
{
  v7.receiver = self;
  v7.super_class = CCSetChangeRemoteXPCNotifier;
  v2 = [(CCSetChangeRemoteXPCNotifier *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cascade.CCSetChangeRelayClient", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)client
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2ED35F0];
  [v2 setClass:objc_opt_class() forSelector:sel_notifyChangeToSet_completion_ argumentIndex:0 ofReply:0];
  v3 = [MEMORY[0x1E696B0B8] bm_connectionWithMachServiceName:@"com.apple.cascade.SetChangeRelayService" queue:0 options:0];
  v4 = [[CCXPCClient alloc] initWithRemoteObjectXPCInterface:v2 exportedXPCInterface:0 connection:v3 clientId:@"CCSetChangeRelayClient" interruptionCode:5 invalidationCode:4 useCase:0];

  return v4;
}

- (void)notifyChangeToSet:(id)set
{
  setCopy = set;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_sync(queue, v7);
}

void __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke_2;
  v3[3] = &unk_1E7C8B0A8;
  v4 = v1;
  [v2 notifyChangeToSet:v4 completion:v3];
}

void __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke_2(uint64_t a1, unsigned __int16 a2)
{
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke_2_cold_1(a1, a2, v4);
  }
}

- (void)notifyChangeToSet:(id)set completion:(id)completion
{
  setCopy = set;
  completionCopy = completion;
  client = [(CCSetChangeRemoteXPCNotifier *)self client];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CCSetChangeRemoteXPCNotifier_notifyChangeToSet_completion___block_invoke;
  v10[3] = &unk_1E7C8B0F8;
  v11 = setCopy;
  v9 = setCopy;
  [client serviceRequest:1 completion:completionCopy usingBlock:v10];
}

void __50__CCSetChangeRemoteXPCNotifier_notifyChangeToSet___block_invoke_2_cold_1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_debug_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_DEBUG, "CCSetChangeRelayClient notifying change to Set: %@ with result: %hu", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end