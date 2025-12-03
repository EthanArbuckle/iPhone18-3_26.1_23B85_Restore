@interface SummarySharingOnboardingDataTypeSelectionViewController
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
@end

@implementation SummarySharingOnboardingDataTypeSelectionViewController

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA1E1048();
}

- (void)hxui_cancelButtonTapped
{
  memset(v4, 0, 24);
  v4[3] = 12;
  v5 = 0;
  selfCopy = self;

  sub_1B9FEF9F4(self, v4);

  [(SummarySharingOnboardingDataTypeSelectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

@end