@interface OrgApacheLuceneIndexMultiTermsEnum_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id || !withId)
  {
    JreThrowNullPointerException();
  }

  return *(id + 6) - *(withId + 6);
}

@end