@interface JavaNioFileChannelImpl_FileLockImpl
- (BOOL)isValid;
- (void)release__;
@end

@implementation JavaNioFileChannelImpl_FileLockImpl

- (BOOL)isValid
{
  if (*(&self->super.shared_ + 1))
  {
    return 0;
  }

  channel = [(JavaNioChannelsFileLock *)self channel];
  if (!channel)
  {
    JreThrowNullPointerException();
  }

  return [channel isOpen];
}

- (void)release__
{
  channel = [(JavaNioChannelsFileLock *)self channel];
  if (!channel)
  {
    goto LABEL_8;
  }

  if (([channel isOpen] & 1) == 0)
  {
    v5 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v5);
  }

  if (!*(&self->super.shared_ + 1))
  {
    channel2 = [(JavaNioChannelsFileLock *)self channel];
    objc_opt_class();
    if (channel2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [channel2 release__WithJavaNioChannelsFileLock:self];
      *(&self->super.shared_ + 1) = 1;
      return;
    }

LABEL_8:
    JreThrowNullPointerException();
  }
}

@end