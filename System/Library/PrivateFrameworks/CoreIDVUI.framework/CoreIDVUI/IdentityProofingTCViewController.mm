@interface IdentityProofingTCViewController
- (_TtC9CoreIDVUI32IdentityProofingTCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation IdentityProofingTCViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for IdentityProofingTCViewController();
  [(IdentityProofingTCViewController *)&v4 viewDidAppear:appearCopy];
}

- (_TtC9CoreIDVUI32IdentityProofingTCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_245910A04();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_245898CE0(v5, v7, bundle);
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_245899C64(model);
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance);
  selfCopy = self;
  if (v5)
  {
    v7 = sub_245771BB4(v5);
    v5(v7);
    sub_245771C34(v5);
  }

  sub_24590E3D4();
  sub_2458977A8();
}

@end