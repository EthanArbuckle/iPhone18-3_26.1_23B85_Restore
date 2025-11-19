@interface IMDPersistenceServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)connection:(id)a3 registerCleanupHandlerWithID:(id)a4 usingBlock:(id)a5;
- (void)connection:(id)a3 unregisterCleanupHandlerWithID:(id)a4;
- (void)invalidate;
- (void)resume;
- (void)serviceResetting:(id)a3;
@end

@implementation IMDPersistenceServiceListener

- (void)resume
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDPersistenceServiceListener_listener);
  v3 = self;
  [v2 setDelegate_];
  [v2 resume];
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v3 selector:sel_serviceResetting_ name:@"IMDPersistenceServiceResettingNotification" object:0];
}

- (void)invalidate
{
  v2 = self;
  IMDPersistenceServiceListener.invalidate()();
}

- (void)serviceResetting:(id)a3
{
  v4 = sub_1B7CFDC70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDC60();
  v9 = self;
  sub_1B7C22370();

  (*(v5 + 8))(v8, v4);
}

- (void)connection:(id)a3 registerCleanupHandlerWithID:(id)a4 usingBlock:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_1B7C22928(v12, v8, v10, sub_1B7C2568C, v11);
}

- (void)connection:(id)a3 unregisterCleanupHandlerWithID:(id)a4
{
  v6 = sub_1B7CFEA60();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1B7C22D68(v9, v6, v8);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1B7C2514C(v7);

  return v9 & 1;
}

@end