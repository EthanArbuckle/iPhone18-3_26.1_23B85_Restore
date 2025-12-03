@interface NSString(FPDPushConnection)
- (uint64_t)fp_isCloudDocsPushTopic;
@end

@implementation NSString(FPDPushConnection)

- (uint64_t)fp_isCloudDocsPushTopic
{
  v2 = [@"com.apple.icloud-container." stringByAppendingString:@"clouddocs."];
  v3 = [self hasPrefix:v2];

  return v3;
}

@end