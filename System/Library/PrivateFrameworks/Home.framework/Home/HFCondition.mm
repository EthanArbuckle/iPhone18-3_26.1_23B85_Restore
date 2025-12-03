@interface HFCondition
- (BOOL)isEqual:(id)equal;
- (HFCondition)initWithPredicate:(id)predicate;
- (NSString)description;
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
- (unint64_t)hash;
@end

@implementation HFCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_DoesnTImplemen.isa, v4);

  return 0;
}

- (HFCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = HFCondition;
  v6 = [(HFCondition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      predicate = [(HFCondition *)self predicate];
      predicate2 = [(HFCondition *)equalCopy predicate];
      v7 = [predicate isEqual:predicate2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  predicate = [(HFCondition *)self predicate];
  v3 = [predicate hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  predicate = [(HFCondition *)self predicate];
  v5 = [v3 appendObject:predicate withName:@"predicate"];

  build = [v3 build];

  return build;
}

@end