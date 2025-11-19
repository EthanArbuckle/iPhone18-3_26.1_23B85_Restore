@interface EDConditionalFormattingRule
+ (id)conditionalFormattingRuleWithResources:(id)a3;
- (EDConditionalFormattingRule)initWithResources:(id)a3;
- (id)description;
- (id)differentialStyle;
- (id)formulaAtIndex:(unint64_t)a3;
- (int64_t)compareToOtherRuleUsingPriority:(id)a3;
- (void)addFormula:(id)a3 worksheet:(id)a4;
- (void)setDifferentialStyle:(id)a3;
- (void)setText:(id)a3;
@end

@implementation EDConditionalFormattingRule

- (EDConditionalFormattingRule)initWithResources:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EDConditionalFormattingRule;
  v5 = [(EDConditionalFormattingRule *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFormulas = v6->mFormulas;
    v6->mFormulas = v7;

    *&v6->mType = 0;
    *&v6->mStopIfTrue = 0;
    v6->mPriority = 1;
    v6->mDifferentialStyleIndex = -1;
    *&v6->mAboveAverage = 1;
    v6->mTimePeriod = 0;
    v6->mRank = 0;
    v6->mStdDev = 0;
  }

  return v6;
}

+ (id)conditionalFormattingRuleWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (int64_t)compareToOtherRuleUsingPriority:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 priority];
    mPriority = self->mPriority;
    v7 = mPriority < v5;
    v8 = mPriority > v5;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)formulaAtIndex:(unint64_t)a3
{
  if ([(EDConditionalFormattingRule *)self formulaCount]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mFormulas objectAtIndex:a3];
  }

  return v5;
}

- (void)addFormula:(id)a3 worksheet:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    [(NSMutableArray *)self->mFormulas addObject:?];
    v7 = [v6 processors];
    [v7 markObject:v8 processor:objc_opt_class()];
  }
}

- (id)differentialStyle
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mDifferentialStyleIndex];

  return v5;
}

- (void)setDifferentialStyle:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mDifferentialStyleIndex = [v5 addObject:v6];
}

- (void)setText:(id)a3
{
  v5 = a3;
  mText = self->mText;
  p_mText = &self->mText;
  if (mText != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mText, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDConditionalFormattingRule;
  v2 = [(EDConditionalFormattingRule *)&v4 description];

  return v2;
}

@end