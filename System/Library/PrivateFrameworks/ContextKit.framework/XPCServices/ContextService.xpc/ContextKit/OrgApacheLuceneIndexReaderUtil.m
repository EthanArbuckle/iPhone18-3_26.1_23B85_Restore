@interface OrgApacheLuceneIndexReaderUtil
+ (id)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(id)a3;
@end

@implementation OrgApacheLuceneIndexReaderUtil

+ (id)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(id)a3
{
  do
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    result = a3;
    a3 = *(a3 + 1);
  }

  while (a3);
  return result;
}

@end