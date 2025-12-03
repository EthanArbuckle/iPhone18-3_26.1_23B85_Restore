@interface SummarySharingOnboardingManualDataTypeSelectionViewController
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
@end

@implementation SummarySharingOnboardingManualDataTypeSelectionViewController

- (void)hxui_cancelButtonTapped
{
  memset(v4, 0, 24);
  v4[3] = 12;
  v5 = 0;
  selfCopy = self;

  sub_1B9FEF9F4(self, v4);

  [(SummarySharingOnboardingManualDataTypeSelectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA10CE3C();
}

@end