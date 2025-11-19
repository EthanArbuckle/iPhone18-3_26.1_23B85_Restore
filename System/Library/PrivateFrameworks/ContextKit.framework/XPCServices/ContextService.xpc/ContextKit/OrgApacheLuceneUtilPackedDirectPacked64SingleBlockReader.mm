@interface OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader
- (int64_t)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader

- (int64_t)getWithInt:(int)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)in seekWithLong:self->startPointer_ + 8 * (a3 / self->valuesPerBlock_)];
  return ([(OrgApacheLuceneStoreDataInput *)self->in_ readLong]>> (self->bitsPerValue_ * (a3 % self->valuesPerBlock_))) & self->mask_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader;
  [(OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader *)&v3 dealloc];
}

@end