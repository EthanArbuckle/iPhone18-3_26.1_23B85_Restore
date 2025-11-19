@interface CAFUIPickerViewController
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CAFUIPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  CAFUIPickerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CAFUIPickerViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUIPickerViewController();
  [(CAFUIPickerViewController *)&v4 viewIsAppearing:v3];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = self;
  v9 = v7(ObjectType, v5);

  v10 = *(v9 + 16);

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = CAFUIPickerViewController.tableView(_:cellForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = specialized CAFUIPickerViewController.tableView(_:heightForFooterInSection:)();

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = specialized CAFUIPickerViewController.tableView(_:viewForFooterInSection:)(v5);

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  CAFUIPickerViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

@end