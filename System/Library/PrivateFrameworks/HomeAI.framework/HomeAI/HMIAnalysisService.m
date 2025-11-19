@interface HMIAnalysisService
- (HMIAnalysisService)init;
@end

@implementation HMIAnalysisService

- (HMIAnalysisService)init
{
  v3.receiver = self;
  v3.super_class = HMIAnalysisService;
  return [(HMIAnalysisService *)&v3 init];
}

@end