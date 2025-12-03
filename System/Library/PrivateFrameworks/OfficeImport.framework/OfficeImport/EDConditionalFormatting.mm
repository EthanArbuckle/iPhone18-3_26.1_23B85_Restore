@interface EDConditionalFormatting
+ (id)conditionalFormatting;
- (EDConditionalFormatting)init;
- (id)description;
- (id)rangeAtIndex:(unint64_t)index;
- (id)ruleAtIndex:(unint64_t)index;
- (void)addRange:(id)range;
- (void)addRule:(id)rule;
@end

@implementation EDConditionalFormatting

- (EDConditionalFormatting)init
{
  v8.receiver = self;
  v8.super_class = EDConditionalFormatting;
  v2 = [(EDConditionalFormatting *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRules = v2->mRules;
    v2->mRules = v3;

    v5 = objc_alloc_init(EDReferenceCollection);
    mRanges = v2->mRanges;
    v2->mRanges = v5;

    v2->mApplyToDate = 0;
  }

  return v2;
}

+ (id)conditionalFormatting
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)ruleAtIndex:(unint64_t)index
{
  if ([(EDConditionalFormatting *)self ruleCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mRules objectAtIndex:index];
  }

  return v5;
}

- (void)addRule:(id)rule
{
  ruleCopy = rule;
  if (ruleCopy)
  {
    v6 = ruleCopy;
    [(NSMutableArray *)self->mRules addObject:ruleCopy];
    appliesToDateOnly = [v6 appliesToDateOnly];
    ruleCopy = v6;
    if (appliesToDateOnly)
    {
      self->mApplyToDate = 1;
    }
  }
}

- (id)rangeAtIndex:(unint64_t)index
{
  if ([(EDConditionalFormatting *)self rangeCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(EDCollection *)self->mRanges objectAtIndex:index];
  }

  return v5;
}

- (void)addRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    [(EDReferenceCollection *)self->mRanges addObject:rangeCopy];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDConditionalFormatting;
  v2 = [(EDConditionalFormatting *)&v4 description];

  return v2;
}

@end