@interface CAFTestAccEventNoParamsControl
+ (void)load;
- (void)_didNotifyWithValue:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestAccEventNoParamsControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestAccEventNoParamsControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABC08])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccEventNoParamsControl;
  [(CAFControl *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABC08])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTestAccEventNoParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)_didNotifyWithValue:(id)a3
{
  v4 = [(CAFTestAccEventNoParamsControl *)self handler];

  if (v4)
  {
    v5 = [(CAFTestAccEventNoParamsControl *)self handler];
    v5[2]();
  }
}

@end