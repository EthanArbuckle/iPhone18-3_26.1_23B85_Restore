@interface JreStringCategoryDummy
+ (void)initialize;
@end

@implementation JreStringCategoryDummy

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&NSString_CASE_INSENSITIVE_ORDER_, objc_alloc_init(JavaLangString_CaseInsensitiveComparator));
    v2 = [IOSObjectArray newArrayWithLength:0 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&NSString_serialPersistentFields_, v2);
    atomic_store(1u, &NSString__initialized);
  }
}

@end