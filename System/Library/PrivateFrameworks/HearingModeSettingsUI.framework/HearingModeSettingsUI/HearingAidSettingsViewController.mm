@interface HearingAidSettingsViewController
- (_TtC21HearingModeSettingsUI32HearingAidSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mediaAssistEnabled;
- (id)specifiers;
- (uint64_t)hearingOptionsInControllcenterTapped;
- (void)useNewTestResultTapped;
- (void)viewDidLoad;
@end

@implementation HearingAidSettingsViewController

- (_TtC21HearingModeSettingsUI32HearingAidSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return HearingAidSettingsViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FF94C4();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_251FFA6D8();

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

- (id)mediaAssistEnabled
{
  selfCopy = self;
  result = sub_251FF6DB8();
  if (result)
  {
    v4 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v5 = sub_252003E60();

    sub_2520040D0();
    v6 = sub_252004970();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)useNewTestResultTapped
{
  selfCopy = self;
  sub_251FFB324();
}

- (uint64_t)hearingOptionsInControllcenterTapped
{
  v35 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v32 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7208, &qword_252008A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252007350;
    v13 = *MEMORY[0x277D0AC70];
    *(inited + 32) = sub_2520046E0();
    *(inited + 40) = v14;
    *(inited + 48) = 1;
    v15 = *MEMORY[0x277D0AC58];
    *(inited + 56) = sub_2520046E0();
    *(inited + 64) = v16;
    *(inited + 72) = 1;
    v17 = sub_251FFC544(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7210, &unk_252008A30);
    swift_arrayDestroy();
    defaultWorkspace = [objc_opt_self() defaultWorkspace];
    if (defaultWorkspace)
    {
      v19 = defaultWorkspace;
      v20 = sub_252003AF0();
      sub_251FFB484(v17);

      v21 = MEMORY[0x277D837D0];
      v22 = sub_252004600();

      v33 = 0;
      v23 = [v19 openSensitiveURL:v20 withOptions:v22 error:&v33];

      if (v23)
      {
        v24 = *(v6 + 8);
        v25 = v33;
        result = v24(v10, v5);
      }

      else
      {
        v26 = v33;
        v27 = sub_252003AE0();

        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_252007360;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_252004A70();
        MEMORY[0x253096310](0xD000000000000019, 0x800000025200F290);
        v32[1] = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7218, &unk_252008A40);
        sub_252004B00();
        v29 = v33;
        v30 = v34;
        *(v28 + 56) = v21;
        *(v28 + 32) = v29;
        *(v28 + 40) = v30;
        sub_252004BF0();

        result = (*(v6 + 8))(v10, v5);
      }
    }

    else
    {
      (*(v6 + 8))(v10, v5);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

@end