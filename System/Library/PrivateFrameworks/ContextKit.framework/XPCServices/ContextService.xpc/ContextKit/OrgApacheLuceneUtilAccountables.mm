@interface OrgApacheLuceneUtilAccountables
+ (id)namedAccountableWithNSString:(id)string withLong:(int64_t)long;
+ (id)toStringWithOrgApacheLuceneUtilAccountable:(id)accountable;
@end

@implementation OrgApacheLuceneUtilAccountables

+ (id)toStringWithOrgApacheLuceneUtilAccountable:(id)accountable
{
  v4 = new_JavaLangStringBuilder_init();
  v5 = sub_10011E4D0(v4, accountable, 0);

  return [v5 description];
}

+ (id)namedAccountableWithNSString:(id)string withLong:(int64_t)long
{
  v6 = JavaUtilCollections_emptyList();

  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(string, v6, long);
}

@end