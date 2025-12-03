@interface CAFTuneToIdentifierControl
+ (void)load;
- (void)registerObserver:(id)observer;
- (void)tuneToIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTuneToIdentifierControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTuneToIdentifierControl;
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
  v6.super_class = CAFTuneToIdentifierControl;
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
  v6.super_class = CAFTuneToIdentifierControl;
  [(CAFControl *)&v6 unregisterObserver:v5];
}

- (void)tuneToIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier completion:(id)completion
{
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v17[0] = @"identifier";
  v17[1] = @"sourceIdentifier";
  v18[0] = identifier;
  v18[1] = sourceIdentifier;
  v9 = MEMORY[0x277CBEAC0];
  sourceIdentifierCopy = sourceIdentifier;
  identifierCopy = identifier;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__CAFTuneToIdentifierControl_tuneToIdentifier_sourceIdentifier_completion___block_invoke;
  v15[3] = &unk_27890EFF8;
  v16 = completionCopy;
  v13 = completionCopy;
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