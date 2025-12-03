@interface OrgApacheLuceneCodecsPostingsFormat_Holder
+ (void)initialize;
@end

@implementation OrgApacheLuceneCodecsPostingsFormat_Holder

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneCodecsPostingsFormat_class_();
    v3 = new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(v2);
    JreStrongAssignAndConsume(&qword_1005548F0, v3);
    atomic_store(1u, OrgApacheLuceneCodecsPostingsFormat_Holder__initialized);
  }
}

@end