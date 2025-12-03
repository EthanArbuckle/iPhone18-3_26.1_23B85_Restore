@interface OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)dealloc;
- (void)onCloseWithOrgApacheLuceneIndexIndexReader:(id)reader;
@end

@implementation OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper

- (void)onCloseWithOrgApacheLuceneIndexIndexReader:(id)reader
{
  listener = self->listener_;
  if (!listener || !reader)
  {
    JreThrowNullPointerException();
  }

  getCoreCacheKey = [reader getCoreCacheKey];

  [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)listener onCloseWithId:getCoreCacheKey];
}

- (unint64_t)hash
{
  listener = self->listener_;
  if (!listener)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)listener hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  listener = self->listener_;
  if (!listener || (objc_opt_class(), !equal))
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(equal + 1);

  return [(OrgApacheLuceneIndexLeafReader_CoreClosedListener *)listener isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper;
  [(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *)&v3 dealloc];
}

@end