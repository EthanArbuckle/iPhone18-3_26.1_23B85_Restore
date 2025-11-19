@interface HearingProtectionAboutViewController
- (_TtC21HearingModeSettingsUI36HearingProtectionAboutViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)getFeatureVersion;
- (id)getUpdateVersion;
- (id)getYearOfRelease;
- (id)specifiers;
- (uint64_t)handleTotalAttenuationLearnMore;
- (void)viewDidLoad;
@end

@implementation HearingProtectionAboutViewController

- (_TtC21HearingModeSettingsUI36HearingProtectionAboutViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_251FCB39C(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_251FCB514();
}

- (id)getFeatureVersion
{
  v2 = sub_2520046B0();

  return v2;
}

- (id)getUpdateVersion
{
  v2 = self;
  sub_251FD10F4();

  v3 = sub_2520046B0();

  return v3;
}

- (id)getYearOfRelease
{
  v2 = sub_2520046B0();

  return v2;
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_251FD12FC();

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = sub_252003BA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  v10 = *MEMORY[0x277D76F30];
  (*(v5 + 8))(v9, v4);
  return v10;
}

- (uint64_t)handleTotalAttenuationLearnMore
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60);
  v14 = sub_252004600();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v6 + 8))(v10, v5);
}

@end