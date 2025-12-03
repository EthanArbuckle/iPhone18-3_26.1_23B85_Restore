@interface JavaNioSelectionKeyImpl
- (BOOL)isConnected;
- (id)checkValid;
- (id)interestOpsWithInt:(int)int;
- (int)interestOps;
- (int)interestOpsNoCheck;
- (void)dealloc;
@end

@implementation JavaNioSelectionKeyImpl

- (int)interestOps
{
  [JavaNioSelectionKeyImpl checkValid]_0(self);
  v3 = *(&self->interestOps_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(v3 + 40);
  objc_sync_enter(v4);
  v5 = *(&self->channel_ + 1);
  objc_sync_exit(v4);
  return v5;
}

- (id)checkValid
{
  result = [self isValid];
  if ((result & 1) == 0)
  {
    v2 = new_JavaNioChannelsCancelledKeyException_init();
    objc_exception_throw(v2);
  }

  return result;
}

- (int)interestOpsNoCheck
{
  v2 = *(&self->interestOps_ + 1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  selfCopy = self;
  v4 = *(v2 + 40);
  objc_sync_enter(v4);
  LODWORD(selfCopy) = *(&selfCopy->channel_ + 1);
  objc_sync_exit(v4);
  return selfCopy;
}

- (id)interestOpsWithInt:(int)int
{
  [JavaNioSelectionKeyImpl checkValid]_0(self);
  channel = [(JavaNioSelectionKeyImpl *)self channel];
  if (!channel)
  {
    goto LABEL_5;
  }

  if ((int & ~[channel validOps]) != 0)
  {
    v9 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v9);
  }

  v6 = *(&self->interestOps_ + 1);
  if (!v6)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 40);
  objc_sync_enter(v7);
  *(&self->channel_ + 1) = int;
  objc_sync_exit(v7);
  return self;
}

- (BOOL)isConnected
{
  v3 = *(&self->super.isValid_ + 1);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v4 = *(&self->super.isValid_ + 1);
  objc_opt_class();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v4 isConnected];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSelectionKeyImpl;
  [(JavaNioChannelsSelectionKey *)&v3 dealloc];
}

@end