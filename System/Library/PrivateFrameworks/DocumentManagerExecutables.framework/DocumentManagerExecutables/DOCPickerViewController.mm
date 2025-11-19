@interface DOCPickerViewController
- (_TtC26DocumentManagerExecutables23DOCPickerViewController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables23DOCPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_didSelectURL:(id)a3;
- (void)_dismissViewController;
- (void)_displayLocationsMenuFromRect:(CGRect)a3;
- (void)_stitchFileCreationAtURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation DOCPickerViewController

- (_TtC26DocumentManagerExecutables23DOCPickerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DOCPickerViewController.viewDidLoad()();
}

- (void)_didSelectURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCPickerViewController._didSelect(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)_dismissViewController
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  v6 = self;
  if (v2())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)_stitchFileCreationAtURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v7, v3);
}

- (void)_displayLocationsMenuFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  v11 = self;
  if (v7())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v11, ObjectType, v9, x, y, width, height);
    swift_unknownObjectRelease();
  }
}

- (_TtC26DocumentManagerExecutables23DOCPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end