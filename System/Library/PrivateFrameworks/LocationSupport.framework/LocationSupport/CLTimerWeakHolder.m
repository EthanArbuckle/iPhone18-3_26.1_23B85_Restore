@interface CLTimerWeakHolder
+ (id)holderWithTimer:(id)a3;
- (CLTimer)timer;
- (CLTimerWeakHolder)initWithTimer:(id)a3;
@end

@implementation CLTimerWeakHolder

+ (id)holderWithTimer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTimer:v4];

  return v5;
}

- (CLTimerWeakHolder)initWithTimer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLTimerWeakHolder;
  v5 = [(CLTimerWeakHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_timer, v4);
  }

  return v6;
}

- (CLTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

@end