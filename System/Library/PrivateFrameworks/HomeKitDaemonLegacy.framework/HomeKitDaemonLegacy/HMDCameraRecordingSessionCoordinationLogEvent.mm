@interface HMDCameraRecordingSessionCoordinationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingSessionCoordinationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSessionCoordinationLogEvent isUsingRemoteDeviceAnalysisNode](self, "isUsingRemoteDeviceAnalysisNode")}];
  [dictionary setObject:v4 forKeyedSubscript:@"analysisNodeIsRemoteDevice"];

  error = [(HMMLogEvent *)self error];
  domain = [error domain];
  [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

  v7 = MEMORY[0x277CCABB0];
  error2 = [(HMMLogEvent *)self error];
  v9 = [v7 numberWithInteger:{objc_msgSend(error2, "code")}];
  [dictionary setObject:v9 forKeyedSubscript:@"errorCode"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSessionCoordinationLogEvent retryCount](self, "retryCount")}];
  [dictionary setObject:v10 forKeyedSubscript:@"retryCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v11 forKeyedSubscript:@"durationInMS"];

  v12 = [dictionary copy];

  return v12;
}

@end