@interface IMDPersistenceServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)connection:(id)connection registerCleanupHandlerWithID:(id)d usingBlock:(id)block;
- (void)connection:(id)connection unregisterCleanupHandlerWithID:(id)d;
- (void)invalidate;
- (void)resume;
- (void)serviceResetting:(id)resetting;
@end

@implementation IMDPersistenceServiceListener

- (void)resume
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDPersistenceServiceListener_listener);
  selfCopy = self;
  [v2 setDelegate_];
  [v2 resume];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_serviceResetting_ name:@"IMDPersistenceServiceResettingNotification" object:0];
}

- (void)invalidate
{
  selfCopy = self;
  IMDPersistenceServiceListener.invalidate()();
}

- (void)serviceResetting:(id)resetting
{
  v4 = sub_1B7CFDC70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDC60();
  selfCopy = self;
  sub_1B7C22370();

  (*(v5 + 8))(v8, v4);
}

- (void)connection:(id)connection registerCleanupHandlerWithID:(id)d usingBlock:(id)block
{
  v7 = _Block_copy(block);
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  connectionCopy = connection;
  selfCopy = self;
  sub_1B7C22928(connectionCopy, v8, v10, sub_1B7C2568C, v11);
}

- (void)connection:(id)connection unregisterCleanupHandlerWithID:(id)d
{
  v6 = sub_1B7CFEA60();
  v8 = v7;
  connectionCopy = connection;
  selfCopy = self;
  sub_1B7C22D68(connectionCopy, v6, v8);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1B7C2514C(connectionCopy);

  return v9 & 1;
}

@end