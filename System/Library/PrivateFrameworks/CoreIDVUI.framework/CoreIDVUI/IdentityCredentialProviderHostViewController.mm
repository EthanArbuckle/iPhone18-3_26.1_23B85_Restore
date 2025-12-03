@interface IdentityCredentialProviderHostViewController
- (UIColor)_backgroundColorForModalFormSheet;
- (_TtC9CoreIDVUI44IdentityCredentialProviderHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation IdentityCredentialProviderHostViewController

- (UIColor)_backgroundColorForModalFormSheet
{
  selfCopy = self;
  v3 = sub_2458E8C40();

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  IdentityCredentialProviderHostViewController.preferredContentSizeDidChange(forChildContentContainer:)(container);
  swift_unknownObjectRelease();
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = _s9CoreIDVUI44IdentityCredentialProviderHostViewControllerC012presentationH012forPresented10presenting6sourceSo014UIPresentationH0CSgSo06UIViewH0C_ALSgALtF_0(controllerCopy, viewController);

  return v12;
}

- (_TtC9CoreIDVUI44IdentityCredentialProviderHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end