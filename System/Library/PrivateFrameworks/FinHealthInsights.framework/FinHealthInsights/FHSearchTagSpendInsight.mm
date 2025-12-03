@interface FHSearchTagSpendInsight
- (FHSearchTagSpendInsight)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHSearchTagSpendInsight

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FHSearchTagSpendInsight;
  coderCopy = coder;
  [(FHFeatureInsight *)&v6 encodeWithCoder:coderCopy];
  v5 = [(FHSearchTagSpendInsight *)self searchTagName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"searchTag"];
}

- (FHSearchTagSpendInsight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHSearchTagSpendInsight;
  v5 = [(FHFeatureInsight *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchTag"];
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