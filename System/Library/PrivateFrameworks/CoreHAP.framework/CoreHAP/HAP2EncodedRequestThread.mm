@interface HAP2EncodedRequestThread
+ (id)stringFromHAP2EncodedRequestType:(unint64_t)type;
+ (unint64_t)hap2RequestTypeFromBTLERequestType:(unsigned __int8)type;
+ (unsigned)btleRequestTypeFromHAP2RequestType:(unint64_t)type;
- (BOOL)isEncrypted;
- (HAP2EncodedRequestThread)initWithBTLERequest:(id)request enforcePDUBodyLength:(BOOL)length;
- (id)serialize;
- (unint64_t)type;
@end

@implementation HAP2EncodedRequestThread

- (id)serialize
{
  btleRequest = [(HAP2EncodedRequestThread *)self btleRequest];
  serialize = [btleRequest serialize];

  v10 = 0;
  [serialize replaceBytesInRange:0 withBytes:0 length:{&v10, 1}];
  if (self)
  {
    if (self->_enforcePDUBodyLength)
    {
      btleRequest2 = [(HAP2EncodedRequestThread *)self btleRequest];
      body = [btleRequest2 body];

      if (!body)
      {
        v9 = 0;
        [serialize appendBytes:&v9 length:2];
      }
    }
  }

  v7 = [serialize copy];

  return v7;
}

- (unint64_t)type
{
  v3 = objc_opt_class();
  btleRequest = [(HAP2EncodedRequestThread *)self btleRequest];
  v5 = [v3 hap2RequestTypeFromBTLERequestType:{objc_msgSend(btleRequest, "type")}];

  return v5;
}

- (BOOL)isEncrypted
{
  btleRequest = [(HAP2EncodedRequestThread *)self btleRequest];
  isEncrypted = [btleRequest isEncrypted];

  return isEncrypted;
}

- (HAP2EncodedRequestThread)initWithBTLERequest:(id)request enforcePDUBodyLength:(BOOL)length
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = HAP2EncodedRequestThread;
  v8 = [(HAP2EncodedRequestThread *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_btleRequest, request);
    v9->_enforcePDUBodyLength = length;
  }

  return v9;
}

+ (id)stringFromHAP2EncodedRequestType:(unint64_t)type
{
  if (type >= 0x10)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAP2EncodedRequestType (%lu)", type];
  }

  else
  {
    type = off_2786D5138[type];
  }

  return type;
}

+ (unint64_t)hap2RequestTypeFromBTLERequestType:(unsigned __int8)type
{
  if ((type + 1) > 0xFu)
  {
    return 0;
  }

  else
  {
    return qword_22AC9DDD0[(type + 1)];
  }
}

+ (unsigned)btleRequestTypeFromHAP2RequestType:(unint64_t)type
{
  if (type > 0xF)
  {
    return 0;
  }

  else
  {
    return byte_22AC9E020[type];
  }
}

@end