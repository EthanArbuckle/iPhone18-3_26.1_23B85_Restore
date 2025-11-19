@interface CAMediaTimingFunction(AppleServices)
+ (uint64_t)jet_appleServicesLoadingFunction;
@end

@implementation CAMediaTimingFunction(AppleServices)

+ (uint64_t)jet_appleServicesLoadingFunction
{
  LODWORD(a1) = 1051260355;
  LODWORD(a3) = 1062501089;
  LODWORD(a4) = 1062501089;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:a1 :0.0 :a3 :a4];
}

@end