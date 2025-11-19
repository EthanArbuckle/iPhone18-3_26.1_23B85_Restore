@interface OrgApacheLuceneUtilCounter
+ (id)newCounter;
@end

@implementation OrgApacheLuceneUtilCounter

+ (id)newCounter
{
  v2 = [OrgApacheLuceneUtilCounter_SerialCounter alloc];
  v2->count_ = 0;

  return v2;
}

@end