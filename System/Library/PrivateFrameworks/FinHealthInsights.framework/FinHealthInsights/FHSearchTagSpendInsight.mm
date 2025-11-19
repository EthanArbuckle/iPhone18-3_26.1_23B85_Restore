@interface FHSearchTagSpendInsight
- (FHSearchTagSpendInsight)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHSearchTagSpendInsight

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FHSearchTagSpendInsight;
  v4 = a3;
  [(FHFeatureInsight *)&v6 encodeWithCoder:v4];
  v5 = [(FHSearchTagSpendInsight *)self searchTagName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"searchTag"];
}

- (FHSearchTagSpendInsight)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHSearchTagSpendInsight;
  v5 = [(FHFeatureInsight *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchTag"];
    searchTagName = v5->searchTagName;
    v5->searchTagName = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = FHSearchTagSpendInsight;
  v4 = [(FHFeatureInsight *)&v6 description];
  [v3 appendString:v4];

  [v3 appendFormat:@"%@: '%@'; ", @"searchTag", self->searchTagName];
  [v3 appendFormat:@">"];

  return v3;
}

@end