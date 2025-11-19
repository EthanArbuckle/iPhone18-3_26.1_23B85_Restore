@interface OrgLukhnosPortmobileFileFileVisitResultEnum
+ (void)initialize;
@end

@implementation OrgLukhnosPortmobileFileFileVisitResultEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgLukhnosPortmobileFileFileVisitResultEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"CONTINUE", 0);
    OrgLukhnosPortmobileFileFileVisitResultEnum_values_ = v2;
    atomic_store(1u, OrgLukhnosPortmobileFileFileVisitResultEnum__initialized);
  }
}

@end