@interface LockdownModeServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
- (void)deviceIsSetup;
- (void)notifyRestrictionChanged:(id)a3 completion:(id)a4;
- (void)setEnabledWithEnabled:(BOOL)a3 options:(id)a4 completion:(id)a5;
- (void)setManagedConfigurationStateWithEnabled:(BOOL)a3 completion:(id)a4;
@end

@implementation LockdownModeServer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for LockdownModeServer();
  [(LockdownModeServer *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001E618(v7);

  return v9 & 1;
}

- (void)setEnabledWithEnabled:(BOOL)a3 options:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = _Block_copy(a5);
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v8);
  v9 = self;
  sub_10001EFC8(v6, a4, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)notifyRestrictionChanged:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100020458(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)deviceIsSetup
{
  v2 = self;
  sub_100017F40();
}

- (void)setManagedConfigurationStateWithEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_100021C50(v4, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end