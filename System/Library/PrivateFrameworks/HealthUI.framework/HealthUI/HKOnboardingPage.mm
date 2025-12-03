@interface HKOnboardingPage
- (HKOnboardingPage)initWithViewControllerClass:(Class)class sequencePage:(int64_t)page;
@end

@implementation HKOnboardingPage

- (HKOnboardingPage)initWithViewControllerClass:(Class)class sequencePage:(int64_t)page
{
  v9.receiver = self;
  v9.super_class = HKOnboardingPage;
  v6 = [(HKOnboardingPage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewControllerClass, class);
    v7->_sequencePage = page;
  }

  return v7;
}

@end