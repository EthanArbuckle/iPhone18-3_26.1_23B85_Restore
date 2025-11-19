@interface HMDCameraRecordingSessionCoordinationLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingSessionCoordinationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSessionCoordinationLogEvent isUsingRemoteDeviceAnalysisNode](self, "isUsingRemoteDeviceAnalysisNode")}];
  [v3 setObject:v4 forKeyedSubscript:@"analysisNodeIsRemoteDevice"];

  v5 = [(HMMLogEvent *)self error];
  v6 = [v5 domain];
  [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(HMMLogEvent *)self error];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "code")}];
  [v3 setObject:v9 forKeyedSubscript:@"errorCode"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSessionCoordinationLogEvent retryCount](self, "retryCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"retryCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v11 forKeyedSubscript:@"durationInMS"];

  v12 = [v3 copy];

  return v12;
}

@end