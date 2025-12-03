@interface HFHeaterCoolerItemUtilities
+ (id)targetHeatingCoolingModeValueInResponse:(id)response;
@end

@implementation HFHeaterCoolerItemUtilities

+ (id)targetHeatingCoolingModeValueInResponse:(id)response
{
  v3 = [response responseForCharacteristicType:*MEMORY[0x277CCFB18]];
  v4 = [v3 valueWithExpectedClass:objc_opt_class()];

  return v4;
}

@end