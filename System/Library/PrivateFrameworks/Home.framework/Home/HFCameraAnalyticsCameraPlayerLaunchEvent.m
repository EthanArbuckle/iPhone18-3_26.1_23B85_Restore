@interface HFCameraAnalyticsCameraPlayerLaunchEvent
- (void)launchedRecordingWithError:(id)a3;
- (void)launchedStreamWithError:(id)a3;
@end

@implementation HFCameraAnalyticsCameraPlayerLaunchEvent

- (void)launchedStreamWithError:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(HFCameraAnalyticsEvent *)self startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  v11 = [MEMORY[0x277CCAC38] processInfo];
  v12 = [v11 processName];

  v13 = [HFCameraAnalyticsEvent errorCodeForError:v5];

  v16[0] = HFCameraAnalyticsErrorCode;
  v16[1] = HFCameraAnalyticsProcessName;
  v17[0] = v13;
  v17[1] = v12;
  v16[2] = HFCameraAnalyticsLatency;
  v17[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraStreamLaunch" payload:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)launchedRecordingWithError:(id)a3
{
  v30[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(HFCameraAnalyticsEvent *)self startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 * 1000.0)];
  v10 = MEMORY[0x277CCABB0];
  v11 = [(HFCameraAnalyticsEvent *)self cameraClip];
  v12 = [v10 numberWithBool:{objc_msgSend(v11, "isComplete")}];

  v13 = [MEMORY[0x277CCAC38] processInfo];
  v14 = [v13 processName];

  v15 = [HFCameraAnalyticsEvent errorCodeForError:v5];

  v16 = MEMORY[0x277CCABB0];
  v17 = [(HFCameraAnalyticsEvent *)self cameraClip];
  [v17 duration];
  v19 = [v16 numberWithUnsignedInteger:v18];

  v20 = MEMORY[0x277CCABB0];
  v21 = MEMORY[0x277CBEAA8];
  v22 = [(HFCameraAnalyticsEvent *)self cameraClip];
  v23 = [v22 dateOfOccurrence];
  v24 = [MEMORY[0x277CBEAA8] date];
  v25 = [v20 numberWithInteger:{objc_msgSend(v21, "hf_daysBetweenDates:endDate:", v23, v24)}];

  v29[0] = HFCameraAnalyticsErrorCode;
  v29[1] = HFCameraAnalyticsIsComplete;
  v30[0] = v15;
  v30[1] = v12;
  v29[2] = HFCameraAnalyticsProcessName;
  v29[3] = HFCameraAnalyticsLatency;
  v30[2] = v14;
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