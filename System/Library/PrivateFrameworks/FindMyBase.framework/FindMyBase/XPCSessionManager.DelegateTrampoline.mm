@interface XPCSessionManager.DelegateTrampoline
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline)init;
@end

@implementation XPCSessionManager.DelegateTrampoline

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline_sessionManager);
  swift_unownedRetainStrong();
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(listener) = sub_1DF5A6910(listenerCopy, connectionCopy);

  return listener & 1;
}

- (_TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end