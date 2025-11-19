@interface HFStaticItem
+ (id)emptyItem;
- (HFStaticItem)initWithResults:(id)a3;
- (HFStaticItem)initWithResultsAndItemBlock:(id)a3;
- (HFStaticItem)initWithResultsBlock:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFStaticItem

+ (id)emptyItem
{
  v2 = [a1 alloc];
  v3 = [v2 initWithResults:MEMORY[0x277CBEC10]];

  return v3;
}

- (HFStaticItem)initWithResults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v6 = [(HFStaticItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_staticResults, a3);
  }

  return v7;
}

- (HFStaticItem)initWithResultsBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v5 = [(HFStaticItem *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (HFStaticItem)initWithResultsAndItemBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFStaticItem;
  v5 = [(HFStaticItem *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    resultsAndItemBlock = v5->_resultsAndItemBlock;
    v5->_resultsAndItemBlock = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HFStaticItem *)self staticResults];

  if (v5)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [(HFStaticItem *)self staticResults];
    v8 = [v7 copy];
    v9 = [v6 initWithResults:v8];
  }

  else
  {
    v10 = [(HFStaticItem *)self resultsBlock];

    if (!v10)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"HFStaticItem.m" lineNumber:70 description:{@"HFStaticItem should have either staticResults or a resultsBlock, but it has neither"}];
      v12 = 0;
      goto LABEL_6;
    }

    v11 = objc_alloc(objc_opt_class());
    v7 = [(HFStaticItem *)self resultsBlock];
    v8 = [v7 copy];
    v9 = [v11 initWithResultsBlock:v8];
  }

  v12 = v9;

LABEL_6:
  [v12 copyLatestResultsFromItem:self];
  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFStaticItem *)self staticResults];

  if (v4)
  {
    v5 = MEMORY[0x277D2C900];
    v6 = [(HFStaticItem *)self staticResults];
    v7 = [HFItemUpdateOutcome outcomeWithResults:v6];
    v8 = [v5 futureWithResult:v7];

    goto LABEL_8;
  }

  v9 = [(HFStaticItem *)self resultsAndItemBlock];

  if (v9)
  {
    v6 = [(HFStaticItem *)self resultsAndItemBlock];
    v10 = (v6)[2](v6, self);
    v11 = v10;
    v12 = &__block_literal_global_14;
LABEL_7:
    v8 = [v10 flatMap:v12];

    goto LABEL_8;
  }

  v13 = [(HFStaticItem *)self resultsBlock];

  if (v13)
  {
    v6 = [(HFStaticItem *)self resultsBlock];
    v10 = (v6[2])();
    v11 = v10;
    v12 = &__block_literal_global_8;
    goto LABEL_7;
  }

  v15 = MEMORY[0x277D2C900];
  v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
  v8 = [v15 futureWithError:v6];
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