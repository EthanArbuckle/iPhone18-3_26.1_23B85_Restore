@interface IdentityProofingWaitingForWifiViewController
- (_TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController)initWithCoder:(id)coder;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IdentityProofingWaitingForWifiViewController

- (_TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController)initWithCoder:(id)coder
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2458B2D54();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IdentityProofingWaitingForWifiViewController();
  v4 = v5.receiver;
  [(IdentityProofingViewController *)&v5 viewWillAppear:appearCopy];
  sub_2458B20A0();
}

@end