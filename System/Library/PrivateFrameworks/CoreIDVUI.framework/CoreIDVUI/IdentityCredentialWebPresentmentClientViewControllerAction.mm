@interface IdentityCredentialWebPresentmentClientViewControllerAction
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)init;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithCoder:(id)a3;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithXPCDictionary:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation IdentityCredentialWebPresentmentClientViewControllerAction

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = [(IdentityCredentialWebPresentmentClientViewControllerAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(IdentityCredentialWebPresentmentClientViewControllerAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)performActionForSceneController:(id)a3
{
  sub_245910D34();
  v7[2] = self;
  v7[3] = a3;
  v5 = a3;
  v6 = self;
  sub_2458092C8(sub_2458EE0CC, v7);
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end