@interface HSUpdateRequest
+ (id)requestWithDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d connectionType:(int64_t)type;
- (BOOL)isConcurrent;
- (HSUpdateRequest)initWithDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d connectionType:(int64_t)type;
- (double)timeoutInterval;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSUpdateRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d
{
  data = [MEMORY[0x277CBEB28] data];
  v11 = 0x4000000;
  v12 = 1684630637;
  v13 = bswap32(d);
  [data appendBytes:&v12 length:4];
  [data appendBytes:&v11 length:4];
  [data appendBytes:&v13 length:4];
  v9 = 0x4000000;
  v10 = 1920169325;
  v8 = bswap32(revision);
  [data appendBytes:&v10 length:4];
  [data appendBytes:&v9 length:4];
  [data appendBytes:&v8 length:4];

  return data;
}

- (double)timeoutInterval
{
  if (self->_connectionType)
  {
    v6.receiver = self;
    v6.super_class = HSUpdateRequest;
    [(HSRequest *)&v6 timeoutInterval];
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [distantFuture timeIntervalSinceNow];
    v5 = v4;

    return v5;
  }

  return result;
}

- (BOOL)isConcurrent
{
  if (!self->_connectionType)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = HSUpdateRequest;
  return [(HSRequest *)&v3 isConcurrent];
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSUpdateResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];

  [v3 setDatabaseRevision:{objc_msgSend(v5, "unsignedIntValue")}];

  return v3;
}

- (HSUpdateRequest)initWithDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d connectionType:(int64_t)type
{
  v6 = *&revision;
  v7 = [(HSRequest *)self initWithAction:@"update", *&d];
  v8 = v7;
  if (v7)
  {
    v7->_connectionType = type;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v6];
    [(HSRequest *)v8 setValue:v9 forArgument:@"revision-number"];
  }

  return v8;
}

+ (id)requestWithDatabaseRevision:(unsigned int)revision sessionID:(unsigned int)d connectionType:(int64_t)type
{
  v5 = [[self alloc] initWithDatabaseRevision:*&revision sessionID:*&d connectionType:type];

  return v5;
}

@end