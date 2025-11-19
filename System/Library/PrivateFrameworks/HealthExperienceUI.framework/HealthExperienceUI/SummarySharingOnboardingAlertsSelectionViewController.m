@interface SummarySharingOnboardingAlertsSelectionViewController
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
@end

@implementation SummarySharingOnboardingAlertsSelectionViewController

- (void)hxui_primaryFooterButtonTapped
{
  v2 = self;
  sub_1BA35D788();
}

- (void)hxui_cancelButtonTapped
{
  memset(v4, 0, 24);
  v4[3] = 12;
  v5 = 0;
  v3 = self;

  sub_1B9FEF9F4(self, v4);

  [(SummarySharingOnboardingAlertsSelectionViewController *)v3 dismissViewControllerAnimated:1 completion:0];
}

@end