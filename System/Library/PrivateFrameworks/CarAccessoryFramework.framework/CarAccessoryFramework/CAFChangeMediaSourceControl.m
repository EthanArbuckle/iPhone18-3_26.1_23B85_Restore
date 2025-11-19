@interface CAFChangeMediaSourceControl
+ (void)load;
- (void)changeMediaSourceWithIdentifier:(id)a3 completion:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFChangeMediaSourceControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFChangeMediaSourceControl;
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
  v6.super_class = CAFChangeMediaSourceControl;
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
  v6.super_class = CAFChangeMediaSourceControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)changeMediaSourceWithIdentifier:(id)a3 completion:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14 = @"identifier";
  v15[0] = a3;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CAFChangeMediaSourceControl_changeMediaSourceWithIdentifier_completion___block_invoke;
  v12[3] = &unk_27890EFF8;
  v13 = v6;
  v10 = v6;
  [(CAFControl *)self requestWithValue:v9 response:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CAFChangeMediaSourceControl_changeMediaSourceWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end