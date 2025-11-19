@interface HFCondition
- (BOOL)isEqual:(id)a3;
- (HFCondition)initWithPredicate:(id)a3;
- (NSString)description;
- (id)hf_naturalLanguageSummaryWithOptions:(id)a3;
- (unint64_t)hash;
@end

@implementation HFCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)a3
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_DoesnTImplemen.isa, v4);

  return 0;
}

- (HFCondition)initWithPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFCondition;
  v6 = [(HFCondition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HFCondition *)self predicate];
      v6 = [(HFCondition *)v4 predicate];
      v7 = [v5 isEqual:v6];
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
  v2 = [(HFCondition *)self predicate];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCondition *)self predicate];
  v5 = [v3 appendObject:v4 withName:@"predicate"];

  v6 = [v3 build];

  return v6;
}

@end