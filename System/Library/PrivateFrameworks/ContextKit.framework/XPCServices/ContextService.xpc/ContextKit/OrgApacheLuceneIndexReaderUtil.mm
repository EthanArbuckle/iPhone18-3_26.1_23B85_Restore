@interface OrgApacheLuceneIndexReaderUtil
+ (id)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(id)context;
@end

@implementation OrgApacheLuceneIndexReaderUtil

+ (id)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(id)context
{
  do
  {
    if (!context)
    {
      JreThrowNullPointerException();
    }

    result = context;
    context = *(context + 1);
  }

  while (context);
  return result;
}

@end