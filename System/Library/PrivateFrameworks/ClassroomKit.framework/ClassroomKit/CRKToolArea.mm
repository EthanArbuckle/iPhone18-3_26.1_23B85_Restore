@interface CRKToolArea
- (id)description;
@end

@implementation CRKToolArea

- (id)description
{
  subareaPath = [objc_opt_class() subareaPath];
  v3 = MEMORY[0x277CCACA8];
  v4 = [subareaPath componentsJoinedByString:@" --> "];
  subareaSummary = [objc_opt_class() subareaSummary];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, subareaSummary];

  return v6;
}

@end