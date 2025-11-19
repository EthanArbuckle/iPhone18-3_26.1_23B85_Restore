@interface JSNotifyObject
- (_TtC9JetEngine14JSNotifyObject)init;
- (void)post:(id)a3;
- (void)register:(id)a3 :(id)a4;
- (void)unregister:(id)a3 :(id)a4;
@end

@implementation JSNotifyObject

- (_TtC9JetEngine14JSNotifyObject)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9JetEngine14JSNotifyObject_observersByName) = sub_1AB046CA4(MEMORY[0x1E69E7CC0]);
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(JSNotifyObject *)&v5 init];
}

- (void)register:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AB3C23E8(v6, v7);
}

- (void)unregister:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AB3C29F0(v6, v7);
}

- (void)post:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AB3C1D64(v4);
}

@end