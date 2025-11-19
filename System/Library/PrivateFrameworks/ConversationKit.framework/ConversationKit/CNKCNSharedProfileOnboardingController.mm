@interface CNKCNSharedProfileOnboardingController
- (void)presentOnboardingControllerFrom:(id)a3 withContactStore:(id)a4;
- (void)presentOnboardingControllerOnLaunchIfNeededFrom:(id)a3 withContactStore:(id)a4;
@end

@implementation CNKCNSharedProfileOnboardingController

- (void)presentOnboardingControllerFrom:(id)a3 withContactStore:(id)a4
{
  v6 = MEMORY[0x1E695D1A0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContactStore:v7];

  [(CNKCNSharedProfileOnboardingController *)self setOnboardingController:v9];
  v10 = [(CNKCNSharedProfileOnboardingController *)self onboardingController];
  [v10 startOnboardingOrEditForMode:1 fromViewController:v8];
}

- (void)presentOnboardingControllerOnLaunchIfNeededFrom:(id)a3 withContactStore:(id)a4
{
  v6 = MEMORY[0x1E695D1A0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContactStore:v7];

  [(CNKCNSharedProfileOnboardingController *)self setOnboardingController:v9];
  v10 = [(CNKCNSharedProfileOnboardingController *)self onboardingController];
  [v10 presentOnboardingFlowIfNeededForMode:1 fromViewController:v8];
}

@end