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

  iterator = [(OrgApacheLuceneIndexTerms *)in iterator];

  return OrgApacheLuceneUtilNumericUtils_filterPrefixCodedIntsWithOrgApacheLuceneIndexTermsEnum_(iterator);
}

@end