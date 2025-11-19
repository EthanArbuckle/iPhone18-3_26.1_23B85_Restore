@interface PDSRegisterMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (id)additionalMessageHeaders;
- (id)messageBodyDataOverride;
- (id)parsedIDSMessageResult;
- (void)handleResponseBody:(id)a3;
@end

@implementation PDSRegisterMessage

- (id)messageBodyDataOverride
{
  v2 = [(PDSRegisterMessage *)self protoRequest];
  v3 = [v2 data];

  return v3;
}

- (void)handleResponseBody:(id)a3
{
  v4 = a3;
  v5 = [[PDSProtoBatchRegisterResp alloc] initWithData:v4];

  NSLog(&stru_286FB6F08.isa, v5);
  [(PDSRegisterMessage *)self setProtoResponse:v5];
}

- (id)parsedIDSMessageResult
{
  v3 = [(PDSRegisterMessage *)self protoResponse];

  if (v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [(PDSRegisterMessage *)self protoResponse];
    v5 = [v4 hasMessage];

    if (v5)
    {
      v6 = [(PDSRegisterMessage *)self protoResponse];
      v7 = [v6 message];
      [v3 setObject:v7 forKeyedSubscript:@"message"];
    }

    v8 = [(PDSRegisterMessage *)self protoResponse];
    v9 = [v8 hasRetryInterval];

    if (v9)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [(PDSRegisterMessage *)self protoResponse];
      v12 = [v10 numberWithLongLong:{objc_msgSend(v11, "retryInterval")}];
      [v3 setObject:v12 forKeyedSubscript:@"retry-interval"];
    }

    v13 = [(PDSRegisterMessage *)self protoResponse];
    v14 = [v13 hasServerTimestamp];

    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [(PDSRegisterMessage *)self protoResponse];
      v17 = [v15 numberWithLongLong:{objc_msgSend(v16, "serverTimestamp")}];
      [v3 setObject:v17 forKeyedSubscript:@"current-timestamp-ms"];
    }

    v18 = MEMORY[0x277CCABB0];
    v19 = [(PDSRegisterMessage *)self protoResponse];
    v20 = [v18 numberWithInt:{objc_msgSend(v19, "status")}];
    [v3 setObject:v20 forKeyedSubscript:@"status"];
  }

  return v3;
}

- (id)additionalMessageHeaders
{
  v16.receiver = self;
  v16.super_class = PDSRegisterMessage;
  v3 = [(FTIDSMessage *)&v16 additionalMessageHeaders];
  v4 = [v3 mutableCopy];

  v5 = PDSProtocolVersionNumber();
  v6 = [v5 stringValue];

  v7 = PDSClientVersionNumber();
  v8 = [v7 stringValue];

  if (v8)
  {
    CFDictionarySetValue(v4, @"x-pds-client-version", v8);
  }

  if (v6)
  {
    CFDictionarySetValue(v4, @"x-protocol-version", v6);
  }

  CFDictionarySetValue(v4, @"x-pds-client-type", @"PDSKit");
  v9 = [(FTIDSMessage *)self pushToken];
  v10 = [v9 _FTStringFromBaseData];

  if (v10)
  {
    CFDictionarySetValue(v4, @"x-push-token", v10);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PDSRegisterMessage regReason](self, "regReason")}];
  v12 = [v11 stringValue];

  if (v12)
  {
    CFDictionarySetValue(v4, @"x-registration-reason", v12);
  }

  v13 = [(IDSBaseMessage *)self retryCount];
  v14 = [v13 stringValue];

  if (v14)
  {
    CFDictionarySetValue(v4, @"x-retry-count", v14);
  }

  return v4;
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v4.receiver = self;
  v4.super_class = PDSRegisterMessage;
  return [(IDSBaseMessage *)&v4 hasRequiredKeys:a3];
}

@end