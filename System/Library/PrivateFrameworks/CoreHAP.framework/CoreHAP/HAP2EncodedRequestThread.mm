@interface HAP2EncodedRequestThread
+ (id)stringFromHAP2EncodedRequestType:(unint64_t)a3;
+ (unint64_t)hap2RequestTypeFromBTLERequestType:(unsigned __int8)a3;
+ (unsigned)btleRequestTypeFromHAP2RequestType:(unint64_t)a3;
- (BOOL)isEncrypted;
- (HAP2EncodedRequestThread)initWithBTLERequest:(id)a3 enforcePDUBodyLength:(BOOL)a4;
- (id)serialize;
- (unint64_t)type;
@end

@implementation HAP2EncodedRequestThread

- (id)serialize
{
  v3 = [(HAP2EncodedRequestThread *)self btleRequest];
  v4 = [v3 serialize];

  v10 = 0;
  [v4 replaceBytesInRange:0 withBytes:0 length:{&v10, 1}];
  if (self)
  {
    if (self->_enforcePDUBodyLength)
    {
      v5 = [(HAP2EncodedRequestThread *)self btleRequest];
      v6 = [v5 body];

      if (!v6)
      {
        v9 = 0;
        [v4 appendBytes:&v9 length:2];
      }
    }
  }

  v7 = [v4 copy];

  return v7;
}

- (unint64_t)type
{
  v3 = objc_opt_class();
  v4 = [(HAP2EncodedRequestThread *)self btleRequest];
  v5 = [v3 hap2RequestTypeFromBTLERequestType:{objc_msgSend(v4, "type")}];

  return v5;
}

- (BOOL)isEncrypted
{
  v2 = [(HAP2EncodedRequestThread *)self btleRequest];
  v3 = [v2 isEncrypted];

  return v3;
}

- (HAP2EncodedRequestThread)initWithBTLERequest:(id)a3 enforcePDUBodyLength:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HAP2EncodedRequestThread;
  v8 = [(HAP2EncodedRequestThread *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_btleRequest, a3);
    v9->_enforcePDUBodyLength = a4;
  }

  return v9;
}

+ (id)stringFromHAP2EncodedRequestType:(unint64_t)a3
{
  if (a3 >= 0x10)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAP2EncodedRequestType (%lu)", a3];
  }

  else
  {
    v4 = off_2786D5138[a3];
  }

  return v4;
}

+ (unint64_t)hap2RequestTypeFromBTLERequestType:(unsigned __int8)a3
{
  if ((a3 + 1) > 0xFu)
  {
    return 0;
  }

  else
  {
    return qword_22AC9DDD0[(a3 + 1)];
  }
}

+ (unsigned)btleRequestTypeFromHAP2RequestType:(unint64_t)a3
{
  if (a3 > 0xF)
  {
    return 0;
  }

  else
  {
    return byte_22AC9E020[a3];
  }
}

@end