@interface OrgApacheLuceneSearchMatchNoDocsQuery
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader;
- (id)toStringWithNSString:(id)string;
@end

@implementation OrgApacheLuceneSearchMatchNoDocsQuery

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader
{
  build = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() build];
  if (!build)
  {
    JreThrowNullPointerException();
  }

  v5 = build;
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [v5 setBoostWithFloat:?];
  return v5;
}

- (id)toStringWithNSString:(id)string
{
  v4 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v4 appendWithNSString:&stru_100484358];
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [(JavaLangStringBuilder *)v4 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v5)];

  return [(JavaLangStringBuilder *)v4 description];
}

@end