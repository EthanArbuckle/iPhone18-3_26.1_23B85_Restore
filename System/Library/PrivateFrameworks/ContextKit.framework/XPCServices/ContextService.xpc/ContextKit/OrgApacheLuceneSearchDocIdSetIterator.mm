@interface OrgApacheLuceneSearchDocIdSetIterator
+ (id)allWithInt:(int)int;
+ (id)empty;
- (int)slowAdvanceWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchDocIdSetIterator

+ (id)empty
{
  v2 = [OrgApacheLuceneSearchDocIdSetIterator__1 alloc];
  v2->exhausted_ = 0;

  return v2;
}

+ (id)allWithInt:(int)int
{
  v4 = [OrgApacheLuceneSearchDocIdSetIterator__2 alloc];
  v4->val$maxDoc_ = int;
  v4->doc_ = -1;

  return v4;
}

- (int)slowAdvanceWithInt:(int)int
{
  do
  {
    result = [(OrgApacheLuceneSearchDocIdSetIterator *)self nextDoc];
  }

  while (result < int);
  return result;
}

@end