@interface IdentityCredentialProviderHostViewController
- (UIColor)_backgroundColorForModalFormSheet;
- (_TtC9CoreIDVUI44IdentityCredentialProviderHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation IdentityCredentialProviderHostViewController

- (UIColor)_backgroundColorForModalFormSheet
{
  v2 = self;
  v3 = sub_2458E8C40();

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  IdentityCredentialProviderHostViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3);
  swift_unknownObjectRelease();
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = _s9CoreIDVUI44IdentityCredentialProviderHostViewControllerC012presentationH012forPresented10presenting6sourceSo014UIPresentationH0CSgSo06UIViewH0C_ALSgALtF_0(v8, a4);

  return v12;
}

- (_TtC9CoreIDVUI44IdentityCredentialProviderHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end