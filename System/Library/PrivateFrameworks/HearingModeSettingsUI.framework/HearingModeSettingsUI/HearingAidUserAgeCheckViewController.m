@interface HearingAidUserAgeCheckViewController
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtP21HearingModeSettingsUI26HearingAidAgeCheckDelegate_)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)continueButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HearingAidUserAgeCheckViewController

- (_TtP21HearingModeSettingsUI26HearingAidAgeCheckDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_251FDDB70();
}

- (void)continueButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_252004A00();
  swift_unknownObjectRelease();
  v5 = [(HearingAidUserAgeCheckViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(HMHearingAidAudiogramViewController) init];
    [v6 pushViewController:v7 animated:1];

    v4 = v7;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

- (void)cancelButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_252004A00();
  v5 = swift_unknownObjectRelease();
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x90))(v5);
  if (v6)
  {
    [v6 dismissHearingAidEnrollment];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = sub_251FDC230();
  if (v4 >> 62)
  {
    v5 = sub_252004B20();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = self;
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x253096650](a4, result);
    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
  {
    v7 = *(result + 8 * a4 + 32);

LABEL_5:

    v8 = *(v7 + 48);

    v9 = *(v8 + 16);

    return v9;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = sub_252003BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  v11 = self;
  v12 = sub_252003B90();
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x253096650](v12, result);
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v12 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v14 = *(result + v12 + 4);
  }

  v15 = v14[6];
  result = sub_252003B80();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v15 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = (*(*v14 + 184))(*(result + v15 + 32));

  (*(v6 + 8))(v10, v5);

  return v16;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  HearingAidUserAgeCheckViewController.tableView(_:viewForHeaderInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = sub_252003BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  v11 = self;
  v12 = sub_252003B90();
  v13 = sub_251FDC230();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x253096650](v12, v13);
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v14 = *(v13 + 8 * v12 + 32);
  }

  v15 = v14[6];
  v16 = sub_252003B80();
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v16 < *(v15 + 16))
  {
    (*(*v14 + 200))(*(v15 + v16 + 32));

    (*(v6 + 8))(v10, v5);
    return;
  }

LABEL_12:
  __break(1u);
}

@end