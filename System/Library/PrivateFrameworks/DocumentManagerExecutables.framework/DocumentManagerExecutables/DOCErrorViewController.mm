@interface DOCErrorViewController
- (_TtC26DocumentManagerExecutables22DOCErrorViewController)initWithCoder:(id)coder;
- (void)actionController:(id)controller presentError:(id)error completion:(id)completion;
- (void)actionControllerDidFinishAction:(id)action error:(id)error;
- (void)applicationDidBecomeActive:(id)active;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation DOCErrorViewController

- (_TtC26DocumentManagerExecutables22DOCErrorViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCErrorViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DOCErrorViewController.viewDidAppear(_:)(appear);
}

- (void)willMoveToParentViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  if (!controller)
  {
    DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(1);
  }

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  controllerCopy = controller;
  [(DOCErrorViewController *)&v8 willMoveToParentViewController:controllerCopy];
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  specialized DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)();
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  specialized DOCErrorViewController.applicationDidBecomeActive(_:)();
}

- (void)actionControllerDidFinishAction:(id)action error:(id)error
{
  actionCopy = action;
  selfCopy = self;
  errorCopy = error;
  specialized DOCErrorViewController.actionControllerDidFinishAction(_:error:)(error);
}

- (void)actionController:(id)controller presentError:(id)error completion:(id)completion
{
  controllerCopy = controller;
  errorCopy = error;
  v7 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

@end