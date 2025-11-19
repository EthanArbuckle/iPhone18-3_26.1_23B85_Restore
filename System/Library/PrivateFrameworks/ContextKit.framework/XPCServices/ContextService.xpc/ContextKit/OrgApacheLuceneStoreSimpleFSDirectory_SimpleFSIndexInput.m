@interface OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput
- (id)clone;
- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)close;
- (void)dealloc;
- (void)newBufferWithByteArray:(id)a3;
@end

@implementation OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput

- (void)close
{
  if (!self->isClone_)
  {
    channel = self->channel_;
    if (!channel)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioChannelsSeekableByteChannel *)channel close];
  }
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
  v2 = [(OrgApacheLuceneStoreBufferedIndexInput *)&v4 clone];
  objc_opt_class();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v2[64] = 1;
  return v2;
}

- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  if ((a5 | a4) < 0 || a5 + a4 > self->end_ - self->off_)
  {
    v17 = JreStrcat("$$$@", a2, a3, a4, a5, v5, v6, v7, @"slice() ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  v11 = [(OrgApacheLuceneStoreIndexInput *)self getFullSliceDescriptionWithNSString:a3];
  channel = self->channel_;
  off = self->off_;
  v14 = [(OrgApacheLuceneStoreBufferedIndexInput *)self getBufferSize];
  v15 = [OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput alloc];
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(v15, v11, channel, off + a4, a5, v14);

  return v15;
}

- (void)newBufferWithByteArray:(id)a3
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 newBufferWithByteArray:?];
  v5 = JavaNioByteBuffer_wrapWithByteArray_(a3);
  JreStrongAssign(&self->byteBuf_, v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end