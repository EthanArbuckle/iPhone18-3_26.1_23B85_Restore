@interface ASProtocol12_1_Short
- (id)requestURLStringWithTask:(id)task;
@end

@implementation ASProtocol12_1_Short

- (id)requestURLStringWithTask:(id)task
{
  taskCopy = task;
  if ([taskCopy commandCode] == -1)
  {
    v25.receiver = self;
    v25.super_class = ASProtocol12_1_Short;
    v18 = [(ASProtocol *)&v25 requestURLStringWithTask:taskCopy];
  }

  else
  {
    taskManager = [taskCopy taskManager];
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:64];
    shortProtocolVersion = [(ASProtocol12_1_Short *)self shortProtocolVersion];
    [v6 appendBytes:&shortProtocolVersion length:1];
    shortProtocolVersion = [taskCopy commandCode];
    [v6 appendBytes:&shortProtocolVersion length:1];
    v23 = 1033;
    [v6 appendBytes:&v23 length:2];
    deviceID = [taskManager deviceID];
    v8 = [deviceID dataUsingEncoding:4];

    shortProtocolVersion = [v8 length];
    [v6 appendBytes:&shortProtocolVersion length:1];
    v21 = v8;
    [v6 appendData:v8];
    policyKey = [taskManager policyKey];
    if (!policyKey)
    {
      policyKey = @"0";
    }

    v20 = policyKey;
    longLongValue = [(__CFString *)policyKey longLongValue];
    shortProtocolVersion = 4;
    [v6 appendBytes:&shortProtocolVersion length:1];
    [v6 appendBytes:&longLongValue length:4];
    deviceType = [taskManager deviceType];
    v11 = [deviceType dataUsingEncoding:4];

    shortProtocolVersion = [v11 length];
    [v6 appendBytes:&shortProtocolVersion length:1];
    [v6 appendData:v11];
    user = [taskManager user];
    v13 = [(ASProtocol *)self _usernameOnlyPortionOfUserString:user];

    v14 = [v13 dataUsingEncoding:4];
    shortProtocolVersion = 8;
    [v6 appendBytes:&shortProtocolVersion length:1];
    shortProtocolVersion = [v14 length];
    [v6 appendBytes:&shortProtocolVersion length:1];
    [v6 appendData:v14];
    parameterData = [taskCopy parameterData];
    if (parameterData)
    {
      [v6 appendData:parameterData];
    }

    v16 = [v6 base64EncodedStringWithOptions:0];
    v17 = [(ASProtocol *)self _requestLinePrefixWithTask:taskCopy];
    v18 = [v17 stringByAppendingString:v16];
  }

  return v18;
}

@end