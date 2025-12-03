@interface ActivityPeopleDetectionCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)togglePeopleDetectionSwitchChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation ActivityPeopleDetectionCustomizationViewController

- (void)loadView
{
  selfCopy = self;
  sub_257D4BFE8();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257D4C188();
}

- (_TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257D4C698(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = 1;
  if (section > 1)
  {
    if (section == 3)
    {
      return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport50ActivityPeopleDetectionCustomizationViewController_availableDetectionFeedbacks))[2];
    }

    else if (section != 2)
    {
      return 0;
    }
  }

  else if (section)
  {
    if (section == 1)
    {
      return 2;
    }

    return 0;
  }

  return result;
}

- (void)togglePeopleDetectionSwitchChanged:(id)changed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (changed)
    {
      changedCopy = changed;
      selfCopy = self;
      sub_257CE21BC([changedCopy isOn]);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
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
  v12 = sub_257D4CD90(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257D4D714(switchCopy);
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
  return v8 != 3;
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
  sub_257D4DB90(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end