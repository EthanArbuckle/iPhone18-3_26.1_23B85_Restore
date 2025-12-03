@interface IdentityCredentialWebPresentmentClientViewControllerAction
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)init;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithCoder:(id)coder;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithXPCDictionary:(id)dictionary;
- (void)performActionForSceneController:(id)controller;
@end

@implementation IdentityCredentialWebPresentmentClientViewControllerAction

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = [(IdentityCredentialWebPresentmentClientViewControllerAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(IdentityCredentialWebPresentmentClientViewControllerAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)performActionForSceneController:(id)controller
{
  sub_245910D34();
  v7[2] = self;
  v7[3] = controller;
  controllerCopy = controller;
  selfCopy = self;
  sub_2458092C8(sub_2458EE0CC, v7);
}

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)info responder:(id)responder
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

- (_TtC9CoreIDVUI58IdentityCredentialWebPresentmentClientViewControllerAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end