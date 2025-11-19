@interface MFLock
- (BOOL)lockBeforeDate:(id)a3;
- (BOOL)tryLock;
- (MFLock)initWithName:(id)a3 andDelegate:(id)a4;
- (id)description;
- (void)dealloc;
- (void)lock;
- (void)unlock;
@end

@implementation MFLock

- (void)unlock
{
  _mfUnregisterLockOnThisThread(self);
  v3.receiver = self;
  v3.super_class = MFLock;
  [(MFLock *)&v3 unlock];
}

- (void)lock
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v4.receiver = self;
  v4.super_class = MFLock;
  [(MFLock *)&v4 lock];
  _mfRegisterLockOnThisThread(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFLock;
  [(MFLock *)&v3 dealloc];
}

- (MFLock)initWithName:(id)a3 andDelegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = MFLock;
  v6 = [(MFLock *)&v8 init];
  if (v6)
  {
    v6->_name = [a3 copy];
    v6->_delegate = a4;
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
  v6.super_class = MFLock;
  v4 = [(MFLock *)&v6 tryLock];
  if (v4)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v4;
}

- (BOOL)lockBeforeDate:(id)a3
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v8.receiver = self;
  v8.super_class = MFLock;
  v6 = [(MFLock *)&v8 lockBeforeDate:a3];
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
  v7.super_class = MFLock;
  v4 = [(MFLock *)&v7 description];
  delegate = self->_delegate;
  return [v3 stringWithFormat:@"%@ %@ Delegate: <%@: %p>", v4, self->_name, objc_opt_class(), delegate];
}

@end