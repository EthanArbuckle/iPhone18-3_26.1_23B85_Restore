@interface HDAnalyticsWriter(HDProfile)
- (uint64_t)initWithProfile:()HDProfile;
@end

@implementation HDAnalyticsWriter(HDProfile)

- (uint64_t)initWithProfile:()HDProfile
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [a3 healthDaemon];
  v6 = [v5 primaryProfile];
  v7 = [v6 directoryPath];
  v8 = [v7 stringByAppendingPathComponent:@"Analytics"];
  v9 = [v4 fileURLWithPath:v8];
  v10 = [a1 initWithURL:v9];

  return v10;
}

@end