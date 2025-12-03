@interface HUIconContentViewReuseQueue
+ (id)globalReuseQueueForContentViewClass:(Class)class;
- (HUIconContentViewReuseQueue)init;
- (HUIconContentViewReuseQueue)initWithContentViewClass:(Class)class;
- (id)dequeueContentView;
- (void)reapContentView:(id)view;
@end

@implementation HUIconContentViewReuseQueue

+ (id)globalReuseQueueForContentViewClass:(Class)class
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_3_0);
  }

  v4 = qword_281122578;
  v5 = NSStringFromClass(class);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HUIconContentViewReuseQueue_globalReuseQueueForContentViewClass___block_invoke_3;
  v8[3] = &__block_descriptor_40_e34___HUIconContentViewReuseQueue_8__0lu32l8;
  v8[4] = class;
  v6 = [v4 na_objectForKey:v5 withDefaultValue:v8];

  return v6;
}

uint64_t __67__HUIconContentViewReuseQueue_globalReuseQueueForContentViewClass___block_invoke_2()
{
  qword_281122578 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

HUIconContentViewReuseQueue *__67__HUIconContentViewReuseQueue_globalReuseQueueForContentViewClass___block_invoke_3(uint64_t a1)
{
  v1 = [[HUIconContentViewReuseQueue alloc] initWithContentViewClass:*(a1 + 32)];

  return v1;
}

- (HUIconContentViewReuseQueue)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithContentViewClass_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUIconContentViewReuseQueue.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUIconContentViewReuseQueue init]", v5}];

  return 0;
}

- (HUIconContentViewReuseQueue)initWithContentViewClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = HUIconContentViewReuseQueue;
  v4 = [(HUIconContentViewReuseQueue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_contentViewClass, class);
    v6 = objc_opt_new();
    reuseStack = v5->_reuseStack;
    v5->_reuseStack = v6;
  }

  return v5;
}

- (id)dequeueContentView
{
  reuseStack = [(HUIconContentViewReuseQueue *)self reuseStack];
  v4 = [reuseStack count];

  if (v4)
  {
    reuseStack2 = [(HUIconContentViewReuseQueue *)self reuseStack];
    lastObject = [reuseStack2 lastObject];

    reuseStack3 = [(HUIconContentViewReuseQueue *)self reuseStack];
    [reuseStack3 removeLastObject];
  }

  else
  {
    lastObject = objc_alloc_init([(HUIconContentViewReuseQueue *)self contentViewClass]);
  }

  return lastObject;
}

- (void)reapContentView:(id)view
{
  viewCopy = view;
  reuseStack = [(HUIconContentViewReuseQueue *)self reuseStack];
  [reuseStack addObject:viewCopy];
}

@end