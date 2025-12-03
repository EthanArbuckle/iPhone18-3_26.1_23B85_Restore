@interface CRKToolCommandUserInfo
- (CRKToolCommandUserInfo)initWithSessionIdentifier:(id)identifier;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKToolCommandUserInfo

- (CRKToolCommandUserInfo)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CRKToolCommandUserInfo;
  v5 = [(CRKToolCommandUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = +[CRKSystemInfo sharedSystemInfo];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "platform")}];
  [v3 setObject:v5 forKeyedSubscript:@"instructorPlatform"];

  appVersion = [(CRKToolCommandUserInfo *)self appVersion];
  [v3 setObject:appVersion forKeyedSubscript:@"instructorClassroomAppVersion"];

  systemVersion = [v4 systemVersion];
  [v3 setObject:systemVersion forKeyedSubscript:@"instructorOSVersion"];

  sessionIdentifier = [(CRKToolCommandUserInfo *)self sessionIdentifier];
  sessionIdentifier2 = [(CRKToolCommandUserInfo *)self sessionIdentifier];

  if (sessionIdentifier2)
  {
    [v3 setObject:sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  }

  v10 = [v3 copy];

  return v10;
}

@end