@interface ActivityTextDetectionCustomizationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didToggleFeedbackSwitch:(id)a3;
- (void)didToggleFlashlightSwitch:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleTextDetectionSwitchChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation ActivityTextDetectionCustomizationViewController

- (void)loadView
{
  v2 = self;
  sub_257CF27D8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257CF2C44();
}

- (_TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257CF2E30(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = 1;
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks))[2];
    }

    else if (a4)
    {
      return 0;
    }
  }

  return result;
}

- (void)toggleTextDetectionSwitchChanged:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v5 = a3;
      v6 = self;
      sub_257CE3DF8([v5 isOn]);
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
  v12 = sub_257CF3344(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CF3B44(v4);
}

- (void)didToggleFlashlightSwitch:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a3;
    v6 = self;
    sub_257CE41C0([v5 isOn]);
    swift_unknownObjectRelease();
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  sub_257CF4A2C(a4);
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 > 2)
  {
    v7 = 0;
  }

  else
  {
    sub_257CF26B4(a4);
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v9 = a3;
  v10 = sub_257ECCE30();
  [v9 deselectRowAtIndexPath:v10 animated:1];

  (*(v6 + 8))(v8, v5);
}

@end