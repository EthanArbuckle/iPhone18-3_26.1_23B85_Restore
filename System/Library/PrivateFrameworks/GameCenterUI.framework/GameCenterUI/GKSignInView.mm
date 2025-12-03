@interface GKSignInView
- (GKSignInView)initWithSignInAction:(id)action;
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
  selfCopy = self;
  v3 = sub_24E09B3B0();

  return v3;
}

- (GKSignInView)initWithSignInAction:(id)action
{
  v3 = _Block_copy(action);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return SignInView.init(signInAction:)(sub_24DFA0D08, v4);
}

- (void)disablePrimaryButton
{
  selfCopy = self;
  SignInView.disablePrimaryButton()();
}

- (void)enablePrimaryButton
{
  selfCopy = self;
  SignInView.enablePrimaryButton()();
}

- (void)primaryAction
{
  selfCopy = self;
  sub_24E2D1710();
}

- (void)setupVerticalLayout
{
  selfCopy = self;
  sub_24E2D178C(selfCopy, v2, v3, v4, v5, v6, v7, v8);
}

- (void)setupHorizontalLayout
{
  selfCopy = self;
  sub_24E2D1984();
}

@end