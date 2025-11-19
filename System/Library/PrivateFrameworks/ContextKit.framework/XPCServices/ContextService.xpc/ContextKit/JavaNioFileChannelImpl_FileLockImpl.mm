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

  v3 = [(JavaNioChannelsFileLock *)self channel];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 isOpen];
}

- (void)release__
{
  v3 = [(JavaNioChannelsFileLock *)self channel];
  if (!v3)
  {
    goto LABEL_8;
  }

  if (([v3 isOpen] & 1) == 0)
  {
    v5 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v5);
  }

  if (!*(&self->super.shared_ + 1))
  {
    v4 = [(JavaNioChannelsFileLock *)self channel];
    objc_opt_class();
    if (v4)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [v4 release__WithJavaNioChannelsFileLock:self];
      *(&self->super.shared_ + 1) = 1;
      return;
    }

LABEL_8:
    JreThrowNullPointerException();
  }
}

@end