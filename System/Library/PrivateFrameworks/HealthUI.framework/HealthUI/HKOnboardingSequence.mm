@interface HKOnboardingSequence
- (HKOnboardingSequence)initWithPages:(id)pages;
@end

@implementation HKOnboardingSequence

- (HKOnboardingSequence)initWithPages:(id)pages
{
  pagesCopy = pages;
  v10.receiver = self;
  v10.super_class = HKOnboardingSequence;
  v6 = [(HKOnboardingSequence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pages, pages);
    lastObject = [(NSArray *)v7->_pages lastObject];
    [lastObject setLastPage:1];
  }

  return v7;
}

@end