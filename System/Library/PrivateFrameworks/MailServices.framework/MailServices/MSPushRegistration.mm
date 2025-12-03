@interface MSPushRegistration
- (MSPushRegistration)init;
- (void)registerForPush:(id)push;
@end

@implementation MSPushRegistration

- (MSPushRegistration)init
{
  v10.receiver = self;
  v10.super_class = MSPushRegistration;
  v2 = [(MSMailDefaultService *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier copy];
    bundleIdentifier = v3->_bundleIdentifier;
    v3->_bundleIdentifier = v6;

    v8 = v3;
  }

  return v3;
}

- (void)registerForPush:(id)push
{
  pushCopy = push;
  if (!self->_bundleIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"_bundleIdentifier"}];
  }

  if (!self->_accountIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"_accountIdentifier"}];
  }

  notificationNamePrefix = self->_notificationNamePrefix;
  if (!notificationNamePrefix)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"_notificationNamePrefix"}];

    notificationNamePrefix = self->_notificationNamePrefix;
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self->_bundleIdentifier, @"bundle", self->_accountIdentifier, @"account-id", notificationNamePrefix, @"prefix", self->_mailboxNames, @"mailboxes", 0}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__MSPushRegistration_registerForPush___block_invoke;
  v12[3] = &unk_1E855E998;
  v8 = pushCopy;
  v13 = v8;
  [(MSService *)self _callServicesMethod:@"PushRegistration" arguments:v7 callback:v12];
}

void __38__MSPushRegistration_registerForPush___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 objectForKey:@"success"];
  [v6 BOOLValue];

  (*(*(a1 + 32) + 16))();
}

@end