@interface MedmojiPickerViewController
- (_TtC19HealthMedicationsUI27MedmojiPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonTappped:(id)a3;
- (void)colorButtonTappped:(id)a3;
- (void)doneButtonTappped:(id)a3;
- (void)shapeButtonTappped:(id)a3;
- (void)viewDidLoad;
@end

@implementation MedmojiPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2282EBF98();
}

- (void)cancelButtonTappped:(id)a3
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = self;
  }

  [(MedmojiPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButtonTappped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2282EF8D0();
}

- (void)shapeButtonTappped:(id)a3
{
  v3 = self;
  sub_2282EDFB8();
}

- (void)colorButtonTappped:(id)a3
{
  v3 = self;
  sub_2282EDFD4();
}

- (_TtC19HealthMedicationsUI27MedmojiPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end