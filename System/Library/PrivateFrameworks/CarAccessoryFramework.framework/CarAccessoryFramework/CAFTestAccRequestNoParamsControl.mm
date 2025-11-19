@interface CAFTestAccRequestNoParamsControl
+ (void)load;
- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestAccRequestNoParamsControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestAccRequestNoParamsControl;
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
  v6.super_class = CAFTestAccRequestNoParamsControl;
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
  v6.super_class = CAFTestAccRequestNoParamsControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (BOOL)_didRequestWithValue:(id)a3 response:(id)a4
{
  v5 = a4;
  v6 = [(CAFTestAccRequestNoParamsControl *)self handler];

  if (v6)
  {
    v7 = [(CAFTestAccRequestNoParamsControl *)self handler];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__CAFTestAccRequestNoParamsControl__didRequestWithValue_response___block_invoke;
    v9[3] = &unk_27890F160;
    v10 = v5;
    (v7)[2](v7, v9);
  }

  return v6 != 0;
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