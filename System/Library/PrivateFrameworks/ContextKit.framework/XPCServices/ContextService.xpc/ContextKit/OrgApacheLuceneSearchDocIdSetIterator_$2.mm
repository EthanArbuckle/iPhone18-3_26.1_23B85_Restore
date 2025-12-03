@interface OrgApacheLuceneSearchDocIdSetIterator_$2
- (OrgApacheLuceneSearchDocIdSetIterator_$2)initWithInt:(int)int;
- (int)advanceWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchDocIdSetIterator_$2

- (int)advanceWithInt:(int)int
{
  self->doc_ = int;
  if (self->val$maxDoc_ <= int)
  {
    intCopy = 0x7FFFFFFF;
  }

  else
  {
    intCopy = int;
  }

  self->doc_ = intCopy;
  return intCopy;
}

- (OrgApacheLuceneSearchDocIdSetIterator_$2)initWithInt:(int)int
{
  self->val$maxDoc_ = int;
  self->doc_ = -1;
  return self;
}

@end