@interface IdentityProofingRetryProvisioningViewController
- (_TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController)initWithCoder:(id)coder;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingRetryProvisioningViewController

- (_TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController)initWithCoder:(id)coder
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24584F26C();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IdentityProofingRetryProvisioningViewController();
  v2 = v5.receiver;
  [(IdentityProofingViewController *)&v5 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig] + 144);
  if (v3)
  {

    v3(v4);
    sub_245771C34(v3);
  }
}

@end