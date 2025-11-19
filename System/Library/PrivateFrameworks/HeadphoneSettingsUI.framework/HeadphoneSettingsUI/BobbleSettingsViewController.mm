@interface BobbleSettingsViewController
+ (BOOL)bobbleSupported:(id)a3;
+ (id)bobbleMainSepcifierWithHeadphoneDevice:(id)a3;
+ (id)headGestureOnInput:(id)a3;
- (HPMHeadphoneDevice)headphoneDevice;
- (_TtC19HeadphoneSettingsUI28BobbleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)acceptReplyPlayPauseStringMapping;
- (id)declineDismissSkipStringMapping;
- (id)getVoiceEnvironment:(id)a3;
- (id)headGesturesEnabled;
- (id)specifiers;
- (void)presentBobbleTutorials;
- (void)setHeadGesturesEnabledWithEnabled:(id)a3;
- (void)setHeadphoneDevice:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BobbleSettingsViewController

- (void)presentBobbleTutorials
{
  MEMORY[0x1E69E5928](self);
  sub_1AC27EC60();
  MEMORY[0x1E69E5920](self);
}

- (HPMHeadphoneDevice)headphoneDevice
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC282CEC();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setHeadphoneDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC282DC4(a3);
  MEMORY[0x1E69E5920](self);
}

- (_TtC19HeadphoneSettingsUI28BobbleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    v6 = sub_1AC30A92C();
    v7 = v4;
    MEMORY[0x1E69E5920](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return BobbleSettingsViewController.init(nibName:bundle:)(v8, v9, a4);
}

- (id)specifiers
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1AC285200();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1AC30AAFC();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  v3 = sub_1AC30910C();
  sub_1AC28766C(v3 & 1);
  MEMORY[0x1E69E5920](self);
}

- (id)headGesturesEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1AC28779C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setHeadGesturesEnabledWithEnabled:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC288A38(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (id)getVoiceEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1AC288BF4();
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
  v6 = sub_1AC30A91C();

  return v6;
}

+ (BOOL)bobbleSupported:(id)a3
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  sub_1AC288D04(a3);
  swift_unknownObjectRelease();
  return sub_1AC3090FC() & 1;
}

+ (id)bobbleMainSepcifierWithHeadphoneDevice:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  sub_1AC28A2BC(a3);
  MEMORY[0x1E69E5920](a3);
  sub_1AC215CB0();
  v5 = sub_1AC30AAFC();

  return v5;
}

+ (id)headGestureOnInput:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  sub_1AC28A744(a3);
  MEMORY[0x1E69E5920](a3);
  v5 = sub_1AC30A91C();

  return v5;
}

- (id)acceptReplyPlayPauseStringMapping
{
  MEMORY[0x1E69E5928](self);
  sub_1AC28AB7C();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

- (id)declineDismissSkipStringMapping
{
  MEMORY[0x1E69E5928](self);
  sub_1AC28AD0C();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1AC30A91C();

  return v4;
}

@end