@interface FHCategorySpendInsight
- (FHCategorySpendInsight)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHCategorySpendInsight

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHCategorySpendInsight;
  coderCopy = coder;
  [(FHFeatureInsight *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[FHCategorySpendInsight merchantCategory](self forKey:{"merchantCategory", v5.receiver, v5.super_class), @"merchantCategory"}];
}

- (FHCategorySpendInsight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FHCategorySpendInsight;
  v5 = [(FHFeatureInsight *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->merchantCategory = [coderCopy decodeIntegerForKey:@"merchantCategory"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHCategorySpendInsight;
  v4 = [(FHFeatureInsight *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%lu'; ", @"merchantCategory", self->merchantCategory];
  [v3 appendFormat:@">"];

  return v3;
}

@end