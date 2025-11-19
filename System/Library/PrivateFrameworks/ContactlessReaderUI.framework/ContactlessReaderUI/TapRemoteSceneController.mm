@interface TapRemoteSceneController
- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithCoder:(id)a3;
- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TapRemoteSceneController

- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2440D2FB0();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
    v6 = a4;
    v7 = sub_2440D2F80();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TapRemoteSceneController();
  v9 = [(BaseRemoteSceneController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC19ContactlessReaderUI24TapRemoteSceneController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_issuerPIN) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUI24TapRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapRemoteSceneController();
  v4 = a3;
  v5 = [(BaseRemoteSceneController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end