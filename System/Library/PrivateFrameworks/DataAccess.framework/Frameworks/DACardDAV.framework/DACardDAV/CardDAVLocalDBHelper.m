@interface CardDAVLocalDBHelper
+ (CardDAVLocalDBHelper)sharedInstance;
@end

@implementation CardDAVLocalDBHelper

+ (CardDAVLocalDBHelper)sharedInstance
{
  v2 = *MEMORY[0x277CB8BD8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CardDAVLocalDBHelper;
  v3 = objc_msgSendSuper2(&v5, sel_sharedInstanceForAccountType_creatingClass_, v2, a1);

  return v3;
}

@end