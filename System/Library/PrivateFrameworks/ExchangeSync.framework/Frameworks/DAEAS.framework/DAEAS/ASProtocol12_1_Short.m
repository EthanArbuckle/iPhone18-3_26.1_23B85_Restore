@interface ASProtocol12_1_Short
- (id)requestURLStringWithTask:(id)a3;
@end

@implementation ASProtocol12_1_Short

- (id)requestURLStringWithTask:(id)a3
{
  v4 = a3;
  if ([v4 commandCode] == -1)
  {
    v25.receiver = self;
    v25.super_class = ASProtocol12_1_Short;
    v18 = [(ASProtocol *)&v25 requestURLStringWithTask:v4];
  }

  else
  {
    v5 = [v4 taskManager];
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:64];
    v24 = [(ASProtocol12_1_Short *)self shortProtocolVersion];
    [v6 appendBytes:&v24 length:1];
    v24 = [v4 commandCode];
    [v6 appendBytes:&v24 length:1];
    v23 = 1033;
    [v6 appendBytes:&v23 length:2];
    v7 = [v5 deviceID];
    v8 = [v7 dataUsingEncoding:4];

    v24 = [v8 length];
    [v6 appendBytes:&v24 length:1];
    v21 = v8;
    [v6 appendData:v8];
    v9 = [v5 policyKey];
    if (!v9)
    {
      v9 = @"0";
    }

    v20 = v9;
    v22 = [(__CFString *)v9 longLongValue];
    v24 = 4;
    [v6 appendBytes:&v24 length:1];
    [v6 appendBytes:&v22 length:4];
    v10 = [v5 deviceType];
    v11 = [v10 dataUsingEncoding:4];

    v24 = [v11 length];
    [v6 appendBytes:&v24 length:1];
    [v6 appendData:v11];
    v12 = [v5 user];
    v13 = [(ASProtocol *)self _usernameOnlyPortionOfUserString:v12];

    v14 = [v13 dataUsingEncoding:4];
    v24 = 8;
    [v6 appendBytes:&v24 length:1];
    v24 = [v14 length];
    [v6 appendBytes:&v24 length:1];
    [v6 appendData:v14];
    v15 = [v4 parameterData];
    if (v15)
    {
      [v6 appendData:v15];
    }

    v16 = [v6 base64EncodedStringWithOptions:0];
    v17 = [(ASProtocol *)self _requestLinePrefixWithTask:v4];
    v18 = [v17 stringByAppendingString:v16];
  }

  return v18;
}

@end