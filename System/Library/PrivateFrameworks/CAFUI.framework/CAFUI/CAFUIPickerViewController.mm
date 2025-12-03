@interface CAFUIPickerViewController
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CAFUIPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CAFUIPickerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CAFUIPickerViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAFUIPickerViewController();
  [(CAFUIPickerViewController *)&v4 viewIsAppearing:appearingCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC5CAFUI25CAFUIPickerViewController_representable);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  selfCopy = self;
  v9 = v7(ObjectType, v5);

  v10 = *(v9 + 16);

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = CAFUIPickerViewController.tableView(_:cellForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = specialized CAFUIPickerViewController.tableView(_:heightForFooterInSection:)();

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = specialized CAFUIPickerViewController.tableView(_:viewForFooterInSection:)(viewCopy);

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  CAFUIPickerViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end