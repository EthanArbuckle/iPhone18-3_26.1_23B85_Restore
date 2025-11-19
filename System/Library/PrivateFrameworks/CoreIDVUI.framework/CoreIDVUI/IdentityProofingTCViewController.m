@interface IdentityProofingTCViewController
- (_TtC9CoreIDVUI32IdentityProofingTCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation IdentityProofingTCViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for IdentityProofingTCViewController();
  [(IdentityProofingTCViewController *)&v4 viewDidAppear:v3];
}

- (_TtC9CoreIDVUI32IdentityProofingTCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_245910A04();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_245898CE0(v5, v7, a4);
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_245899C64(a4);
}

- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI32IdentityProofingTCViewController_onAppearance);
  v6 = self;
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