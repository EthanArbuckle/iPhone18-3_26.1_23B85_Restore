@interface _BMManagedConfiguration
+ (_BMManagedConfiguration)shared;
- (BOOL)allowAppleIntelligenceReport;
@end

@implementation _BMManagedConfiguration

+ (_BMManagedConfiguration)shared
{
  v2 = static ManagedConfiguration.shared.getter();

  return v2;
}

- (BOOL)allowAppleIntelligenceReport
{
  v2 = self;
  v3 = ManagedConfiguration.allowAppleIntelligenceReport.getter();

  return v3 & 1;
}

@end