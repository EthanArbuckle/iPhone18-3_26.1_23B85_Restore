@interface HFStaticItem
+ (id)emptyItem;
- (HFStaticItem)initWithResults:(id)results;
- (HFStaticItem)initWithResultsAndItemBlock:(id)block;
- (HFStaticItem)initWithResultsBlock:(id)block;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFStaticItem

+ (id)emptyItem
{
  v2 = [self alloc];
  v3 = [v2 initWithResults:MEMORY[0x277CBEC10]];

  return v3;
}

- (HFStaticItem)initWithResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_staticResults, results);
  }

  return v7;
}

- (HFStaticItem)initWithResultsBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v5 = [(HFStaticItem *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (HFStaticItem)initWithResultsAndItemBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v5 = [(HFStaticItem *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    resultsAndItemBlock = v5->_resultsAndItemBlock;
    v5->_resultsAndItemBlock = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  staticResults = [(HFStaticItem *)self staticResults];

  if (staticResults)
  {
    v6 = objc_alloc(objc_opt_class());
    staticResults2 = [(HFStaticItem *)self staticResults];
    v8 = [staticResults2 copy];
    v9 = [v6 initWithResults:v8];
  }

  else
  {
    resultsBlock = [(HFStaticItem *)self resultsBlock];

    if (!resultsBlock)
    {
      staticResults2 = [MEMORY[0x277CCA890] currentHandler];
      [staticResults2 handleFailureInMethod:a2 object:self file:@"HFStaticItem.m" lineNumber:70 description:{@"HFStaticItem should have either staticResults or a resultsBlock, but it has neither"}];
      v12 = 0;
      goto LABEL_6;
    }

    v11 = objc_alloc(objc_opt_class());
    staticResults2 = [(HFStaticItem *)self resultsBlock];
    v8 = [staticResults2 copy];
    v9 = [v11 initWithResultsBlock:v8];
  }

  v12 = v9;

LABEL_6:
  [v12 copyLatestResultsFromItem:self];
  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  staticResults = [(HFStaticItem *)self staticResults];

  if (staticResults)
  {
    v5 = MEMORY[0x277D2C900];
    staticResults2 = [(HFStaticItem *)self staticResults];
    v7 = [HFItemUpdateOutcome outcomeWithResults:staticResults2];
    v8 = [v5 futureWithResult:v7];

    goto LABEL_8;
  }

  resultsAndItemBlock = [(HFStaticItem *)self resultsAndItemBlock];

  if (resultsAndItemBlock)
  {
    staticResults2 = [(HFStaticItem *)self resultsAndItemBlock];
    v10 = (staticResults2)[2](staticResults2, self);
    v11 = v10;
    v12 = &__block_literal_global_14;
LABEL_7:
    v8 = [v10 flatMap:v12];

    goto LABEL_8;
  }

  resultsBlock = [(HFStaticItem *)self resultsBlock];

  if (resultsBlock)
  {
    staticResults2 = [(HFStaticItem *)self resultsBlock];
    v10 = (staticResults2[2])();
    v11 = v10;
    v12 = &__block_literal_global_8;
    goto LABEL_7;
  }

  v15 = MEMORY[0x277D2C900];
  staticResults2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
  v8 = [v15 futureWithError:staticResults2];
LABEL_8:

  return v8;
}

id __44__HFStaticItem__subclass_updateWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [HFItemUpdateOutcome outcomeWithResults:a2];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __44__HFStaticItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [HFItemUpdateOutcome outcomeWithResults:a2];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end