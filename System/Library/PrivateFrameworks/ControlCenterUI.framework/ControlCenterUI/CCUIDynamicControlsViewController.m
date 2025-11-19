@interface CCUIDynamicControlsViewController
- (BOOL)isDisplayingSensorAttribution;
- (CCUIDynamicControlsViewController)initWithCoder:(id)a3;
- (CCUIDynamicControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)sensorAttributionsChanged:(id)a3 uniqueEntities:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIDynamicControlsViewController

- (CCUIDynamicControlsViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___CCUIDynamicControlsViewController_buttonViewModel;
  type metadata accessor for DynamicControlsViewModel();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_21EA44E24();
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DynamicControlsViewController();
  v2 = v3.receiver;
  [(CCUIDynamicControlsViewController *)&v3 viewDidLoad];
  [v2 bs:*&v2[OBJC_IVAR___CCUIDynamicControlsViewController_hostingViewController] addChildViewController:{v3.receiver, v3.super_class}];
}

- (void)viewWillLayoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CCUIDynamicControlsViewController_hostingViewController);
  v15 = self;
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [(CCUIDynamicControlsViewController *)v15 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
}

- (BOOL)isDisplayingSensorAttribution
{
  v2 = self;
  v3 = sub_21EA92E14();

  return v3 & 1;
}

- (void)sensorAttributionsChanged:(id)a3 uniqueEntities:(id)a4
{
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();
  v5 = sub_21EAA8F60();
  sub_21E9F8880(0, &unk_28125B750);
  v6 = sub_21EAA8EC0();
  v7 = self;
  sub_21EA93008(v5, v6);
}

- (CCUIDynamicControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end