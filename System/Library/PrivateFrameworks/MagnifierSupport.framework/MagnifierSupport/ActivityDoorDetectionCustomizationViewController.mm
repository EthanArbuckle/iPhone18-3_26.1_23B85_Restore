@interface ActivityDoorDetectionCustomizationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)colorPickerViewControllerDidSelectColor:(id)a3;
- (void)didToggleFeedbackSwitch:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleDoorDetectionSwitchChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation ActivityDoorDetectionCustomizationViewController

- (void)loadView
{
  v2 = self;
  sub_257DC6B10();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257DC6F8C();
}

- (_TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_257DC7334(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_257DCAF74(a4);

  return v8;
}

- (void)toggleDoorDetectionSwitchChanged:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      v5 = a3;
      v6 = self;
      sub_257CE2304([v5 isOn]);
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
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_257ECCE40();
  v10 = a3;
  v11 = self;
  v12 = sub_257DC7B54(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)didToggleFeedbackSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DC9BE0(v4);
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
  return sub_257CA9794(v8) != 3;
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
  sub_257DCA158(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DCAA34(v4);
}

@end