@interface OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl
- (char)readByteWithLong:(int64_t)long;
- (int)readIntWithLong:(int64_t)long;
- (int64_t)getFilePointer;
- (int64_t)readLongWithLong:(int64_t)long;
- (signed)readShortWithLong:(int64_t)long;
- (void)seekWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl

- (void)seekWithLong:(int64_t)long
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioBuffer *)curBuf positionWithInt:long];
}

- (int64_t)getFilePointer
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioBuffer *)curBuf position];
}

- (char)readByteWithLong:(int64_t)long
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getWithInt:long];
}

- (signed)readShortWithLong:(int64_t)long
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getShortWithInt:long];
}

- (int)readIntWithLong:(int64_t)long
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getIntWithInt:long];
}

- (int64_t)readLongWithLong:(int64_t)long
{
  curBuf = self->super.curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getLongWithInt:long];
}

@end