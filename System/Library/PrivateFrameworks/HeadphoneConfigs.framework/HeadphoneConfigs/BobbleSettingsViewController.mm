@interface BobbleSettingsViewController
+ (BOOL)bobbleSupported:(id)a3;
+ (NSArray)bobbleMainSepcifier;
+ (id)headGestureOnInput:(id)a3;
- (HPMHeadphoneDevice)headphoneDevice;
- (_TtC16HeadphoneConfigs28BobbleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)acceptReplyPlayPauseStringMapping;
- (id)declineDismissSkipStringMapping;
- (id)getVoiceEnvironment:(id)a3;
- (id)headGesturesEnabled;
- (id)specifiers;
- (void)presentBobbleTutorials;
- (void)setHeadGesturesEnabledWithEnabled:(id)a3;
- (void)setHeadphoneDevice:(id)a3;
@end

@implementation BobbleSettingsViewController

- (void)presentBobbleTutorials
{
  v2 = self;
  sub_2511E572C();
}

- (HPMHeadphoneDevice)headphoneDevice
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setHeadphoneDevice:(id)a3
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC16HeadphoneConfigs28BobbleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_25121179C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return BobbleSettingsViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (id)specifiers
{
  v2 = self;
  v3 = BobbleSettingsViewController.specifiers()();

  if (v3)
  {
    v4 = sub_25121186C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)headGesturesEnabled
{
  v2 = self;
  sub_2511EC13C();
  v4 = v3;

  return v4;
}

- (void)setHeadGesturesEnabledWithEnabled:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v3)
  {
    v5 = a3;
    v9 = self;

    v6 = [v5 BOOLValue];
    v7 = *v3 + 144;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    (*(*v3 + 144))(v8);
  }

  else
  {
    __break(1u);
  }
}

- (id)getVoiceEnvironment:(id)a3
{
  sub_2511E326C();
  v3 = sub_25121176C();

  return v3;
}

+ (BOOL)bobbleSupported:(id)a3
{
  swift_unknownObjectRetain();
  v3 = _s16HeadphoneConfigs28BobbleSettingsViewControllerC15bobbleSupportedySbyXlFZ_0();
  swift_unknownObjectRelease();
  return v3;
}

+ (NSArray)bobbleMainSepcifier
{
  swift_getObjCClassMetadata();
  sub_2511EC828();
  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v2 = sub_25121186C();

  return v2;
}

+ (id)headGestureOnInput:(id)a3
{
  v3 = a3;
  sub_2511EDED4(v3);

  v4 = sub_25121176C();

  return v4;
}

- (id)acceptReplyPlayPauseStringMapping
{
  v2 = *(self + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v2)
  {
    v3 = *(*v2 + 232);
    v4 = self;

    LOBYTE(v3) = v3(v5);

    sub_2511E2D48(v3);

    v6 = sub_25121176C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)declineDismissSkipStringMapping
{
  v2 = *(self + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v2)
  {
    v3 = *(*v2 + 184);
    v4 = self;

    LOBYTE(v3) = v3(v5);

    sub_2511E2D48(v3);

    v6 = sub_25121176C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end