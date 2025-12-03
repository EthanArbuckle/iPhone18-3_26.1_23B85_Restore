@interface HFCameraAnalyticsCameraPlayerLaunchEvent
- (void)launchedRecordingWithError:(id)error;
- (void)launchedStreamWithError:(id)error;
@end

@implementation HFCameraAnalyticsCameraPlayerLaunchEvent

- (void)launchedStreamWithError:(id)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  errorCopy = error;
  date = [v4 date];
  startDate = [(HFCameraAnalyticsEvent *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v13 = [HFCameraAnalyticsEvent errorCodeForError:errorCopy];

  v16[0] = HFCameraAnalyticsErrorCode;
  v16[1] = HFCameraAnalyticsProcessName;
  v17[0] = v13;
  v17[1] = processName;
  v16[2] = HFCameraAnalyticsLatency;
  v17[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraStreamLaunch" payload:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)launchedRecordingWithError:(id)error
{
  v30[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  errorCopy = error;
  date = [v4 date];
  startDate = [(HFCameraAnalyticsEvent *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v9 = v8;

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  v10 = MEMORY[0x277CCABB0];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];
  v12 = [v10 numberWithBool:{objc_msgSend(cameraClip, "isComplete")}];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v15 = [HFCameraAnalyticsEvent errorCodeForError:errorCopy];

  v16 = MEMORY[0x277CCABB0];
  cameraClip2 = [(HFCameraAnalyticsEvent *)self cameraClip];
  [cameraClip2 duration];
  v19 = [v16 numberWithUnsignedInteger:v18];

  v20 = MEMORY[0x277CCABB0];
  v21 = MEMORY[0x277CBEAA8];
  cameraClip3 = [(HFCameraAnalyticsEvent *)self cameraClip];
  dateOfOccurrence = [cameraClip3 dateOfOccurrence];
  date2 = [MEMORY[0x277CBEAA8] date];
  v25 = [v20 numberWithInteger:{objc_msgSend(v21, "hf_daysBetweenDates:endDate:", dateOfOccurrence, date2)}];

  v29[0] = HFCameraAnalyticsErrorCode;
  v29[1] = HFCameraAnalyticsIsComplete;
  v30[0] = v15;
  v30[1] = v12;
  v29[2] = HFCameraAnalyticsProcessName;
  v29[3] = HFCameraAnalyticsLatency;
  v30[2] = processName;
  v30[3] = v28;
  v29[4] = HFCameraAnalyticsDuration;
  v29[5] = HFCameraAnalyticsAge;
  v30[4] = v19;
  v30[5] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipLaunch" payload:v26];

  v27 = *MEMORY[0x277D85DE8];
}

@end