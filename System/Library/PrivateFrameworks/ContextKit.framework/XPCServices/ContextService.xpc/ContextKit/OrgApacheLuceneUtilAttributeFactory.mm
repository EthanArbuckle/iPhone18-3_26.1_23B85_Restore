@interface OrgApacheLuceneUtilAttributeFactory
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilAttributeFactory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgLukhnosPortmobileInvokeMethodHandles_publicLookup();
    JreStrongAssign(&qword_100554478, v2);
    v3 = OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(+[IOSClass voidClass]);
    JreStrongAssign(&qword_100554480, v3);
    v4 = OrgApacheLuceneUtilAttributeImpl_class_();
    v5 = OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(v4);
    JreStrongAssign(&qword_100554488, v5);
    v6 = [OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory alloc];
    sub_1000C75EC(&v6->super.super.isa);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_, v6);
    atomic_store(1u, OrgApacheLuceneUtilAttributeFactory__initialized);
  }
}

@end