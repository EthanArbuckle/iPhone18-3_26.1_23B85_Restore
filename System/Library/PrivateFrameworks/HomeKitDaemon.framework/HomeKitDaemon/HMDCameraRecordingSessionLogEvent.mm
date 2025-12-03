@interface HMDCameraRecordingSessionLogEvent
+ (BOOL)isRecordingSessionAlreadyInProgressError:(id)error;
- (HMDCameraRecordingSessionLogEvent)initWithAccessoryIdentifier:(id)identifier;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingSessionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  error = [(HMMLogEvent *)self error];
  domain = [error domain];
  [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

  v6 = MEMORY[0x277CCABB0];
  error2 = [(HMMLogEvent *)self error];
  v8 = [v6 numberWithInteger:{objc_msgSend(error2, "code")}];
  [dictionary setObject:v8 forKeyedSubscript:@"errorCode"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingSessionLogEvent retryCount](self, "retryCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"retryCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSessionLogEvent didReadFirstFragment](self, "didReadFirstFragment")}];
  [dictionary setObject:v10 forKeyedSubscript:@"didReadFirstFragment"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v11 forKeyedSubscript:@"durationInMS"];

  v12 = [dictionary copy];

  return v12;
}

- (HMDCameraRecordingSessionLogEvent)initWithAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingSessionLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v6;
  }

  return v5;
}

+ (BOOL)isRecordingSessionAlreadyInProgressError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v5 = [errorCopy code] == 15 || objc_msgSend(errorCopy, "code") == 3303 || objc_msgSend(errorCopy, "code") == 3304;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end