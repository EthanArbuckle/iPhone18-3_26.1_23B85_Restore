@interface OrgApacheLuceneSearchMultiTermQuery_RewriteMethod
- (id)getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:(id)query withOrgApacheLuceneIndexTerms:(id)terms withOrgApacheLuceneUtilAttributeSource:(id)source;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

- (id)getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:(id)query withOrgApacheLuceneIndexTerms:(id)terms withOrgApacheLuceneUtilAttributeSource:(id)source
{
  if (!query)
  {
    JreThrowNullPointerException();
  }

  return [query getTermsEnumWithOrgApacheLuceneIndexTerms:terms withOrgApacheLuceneUtilAttributeSource:source];
}

@end