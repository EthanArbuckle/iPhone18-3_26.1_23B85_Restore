@interface OrgApacheLuceneSearchDocIdSetIterator
+ (id)allWithInt:(int)a3;
+ (id)empty;
- (int)slowAdvanceWithInt:(int)a3;
@end

@implementation OrgApacheLuceneSearchDocIdSetIterator

+ (id)empty
{
  v2 = [OrgApacheLuceneSearchDocIdSetIterator__1 alloc];
  v2->exhausted_ = 0;

  return v2;
}

+ (id)allWithInt:(int)a3
{
  v4 = [OrgApacheLuceneSearchDocIdSetIterator__2 alloc];
  v4->val$maxDoc_ = a3;
  v4->doc_ = -1;

  return v4;
}

- (int)slowAdvanceWithInt:(int)a3
{
  do
  {
    result = [(OrgApacheLuceneSearchDocIdSetIterator *)self nextDoc];
  }

  while (result < a3);
  return result;
}

@end