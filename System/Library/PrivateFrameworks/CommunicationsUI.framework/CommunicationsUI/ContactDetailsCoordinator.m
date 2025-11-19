@interface ContactDetailsCoordinator
- (_TtC16CommunicationsUI25ContactDetailsCoordinator)init;
- (void)contactStoreDidChangeWithNotification:(id)a3;
@end

@implementation ContactDetailsCoordinator

- (void)contactStoreDidChangeWithNotification:(id)a3
{
  v4 = sub_1C2E71644();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E71634();
  v8 = self;
  sub_1C2E2CAF4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC16CommunicationsUI25ContactDetailsCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end