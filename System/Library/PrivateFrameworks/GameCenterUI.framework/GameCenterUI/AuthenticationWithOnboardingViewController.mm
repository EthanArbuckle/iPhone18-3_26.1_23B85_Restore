@interface AuthenticationWithOnboardingViewController
- (CGSize)preferredContentSize;
- (_TtC12GameCenterUI42AuthenticationWithOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)onboardingFlowFinishedWithAction:(unint64_t)action;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation AuthenticationWithOnboardingViewController

- (CGSize)preferredContentSize
{
  selfCopy = self;
  sub_24E0034FC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_24E003608(width, height);
}

- (_TtC12GameCenterUI42AuthenticationWithOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  sub_24E00463C();
}

- (void)onboardingFlowFinishedWithAction:(unint64_t)action
{
  selfCopy = self;
  sub_24E004708(action);
}

@end