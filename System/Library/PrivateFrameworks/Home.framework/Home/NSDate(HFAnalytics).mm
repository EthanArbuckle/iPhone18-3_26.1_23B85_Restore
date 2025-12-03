@interface NSDate(HFAnalytics)
- (uint64_t)hf_analyticsTimestamp;
@end

@implementation NSDate(HFAnalytics)

- (uint64_t)hf_analyticsTimestamp
{
  [self timeIntervalSince1970];
  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithUnsignedInteger:(v1 * 1000.0)];
}

@end