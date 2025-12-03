@interface CAFTestAccEventWithParamsControl
+ (void)load;
- (void)_didNotifyWithValue:(id)value;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestAccEventWithParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestAccEventWithParamsControl;
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
  v6.super_class = CAFTestAccEventWithParamsControl;
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
  v6.super_class = CAFTestAccEventWithParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)_didNotifyWithValue:(id)value
{
  valueCopy = value;
  handler = [(CAFTestAccEventWithParamsControl *)self handler];

  if (handler)
  {
    objc_opt_class();
    v5 = [valueCopy objectForKeyedSubscript:@"testInput9"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    v7 = [valueCopy objectForKeyedSubscript:@"testInput10"];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v6 | v8)
    {
      handler2 = [(CAFTestAccEventWithParamsControl *)self handler];
      handler2[2](handler2, [v6 unsignedCharValue], v8);
    }
  }
}

@end