@interface OrgApacheLuceneUtilNumericUtils_$3
- (id)iterator;
@end

@implementation OrgApacheLuceneUtilNumericUtils_$3

- (id)iterator
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v3 = [(OrgApacheLuceneIndexTerms *)in iterator];

  return OrgApacheLuceneUtilNumericUtils_filterPrefixCodedIntsWithOrgApacheLuceneIndexTermsEnum_(v3);
}

@end