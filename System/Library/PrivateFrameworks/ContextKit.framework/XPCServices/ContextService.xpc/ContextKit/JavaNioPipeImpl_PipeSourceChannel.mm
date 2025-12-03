@interface JavaNioPipeImpl_PipeSourceChannel
- (int)readWithJavaNioByteBuffer:(id)buffer;
- (int64_t)readWithJavaNioByteBufferArray:(id)array;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)implConfigureBlockingWithBoolean:(BOOL)boolean;
@end

@implementation JavaNioPipeImpl_PipeSourceChannel

- (void)implCloseSelectableChannel
{
  v3 = *(&self->fd_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 close];
}

- (void)implConfigureBlockingWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  getFD = [(JavaNioPipeImpl_PipeSourceChannel *)self getFD];

  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(getFD, booleanCopy);
}

- (int)readWithJavaNioByteBuffer:(id)buffer
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 readWithJavaNioByteBuffer:buffer];
}

- (int64_t)readWithJavaNioByteBufferArray:(id)array
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 readWithJavaNioByteBufferArray:array];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioPipeImpl_PipeSourceChannel;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end