@interface MFConditionLock
- (BOOL)lockBeforeDate:(id)a3;
- (BOOL)lockWhenCondition:(int64_t)a3 beforeDate:(id)a4;
- (MFConditionLock)initWithName:(id)a3 condition:(int64_t)a4 andDelegate:(id)a5;
- (id)description;
- (void)dealloc;
- (void)unlock;
- (void)unlockWithCondition:(int64_t)a3;
@end

@implementation MFConditionLock

- (void)unlock
{
  _mfUnregisterLockOnThisThread(self);
  v3.receiver = self;
  v3.super_class = MFConditionLock;
  [(NSConditionLock *)&v3 unlock];
}

- (MFConditionLock)initWithName:(id)a3 condition:(int64_t)a4 andDelegate:(id)a5
{
  v9.receiver = self;
  v9.super_class = MFConditionLock;
  v7 = [(NSConditionLock *)&v9 initWithCondition:a4];
  if (v7)
  {
    v7->_name = [a3 copy];
    v7->_delegate = a5;
  }

  return v7;
}

- (BOOL)lockBeforeDate:(id)a3
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v8.receiver = self;
  v8.super_class = MFConditionLock;
  v6 = [(NSConditionLock *)&v8 lockBeforeDate:a3];
  if (v6)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v6;
}

- (BOOL)lockWhenCondition:(int64_t)a3 beforeDate:(id)a4
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v10.receiver = self;
  v10.super_class = MFConditionLock;
  v8 = [(NSConditionLock *)&v10 lockWhenCondition:a3 beforeDate:a4];
  if (v8)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v8;
}

- (void)unlockWithCondition:(int64_t)a3
{
  _mfUnregisterLockOnThisThread(self);
  v5.receiver = self;
  v5.super_class = MFConditionLock;
  [(NSConditionLock *)&v5 unlockWithCondition:a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFConditionLock;
  v4 = [(NSConditionLock *)&v7 description];
  delegate = self->_delegate;
  return [v3 stringWithFormat:@"%@ %@ Delegate: <%@: %p>", v4, self->_name, objc_opt_class(), delegate];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFConditionLock;
  [(NSConditionLock *)&v3 dealloc];
}

@end