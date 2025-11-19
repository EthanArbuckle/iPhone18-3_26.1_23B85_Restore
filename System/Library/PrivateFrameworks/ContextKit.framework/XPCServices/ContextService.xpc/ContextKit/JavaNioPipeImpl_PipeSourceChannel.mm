@interface JavaNioPipeImpl_PipeSourceChannel
- (int)readWithJavaNioByteBuffer:(id)a3;
- (int64_t)readWithJavaNioByteBufferArray:(id)a3;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)implConfigureBlockingWithBoolean:(BOOL)a3;
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

- (void)implConfigureBlockingWithBoolean:(BOOL)a3
{
  v3 = a3;
  v4 = [(JavaNioPipeImpl_PipeSourceChannel *)self getFD];

  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(v4, v3);
}

- (int)readWithJavaNioByteBuffer:(id)a3
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 readWithJavaNioByteBuffer:a3];
}

- (int64_t)readWithJavaNioByteBufferArray:(id)a3
{
  v4 = *(&self->fd_ + 7);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 readWithJavaNioByteBufferArray:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioPipeImpl_PipeSourceChannel;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end