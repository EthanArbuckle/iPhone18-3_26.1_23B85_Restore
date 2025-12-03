@interface NTPBTodaySectionConfigFont(NTAdditions)
- (id)URL;
@end

@implementation NTPBTodaySectionConfigFont(NTAdditions)

- (id)URL
{
  v1 = MEMORY[0x277CBEBC0];
  urlString = [self urlString];
  v3 = [v1 URLWithString:urlString];

  return v3;
}

@end