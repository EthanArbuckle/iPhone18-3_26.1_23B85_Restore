@interface OrgApacheLuceneCodecsDocValuesFormat_Holder
+ (void)initialize;
@end

@implementation OrgApacheLuceneCodecsDocValuesFormat_Holder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (qword_1005546B0 != -1)
    {
      sub_100106FBC();
    }

    v2 = new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(qword_1005546A8);
    JreStrongAssignAndConsume(&qword_1005546B8, v2);
    atomic_store(1u, &OrgApacheLuceneCodecsDocValuesFormat_Holder__initialized);
  }
}

@end