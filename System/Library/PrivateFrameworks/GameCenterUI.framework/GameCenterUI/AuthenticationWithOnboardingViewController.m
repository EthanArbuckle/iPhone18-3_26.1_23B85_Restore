@interface AuthenticationWithOnboardingViewController
- (CGSize)preferredContentSize;
- (_TtC12GameCenterUI42AuthenticationWithOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)onboardingFlowFinishedWithAction:(unint64_t)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation AuthenticationWithOnboardingViewController

- (CGSize)preferredContentSize
{
  v2 = self;
  sub_24E0034FC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_24E003608(width, height);
}

- (_TtC12GameCenterUI42AuthenticationWithOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  sub_24E00463C();
}

- (void)onboardingFlowFinishedWithAction:(unint64_t)a3
{
  v4 = self;
  sub_24E004708(a3);
}

@end