@interface CUIRuntimeStatistics
+ (id)sharedRuntimeStatistics;
- (CUIRuntimeStatistics)init;
- (void)_logStatistics:(uint64_t)statistics;
- (void)dealloc;
@end

@implementation CUIRuntimeStatistics

+ (id)sharedRuntimeStatistics
{
  if (__once != -1)
  {
    +[CUIRuntimeStatistics sharedRuntimeStatistics];
  }

  return __sharedInstance;
}

CUIRuntimeStatistics *__47__CUIRuntimeStatistics_sharedRuntimeStatistics__block_invoke()
{
  result = objc_alloc_init(CUIRuntimeStatistics);
  __sharedInstance = result;
  return result;
}

- (CUIRuntimeStatistics)init
{
  v6.receiver = self;
  v6.super_class = CUIRuntimeStatistics;
  v2 = [(CUIRuntimeStatistics *)&v6 init];
  v3 = dispatch_queue_create("com.apple.coreui.statistics", 0);
  v2->_queue = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __28__CUIRuntimeStatistics_init__block_invoke;
  handler[3] = &unk_1E724A548;
  handler[4] = v2;
  notify_register_dispatch("com.apple.coreui.statistics", &v2->_notify_token, v3, handler);
  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_notify_token);
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = CUIRuntimeStatistics;
  [(CUIRuntimeStatistics *)&v3 dealloc];
}

- (void)_logStatistics:(uint64_t)statistics
{
  if (self)
  {
    atomic_load(self + 1);
    v9 = atomic_load(self + 2);
    atomic_load(self + 3);
    atomic_load(self + 4);
    atomic_load(self + 6);
    atomic_load(self + 5);
    atomic_load(self + 7);
    _CUILog(2, "CoreUI: Wasted Size: %lld/%lld=%.2f%% Short Circuit lookups: %lld/%lld=%.2f%% lookups:%lld probes:%lld Missed lookups %lld/%lld=%.2f%%\n", statistics, a4, a5, a6, a7, a8, v9);
    atomic_store(0, self + 6);
    atomic_store(0, self + 5);
  }
}

@end