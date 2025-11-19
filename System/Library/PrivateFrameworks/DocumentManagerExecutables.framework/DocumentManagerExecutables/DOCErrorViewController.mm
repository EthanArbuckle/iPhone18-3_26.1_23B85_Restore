@interface DOCErrorViewController
- (_TtC26DocumentManagerExecutables22DOCErrorViewController)initWithCoder:(id)a3;
- (void)actionController:(id)a3 presentError:(id)a4 completion:(id)a5;
- (void)actionControllerDidFinishAction:(id)a3 error:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation DOCErrorViewController

- (_TtC26DocumentManagerExecutables22DOCErrorViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DOCErrorViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DOCErrorViewController.viewDidAppear(_:)(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self;
  if (!a3)
  {
    DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(1);
  }

  v8.receiver = v6;
  v8.super_class = ObjectType;
  v7 = a3;
  [(DOCErrorViewController *)&v8 willMoveToParentViewController:v7];
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)();
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCErrorViewController.applicationDidBecomeActive(_:)();
}

- (void)actionControllerDidFinishAction:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized DOCErrorViewController.actionControllerDidFinishAction(_:error:)(a4);
}

- (void)actionController:(id)a3 presentError:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v7 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

@end