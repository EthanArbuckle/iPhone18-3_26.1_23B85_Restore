@interface CLTimerWeakHolder
+ (id)holderWithTimer:(id)timer;
- (CLTimer)timer;
- (CLTimerWeakHolder)initWithTimer:(id)timer;
@end

@implementation CLTimerWeakHolder

+ (id)holderWithTimer:(id)timer
{
  timerCopy = timer;
  v5 = [[self alloc] initWithTimer:timerCopy];

  return v5;
}

- (CLTimerWeakHolder)initWithTimer:(id)timer
{
  timerCopy = timer;
  v8.receiver = self;
  v8.super_class = CLTimerWeakHolder;
  v5 = [(CLTimerWeakHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_timer, timerCopy);
  }

  return v6;
}

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

@end