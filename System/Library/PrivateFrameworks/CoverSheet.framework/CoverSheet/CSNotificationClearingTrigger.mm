@interface CSNotificationClearingTrigger
- (BOOL)_shouldArm;
- (BOOL)_shouldFire;
- (BOOL)_wouldArmForDiscreteParameters;
- (BOOL)_wouldArmIfNotForDND;
- (BOOL)_wouldArmIfNotForDNDAndNotificationContent;
- (CSNotificationClearingTrigger)initWithDelegate:(id)delegate;
- (CSNotificationClearingTriggerDelegate)delegate;
- (void)_clearIfNeeded;
- (void)_updateTriggerAndClearIfNeeded;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setDidDisableCarDNDUntilEndOfDrive:(BOOL)drive;
- (void)setHadNotificationContentAtDisappearance:(BOOL)disappearance;
- (void)setScreenInactive:(BOOL)inactive;
- (void)setScreenOff:(BOOL)off;
- (void)setUiLocked:(BOOL)locked;
@end

@implementation CSNotificationClearingTrigger

- (void)_updateTriggerAndClearIfNeeded
{
  if ([(CSNotificationClearingTrigger *)self _shouldArm])
  {
    [(CSNotificationClearingTrigger *)self setTriggerArmed:1];
  }

  else if ([(CSNotificationClearingTrigger *)self _wouldArmIfNotForDND]|| [(CSNotificationClearingTrigger *)self _wouldArmIfNotForDNDAndNotificationContent])
  {
    self->_didDisableCarDNDUntilEndOfDrive = 0;
  }

  [(CSNotificationClearingTrigger *)self _clearIfNeeded];
}

- (BOOL)_shouldArm
{
  _wouldArmForDiscreteParameters = [(CSNotificationClearingTrigger *)self _wouldArmForDiscreteParameters];
  if (_wouldArmForDiscreteParameters)
  {
    LOBYTE(_wouldArmForDiscreteParameters) = ![(CSNotificationClearingTrigger *)self didDisableCarDNDUntilEndOfDrive];
  }

  return _wouldArmForDiscreteParameters;
}

- (BOOL)_wouldArmForDiscreteParameters
{
  if ([(CSNotificationClearingTrigger *)self screenOff])
  {
    LOBYTE(authenticated) = 0;
  }

  else
  {
    authenticated = [(CSNotificationClearingTrigger *)self authenticated];
    if (authenticated)
    {
      LOBYTE(authenticated) = ![(CSNotificationClearingTrigger *)self uiLocked];
    }
  }

  return authenticated;
}

- (BOOL)_wouldArmIfNotForDND
{
  if (![(CSNotificationClearingTrigger *)self _wouldArmForDiscreteParameters]|| ![(CSNotificationClearingTrigger *)self hadNotificationContentAtDisappearance])
  {
    return 0;
  }

  return [(CSNotificationClearingTrigger *)self didDisableCarDNDUntilEndOfDrive];
}

- (BOOL)_wouldArmIfNotForDNDAndNotificationContent
{
  if (![(CSNotificationClearingTrigger *)self _wouldArmForDiscreteParameters]|| [(CSNotificationClearingTrigger *)self hadNotificationContentAtDisappearance])
  {
    return 0;
  }

  return [(CSNotificationClearingTrigger *)self didDisableCarDNDUntilEndOfDrive];
}

- (void)_clearIfNeeded
{
  if ([(CSNotificationClearingTrigger *)self _shouldFire])
  {
    delegate = [(CSNotificationClearingTrigger *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate coverSheetNotificationClearingTriggerDidFire:self];
    }

    [(CSNotificationClearingTrigger *)self _reset];
  }
}

- (BOOL)_shouldFire
{
  screenInactive = [(CSNotificationClearingTrigger *)self uiLocked]|| [(CSNotificationClearingTrigger *)self screenInactive];
  if (![(CSNotificationClearingTrigger *)self screenOff]|| !screenInactive)
  {
    return 0;
  }

  return [(CSNotificationClearingTrigger *)self triggerArmed];
}

- (CSNotificationClearingTrigger)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CSNotificationClearingTrigger;
  v5 = [(CSNotificationClearingTrigger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_authenticated = 0;
    v6->_uiLocked = 1;
  }

  return v6;
}

- (void)setAuthenticated:(BOOL)authenticated
{
  if (self->_authenticated != authenticated)
  {
    self->_authenticated = authenticated;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (void)setDidDisableCarDNDUntilEndOfDrive:(BOOL)drive
{
  if (self->_didDisableCarDNDUntilEndOfDrive != drive)
  {
    self->_didDisableCarDNDUntilEndOfDrive = drive;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (void)setHadNotificationContentAtDisappearance:(BOOL)disappearance
{
  if (self->_hadNotificationContentAtDisappearance != disappearance)
  {
    self->_hadNotificationContentAtDisappearance = disappearance;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (void)setUiLocked:(BOOL)locked
{
  if (self->_uiLocked != locked)
  {
    self->_uiLocked = locked;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (void)setScreenOff:(BOOL)off
{
  if (self->_screenOff != off)
  {
    self->_screenOff = off;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (void)setScreenInactive:(BOOL)inactive
{
  if (self->_screenInactive != inactive)
  {
    self->_screenInactive = inactive;
    [(CSNotificationClearingTrigger *)self _updateTriggerAndClearIfNeeded];
  }
}

- (CSNotificationClearingTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end