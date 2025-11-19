@interface HKOnboardingPage
- (HKOnboardingPage)initWithViewControllerClass:(Class)a3 sequencePage:(int64_t)a4;
@end

@implementation HKOnboardingPage

- (HKOnboardingPage)initWithViewControllerClass:(Class)a3 sequencePage:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = HKOnboardingPage;
  v6 = [(HKOnboardingPage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewControllerClass, a3);
    v7->_sequencePage = a4;
  }

  return v7;
}

@end