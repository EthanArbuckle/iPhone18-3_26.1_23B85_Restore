@interface EDConditionalFormatting
+ (id)conditionalFormatting;
- (EDConditionalFormatting)init;
- (id)description;
- (id)rangeAtIndex:(unint64_t)a3;
- (id)ruleAtIndex:(unint64_t)a3;
- (void)addRange:(id)a3;
- (void)addRule:(id)a3;
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

- (id)ruleAtIndex:(unint64_t)a3
{
  if ([(EDConditionalFormatting *)self ruleCount]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mRules objectAtIndex:a3];
  }

  return v5;
}

- (void)addRule:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    [(NSMutableArray *)self->mRules addObject:v4];
    v5 = [v6 appliesToDateOnly];
    v4 = v6;
    if (v5)
    {
      self->mApplyToDate = 1;
    }
  }
}

- (id)rangeAtIndex:(unint64_t)a3
{
  if ([(EDConditionalFormatting *)self rangeCount]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(EDCollection *)self->mRanges objectAtIndex:a3];
  }

  return v5;
}

- (void)addRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(EDReferenceCollection *)self->mRanges addObject:v4];
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