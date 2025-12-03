@interface MFConditionLock
- (BOOL)lockBeforeDate:(id)date;
- (BOOL)lockWhenCondition:(int64_t)condition beforeDate:(id)date;
- (MFConditionLock)initWithName:(id)name condition:(int64_t)condition andDelegate:(id)delegate;
- (id)description;
- (void)dealloc;
- (void)unlock;
- (void)unlockWithCondition:(int64_t)condition;
@end

@implementation MFConditionLock

- (void)unlock
{
  _mfUnregisterLockOnThisThread(self);
  v3.receiver = self;
  v3.super_class = MFConditionLock;
  [(NSConditionLock *)&v3 unlock];
}

- (MFConditionLock)initWithName:(id)name condition:(int64_t)condition andDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = MFConditionLock;
  v7 = [(NSConditionLock *)&v9 initWithCondition:condition];
  if (v7)
  {
    v7->_name = [name copy];
    v7->_delegate = delegate;
  }

  return v7;
}

- (BOOL)lockBeforeDate:(id)date
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v8.receiver = self;
  v8.super_class = MFConditionLock;
  v6 = [(NSConditionLock *)&v8 lockBeforeDate:date];
  if (v6)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v6;
}

- (BOOL)lockWhenCondition:(int64_t)condition beforeDate:(id)date
{
  delegate = self->_delegate;
  if (delegate)
  {
    [delegate _mf_checkToAllowLock:self];
  }

  v10.receiver = self;
  v10.super_class = MFConditionLock;
  v8 = [(NSConditionLock *)&v10 lockWhenCondition:condition beforeDate:date];
  if (v8)
  {
    _mfRegisterLockOnThisThread(self);
  }

  return v8;
}

- (void)unlockWithCondition:(int64_t)condition
{
  _mfUnregisterLockOnThisThread(self);
  v5.receiver = self;
  v5.super_class = MFConditionLock;
  [(NSConditionLock *)&v5 unlockWithCondition:condition];
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