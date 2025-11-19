@interface CRKToolCommandUserInfo
- (CRKToolCommandUserInfo)initWithSessionIdentifier:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKToolCommandUserInfo

- (CRKToolCommandUserInfo)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKToolCommandUserInfo;
  v5 = [(CRKToolCommandUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

  v6 = [(CRKToolCommandUserInfo *)self appVersion];
  [v3 setObject:v6 forKeyedSubscript:@"instructorClassroomAppVersion"];

  v7 = [v4 systemVersion];
  [v3 setObject:v7 forKeyedSubscript:@"instructorOSVersion"];

  v8 = [(CRKToolCommandUserInfo *)self sessionIdentifier];
  v9 = [(CRKToolCommandUserInfo *)self sessionIdentifier];

  if (v9)
  {
    [v3 setObject:v8 forKeyedSubscript:@"sessionIdentifier"];
  }

  v10 = [v3 copy];

  return v10;
}

@end