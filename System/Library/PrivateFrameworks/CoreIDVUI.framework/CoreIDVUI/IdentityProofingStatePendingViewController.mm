@interface IdentityProofingStatePendingViewController
- (_TtC9CoreIDVUI42IdentityProofingStatePendingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureFonts;
- (void)viewDidLayoutSubviews;
@end

@implementation IdentityProofingStatePendingViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_245896A9C();
}

- (void)configureFonts
{
  selfCopy = self;
  sub_245896E58();
}

- (_TtC9CoreIDVUI42IdentityProofingStatePendingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_2458972D0(v5, v7, bundle);
}

@end