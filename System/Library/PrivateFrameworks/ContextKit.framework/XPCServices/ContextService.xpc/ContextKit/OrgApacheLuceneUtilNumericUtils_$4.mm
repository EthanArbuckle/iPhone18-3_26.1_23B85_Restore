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

  iterator = [(OrgApacheLuceneIndexTerms *)in iterator];

  return OrgApacheLuceneUtilNumericUtils_filterPrefixCodedLongsWithOrgApacheLuceneIndexTermsEnum_(iterator);
}

@end