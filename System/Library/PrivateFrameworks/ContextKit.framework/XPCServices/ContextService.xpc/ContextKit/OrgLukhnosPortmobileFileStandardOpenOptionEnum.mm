@interface OrgLukhnosPortmobileFileStandardOpenOptionEnum
+ (void)initialize;
@end

@implementation OrgLukhnosPortmobileFileStandardOpenOptionEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgLukhnosPortmobileFileStandardOpenOptionEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"READ", 0);
    OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[0] = v2;
    v3 = [OrgLukhnosPortmobileFileStandardOpenOptionEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"WRITE", 1);
    qword_100557488 = v3;
    v4 = [OrgLukhnosPortmobileFileStandardOpenOptionEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"CREATE", 2);
    qword_100557490 = v4;
    atomic_store(1u, OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized);
  }
}

@end