@interface JSNotifyObject
- (_TtC9JetEngine14JSNotifyObject)init;
- (void)post:(id)post;
- (void)register:(id)register :(id)a4;
- (void)unregister:(id)unregister :(id)a4;
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

- (void)register:(id)register :(id)a4
{
  registerCopy = register;
  v7 = a4;
  selfCopy = self;
  sub_1AB3C23E8(registerCopy, v7);
}

- (void)unregister:(id)unregister :(id)a4
{
  unregisterCopy = unregister;
  v7 = a4;
  selfCopy = self;
  sub_1AB3C29F0(unregisterCopy, v7);
}

- (void)post:(id)post
{
  postCopy = post;
  selfCopy = self;
  sub_1AB3C1D64(postCopy);
}

@end