@interface CKRemotePeoplePickerViewController
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (CKRemotePeoplePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerWithSuccess:(BOOL)a3;
- (void)loadView;
- (void)requestActivity:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CKRemotePeoplePickerViewController

- (void)loadView
{
  v2 = self;
  RemotePeoplePickerViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  RemotePeoplePickerViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  RemotePeoplePickerViewController.viewDidDisappear(_:)(a3);
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = RemotePeoplePickerViewController.shouldAcceptXPCConnection(_:)(v4);

  return self & 1;
}

- (CKRemotePeoplePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return RemotePeoplePickerViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)requestActivity:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  RemotePeoplePickerViewController.requestActivity(completionHandler:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?) -> (), v5);
}

- (void)dismissViewControllerWithSuccess:(BOOL)a3
{
  v4 = self;
  RemotePeoplePickerViewController.dismissViewController(success:)(a3);
}

@end