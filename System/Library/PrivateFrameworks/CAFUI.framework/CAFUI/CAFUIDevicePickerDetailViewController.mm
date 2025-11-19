@interface CAFUIDevicePickerDetailViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CAFUIDevicePickerDetailViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CAFUIDevicePickerDetailViewController();
  [(CAFUIDevicePickerDetailViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  CAFUIDevicePickerDetailViewController.viewDidLoad()();
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
  v12 = CAFUIDevicePickerDetailViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  CAFUIDevicePickerDetailViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

@end