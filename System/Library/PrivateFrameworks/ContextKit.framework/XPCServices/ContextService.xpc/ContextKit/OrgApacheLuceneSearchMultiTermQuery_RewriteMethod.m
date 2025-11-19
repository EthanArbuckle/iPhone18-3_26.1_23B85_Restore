@interface OrgApacheLuceneSearchMultiTermQuery_RewriteMethod
- (id)getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:(id)a3 withOrgApacheLuceneIndexTerms:(id)a4 withOrgApacheLuceneUtilAttributeSource:(id)a5;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

- (id)getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:(id)a3 withOrgApacheLuceneIndexTerms:(id)a4 withOrgApacheLuceneUtilAttributeSource:(id)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 getTermsEnumWithOrgApacheLuceneIndexTerms:a4 withOrgApacheLuceneUtilAttributeSource:a5];
}

@end