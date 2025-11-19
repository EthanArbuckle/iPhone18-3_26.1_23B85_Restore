@interface HMFTimerManagerTimerContext
+ (id)comparator;
- (HMFTimerManagerTimerContext)initWithObject:(id)a3 expirationTime:(double)a4;
@end

@implementation HMFTimerManagerTimerContext

+ (id)comparator
{
  if (_MergedGlobals_54 != -1)
  {
    dispatch_once(&_MergedGlobals_54, &__block_literal_global_1);
  }

  v2 = _Block_copy(qword_280AFC568);

  return v2;
}

void __41__HMFTimerManagerTimerContext_comparator__block_invoke()
{
  v0 = qword_280AFC568;
  qword_280AFC568 = &__block_literal_global_3;
}

uint64_t __41__HMFTimerManagerTimerContext_comparator__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 expirationTime];
  v7 = v6;
  [v5 expirationTime];
  if (v7 >= v8)
  {
    [v4 expirationTime];
    v11 = v10;
    [v5 expirationTime];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (HMFTimerManagerTimerContext)initWithObject:(id)a3 expirationTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMFTimerManagerTimerContext;
  v8 = [(HMFTimerManagerTimerContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, a3);
    v9->_expirationTime = a4;
  }

  return v9;
}

@end