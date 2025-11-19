@interface HSUpdateRequest
+ (id)requestWithDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4 connectionType:(int64_t)a5;
- (BOOL)isConcurrent;
- (HSUpdateRequest)initWithDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4 connectionType:(int64_t)a5;
- (double)timeoutInterval;
- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSUpdateRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4
{
  v6 = [MEMORY[0x277CBEB28] data];
  v11 = 0x4000000;
  v12 = 1684630637;
  v13 = bswap32(a4);
  [v6 appendBytes:&v12 length:4];
  [v6 appendBytes:&v11 length:4];
  [v6 appendBytes:&v13 length:4];
  v9 = 0x4000000;
  v10 = 1920169325;
  v8 = bswap32(a3);
  [v6 appendBytes:&v10 length:4];
  [v6 appendBytes:&v9 length:4];
  [v6 appendBytes:&v8 length:4];

  return v6;
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
    v3 = [MEMORY[0x277CBEAA8] distantFuture];
    [v3 timeIntervalSinceNow];
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

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSUpdateResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];

  [v3 setDatabaseRevision:{objc_msgSend(v5, "unsignedIntValue")}];

  return v3;
}

- (HSUpdateRequest)initWithDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4 connectionType:(int64_t)a5
{
  v6 = *&a3;
  v7 = [(HSRequest *)self initWithAction:@"update", *&a4];
  v8 = v7;
  if (v7)
  {
    v7->_connectionType = a5;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v6];
    [(HSRequest *)v8 setValue:v9 forArgument:@"revision-number"];
  }

  return v8;
}

+ (id)requestWithDatabaseRevision:(unsigned int)a3 sessionID:(unsigned int)a4 connectionType:(int64_t)a5
{
  v5 = [[a1 alloc] initWithDatabaseRevision:*&a3 sessionID:*&a4 connectionType:a5];

  return v5;
}

@end