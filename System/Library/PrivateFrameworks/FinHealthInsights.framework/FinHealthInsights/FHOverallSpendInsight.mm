@interface FHOverallSpendInsight
- (FHOverallSpendInsight)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHOverallSpendInsight

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = FHOverallSpendInsight;
  [(FHFeatureInsight *)&v3 encodeWithCoder:coder];
}

- (FHOverallSpendInsight)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = FHOverallSpendInsight;
  return [(FHFeatureInsight *)&v4 initWithCoder:coder];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHOverallSpendInsight;
  v4 = [(FHFeatureInsight *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end