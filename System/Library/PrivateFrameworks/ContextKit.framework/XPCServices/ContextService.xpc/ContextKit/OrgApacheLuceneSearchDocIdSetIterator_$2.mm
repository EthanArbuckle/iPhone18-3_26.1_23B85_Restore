@interface OrgApacheLuceneSearchDocIdSetIterator_$2
- (OrgApacheLuceneSearchDocIdSetIterator_$2)initWithInt:(int)a3;
- (int)advanceWithInt:(int)a3;
@end

@implementation OrgApacheLuceneSearchDocIdSetIterator_$2

- (int)advanceWithInt:(int)a3
{
  self->doc_ = a3;
  if (self->val$maxDoc_ <= a3)
  {
    v3 = 0x7FFFFFFF;
  }

  else
  {
    v3 = a3;
  }

  self->doc_ = v3;
  return v3;
}

- (OrgApacheLuceneSearchDocIdSetIterator_$2)initWithInt:(int)a3
{
  self->val$maxDoc_ = a3;
  self->doc_ = -1;
  return self;
}

@end