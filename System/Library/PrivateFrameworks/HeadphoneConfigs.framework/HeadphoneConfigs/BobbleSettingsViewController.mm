@interface BobbleSettingsViewController
+ (BOOL)bobbleSupported:(id)supported;
+ (NSArray)bobbleMainSepcifier;
+ (id)headGestureOnInput:(id)input;
- (HPMHeadphoneDevice)headphoneDevice;
- (_TtC16HeadphoneConfigs28BobbleSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)acceptReplyPlayPauseStringMapping;
- (id)declineDismissSkipStringMapping;
- (id)getVoiceEnvironment:(id)environment;
- (id)headGesturesEnabled;
- (id)specifiers;
- (void)presentBobbleTutorials;
- (void)setHeadGesturesEnabledWithEnabled:(id)enabled;
- (void)setHeadphoneDevice:(id)device;
@end

@implementation BobbleSettingsViewController

- (void)presentBobbleTutorials
{
  selfCopy = self;
  sub_2511E572C();
}

- (HPMHeadphoneDevice)headphoneDevice
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setHeadphoneDevice:(id)device
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = device;
  deviceCopy = device;
}

- (_TtC16HeadphoneConfigs28BobbleSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_25121179C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return BobbleSettingsViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (id)specifiers
{
  selfCopy = self;
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
  selfCopy = self;
  sub_2511EC13C();
  v4 = v3;

  return v4;
}

- (void)setHeadGesturesEnabledWithEnabled:(id)enabled
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v3)
  {
    enabledCopy = enabled;
    selfCopy = self;

    bOOLValue = [enabledCopy BOOLValue];
    v7 = *v3 + 144;
    if (bOOLValue)
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

- (id)getVoiceEnvironment:(id)environment
{
  sub_2511E326C();
  v3 = sub_25121176C();

  return v3;
}

+ (BOOL)bobbleSupported:(id)supported
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

+ (id)headGestureOnInput:(id)input
{
  inputCopy = input;
  sub_2511EDED4(inputCopy);

  v4 = sub_25121176C();

  return v4;
}

- (id)acceptReplyPlayPauseStringMapping
{
  v2 = *(self + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v2)
  {
    v3 = *(*v2 + 232);
    selfCopy = self;

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
    selfCopy = self;

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