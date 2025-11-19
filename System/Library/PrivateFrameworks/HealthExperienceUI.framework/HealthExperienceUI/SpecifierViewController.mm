@interface SpecifierViewController
- (_TtC18HealthExperienceUI23SpecifierViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23SpecifierViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)dismissNavigationController;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SpecifierViewController

- (_TtC18HealthExperienceUI23SpecifierViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear) = 1;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for SpecifierViewController();
  v2 = v8.receiver;
  [(SpecifierViewController *)&v8 viewDidLoad];
  sub_1B9F7A684();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5460;
  v4 = sub_1BA4A4178();
  v5 = MEMORY[0x1E69DC0F8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_1BA4A4858();
  v7 = MEMORY[0x1E69DC2B0];
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  MEMORY[0x1BFAF1C40](v3, sel_reloadSpecifiers);

  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SpecifierViewController();
  v4 = v5.receiver;
  [(SpecifierViewController *)&v5 viewWillAppear:v3];
  if (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear) == 1)
  {
    sub_1B9FCE7DC();
    [v4 reloadSpecifiers];
  }
}

- (void)dismissNavigationController
{
  v4 = self;
  v2 = [(SpecifierViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_1B9FCE338();

  if (v3)
  {
    v4 = sub_1BA4A6AE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  sub_1B9FCE5A4(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18HealthExperienceUI23SpecifierViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end