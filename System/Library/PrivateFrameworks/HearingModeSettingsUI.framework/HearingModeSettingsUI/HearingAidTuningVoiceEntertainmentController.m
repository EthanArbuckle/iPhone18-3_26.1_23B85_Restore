@interface HearingAidTuningVoiceEntertainmentController
- (_TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)hearingBoostEnabled;
- (id)specifiers;
- (id)swipeToGainEnabled;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setHearingBoostWithEnabled:(id)a3;
- (void)setSwipeToGainEnabledWithEnabled:(id)a3;
- (void)viewDidLoad;
@end

@implementation HearingAidTuningVoiceEntertainmentController

- (_TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2520046E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return HearingAidTuningVoiceEntertainmentController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_251FE028C();
}

- (id)specifiers
{
  v2 = self;
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
  v2 = self;
  result = sub_251FDFD60();
  if (result)
  {
    v4 = result;
    v5 = sub_252003E60();

    sub_252003F30();
    v7 = v6;

    v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v9) = v7;
    v10 = [v8 initWithFloat_];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setHearingBoostWithEnabled:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_251FDFD60();
  if (v5)
  {
    v6 = v5;
    v7 = sub_252003E60();

    [v4 floatValue];
    sub_252003F40();
  }

  else
  {
    __break(1u);
  }
}

- (id)swipeToGainEnabled
{
  v2 = self;
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

- (void)setSwipeToGainEnabledWithEnabled:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_251FDFD60();
  if (v5)
  {
    v6 = v5;
    v7 = sub_252003E60();

    [v4 BOOLValue];
    sub_252004050();
  }

  else
  {
    __break(1u);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_252003BA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  v12 = a3;
  v13 = self;
  v14 = sub_251FE3188(v12);

  (*(v7 + 8))(v11, v6);

  return v14;
}

@end