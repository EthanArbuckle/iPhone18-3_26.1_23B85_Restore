@interface FHOverallSpendInsight
- (FHOverallSpendInsight)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHOverallSpendInsight

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = FHOverallSpendInsight;
  [(FHFeatureInsight *)&v3 encodeWithCoder:a3];
}

- (FHOverallSpendInsight)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = FHOverallSpendInsight;
  return [(FHFeatureInsight *)&v4 initWithCoder:a3];
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