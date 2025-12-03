@interface JavaNioPipeImpl_PipeSinkChannel
- (int)writeWithJavaNioByteBuffer:(id)buffer;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)implConfigureBlockingWithBoolean:(BOOL)boolean;
@end

@implementation JavaNioPipeImpl_PipeSinkChannel

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
  getFD = [(JavaNioPipeImpl_PipeSinkChannel *)self getFD];

  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(getFD, booleanCopy);
}

- (int)writeWithJavaNioByteBuffer:(id)buffer
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 writeWithJavaNioByteBuffer:buffer];
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 writeWithJavaNioByteBufferArray:array];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioPipeImpl_PipeSinkChannel;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end