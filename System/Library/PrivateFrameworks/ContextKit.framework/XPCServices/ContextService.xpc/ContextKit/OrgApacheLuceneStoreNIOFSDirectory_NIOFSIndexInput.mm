@interface OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput
- (id)clone;
- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)close;
- (void)dealloc;
- (void)newBufferWithByteArray:(id)array;
@end

@implementation OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput

- (void)close
{
  if (!self->isClone_)
  {
    channel = self->channel_;
    if (!channel)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)channel close];
  }
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  clone = [(OrgApacheLuceneStoreBufferedIndexInput *)&v4 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  clone[64] = 1;
  return clone;
}

- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong
{
  if ((withLong | long) < 0 || withLong + long > self->end_ - self->off_)
  {
    v17 = JreStrcat("$$$@", a2, string, long, withLong, v5, v6, v7, @"slice() ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  v11 = [(OrgApacheLuceneStoreIndexInput *)self getFullSliceDescriptionWithNSString:string];
  channel = self->channel_;
  off = self->off_;
  getBufferSize = [(OrgApacheLuceneStoreBufferedIndexInput *)self getBufferSize];
  v15 = [OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput alloc];
  OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withLong_withLong_withInt_(v15, v11, channel, off + long, withLong, getBufferSize);

  return v15;
}

- (void)newBufferWithByteArray:(id)array
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 newBufferWithByteArray:?];
  v5 = JavaNioByteBuffer_wrapWithByteArray_(array);
  JreStrongAssign(&self->byteBuf_, v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end