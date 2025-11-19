@interface ECLocalActionReplayer
+ (OS_os_log)log;
- (ECLocalActionReplayer)initWithAction:(id)a3;
- (ECLocalActionReplayerDelegate)delegate;
- (id)failActionWithError:(id)a3;
@end

@implementation ECLocalActionReplayer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ECLocalActionReplayer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __28__ECLocalActionReplayer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

- (ECLocalActionReplayer)initWithAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ECLocalActionReplayer;
  v6 = [(ECLocalActionReplayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

- (id)failActionWithError:(id)a3
{
  v3 = a3;
  v4 = [[ECLocalMessageActionResults alloc] initWithError:v3];

  return v4;
}

- (ECLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end