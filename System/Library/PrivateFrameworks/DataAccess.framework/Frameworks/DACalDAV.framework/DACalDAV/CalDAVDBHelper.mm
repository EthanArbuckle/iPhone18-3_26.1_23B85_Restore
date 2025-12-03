@interface CalDAVDBHelper
+ (id)sharedInstance;
@end

@implementation CalDAVDBHelper

+ (id)sharedInstance
{
  v2 = *MEMORY[0x277CB8BC8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CalDAVDBHelper;
  v3 = objc_msgSendSuper2(&v5, sel_sharedInstanceForAccountType_creatingClass_, v2, self);

  return v3;
}

@end