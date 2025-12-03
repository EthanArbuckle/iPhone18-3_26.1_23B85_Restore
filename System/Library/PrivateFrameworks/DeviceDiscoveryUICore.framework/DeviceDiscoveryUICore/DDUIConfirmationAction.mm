@interface DDUIConfirmationAction
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)init;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithCoder:(id)coder;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation DDUIConfirmationAction

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DDUIConfirmationAction();
  coderCopy = coder;
  v5 = [(DDUIConfirmationAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DDUIConfirmationAction();
  swift_unknownObjectRetain();
  v4 = [(DDUIConfirmationAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)info responder:(id)responder
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

- (_TtC21DeviceDiscoveryUICore22DDUIConfirmationAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end