@interface LNAppNotificationEventRegistrationProvider
- (LNAppNotificationEventRegistrationProvider)init;
- (void)dealloc;
- (void)registerForAppNotificationEventsOfBundleIdentifier:(id)identifier entityType:(id)type completion:(id)completion;
- (void)unregisterForAppNotificationEventsOfBundleIdentifier:(id)identifier entityType:(id)type completion:(id)completion;
@end

@implementation LNAppNotificationEventRegistrationProvider

- (void)unregisterForAppNotificationEventsOfBundleIdentifier:(id)identifier entityType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  typeCopy = type;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_19763D000, "appintents:Stop observation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__LNAppNotificationEventRegistrationProvider_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke;
  v15[3] = &unk_1E74B12A0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = typeCopy;
  v18 = completionCopy;
  v12 = typeCopy;
  v13 = identifierCopy;
  v14 = completionCopy;
  os_activity_apply(v11, v15);
}

void __121__LNAppNotificationEventRegistrationProvider_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __121__LNAppNotificationEventRegistrationProvider_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 unregisterForAppNotificationEventsOfBundleIdentifier:*(a1 + 40) entityType:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)registerForAppNotificationEventsOfBundleIdentifier:(id)identifier entityType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  typeCopy = type;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_19763D000, "appintents:Start observation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __119__LNAppNotificationEventRegistrationProvider_registerForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke;
  v15[3] = &unk_1E74B12A0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = typeCopy;
  v18 = completionCopy;
  v12 = typeCopy;
  v13 = identifierCopy;
  v14 = completionCopy;
  os_activity_apply(v11, v15);
}

void __119__LNAppNotificationEventRegistrationProvider_registerForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __119__LNAppNotificationEventRegistrationProvider_registerForAppNotificationEventsOfBundleIdentifier_entityType_completion___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 registerForAppNotificationEventsOfBundleIdentifier:*(a1 + 40) entityType:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNAppNotificationEventRegistrationProvider;
  [(LNAppNotificationEventRegistrationProvider *)&v3 dealloc];
}

- (LNAppNotificationEventRegistrationProvider)init
{
  v7.receiver = self;
  v7.super_class = LNAppNotificationEventRegistrationProvider;
  v2 = [(LNAppNotificationEventRegistrationProvider *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.observationStatusRegistry" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = LNDaemonObservationStatusRegistryXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

@end