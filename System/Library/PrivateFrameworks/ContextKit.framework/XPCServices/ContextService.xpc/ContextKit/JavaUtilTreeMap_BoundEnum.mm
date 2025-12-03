@interface JavaUtilTreeMap_BoundEnum
+ (void)initialize;
@end

@implementation JavaUtilTreeMap_BoundEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaUtilTreeMap_Bound__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"INCLUSIVE", 0);
    JavaUtilTreeMap_BoundEnum_values_[0] = v2;
    v3 = [JavaUtilTreeMap_Bound__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"EXCLUSIVE", 1);
    qword_100558098 = v3;
    v4 = [JavaUtilTreeMap_Bound__3Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"NO_BOUND", 2);
    qword_1005580A0 = v4;
    atomic_store(1u, JavaUtilTreeMap_BoundEnum__initialized);
  }
}

@end