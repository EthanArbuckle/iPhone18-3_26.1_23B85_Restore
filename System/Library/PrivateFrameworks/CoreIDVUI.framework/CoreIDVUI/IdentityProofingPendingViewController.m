@interface IdentityProofingPendingViewController
- (_TtC9CoreIDVUI37IdentityProofingPendingViewController)initWithCoder:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation IdentityProofingPendingViewController

- (_TtC9CoreIDVUI37IdentityProofingPendingViewController)initWithCoder:(id)a3
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(IdentityProofingViewController *)&v5 viewDidLoad];
  v3 = sub_24584DEC0(type metadata accessor for IdentityProofingReviewSubmissionViewController);
  if (sub_24584DEC0(type metadata accessor for IdentityProofingAuthCodeViewController))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow];
  }

  sub_24584DA1C(v3 & 1, v4);
  sub_24584E074();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24584E244(a3);
}

@end