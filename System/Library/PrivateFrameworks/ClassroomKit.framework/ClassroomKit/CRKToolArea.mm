@interface CRKToolArea
- (id)description;
@end

@implementation CRKToolArea

- (id)description
{
  v2 = [objc_opt_class() subareaPath];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 componentsJoinedByString:@" --> "];
  v5 = [objc_opt_class() subareaSummary];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end