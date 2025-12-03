@interface PDExpressPassManager
- (id)createCurrentNotificationRegistrationState;
- (void)accessTerminalDidLockForType:(int64_t)type forAppletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier withContent:(id)content;
- (void)accessTerminalDidUnlockForType:(int64_t)type forAppletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier withContent:(id)content;
- (void)assertionManager:(id)manager didAcquireAssertion:(id)assertion;
- (void)assertionManager:(id)manager didInvalidateAssertion:(id)assertion;
- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)receivedSecureExpressTransactionEvent:(id)event;
- (void)secureElementRadioStateChanged;
@end

@implementation PDExpressPassManager

- (void)secureElementRadioStateChanged
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005C62A8;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)accessTerminalDidLockForType:(int64_t)type forAppletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier withContent:(id)content
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  contentCopy = content;
  v13 = PDOSTransactionCreate("PDExpressPassManager");
  v14 = PDExpressTransactionQueue();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001839E0;
  v19[3] = &unk_100849DD0;
  v20 = v13;
  selfCopy = self;
  v22 = identifierCopy;
  v23 = keyIdentifierCopy;
  v24 = contentCopy;
  typeCopy = type;
  v15 = contentCopy;
  v16 = keyIdentifierCopy;
  v17 = identifierCopy;
  v18 = v13;
  dispatch_async(v14, v19);
}

- (void)accessTerminalDidUnlockForType:(int64_t)type forAppletIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier withContent:(id)content
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  contentCopy = content;
  v13 = PDOSTransactionCreate("PDExpressPassManager");
  v14 = PDExpressTransactionQueue();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100183B24;
  v19[3] = &unk_100849DD0;
  v20 = v13;
  selfCopy = self;
  v22 = identifierCopy;
  v23 = keyIdentifierCopy;
  v24 = contentCopy;
  typeCopy = type;
  v15 = contentCopy;
  v16 = keyIdentifierCopy;
  v17 = identifierCopy;
  v18 = v13;
  dispatch_async(v14, v19);
}

- (void)receivedSecureExpressTransactionEvent:(id)event
{
  eventCopy = event;
  v5 = PDOSTransactionCreate("PDExpressPassManager");
  v6 = PDExpressTransactionQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100183CB0;
  block[3] = &unk_10083C4C0;
  v10 = v5;
  selfCopy = self;
  v12 = eventCopy;
  v7 = eventCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  v4 = atomic_load(&self->_biometricsEnabled);
  if ((v4 & 1) == 0)
  {
    sub_1005C5F30(self, 0);
  }
}

- (id)createCurrentNotificationRegistrationState
{
  if (!PKNearFieldRadioIsAvailable())
  {
    return 0;
  }

  v3 = objc_alloc_init(PDNotificationStreamRegistrationState);
  v4 = objc_alloc_init(NSMutableSet);
  [v4 addObject:PKDarwinNotificationEventLostModeStateChanged];
  [v4 addObject:@"com.apple.BiometricKit.enrollmentChanged"];
  v5 = atomic_load(&self->_setup);
  if (v5 & 1) == 0 || (v6 = atomic_load(&self->_biometricsEnrolled), (v6))
  {
    [v4 addObject:@"com.apple.BiometricKit.expressModeStateChanged"];
  }

  v7 = atomic_load(&self->_setup);
  if ((v7 & 1) == 0 || (v8 = atomic_load(&self->_biometricsEnabled), (v8 & 1) == 0))
  {
    [v4 addObject:@"com.apple.mobile.keybagd.lock_status"];
    [v4 addObject:@"com.apple.mobile.keybagd.passcode_threshold"];
    [v4 addObject:@"com.apple.springboard.lock-with-force-biolockout"];
  }

  [(PDNotificationStreamRegistrationState *)v3 setNotificationNames:v4 forStream:0];

  return v3;
}

- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream
{
  nameCopy = name;
  accessQueue = self->_accessQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100185918;
  v9[3] = &unk_10083C420;
  v10 = nameCopy;
  selfCopy = self;
  v8 = nameCopy;
  dispatch_async(accessQueue, v9);
}

- (void)assertionManager:(id)manager didAcquireAssertion:(id)assertion
{
  type = [assertion type];
  if (type == 5 || !type)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C6440;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

- (void)assertionManager:(id)manager didInvalidateAssertion:(id)assertion
{
  type = [assertion type];
  if (type == 5)
  {
    goto LABEL_4;
  }

  if (type == 1)
  {
    if (![(PDAssertionManager *)self->_assertionManager hasAssertionsOfType:1])
    {

      [PDExpressPassManager secureElementExpressConfigurationNeedsUpdate]_0(self);
    }
  }

  else if (!type)
  {
LABEL_4:
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C6444;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

@end