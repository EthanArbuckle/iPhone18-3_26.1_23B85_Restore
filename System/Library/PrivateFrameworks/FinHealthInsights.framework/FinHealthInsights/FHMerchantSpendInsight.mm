@interface FHMerchantSpendInsight
- (FHMerchantSpendInsight)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHMerchantSpendInsight

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FHMerchantSpendInsight;
  coderCopy = coder;
  [(FHFeatureInsight *)&v6 encodeWithCoder:coderCopy];
  v5 = [(FHMerchantSpendInsight *)self merchantName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"merchantName"];
}

- (FHMerchantSpendInsight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHMerchantSpendInsight;
  v5 = [(FHFeatureInsight *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
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