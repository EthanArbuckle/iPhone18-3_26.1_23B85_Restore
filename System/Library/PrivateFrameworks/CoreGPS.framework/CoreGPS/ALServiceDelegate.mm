@interface ALServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC6GPSXPC17ALServiceDelegate)init;
- (void)onData:(id)a3;
@end

@implementation ALServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (void)onData:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  (*((*MEMORY[0x277D85000] & v5->super.isa) + 0x68))(v11);
  v9 = v12;
  v10 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v10 + 24))(v6, v8, v9, v10);

  outlined consume of Data._Representation(v6, v8);
  __swift_destroy_boxed_opaque_existential_0(v11);
}

- (_TtC6GPSXPC17ALServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end