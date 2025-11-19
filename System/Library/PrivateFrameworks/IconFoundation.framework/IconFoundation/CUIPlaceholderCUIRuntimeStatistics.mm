@interface CUIPlaceholderCUIRuntimeStatistics
+ (id)sharedRuntimeStatistics;
- (CUIPlaceholderCUIRuntimeStatistics)init;
- (void)_logStatistics:(uint64_t)a3;
- (void)dealloc;
@end

@implementation CUIPlaceholderCUIRuntimeStatistics

+ (id)sharedRuntimeStatistics
{
  if (__once != -1)
  {
    +[CUIPlaceholderCUIRuntimeStatistics sharedRuntimeStatistics];
  }

  return __sharedInstance;
}

CUIPlaceholderCUIRuntimeStatistics *__61__CUIPlaceholderCUIRuntimeStatistics_sharedRuntimeStatistics__block_invoke()
{
  result = objc_alloc_init(CUIPlaceholderCUIRuntimeStatistics);
  __sharedInstance = result;
  return result;
}

- (CUIPlaceholderCUIRuntimeStatistics)init
{
  v6.receiver = self;
  v6.super_class = CUIPlaceholderCUIRuntimeStatistics;
  v2 = [(CUIPlaceholderCUIRuntimeStatistics *)&v6 init];
  v3 = dispatch_queue_create("com.apple.coreui.statistics", 0);
  v2->_queue = v3;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__CUIPlaceholderCUIRuntimeStatistics_init__block_invoke;
  handler[3] = &unk_1E7EE0020;
  handler[4] = v2;
  notify_register_dispatch("com.apple.coreui.statistics", &v2->_notify_token, v3, handler);
  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_notify_token);
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = CUIPlaceholderCUIRuntimeStatistics;
  [(CUIPlaceholderCUIRuntimeStatistics *)&v3 dealloc];
}

- (void)_logStatistics:(uint64_t)a3
{
  if (a1)
  {
    atomic_load(a1 + 1);
    v9 = atomic_load(a1 + 2);
    atomic_load(a1 + 3);
    atomic_load(a1 + 4);
    atomic_load(a1 + 6);
    atomic_load(a1 + 5);
    atomic_load(a1 + 7);
    _CUILog(2, "CoreUI: Wasted Size: %lld/%lld=%.2f%% Short Circuit lookups: %lld/%lld=%.2f%% lookups:%lld probes:%lld Missed lookups %lld/%lld=%.2f%%\n", a3, a4, a5, a6, a7, a8, v9);
    atomic_store(0, a1 + 6);
    atomic_store(0, a1 + 5);
  }
}

@end