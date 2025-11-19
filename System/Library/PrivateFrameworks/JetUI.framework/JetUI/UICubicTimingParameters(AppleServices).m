@interface UICubicTimingParameters(AppleServices)
+ (id)jet_appleServicesLoadingParameters;
@end

@implementation UICubicTimingParameters(AppleServices)

+ (id)jet_appleServicesLoadingParameters
{
  v0 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.33 controlPoint2:{0.0, 0.83, 0.83}];

  return v0;
}

@end