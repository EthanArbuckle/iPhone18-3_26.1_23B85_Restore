@interface HMDCameraRecordingSessionLogEvent
+ (BOOL)isRecordingSessionAlreadyInProgressError:(id)a3;
- (HMDCameraRecordingSessionLogEvent)initWithAccessoryIdentifier:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingSessionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMLogEvent *)self error];
  v5 = [v4 domain];
  [v3 setObject:v5 forKeyedSubscript:@"errorDomain"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [(HMMLogEvent *)self error];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "code")}];
  [v3 setObject:v8 forKeyedSubscript:@"errorCode"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingSessionLogEvent retryCount](self, "retryCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"retryCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSessionLogEvent didReadFirstFragment](self, "didReadFirstFragment")}];
  [v3 setObject:v10 forKeyedSubscript:@"didReadFirstFragment"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v11 forKeyedSubscript:@"durationInMS"];

  v12 = [v3 copy];

  return v12;
}

- (HMDCameraRecordingSessionLogEvent)initWithAccessoryIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingSessionLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;
  }

  return v5;
}

+ (BOOL)isRecordingSessionAlreadyInProgressError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v5 = [v3 code] == 15 || objc_msgSend(v3, "code") == 3303 || objc_msgSend(v3, "code") == 3304;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end