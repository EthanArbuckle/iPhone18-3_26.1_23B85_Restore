@interface GKSignInView
- (GKSignInView)initWithSignInAction:(id)a3;
- (double)contentTopMargin;
- (void)disablePrimaryButton;
- (void)enablePrimaryButton;
- (void)primaryAction;
- (void)setupHorizontalLayout;
- (void)setupVerticalLayout;
@end

@implementation GKSignInView

- (double)contentTopMargin
{
  v2 = self;
  v3 = sub_24E09B3B0();

  return v3;
}

- (GKSignInView)initWithSignInAction:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return SignInView.init(signInAction:)(sub_24DFA0D08, v4);
}

- (void)disablePrimaryButton
{
  v2 = self;
  SignInView.disablePrimaryButton()();
}

- (void)enablePrimaryButton
{
  v2 = self;
  SignInView.enablePrimaryButton()();
}

- (void)primaryAction
{
  v2 = self;
  sub_24E2D1710();
}

- (void)setupVerticalLayout
{
  v9 = self;
  sub_24E2D178C(v9, v2, v3, v4, v5, v6, v7, v8);
}

- (void)setupHorizontalLayout
{
  v2 = self;
  sub_24E2D1984();
}

@end