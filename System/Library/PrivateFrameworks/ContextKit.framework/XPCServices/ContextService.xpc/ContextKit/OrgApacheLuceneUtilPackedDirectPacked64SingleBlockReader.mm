@interface OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader
- (int64_t)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader

- (int64_t)getWithInt:(int)int
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)in seekWithLong:self->startPointer_ + 8 * (int / self->valuesPerBlock_)];
  return ([(OrgApacheLuceneStoreDataInput *)self->in_ readLong]>> (self->bitsPerValue_ * (int % self->valuesPerBlock_))) & self->mask_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader;
  [(OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader *)&v3 dealloc];
}

@end