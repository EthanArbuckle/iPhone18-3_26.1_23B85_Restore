@interface ASLocalDBHelper
+ (id)sharedInstance;
@end

@implementation ASLocalDBHelper

+ (id)sharedInstance
{
  v2 = *MEMORY[0x277CB8C00];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ASLocalDBHelper;
  v3 = objc_msgSendSuper2(&v5, sel_sharedInstanceForAccountType_creatingClass_, v2, self);

  return v3;
}

@end