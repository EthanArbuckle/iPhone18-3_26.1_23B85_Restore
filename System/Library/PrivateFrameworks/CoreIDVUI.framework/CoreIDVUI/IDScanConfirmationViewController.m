@interface IDScanConfirmationViewController
- (_TtC9CoreIDVUI32IDScanConfirmationViewController)initWithCoder:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation IDScanConfirmationViewController

- (_TtC9CoreIDVUI32IDScanConfirmationViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v5 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v5 + 2) = sub_24590C8B4();
  *(&self->super.super.super.super.isa + v4) = v5;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2457C7390();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457C7B84(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2457C7DD8(a3);
}

@end