@interface PDSRequestInfo
- (PDSRequestInfo)initWithRegistrationReason:(unint64_t)reason nextHeartbeatDate:(id)date;
@end

@implementation PDSRequestInfo

- (PDSRequestInfo)initWithRegistrationReason:(unint64_t)reason nextHeartbeatDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = PDSRequestInfo;
  v8 = [(PDSRequestInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_regReason = reason;
    objc_storeStrong(&v8->_heartbeatDate, date);
  }

  return v9;
}

@end