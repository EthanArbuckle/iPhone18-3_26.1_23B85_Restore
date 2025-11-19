@interface NSDictionary(Helper)
+ (__CFDictionary)ck_newChannelContextUserInfoDictionaryWithDeviceIndependentID:()Helper;
@end

@implementation NSDictionary(Helper)

+ (__CFDictionary)ck_newChannelContextUserInfoDictionaryWithDeviceIndependentID:()Helper
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v3)
  {
    CFDictionarySetValue(v4, @"chatID", v3);
  }

  CFDictionarySetValue(v5, @"schema", @"1");

  return v5;
}

@end