@interface CAFResetControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)resetWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFResetControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFResetControl;
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
  v6.super_class = CAFResetControl;
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
  v6.super_class = CAFResetControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)resetWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CAFResetControl_resetWithCompletion___block_invoke;
  v6[3] = &unk_27890EFF8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CAFControl *)self requestWithValue:0 response:v6];
}

uint64_t __39__CAFResetControl_resetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end