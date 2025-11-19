@interface DDUIConfirmationAction
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)init;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithCoder:(id)a3;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithXPCDictionary:(id)a3;
@end

@implementation DDUIConfirmationAction

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DDUIConfirmationAction();
  v4 = a3;
  v5 = [(DDUIConfirmationAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DDUIConfirmationAction();
  swift_unknownObjectRetain();
  v4 = [(DDUIConfirmationAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end