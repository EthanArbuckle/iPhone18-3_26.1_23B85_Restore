@interface HMDCameraRecordingFragmentAnalyzedEvent
- (HMDCameraRecordingFragmentAnalyzedEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingFragmentAnalyzedEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"isSuccess";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isSuccess](self, "isSuccess")}];
  v10[0] = v3;
  v9[1] = @"recordingReason";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCameraRecordingFragmentAnalyzedEvent recordingReason](self, "recordingReason")}];
  v10[1] = v4;
  v9[2] = @"motionActive";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isMotionActive](self, "isMotionActive")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)attributeDescriptions
{
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingFragmentAnalyzedEvent;
  attributeDescriptions = [(HMDCameraRecordingLogEvent *)&v12 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingFragmentAnalyzedEvent isSuccess](self, "isSuccess")}];
  v7 = [v5 initWithName:@"isSuccess" value:v6];
  [v4 addObject:v7];

  recordingReason = [(HMDCameraRecordingFragmentAnalyzedEvent *)self recordingReason];
  if ((recordingReason - 1) >= 4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", recordingReason];
  }

  else
  {
    v9 = off_279728948[(recordingReason - 1)];
  }

  v10 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"recordingReason" value:v9];
  [v4 addObject:v10];

  return v4;
}

- (HMDCameraRecordingFragmentAnalyzedEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = HMDCameraRecordingFragmentAnalyzedEvent;
  return [(HMDCameraRecordingLogEvent *)&v6 initWithSessionID:d cameraID:iD sequenceNumber:number];
}

@end