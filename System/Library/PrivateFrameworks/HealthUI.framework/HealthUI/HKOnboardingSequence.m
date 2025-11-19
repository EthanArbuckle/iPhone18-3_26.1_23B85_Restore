@interface HKOnboardingSequence
- (HKOnboardingSequence)initWithPages:(id)a3;
@end

@implementation HKOnboardingSequence

- (HKOnboardingSequence)initWithPages:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HKOnboardingSequence;
  v6 = [(HKOnboardingSequence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pages, a3);
    v8 = [(NSArray *)v7->_pages lastObject];
    [v8 setLastPage:1];
  }

  return v7;
}

@end