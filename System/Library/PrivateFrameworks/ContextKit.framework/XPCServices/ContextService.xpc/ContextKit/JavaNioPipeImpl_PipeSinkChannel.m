@interface JavaNioPipeImpl_PipeSinkChannel
- (int)writeWithJavaNioByteBuffer:(id)a3;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)implConfigureBlockingWithBoolean:(BOOL)a3;
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

- (void)implConfigureBlockingWithBoolean:(BOOL)a3
{
  v3 = a3;
  v4 = [(JavaNioPipeImpl_PipeSinkChannel *)self getFD];

  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(v4, v3);
}

- (int)writeWithJavaNioByteBuffer:(id)a3
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 writeWithJavaNioByteBuffer:a3];
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)a3
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 writeWithJavaNioByteBufferArray:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioPipeImpl_PipeSinkChannel;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end