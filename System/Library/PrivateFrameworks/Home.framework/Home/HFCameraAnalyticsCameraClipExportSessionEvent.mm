@interface HFCameraAnalyticsCameraClipExportSessionEvent
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsCameraClipExportSessionEvent

- (id)sendEventForState:(unint64_t)state
{
  v38 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];

  if (cameraClip)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = [(HFCameraAnalyticsEvent *)self startDate];
    [date timeIntervalSinceDate:startDate];
    v9 = v8;

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
    v10 = MEMORY[0x277CCABB0];
    cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
    v33 = [v10 numberWithBool:{objc_msgSend(cameraClip2, "isComplete")}];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v15 = MEMORY[0x277CCABB0];
    cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
    [cameraClip3 duration];
    v18 = [v15 numberWithUnsignedInteger:(v17 * 1000.0)];

    v19 = MEMORY[0x277CCABB0];
    v20 = MEMORY[0x277CBEAA8];
    cameraClip4 = [(HFCameraAnalyticsEvent *)self cameraClip];
    dateOfOccurrence = [cameraClip4 dateOfOccurrence];
    date2 = [MEMORY[0x277CBEAA8] date];
    v24 = [v19 numberWithInteger:{objc_msgSend(v20, "hf_daysBetweenDates:endDate:", dateOfOccurrence, date2)}];

    v25 = MEMORY[0x277CCABB0];
    v26 = v32;
    [(HFCameraAnalyticsCameraClipExportSessionEvent *)self recordingDuration];
    v28 = [v25 numberWithUnsignedInt:(v27 * 1000.0)];
    v34[0] = HFCameraAnalyticsErrorState;
    v34[1] = HFCameraAnalyticsExportedLength;
    v35[0] = v14;
    v35[1] = v28;
    v34[2] = HFCameraAnalyticsIsComplete;
    v34[3] = HFCameraAnalyticsProcessName;
    v35[2] = v33;
    v35[3] = processName;
    v34[4] = HFCameraAnalyticsLatency;
    v34[5] = HFCameraAnalyticsDuration;
    v35[4] = v32;
    v35[5] = v18;
    v34[6] = HFCameraAnalyticsAge;
    v35[6] = v24;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];
    [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipExportSession" payload:v29];
  }

  else
  {
    v26 = HFLogForCategory(6uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_ERROR, "Unable to send event for %@", buf, 0xCu);
    }

    v29 = MEMORY[0x277CBEC10];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

@end