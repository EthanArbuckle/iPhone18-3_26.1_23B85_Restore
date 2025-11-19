@interface OrgApacheLuceneSearchDocIdSetIterator_$1
- (int)docID;
@end

@implementation OrgApacheLuceneSearchDocIdSetIterator_$1

- (int)docID
{
  if (self->exhausted_)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return -1;
  }
}

@end