@interface OrgApacheLuceneUtilFstFST_NodeAndInCount
- (OrgApacheLuceneUtilFstFST_NodeAndInCount)initWithInt:(int)int withInt:(int)withInt;
- (int)compareToWithId:(id)id;
@end

@implementation OrgApacheLuceneUtilFstFST_NodeAndInCount

- (OrgApacheLuceneUtilFstFST_NodeAndInCount)initWithInt:(int)int withInt:(int)withInt
{
  self->node_ = int;
  self->count_ = withInt;
  return self;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  count = self->count_;
  v6 = *(id + 3);
  if (count > v6)
  {
    return 1;
  }

  if (count < v6)
  {
    return -1;
  }

  return *(id + 2) - self->node_;
}

@end