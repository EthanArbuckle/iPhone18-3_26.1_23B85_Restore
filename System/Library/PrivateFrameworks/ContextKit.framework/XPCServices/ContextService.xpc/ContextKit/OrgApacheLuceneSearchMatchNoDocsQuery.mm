@interface OrgApacheLuceneSearchMatchNoDocsQuery
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (id)toStringWithNSString:(id)a3;
@end

@implementation OrgApacheLuceneSearchMatchNoDocsQuery

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  v4 = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() build];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [v5 setBoostWithFloat:?];
  return v5;
}

- (id)toStringWithNSString:(id)a3
{
  v4 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v4 appendWithNSString:&stru_100484358];
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  [(JavaLangStringBuilder *)v4 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v5)];

  return [(JavaLangStringBuilder *)v4 description];
}

@end