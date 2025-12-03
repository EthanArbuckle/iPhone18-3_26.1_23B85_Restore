@interface DRSSubmitLogRequest
- (BOOL)isEqualToRequest:(id)request;
- (id)_initWithSubmitLogRequestMO_ON_MOC_QUEUE:(id)e;
- (id)replyForMessage:(id)message;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSSubmitLogRequest

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v7.receiver = self;
  v7.super_class = DRSSubmitLogRequest;
  [(DRSRequest *)&v7 _configureRequestMO:oCopy];
  v5 = oCopy;
  logType = [(DRSRequest *)self logType];
  [v5 setLogType:logType];
}

- (id)_initWithSubmitLogRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v8.receiver = self;
  v8.super_class = DRSSubmitLogRequest;
  v5 = [(DRSRequest *)&v8 _initWithRequestMO_ON_MOC_QUEUE:eCopy];
  if (v5)
  {
    logType = [eCopy logType];
    [v5 setLogType:logType];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = DRSSubmitLogRequest;
  if ([(DRSRequest *)&v10 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    logType = [(DRSRequest *)self logType];
    logType2 = [v5 logType];

    v8 = [logType isEqualToString:logType2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)replyForMessage:(id)message
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    requestState = [(DRSRequest *)self requestState];
    if (DRSRequestOutcomeForState(requestState) == 1 && (requestState == 4357 || requestState == 4352))
    {
      xpc_dictionary_set_BOOL(reply, "SubmitLog_DidSucceed", 0);
      errorDescription = [(DRSRequest *)self errorDescription];
      v7 = errorDescription;
      v8 = @"Unknown";
      if (errorDescription)
      {
        v8 = errorDescription;
      }

      v9 = v8;

      uTF8String = [(__CFString *)v9 UTF8String];
      xpc_dictionary_set_string(reply, "SubmitLog_FailureReason", uTF8String);
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