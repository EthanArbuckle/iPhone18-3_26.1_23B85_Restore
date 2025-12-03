@interface PeopleDetectionSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport37PeopleDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didToggleActionsSwitch:(id)switch;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PeopleDetectionSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CE5F80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257CE676C(appear);
}

- (_TtC16MagnifierSupport37PeopleDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257CE6928(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section > 1)
  {
    if (section != 2)
    {
      return section == 3;
    }

    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport37PeopleDetectionSettingsViewController_availableDetectionFeedbacks))[2];
  }

  else
  {
    if (section)
    {
      return section == 1;
    }

    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_257CE6EFC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257CE8000(switchCopy);
}

- (void)didToggleActionsSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257CE83E0(switchCopy);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v8 = sub_257ECCEA0();
  (*(v5 + 8))(v7, v4);
  return v8 != 2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257CE85F8(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end