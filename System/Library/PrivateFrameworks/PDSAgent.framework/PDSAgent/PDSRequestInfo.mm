@interface PDSRequestInfo
- (PDSRequestInfo)initWithRegistrationReason:(unint64_t)a3 nextHeartbeatDate:(id)a4;
@end

@implementation PDSRequestInfo

- (PDSRequestInfo)initWithRegistrationReason:(unint64_t)a3 nextHeartbeatDate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PDSRequestInfo;
  v8 = [(PDSRequestInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_regReason = a3;
    objc_storeStrong(&v8->_heartbeatDate, a4);
  }

  return v9;
}

@end