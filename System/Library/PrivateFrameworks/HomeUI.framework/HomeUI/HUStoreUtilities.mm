@interface HUStoreUtilities
+ (NSURL)accessoryStoreURL;
@end

@implementation HUStoreUtilities

+ (NSURL)accessoryStoreURL
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 countryCode];
  v4 = v3;
  v5 = &stru_2823E0EE8;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://apple.com/go/homekit/accessories/%@", v6];

  v9 = [v7 URLWithString:v8];

  return v9;
}

@end