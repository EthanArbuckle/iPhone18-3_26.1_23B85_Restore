@interface CAFTestAccRequestNoParamsControl
+ (void)load;
- (BOOL)_didRequestWithValue:(id)value response:(id)response;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTestAccRequestNoParamsControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestAccRequestNoParamsControl;
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
  v6.super_class = CAFTestAccRequestNoParamsControl;
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
  v6.super_class = CAFTestAccRequestNoParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (BOOL)_didRequestWithValue:(id)value response:(id)response
{
  responseCopy = response;
  handler = [(CAFTestAccRequestNoParamsControl *)self handler];

  if (handler)
  {
    handler2 = [(CAFTestAccRequestNoParamsControl *)self handler];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__CAFTestAccRequestNoParamsControl__didRequestWithValue_response___block_invoke;
    v9[3] = &unk_27890F160;
    v10 = responseCopy;
    (handler2)[2](handler2, v9);
  }

  return handler != 0;
}

uint64_t __66__CAFTestAccRequestNoParamsControl__didRequestWithValue_response___block_invoke(uint64_t a1, void *a2)
{
  a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F9730]();
}

@end