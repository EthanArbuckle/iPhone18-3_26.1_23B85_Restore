@interface PDSRegisterMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (id)additionalMessageHeaders;
- (id)messageBodyDataOverride;
- (id)parsedIDSMessageResult;
- (void)handleResponseBody:(id)body;
@end

@implementation PDSRegisterMessage

- (id)messageBodyDataOverride
{
  protoRequest = [(PDSRegisterMessage *)self protoRequest];
  data = [protoRequest data];

  return data;
}

- (void)handleResponseBody:(id)body
{
  bodyCopy = body;
  v5 = [[PDSProtoBatchRegisterResp alloc] initWithData:bodyCopy];

  NSLog(&stru_286FB6F08.isa, v5);
  [(PDSRegisterMessage *)self setProtoResponse:v5];
}

- (id)parsedIDSMessageResult
{
  protoResponse = [(PDSRegisterMessage *)self protoResponse];

  if (protoResponse)
  {
    protoResponse = objc_alloc_init(MEMORY[0x277CBEB38]);
    protoResponse2 = [(PDSRegisterMessage *)self protoResponse];
    hasMessage = [protoResponse2 hasMessage];

    if (hasMessage)
    {
      protoResponse3 = [(PDSRegisterMessage *)self protoResponse];
      message = [protoResponse3 message];
      [protoResponse setObject:message forKeyedSubscript:@"message"];
    }

    protoResponse4 = [(PDSRegisterMessage *)self protoResponse];
    hasRetryInterval = [protoResponse4 hasRetryInterval];

    if (hasRetryInterval)
    {
      v10 = MEMORY[0x277CCABB0];
      protoResponse5 = [(PDSRegisterMessage *)self protoResponse];
      v12 = [v10 numberWithLongLong:{objc_msgSend(protoResponse5, "retryInterval")}];
      [protoResponse setObject:v12 forKeyedSubscript:@"retry-interval"];
    }

    protoResponse6 = [(PDSRegisterMessage *)self protoResponse];
    hasServerTimestamp = [protoResponse6 hasServerTimestamp];

    if (hasServerTimestamp)
    {
      v15 = MEMORY[0x277CCABB0];
      protoResponse7 = [(PDSRegisterMessage *)self protoResponse];
      v17 = [v15 numberWithLongLong:{objc_msgSend(protoResponse7, "serverTimestamp")}];
      [protoResponse setObject:v17 forKeyedSubscript:@"current-timestamp-ms"];
    }

    v18 = MEMORY[0x277CCABB0];
    protoResponse8 = [(PDSRegisterMessage *)self protoResponse];
    v20 = [v18 numberWithInt:{objc_msgSend(protoResponse8, "status")}];
    [protoResponse setObject:v20 forKeyedSubscript:@"status"];
  }

  return protoResponse;
}

- (id)additionalMessageHeaders
{
  v16.receiver = self;
  v16.super_class = PDSRegisterMessage;
  additionalMessageHeaders = [(FTIDSMessage *)&v16 additionalMessageHeaders];
  v4 = [additionalMessageHeaders mutableCopy];

  v5 = PDSProtocolVersionNumber();
  stringValue = [v5 stringValue];

  v7 = PDSClientVersionNumber();
  stringValue2 = [v7 stringValue];

  if (stringValue2)
  {
    CFDictionarySetValue(v4, @"x-pds-client-version", stringValue2);
  }

  if (stringValue)
  {
    CFDictionarySetValue(v4, @"x-protocol-version", stringValue);
  }

  CFDictionarySetValue(v4, @"x-pds-client-type", @"PDSKit");
  pushToken = [(FTIDSMessage *)self pushToken];
  _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(v4, @"x-push-token", _FTStringFromBaseData);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PDSRegisterMessage regReason](self, "regReason")}];
  stringValue3 = [v11 stringValue];

  if (stringValue3)
  {
    CFDictionarySetValue(v4, @"x-registration-reason", stringValue3);
  }

  retryCount = [(IDSBaseMessage *)self retryCount];
  stringValue4 = [retryCount stringValue];

  if (stringValue4)
  {
    CFDictionarySetValue(v4, @"x-retry-count", stringValue4);
  }

  return v4;
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v4.receiver = self;
  v4.super_class = PDSRegisterMessage;
  return [(IDSBaseMessage *)&v4 hasRequiredKeys:keys];
}

@end