@interface CKRemotePeoplePickerViewController
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (CKRemotePeoplePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerWithSuccess:(BOOL)success;
- (void)loadView;
- (void)requestActivity:(id)activity;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CKRemotePeoplePickerViewController

- (void)loadView
{
  selfCopy = self;
  RemotePeoplePickerViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  RemotePeoplePickerViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  RemotePeoplePickerViewController.viewDidDisappear(_:)(disappear);
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(self) = RemotePeoplePickerViewController.shouldAcceptXPCConnection(_:)(connectionCopy);

  return self & 1;
}

- (CKRemotePeoplePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return RemotePeoplePickerViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)requestActivity:(id)activity
{
  v4 = _Block_copy(activity);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  RemotePeoplePickerViewController.requestActivity(completionHandler:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?) -> (), v5);
}

- (void)dismissViewControllerWithSuccess:(BOOL)success
{
  selfCopy = self;
  RemotePeoplePickerViewController.dismissViewController(success:)(success);
}

@end