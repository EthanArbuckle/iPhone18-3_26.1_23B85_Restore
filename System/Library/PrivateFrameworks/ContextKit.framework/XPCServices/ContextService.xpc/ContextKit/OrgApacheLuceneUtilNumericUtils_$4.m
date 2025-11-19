@interface OrgApacheLuceneUtilNumericUtils_$4
- (id)iterator;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$4

- (id)iterator
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v3 = [(OrgApacheLuceneIndexTerms *)in iterator];

  return OrgApacheLuceneUtilNumericUtils_filterPrefixCodedLongsWithOrgApacheLuceneIndexTermsEnum_(v3);
}

@end