@interface CAFTestAccEventNoParamsControl
+ (void)load;
- (void)_didNotifyWithValue:(id)value;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestAccEventNoParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestAccEventNoParamsControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccEventNoParamsControl;
  [(CAFControl *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABC08])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccEventNoParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)_didNotifyWithValue:(id)value
{
  handler = [(CAFTestAccEventNoParamsControl *)self handler];

  if (handler)
  {
    handler2 = [(CAFTestAccEventNoParamsControl *)self handler];
    handler2[2]();
  }
}

@end