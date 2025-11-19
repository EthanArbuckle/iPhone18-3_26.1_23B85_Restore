@interface ActivityPointSpeakCustomizationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)colorPickerViewControllerDidSelectColor:(id)a3;
- (void)didToggleFeedbackSwitch:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)togglePointSpeakSwitchChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation ActivityPointSpeakCustomizationViewController

- (void)loadView
{
  v2 = self;
  sub_257DF2D44();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257DF31C0();
}

- (_TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_257DF3484(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = 1;
  if (a4 <= 1)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 1)
    {
      return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks))[2];
    }

    return 0;
  }

  if (a4 == 2 || a4 == 4)
  {
    return 2;
  }

  if (a4 != 3)
  {
    return 0;
  }

  return result;
}

- (void)togglePointSpeakSwitchChanged:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v5 = a3;
      v6 = self;
      sub_257CE31C0([v5 isOn]);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  v12 = sub_257DF3BEC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DF4F88(v4);
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v8 = sub_257ECCEA0();
  (*(v5 + 8))(v7, v4);
  return v8 != 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  sub_257DF54D4(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DF5A3C(v4);
}

@end