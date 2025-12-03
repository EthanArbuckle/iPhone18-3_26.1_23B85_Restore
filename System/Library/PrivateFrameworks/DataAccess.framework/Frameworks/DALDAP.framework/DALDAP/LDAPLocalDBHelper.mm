@interface LDAPLocalDBHelper
+ (id)sharedInstance;
@end

@implementation LDAPLocalDBHelper

+ (id)sharedInstance
{
  v2 = *MEMORY[0x277CB8C98];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___LDAPLocalDBHelper;
  v3 = objc_msgSendSuper2(&v5, sel_sharedInstanceForAccountType_creatingClass_, v2, self);

  return v3;
}

@end