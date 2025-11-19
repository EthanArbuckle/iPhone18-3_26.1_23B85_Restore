@interface UIDevice(HUAdditions)
+ (id)hu_modelAndNetworkLocalizedStringKeyForKey:()HUAdditions;
@end

@implementation UIDevice(HUAdditions)

+ (id)hu_modelAndNetworkLocalizedStringKeyForKey:()HUAdditions
{
  v1 = [a1 modelSpecificLocalizedStringKeyForKey:?];
  v2 = [MEMORY[0x277D14CE8] useWLANInsteadOfWiFi];
  v3 = @"WIFI";
  if (v2)
  {
    v3 = @"WLAN";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v1, v3];

  return v4;
}

@end