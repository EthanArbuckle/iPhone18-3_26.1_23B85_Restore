@interface IdentityProofingBaseViewController
- (_TtC9CoreIDVUI34IdentityProofingBaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation IdentityProofingBaseViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IdentityProofingBaseViewController();
  v2 = v3.receiver;
  [(IdentityProofingBaseViewController *)&v3 viewDidLoad];
  sub_245869F34();
}

- (_TtC9CoreIDVUI34IdentityProofingBaseViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_24586A770(v5, v7, bundle);
}

@end