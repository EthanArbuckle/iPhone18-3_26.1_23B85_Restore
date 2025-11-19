@interface AccessorySystemEvent
- (_TtC11DockKitCore20AccessorySystemEvent)init;
- (_TtC11DockKitCore20AccessorySystemEvent)initWithCoder:(id)a3;
- (unsigned)header;
- (unsigned)payload;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AccessorySystemEvent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AccessorySystemEvent.encode(with:)(v4);
}

- (_TtC11DockKitCore20AccessorySystemEvent)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_224530674();

  return v4;
}

- (unsigned)header
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header + 1))
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__header);
  }
}

- (unsigned)payload
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload + 4))
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore20AccessorySystemEvent__payload);
  }
}

- (_TtC11DockKitCore20AccessorySystemEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end