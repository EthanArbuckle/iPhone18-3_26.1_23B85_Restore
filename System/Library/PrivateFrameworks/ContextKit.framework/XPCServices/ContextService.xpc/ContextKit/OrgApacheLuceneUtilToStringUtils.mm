@interface OrgApacheLuceneUtilToStringUtils
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilToStringUtils

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssign(&qword_100554490, [@"0123456789abcdef" toCharArray]);
    atomic_store(1u, &OrgApacheLuceneUtilToStringUtils__initialized);
  }
}

@end