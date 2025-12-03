@interface HearingAidTuningVoiceEntertainmentController
- (_TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController)initWithNibName:(id)name bundle:(id)bundle;
- (id)hearingBoostEnabled;
- (id)specifiers;
- (id)swipeToGainEnabled;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setHearingBoostWithEnabled:(id)enabled;
- (void)setSwipeToGainEnabledWithEnabled:(id)enabled;
- (void)viewDidLoad;
@end

@implementation HearingAidTuningVoiceEntertainmentController

- (_TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2520046E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return HearingAidTuningVoiceEntertainmentController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FE028C();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_251FE0B64();

  if (v3)
  {
    v4 = sub_2520047A0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hearingBoostEnabled
{
  selfCopy = self;
  result = sub_251FDFD60();
  if (result)
  {
    v4 = result;
    v5 = sub_252003E60();

    sub_252003F30();
    v7 = v6;

    v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v9) = v7;
    initWithFloat_ = [v8 initWithFloat_];

    return initWithFloat_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setHearingBoostWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = sub_251FDFD60();
  if (v5)
  {
    v6 = v5;
    v7 = sub_252003E60();

    [enabledCopy floatValue];
    sub_252003F40();
  }

  else
  {
    __break(1u);
  }
}

- (id)swipeToGainEnabled
{
  selfCopy = self;
  result = sub_251FDFD60();
  if (result)
  {
    v4 = result;
    v5 = sub_252003E60();

    sub_252004040();
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v6 = sub_252004970();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setSwipeToGainEnabledWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = sub_251FDFD60();
  if (v5)
  {
    v6 = v5;
    v7 = sub_252003E60();

    [enabledCopy BOOLValue];
    sub_252004050();
  }

  else
  {
    __break(1u);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_252003BA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_251FE3188(viewCopy);

  (*(v7 + 8))(v11, v6);

  return v14;
}

@end