@interface MFRecursiveLock
- (BOOL)lockBeforeDate:(id)date;
- (BOOL)tryLock;
- (MFRecursiveLock)initWithName:(id)name andDelegate:(id)delegate;
- (id)description;
- (void)dealloc;
- (void)lock;
- (void)unlock;
@end

@implementation MFRecursiveLock

- (void)lock
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v4.receiver = self;
  v4.super_class = MFRecursiveLock;
  [(MFRecursiveLock *)&v4 lock];
  _mfRegisterLockOnThisThread(self);
}

- (void)unlock
{
  _mfUnregisterLockOnThisThread(self);
  v3.receiver = self;
  v3.super_class = MFRecursiveLock;
  [(MFRecursiveLock *)&v3 unlock];
}

- (MFRecursiveLock)initWithName:(id)name andDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = MFRecursiveLock;
  v6 = [(MFRecursiveLock *)&v8 init];
  if (v6)
  {
    v6->_name = [name copy];
    v6->_delegate = delegate;
  }

  return v6;
}

- (BOOL)tryLock
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v6.receiver = self;
  v6.super_class = MFRecursiveLock;
  tryLock = [(MFRecursiveLock *)&v6 tryLock];
  if (tryLock)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return tryLock;
}

- (BOOL)lockBeforeDate:(id)date
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v8.receiver = self;
  v8.super_class = MFRecursiveLock;
  v6 = [(MFRecursiveLock *)&v8 lockBeforeDate:date];
  if (v6)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFRecursiveLock;
  v4 = [(MFRecursiveLock *)&v7 description];
  delegate = self->_delegate;
  return [v3 stringWithFormat:@"%@ %@ Delegate: <%@: %p>", v4, self->_name, objc_opt_class(), delegate];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFRecursiveLock;
  [(MFRecursiveLock *)&v3 dealloc];
}

@end