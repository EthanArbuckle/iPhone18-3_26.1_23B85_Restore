@interface TextDetectionSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport35TextDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)didToggleFlashlightSwitch:(id)switch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TextDetectionSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257BE45D8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257BE4D7C(appear);
}

- (_TtC16MagnifierSupport35TextDetectionSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257BE4F38(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section != 1)
  {
    if (!section)
    {
      return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks))[2];
    }

    return 0;
  }

  return section;
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
  v12 = sub_257BE5310(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BE5FC8(switchCopy);
}

- (void)didToggleFlashlightSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257BE63B8(switchCopy);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sub_257BE659C(section);
  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section > 1)
  {
    v7 = 0;
  }

  else
  {
    sub_257BE44C8();
    if (v5)
    {
      v6 = sub_257ECF4C0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
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
  return v8 != 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  v10 = sub_257ECCE30();
  [viewCopy deselectRowAtIndexPath:v10 animated:1];

  (*(v6 + 8))(v8, v5);
}

@end