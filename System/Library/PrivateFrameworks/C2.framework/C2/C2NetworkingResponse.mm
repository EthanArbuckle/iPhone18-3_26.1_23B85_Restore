@interface C2NetworkingResponse
+ (id)responseFromRequest:(id)request statusCode:(int64_t)code headerFields:(id)fields body:(id)body;
+ (id)responseWithURLResponse:(id)response body:(id)body;
@end

@implementation C2NetworkingResponse

+ (id)responseWithURLResponse:(id)response body:(id)body
{
  responseCopy = response;
  bodyCopy = body;
  v8 = objc_alloc_init(self);
  if (v8)
  {
    v9 = [responseCopy copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [bodyCopy copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

+ (id)responseFromRequest:(id)request statusCode:(int64_t)code headerFields:(id)fields body:(id)body
{
  requestCopy = request;
  fieldsCopy = fields;
  bodyCopy = body;
  v13 = objc_alloc_init(self);
  if (v13)
  {
    v14 = [fieldsCopy mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    v18 = [requestCopy valueForHTTPHeaderField:@"x-apple-request-uuid"];
    if (v18)
    {
      [v17 setObject:v18 forKeyedSubscript:@"x-apple-request-uuid"];
    }

    v19 = objc_alloc(MEMORY[0x277CCAA40]);
    v20 = [requestCopy URL];
    v21 = [v19 initWithURL:v20 statusCode:code HTTPVersion:@"HTTP/1.1" headerFields:v17];
    v22 = v13[1];
    v13[1] = v21;

    v23 = [bodyCopy copy];
    v24 = v13[2];
    v13[2] = v23;
  }

  return v13;
}

@end