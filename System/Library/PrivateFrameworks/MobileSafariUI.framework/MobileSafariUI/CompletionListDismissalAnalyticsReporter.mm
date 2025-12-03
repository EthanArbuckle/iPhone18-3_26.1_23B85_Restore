@interface CompletionListDismissalAnalyticsReporter
- (void)reportAnalytics;
@end

@implementation CompletionListDismissalAnalyticsReporter

- (void)reportAnalytics
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didDismissCompletionListWithItemAccepted:self->_acceptedCompletionListItem goKeyTapped:self->_goKeyTapped unifiedFieldContentType:self->_unifiedFieldContentType];
}

@end