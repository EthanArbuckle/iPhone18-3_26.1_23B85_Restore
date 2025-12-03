@interface TapRemoteSceneController
- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithCoder:(id)coder;
- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TapRemoteSceneController

- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2440D2FB0();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
    bundleCopy = bundle;
    v7 = sub_2440D2F80();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TapRemoteSceneController();
  v9 = [(BaseRemoteSceneController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapRemoteSceneController();
  coderCopy = coder;
  v5 = [(BaseRemoteSceneController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end