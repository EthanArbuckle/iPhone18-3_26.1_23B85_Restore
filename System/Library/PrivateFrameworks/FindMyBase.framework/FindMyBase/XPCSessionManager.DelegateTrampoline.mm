@interface XPCSessionManager.DelegateTrampoline
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline)init;
@end

@implementation XPCSessionManager.DelegateTrampoline

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline_sessionManager);
  swift_unownedRetainStrong();
  v8 = a3;
  v9 = a4;
  v10 = self;
  LOBYTE(a3) = sub_1DF5A6910(v8, v9);

  return a3 & 1;
}

- (_TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end