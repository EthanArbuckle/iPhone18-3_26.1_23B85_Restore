@interface DRSRequestOutcomeStats
+ (id)descriptionStringForRequest:(id)a3;
@end

@implementation DRSRequestOutcomeStats

+ (id)descriptionStringForRequest:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 requestOutcomeString];

  v7 = [v5 initWithFormat:@"%@", v6];

  return v7;
}

@end