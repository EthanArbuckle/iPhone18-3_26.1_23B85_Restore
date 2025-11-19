@interface MSPushRegistration
- (MSPushRegistration)init;
- (void)registerForPush:(id)a3;
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
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 copy];
    bundleIdentifier = v3->_bundleIdentifier;
    v3->_bundleIdentifier = v6;

    v8 = v3;
  }

  return v3;
}

- (void)registerForPush:(id)a3
{
  v5 = a3;
  if (!self->_bundleIdentifier)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"_bundleIdentifier"}];
  }

  if (!self->_accountIdentifier)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"_accountIdentifier"}];
  }

  notificationNamePrefix = self->_notificationNamePrefix;
  if (!notificationNamePrefix)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSPushRegistration.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"_notificationNamePrefix"}];

    notificationNamePrefix = self->_notificationNamePrefix;
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self->_bundleIdentifier, @"bundle", self->_accountIdentifier, @"account-id", notificationNamePrefix, @"prefix", self->_mailboxNames, @"mailboxes", 0}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__MSPushRegistration_registerForPush___block_invoke;
  v12[3] = &unk_1E855E998;
  v8 = v5;
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