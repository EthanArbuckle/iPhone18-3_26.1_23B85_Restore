@interface OrgApacheLuceneUtilAccountables
+ (id)namedAccountableWithNSString:(id)a3 withLong:(int64_t)a4;
+ (id)toStringWithOrgApacheLuceneUtilAccountable:(id)a3;
@end

@implementation OrgApacheLuceneUtilAccountables

+ (id)toStringWithOrgApacheLuceneUtilAccountable:(id)a3
{
  v4 = new_JavaLangStringBuilder_init();
  v5 = sub_10011E4D0(v4, a3, 0);

  return [v5 description];
}

+ (id)namedAccountableWithNSString:(id)a3 withLong:(int64_t)a4
{
  v6 = JavaUtilCollections_emptyList();

  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(a3, v6, a4);
}

@end