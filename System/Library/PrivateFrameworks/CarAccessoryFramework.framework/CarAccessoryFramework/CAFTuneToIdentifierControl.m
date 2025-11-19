@interface CAFTuneToIdentifierControl
+ (void)load;
- (void)registerObserver:(id)a3;
- (void)tuneToIdentifier:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTuneToIdentifierControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTuneToIdentifierControl;
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
  v6.super_class = CAFTuneToIdentifierControl;
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
  v6.super_class = CAFTuneToIdentifierControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)tuneToIdentifier:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v17[0] = @"identifier";
  v17[1] = @"sourceIdentifier";
  v18[0] = a3;
  v18[1] = a4;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__CAFTuneToIdentifierControl_tuneToIdentifier_sourceIdentifier_completion___block_invoke;
  v15[3] = &unk_27890EFF8;
  v16 = v8;
  v13 = v8;
  [(CAFControl *)self requestWithValue:v12 response:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __75__CAFTuneToIdentifierControl_tuneToIdentifier_sourceIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end