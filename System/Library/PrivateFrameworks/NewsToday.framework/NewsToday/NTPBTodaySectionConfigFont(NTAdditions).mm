@interface NTPBTodaySectionConfigFont(NTAdditions)
- (id)URL;
@end

@implementation NTPBTodaySectionConfigFont(NTAdditions)

- (id)URL
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [a1 urlString];
  v3 = [v1 URLWithString:v2];

  return v3;
}

@end