@interface ObjectUnderstandingSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleFeedbackSwitch:(id)switch;
- (void)toggleSeatOccupancySwitch:(id)switch;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ObjectUnderstandingSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257BCCBB4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257BCD368(appear);
}

- (_TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257BCD51C(v5, v7, bundle);
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
  v12 = sub_257BCDA9C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section > 1)
  {
    if (section != 2)
    {
      return section == 3;
    }

    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks))[2];
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

- (void)toggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BD0A48(switch);
}

- (void)toggleSeatOccupancySwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BD0E30(switch);
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
  sub_257BD101C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end