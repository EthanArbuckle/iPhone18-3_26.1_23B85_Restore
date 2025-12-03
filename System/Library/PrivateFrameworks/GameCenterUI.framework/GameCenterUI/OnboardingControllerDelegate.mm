@interface OnboardingControllerDelegate
- (void)onboardingFlowFinishedWithAction:(unint64_t)action;
@end

@implementation OnboardingControllerDelegate

- (void)onboardingFlowFinishedWithAction:(unint64_t)action
{

  sub_24E25EBB4(action);
}

@end