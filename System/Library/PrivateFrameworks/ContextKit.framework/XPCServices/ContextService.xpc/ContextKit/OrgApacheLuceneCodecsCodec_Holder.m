@interface OrgApacheLuceneCodecsCodec_Holder
+ (void)initialize;
@end

@implementation OrgApacheLuceneCodecsCodec_Holder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (qword_100554260 != -1)
    {
      sub_10009936C();
    }

    v2 = new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(qword_100554258);
    JreStrongAssignAndConsume(&qword_100554268, v2);
    JreStrongAssign(&qword_100554250, 0);
    atomic_store(1u, &OrgApacheLuceneCodecsCodec_Holder__initialized);
  }
}

@end