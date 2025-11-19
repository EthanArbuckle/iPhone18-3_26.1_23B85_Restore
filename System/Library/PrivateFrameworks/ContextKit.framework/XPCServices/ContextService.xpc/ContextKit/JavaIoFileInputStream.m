@interface JavaIoFileInputStream
- (JavaIoFileInputStream)initWithNSString:(id)a3;
- (id)getChannel;
- (int64_t)skipWithLong:(int64_t)a3;
- (void)close;
- (void)dealloc;
@end

@implementation JavaIoFileInputStream

- (JavaIoFileInputStream)initWithNSString:(id)a3
{
  v4 = new_JavaIoFile_initWithNSString_(a3);
  JavaIoFileInputStream_initWithJavaIoFile_(self, v4);
  return self;
}

- (void)close
{
  guard = self->guard_;
  if (!guard)
  {
    JreThrowNullPointerException();
  }

  [(DalvikSystemCloseGuard *)guard close];
  objc_sync_enter(self);
  channel = self->channel_;
  if (channel)
  {
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)channel close];
  }

  if (self->shouldClose_)
  {
    LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_(self->fd_);
  }

  else
  {
    v5 = new_JavaIoFileDescriptor_init();
    JreStrongAssignAndConsume(&self->fd_, v5);
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  guard = self->guard_;
  if (guard)
  {
    [(DalvikSystemCloseGuard *)guard warnIfOpen];
  }

  [(JavaIoFileInputStream *)self close];

  v4.receiver = self;
  v4.super_class = JavaIoFileInputStream;
  [(JavaIoFileInputStream *)&v4 dealloc];
}

- (id)getChannel
{
  objc_sync_enter(self);
  channel = self->channel_;
  if (!channel)
  {
    v4 = JavaNioNioUtils_newFileChannelWithId_withJavaIoFileDescriptor_withInt_(self, self->fd_, 0);
    JreStrongAssign(&self->channel_, v4);
    channel = self->channel_;
  }

  objc_sync_exit(self);
  return channel;
}

- (int64_t)skipWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v11 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"byteCount < 0: ");
    v12 = new_JavaIoIOException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:a3 withInt:1];
  return a3;
}

@end