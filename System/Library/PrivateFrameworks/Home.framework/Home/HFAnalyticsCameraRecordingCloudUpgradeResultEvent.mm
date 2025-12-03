@interface HFAnalyticsCameraRecordingCloudUpgradeResultEvent
- (HFAnalyticsCameraRecordingCloudUpgradeResultEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsCameraRecordingCloudUpgradeResultEvent

- (HFAnalyticsCameraRecordingCloudUpgradeResultEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"numCameras"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti_12.isa);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"offerPresented"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_ErrorHfanalyti_13.isa);
  }

  objc_opt_class();
  v11 = [dataCopy objectForKeyedSubscript:@"iCloudUpgradeState"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    NSLog(&cfstr_ErrorHfanalyti_14.isa);
  }

  v16.receiver = self;
  v16.super_class = HFAnalyticsCameraRecordingCloudUpgradeResultEvent;
  v14 = [(HFAnalyticsEvent *)&v16 initWithEventType:2];
  if (v14)
  {
    v14->_numCamerasWithRecording = [v7 integerValue];
    v14->_iCloudUpgradeOfferPresented = [v10 integerValue];
    v14->_iCloudPlanUpgradeState = [v13 integerValue];
  }

  return v14;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsCameraRecordingCloudUpgradeResultEvent;
  payload = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [payload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsCameraRecordingCloudUpgradeResultEvent numCamerasWithRecording](self, "numCamerasWithRecording")}];
  [v4 setObject:v5 forKeyedSubscript:@"numCamerasWithRecording"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsCameraRecordingCloudUpgradeResultEvent iCloudUpgradeOfferPresented](self, "iCloudUpgradeOfferPresented")}];
  [v4 setObject:v6 forKeyedSubscript:@"iCloudUpgradeOfferPresented"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsCameraRecordingCloudUpgradeResultEvent iCloudPlanUpgradeState](self, "iCloudPlanUpgradeState")}];
  [v4 setObject:v7 forKeyedSubscript:@"iCloudPlanUpgradeState"];

  return v4;
}

@end