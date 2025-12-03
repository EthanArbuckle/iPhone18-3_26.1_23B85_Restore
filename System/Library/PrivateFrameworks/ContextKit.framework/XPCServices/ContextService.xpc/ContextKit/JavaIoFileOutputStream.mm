@interface JavaIoFileOutputStream
- (JavaIoFileOutputStream)initWithNSString:(id)string withBoolean:(BOOL)boolean;
- (id)getChannel;
- (void)close;
- (void)dealloc;
@end

@implementation JavaIoFileOutputStream

- (JavaIoFileOutputStream)initWithNSString:(id)string withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v6 = new_JavaIoFile_initWithNSString_(string);
  JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(self, v6, booleanCopy);
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

  [(JavaIoFileOutputStream *)self close];

  v4.receiver = self;
  v4.super_class = JavaIoFileOutputStream;
  [(JavaIoFileOutputStream *)&v4 dealloc];
}

- (id)getChannel
{
  objc_sync_enter(self);
  channel = self->channel_;
  if (!channel)
  {
    v4 = JavaNioNioUtils_newFileChannelWithId_withJavaIoFileDescriptor_withInt_(self, self->fd_, self->mode_);
    JreStrongAssign(&self->channel_, v4);
    channel = self->channel_;
  }

  objc_sync_exit(self);
  return channel;
}

@end