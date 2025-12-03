@interface OrgApacheLuceneIndexReaderSlice
+ (void)initialize;
- (OrgApacheLuceneIndexReaderSlice)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (id)description;
@end

@implementation OrgApacheLuceneIndexReaderSlice

- (OrgApacheLuceneIndexReaderSlice)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->start_ = int;
  self->length_ = withInt;
  self->readerIndex_ = a5;
  return self;
}

- (id)description
{
  readerIndex = self->readerIndex_;
  length = self->length_;
  start = self->start_;
  return JreStrcat("$I$I$I", a2, v2, v3, v4, v5, v6, v7, @"slice start=");
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexReaderSlice_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexReaderSlice_EMPTY_ARRAY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexReaderSlice__initialized);
  }
}

@end