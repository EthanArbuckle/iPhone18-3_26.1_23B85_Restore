@interface DRSSubmitLogRequest
- (BOOL)isEqualToRequest:(id)a3;
- (id)_initWithSubmitLogRequestMO_ON_MOC_QUEUE:(id)a3;
- (id)replyForMessage:(id)a3;
- (void)_configureRequestMO:(id)a3;
@end

@implementation DRSSubmitLogRequest

- (void)_configureRequestMO:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DRSSubmitLogRequest;
  [(DRSRequest *)&v7 _configureRequestMO:v4];
  v5 = v4;
  v6 = [(DRSRequest *)self logType];
  [v5 setLogType:v6];
}

- (id)_initWithSubmitLogRequestMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DRSSubmitLogRequest;
  v5 = [(DRSRequest *)&v8 _initWithRequestMO_ON_MOC_QUEUE:v4];
  if (v5)
  {
    v6 = [v4 logType];
    [v5 setLogType:v6];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DRSSubmitLogRequest;
  if ([(DRSRequest *)&v10 isEqualToRequest:v4])
  {
    v5 = v4;
    v6 = [(DRSRequest *)self logType];
    v7 = [v5 logType];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)replyForMessage:(id)a3
{
  reply = xpc_dictionary_create_reply(a3);
  if (reply)
  {
    v5 = [(DRSRequest *)self requestState];
    if (DRSRequestOutcomeForState(v5) == 1 && (v5 == 4357 || v5 == 4352))
    {
      xpc_dictionary_set_BOOL(reply, "SubmitLog_DidSucceed", 0);
      v6 = [(DRSRequest *)self errorDescription];
      v7 = v6;
      v8 = @"Unknown";
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      v10 = [(__CFString *)v9 UTF8String];
      xpc_dictionary_set_string(reply, "SubmitLog_FailureReason", v10);
    }

    else
    {
      xpc_dictionary_set_BOOL(reply, "SubmitLog_DidSucceed", 1);
    }

    v11 = reply;
  }

  return reply;
}

@end