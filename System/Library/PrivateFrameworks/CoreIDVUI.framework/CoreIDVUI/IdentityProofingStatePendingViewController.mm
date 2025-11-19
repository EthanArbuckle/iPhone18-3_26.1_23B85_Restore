@interface IdentityProofingStatePendingViewController
- (_TtC9CoreIDVUI42IdentityProofingStatePendingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureFonts;
- (void)viewDidLayoutSubviews;
@end

@implementation IdentityProofingStatePendingViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_245896A9C();
}

- (void)configureFonts
{
  v2 = self;
  sub_245896E58();
}

- (_TtC9CoreIDVUI42IdentityProofingStatePendingViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_2458972D0(v5, v7, a4);
}

@end