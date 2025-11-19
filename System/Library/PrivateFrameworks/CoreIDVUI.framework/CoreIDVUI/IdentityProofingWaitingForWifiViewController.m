@interface IdentityProofingWaitingForWifiViewController
- (_TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController)initWithCoder:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation IdentityProofingWaitingForWifiViewController

- (_TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController)initWithCoder:(id)a3
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2458B2D54();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IdentityProofingWaitingForWifiViewController();
  v4 = v5.receiver;
  [(IdentityProofingViewController *)&v5 viewWillAppear:v3];
  sub_2458B20A0();
}

@end