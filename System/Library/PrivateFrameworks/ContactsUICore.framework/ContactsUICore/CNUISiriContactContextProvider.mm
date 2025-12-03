@interface CNUISiriContactContextProvider
+ (id)descriptorForRequiredKeys;
@end

@implementation CNUISiriContactContextProvider

+ (id)descriptorForRequiredKeys
{
  if (+[CNCapabilities hasSiriCapability])
  {
    v2 = MEMORY[0x1E695CD58];
    descriptorsForRequiredKeys = [getCNAssistantConversionClass[0]() descriptorsForRequiredKeys];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUISiriContactContextProvider descriptorForRequiredKeys]"];
    v5 = [v2 descriptorWithKeyDescriptors:descriptorsForRequiredKeys description:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end