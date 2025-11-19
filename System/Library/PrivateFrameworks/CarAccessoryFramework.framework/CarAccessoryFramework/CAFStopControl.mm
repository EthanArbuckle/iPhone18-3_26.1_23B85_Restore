@interface CAFStopControl
+ (void)load;
- (void)registerObserver:(id)a3;
- (void)stopWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFStopControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFStopControl;
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
  v6.super_class = CAFStopControl;
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
  v6.super_class = CAFStopControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)stopWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__CAFStopControl_stopWithCompletion___block_invoke;
  v6[3] = &unk_27890EFF8;
  v7 = v4;
  v5 = v4;
  [(CAFControl *)self requestWithValue:0 response:v6];
}

uint64_t __37__CAFStopControl_stopWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end