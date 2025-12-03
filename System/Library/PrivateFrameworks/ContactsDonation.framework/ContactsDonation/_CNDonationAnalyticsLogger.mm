@interface _CNDonationAnalyticsLogger
- (_CNDonationAnalyticsLogger)init;
- (void)analysisServiceCheckingIn;
- (void)analysisServiceCriteria:(id)criteria;
- (void)didPerformAnalysis;
- (void)didReportAnalytics;
- (void)didSkipDuplicateAnalysis:(id)analysis;
- (void)noAnalysisToSubmitForEvent:(id)event;
- (void)noAnalyzerAvailable;
- (void)willReportAnalytics;
- (void)willStartAnalysis;
@end

@implementation _CNDonationAnalyticsLogger

- (_CNDonationAnalyticsLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationAnalyticsLogger;
  v2 = [(_CNDonationAnalyticsLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "analytics");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)analysisServiceCheckingIn
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "analysis service checking in", v3, 2u);
  }
}

- (void)analysisServiceCriteria:(id)criteria
{
  v9 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = criteriaCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "analysis service has criteria %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)noAnalyzerAvailable
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "analysis could not find an analyzer and will abort", v3, 2u);
  }
}

- (void)noAnalysisToSubmitForEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = eventCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "attempted to submit an empty analysis for %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)willStartAnalysis
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will start analysis", v3, 2u);
  }
}

- (void)didPerformAnalysis
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did perform analysis", v3, 2u);
  }
}

- (void)willReportAnalytics
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will report analytics", v3, 2u);
  }
}

- (void)didReportAnalytics
{
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did report analytics", v3, 2u);
  }
}

- (void)didSkipDuplicateAnalysis:(id)analysis
{
  v9 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  log_t = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = analysisCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Skipping duplicate analysis. Previous analysis attempted at %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end