@interface MedmojiPickerViewController
- (_TtC19HealthMedicationsUI27MedmojiPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonTappped:(id)tappped;
- (void)colorButtonTappped:(id)tappped;
- (void)doneButtonTappped:(id)tappped;
- (void)shapeButtonTappped:(id)tappped;
- (void)viewDidLoad;
@end

@implementation MedmojiPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2282EBF98();
}

- (void)cancelButtonTappped:(id)tappped
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  [(MedmojiPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButtonTappped:(id)tappped
{
  tapppedCopy = tappped;
  selfCopy = self;
  sub_2282EF8D0();
}

- (void)shapeButtonTappped:(id)tappped
{
  selfCopy = self;
  sub_2282EDFB8();
}

- (void)colorButtonTappped:(id)tappped
{
  selfCopy = self;
  sub_2282EDFD4();
}

- (_TtC19HealthMedicationsUI27MedmojiPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end