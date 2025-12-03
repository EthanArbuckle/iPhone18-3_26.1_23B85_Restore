@interface CNKCNSharedProfileOnboardingController
- (void)presentOnboardingControllerFrom:(id)from withContactStore:(id)store;
- (void)presentOnboardingControllerOnLaunchIfNeededFrom:(id)from withContactStore:(id)store;
@end

@implementation CNKCNSharedProfileOnboardingController

- (void)presentOnboardingControllerFrom:(id)from withContactStore:(id)store
{
  v6 = MEMORY[0x1E695D1A0];
  storeCopy = store;
  fromCopy = from;
  v9 = [[v6 alloc] initWithContactStore:storeCopy];

  [(CNKCNSharedProfileOnboardingController *)self setOnboardingController:v9];
  onboardingController = [(CNKCNSharedProfileOnboardingController *)self onboardingController];
  [onboardingController startOnboardingOrEditForMode:1 fromViewController:fromCopy];
}

- (void)presentOnboardingControllerOnLaunchIfNeededFrom:(id)from withContactStore:(id)store
{
  v6 = MEMORY[0x1E695D1A0];
  storeCopy = store;
  fromCopy = from;
  v9 = [[v6 alloc] initWithContactStore:storeCopy];

  [(CNKCNSharedProfileOnboardingController *)self setOnboardingController:v9];
  onboardingController = [(CNKCNSharedProfileOnboardingController *)self onboardingController];
  [onboardingController presentOnboardingFlowIfNeededForMode:1 fromViewController:fromCopy];
}

@end