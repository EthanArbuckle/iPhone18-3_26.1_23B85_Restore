@interface CAFForgetDeviceControl
+ (void)load;
- (void)forgetDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFForgetDeviceControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFForgetDeviceControl;
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
  v6.super_class = CAFForgetDeviceControl;
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
  v6.super_class = CAFForgetDeviceControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)forgetDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v14 = @"identifier";
  v15[0] = identifier;
  v7 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__CAFForgetDeviceControl_forgetDeviceWithIdentifier_completion___block_invoke;
  v12[3] = &unk_27890EFF8;
  v13 = completionCopy;
  v10 = completionCopy;
  [(CAFControl *)self requestWithValue:v9 response:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __64__CAFForgetDeviceControl_forgetDeviceWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end