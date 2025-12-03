@interface GKOnboardingMetricsHandler
- (GKOnboardingMetricsHandler)initWithReporter:(id)reporter refApp:(id)app;
- (void)onboardingDidBegin;
- (void)onboardingDidEnd;
- (void)reportEventForOnboardingFlowAction:(unint64_t)action;
@end

@implementation GKOnboardingMetricsHandler

- (GKOnboardingMetricsHandler)initWithReporter:(id)reporter refApp:(id)app
{
  reporterCopy = reporter;
  v9.receiver = self;
  v9.super_class = GKOnboardingMetricsHandler;
  v6 = [(GKOnboardingMetricsHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(GKOnboardingMetricsHandler *)v6 setReporter:reporterCopy];
  }

  return v7;
}

- (void)onboardingDidBegin
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKOnboardingMetricsHandler *)self setAnalyticsStartTime:Current];
}

- (void)onboardingDidEnd
{
  reporter = [(GKOnboardingMetricsHandler *)self reporter];
  v3 = *MEMORY[0x277D0BEF8];
  [(GKOnboardingMetricsHandler *)self analyticsStartTime];
  v5 = v4;
  refApp = [(GKOnboardingMetricsHandler *)self refApp];
  [reporter reportOnboardingEventForType:v3 withStartTimestamp:refApp refApp:v5];
}

- (void)reportEventForOnboardingFlowAction:(unint64_t)action
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithUnsignedInteger:action];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "Onboarding flow finished with action %@", &v14, 0xCu);
  }

  reporter = [(GKOnboardingMetricsHandler *)self reporter];
  v11 = *MEMORY[0x277D0BEB0];
  [reporter reportEvent:*MEMORY[0x277D0BEB0] type:*MEMORY[0x277D0BEE8]];

  if (action <= 9)
  {
    v12 = qword_27966C878[action];
    reporter2 = [(GKOnboardingMetricsHandler *)self reporter];
    [reporter2 reportEvent:v11 type:*v12];
  }
}

@end