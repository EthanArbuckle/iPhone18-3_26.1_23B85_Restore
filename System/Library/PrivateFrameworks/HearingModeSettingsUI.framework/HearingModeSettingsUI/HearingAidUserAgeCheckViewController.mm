@interface HearingAidUserAgeCheckViewController
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (_TtP21HearingModeSettingsUI26HearingAidAgeCheckDelegate_)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelButtonTapped:(id)tapped;
- (void)continueButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  selfCopy = self;
  sub_251FDDB70();
}

- (void)continueButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_252004A00();
  swift_unknownObjectRelease();
  navigationController = [(HearingAidUserAgeCheckViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    v7 = [objc_allocWithZone(HMHearingAidAudiogramViewController) init];
    [v6 pushViewController:v7 animated:1];

    selfCopy = v7;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

- (void)cancelButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_252004A00();
  v5 = swift_unknownObjectRelease();
  v6 = (*((*MEMORY[0x277D85000] & *selfCopy) + 0x90))(v5);
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

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x253096650](section, result);
    goto LABEL_5;
  }

  if (section < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
  {
    v7 = *(result + 8 * section + 32);

LABEL_5:

    v8 = *(v7 + 48);

    v9 = *(v8 + 16);

    return v9;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = sub_252003BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  selfCopy = self;
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  HearingAidUserAgeCheckViewController.tableView(_:viewForHeaderInSection:)(v8, viewCopy, section);
  v10 = v9;

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = sub_252003BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  selfCopy = self;
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