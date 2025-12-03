@interface LockdownModeServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)deviceIsSetup;
- (void)notifyRestrictionChanged:(id)changed completion:(id)completion;
- (void)setEnabledWithEnabled:(BOOL)enabled options:(id)options completion:(id)completion;
- (void)setManagedConfigurationStateWithEnabled:(BOOL)enabled completion:(id)completion;
@end

@implementation LockdownModeServer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for LockdownModeServer();
  [(LockdownModeServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001E618(connectionCopy);

  return v9 & 1;
}

- (void)setEnabledWithEnabled:(BOOL)enabled options:(id)options completion:(id)completion
{
  enabledCopy = enabled;
  v8 = _Block_copy(completion);
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_10001EFC8(enabledCopy, options, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)notifyRestrictionChanged:(id)changed completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100020458(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)deviceIsSetup
{
  selfCopy = self;
  sub_100017F40();
}

- (void)setManagedConfigurationStateWithEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_100021C50(enabledCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end