@interface FHMerchantSpendInsight
- (FHMerchantSpendInsight)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHMerchantSpendInsight

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FHMerchantSpendInsight;
  v4 = a3;
  [(FHFeatureInsight *)&v6 encodeWithCoder:v4];
  v5 = [(FHMerchantSpendInsight *)self merchantName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"merchantName"];
}

- (FHMerchantSpendInsight)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHMerchantSpendInsight;
  v5 = [(FHFeatureInsight *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->merchantName;
    v5->merchantName = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHMerchantSpendInsight;
  v4 = [(FHFeatureInsight *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"merchantName", self->merchantName];
  [v3 appendFormat:@">"];

  return v3;
}

@end