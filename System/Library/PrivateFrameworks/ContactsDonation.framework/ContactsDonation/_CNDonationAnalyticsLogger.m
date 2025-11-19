@interface _CNDonationAnalyticsLogger
- (_CNDonationAnalyticsLogger)init;
- (void)analysisServiceCheckingIn;
- (void)analysisServiceCriteria:(id)a3;
- (void)didPerformAnalysis;
- (void)didReportAnalytics;
- (void)didSkipDuplicateAnalysis:(id)a3;
- (void)noAnalysisToSubmitForEvent:(id)a3;
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
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "analysis service checking in", v3, 2u);
  }
}

- (void)analysisServiceCriteria:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "analysis service has criteria %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)noAnalyzerAvailable
{
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "analysis could not find an analyzer and will abort", v3, 2u);
  }
}

- (void)noAnalysisToSubmitForEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "attempted to submit an empty analysis for %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)willStartAnalysis
{
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will start analysis", v3, 2u);
  }
}

- (void)didPerformAnalysis
{
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did perform analysis", v3, 2u);
  }
}

- (void)willReportAnalytics
{
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will report analytics", v3, 2u);
  }
}

- (void)didReportAnalytics
{
  v2 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did report analytics", v3, 2u);
  }
}

- (void)didSkipDuplicateAnalysis:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAnalyticsLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_DEFAULT, "Skipping duplicate analysis. Previous analysis attempted at %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end