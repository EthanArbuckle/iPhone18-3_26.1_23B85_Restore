@interface HFCameraAnalyticsCameraTimelapseLoadEvent
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsCameraTimelapseLoadEvent

- (id)sendEventForState:(unint64_t)state
{
  v17[3] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(HFCameraAnalyticsEvent *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v8 * 1000.0)];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v16[0] = HFCameraAnalyticsLoadState;
  v16[1] = HFCameraAnalyticsProcessName;
  v17[0] = v12;
  v17[1] = processName;
  v16[2] = HFCameraAnalyticsLatency;
  v17[2] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [HFCameraAnalyticsEventHandler sendEventNamed:@"com.apple.Home.CameraClipTimelapseLoad" payload:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end