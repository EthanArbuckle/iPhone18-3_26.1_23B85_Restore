@interface CompletionListDismissalAnalyticsReporter
- (void)reportAnalytics;
@end

@implementation CompletionListDismissalAnalyticsReporter

- (void)reportAnalytics
{
  v3 = [MEMORY[0x277D499B8] sharedLogger];
  [v3 didDismissCompletionListWithItemAccepted:self->_acceptedCompletionListItem goKeyTapped:self->_goKeyTapped unifiedFieldContentType:self->_unifiedFieldContentType];
}

@end