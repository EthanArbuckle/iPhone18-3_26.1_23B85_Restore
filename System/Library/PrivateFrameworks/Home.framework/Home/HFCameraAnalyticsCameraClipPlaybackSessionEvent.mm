@interface HFCameraAnalyticsCameraClipPlaybackSessionEvent
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsCameraClipPlaybackSessionEvent

- (id)sendEventForState:(unint64_t)state
{
  v41 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];

  if (cameraClip)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = [(HFCameraAnalyticsEvent *)self startDate];
    [date timeIntervalSinceDate:startDate];
    v9 = v8;

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
    v10 = MEMORY[0x277CCABB0];
    cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
    v36 = [v10 numberWithBool:{objc_msgSend(cameraClip2, "isComplete")}];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v14 = MEMORY[0x277CCABB0];
    cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
    [cameraClip3 duration];
    v17 = [v14 numberWithUnsignedInteger:v16];

    v18 = MEMORY[0x277CCABB0];
    v19 = MEMORY[0x277CBEAA8];
    cameraClip4 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence = [cameraClip4 dateOfOccurrence];
    date2 = [MEMORY[0x277CBEAA8] date];
    v23 = [v18 numberWithInteger:{objc_msgSend(v19, "hf_minutesBetweenDates:endDate:", dateOfOccurrence, date2)}];

    v24 = MEMORY[0x277CCABB0];
    v25 = v34;
    v26 = MEMORY[0x277CBEAA8];
    cameraClip5 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence2 = [cameraClip5 dateOfOccurrence];
    date3 = [MEMORY[0x277CBEAA8] date];
    v30 = [v24 numberWithInteger:{objc_msgSend(v26, "hf_daysBetweenDates:endDate:", dateOfOccurrence2, date3)}];

    v37[0] = HFCameraAnalyticsErrorState;
    v37[1] = HFCameraAnalyticsIsComplete;
    v38[0] = v13;
    v38[1] = v36;
    v37[2] = HFCameraAnalyticsProcessName;
    v37[3] = HFCameraAnalyticsLatency;
    v38[2] = processName;
    v38[3] = v34;
    v37[4] = HFCameraAnalyticsDuration;
    v37[5] = HFCameraAnalyticsAge;
    v38[4] = v17;
    v38[5] = v30;
    v37[6] = HFCameraAnalyticsAgeInMinutes;
    v38[6] = v23;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:7];
    [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipPlaybackSession" payload:v31];
  }

  else
  {
    v25 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_ERROR, "Unable to send event for %@", buf, 0xCu);
    }

    v31 = MEMORY[0x277CBEC10];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

@end