@interface HDAnalyticsWriter(HDProfile)
- (uint64_t)initWithProfile:()HDProfile;
@end

@implementation HDAnalyticsWriter(HDProfile)

- (uint64_t)initWithProfile:()HDProfile
{
  v4 = MEMORY[0x277CBEBC0];
  healthDaemon = [a3 healthDaemon];
  primaryProfile = [healthDaemon primaryProfile];
  directoryPath = [primaryProfile directoryPath];
  v8 = [directoryPath stringByAppendingPathComponent:@"Analytics"];
  v9 = [v4 fileURLWithPath:v8];
  v10 = [self initWithURL:v9];

  return v10;
}

@end