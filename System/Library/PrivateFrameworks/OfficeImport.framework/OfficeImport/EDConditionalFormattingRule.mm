@interface EDConditionalFormattingRule
+ (id)conditionalFormattingRuleWithResources:(id)resources;
- (EDConditionalFormattingRule)initWithResources:(id)resources;
- (id)description;
- (id)differentialStyle;
- (id)formulaAtIndex:(unint64_t)index;
- (int64_t)compareToOtherRuleUsingPriority:(id)priority;
- (void)addFormula:(id)formula worksheet:(id)worksheet;
- (void)setDifferentialStyle:(id)style;
- (void)setText:(id)text;
@end

@implementation EDConditionalFormattingRule

- (EDConditionalFormattingRule)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v10.receiver = self;
  v10.super_class = EDConditionalFormattingRule;
  v5 = [(EDConditionalFormattingRule *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
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

+ (id)conditionalFormattingRuleWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (int64_t)compareToOtherRuleUsingPriority:(id)priority
{
  priorityCopy = priority;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    priority = [priorityCopy priority];
    mPriority = self->mPriority;
    v7 = mPriority < priority;
    v8 = mPriority > priority;
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

- (id)formulaAtIndex:(unint64_t)index
{
  if ([(EDConditionalFormattingRule *)self formulaCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mFormulas objectAtIndex:index];
  }

  return v5;
}

- (void)addFormula:(id)formula worksheet:(id)worksheet
{
  formulaCopy = formula;
  worksheetCopy = worksheet;
  if (formulaCopy)
  {
    [(NSMutableArray *)self->mFormulas addObject:?];
    processors = [worksheetCopy processors];
    [processors markObject:formulaCopy processor:objc_opt_class()];
  }
}

- (id)differentialStyle
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mDifferentialStyleIndex];

  return v5;
}

- (void)setDifferentialStyle:(id)style
{
  styleCopy = style;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mDifferentialStyleIndex = [differentialStyles addObject:styleCopy];
}

- (void)setText:(id)text
{
  textCopy = text;
  mText = self->mText;
  p_mText = &self->mText;
  if (mText != textCopy)
  {
    v8 = textCopy;
    objc_storeStrong(p_mText, text);
    textCopy = v8;
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