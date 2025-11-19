@interface C2NetworkingResponse
+ (id)responseFromRequest:(id)a3 statusCode:(int64_t)a4 headerFields:(id)a5 body:(id)a6;
+ (id)responseWithURLResponse:(id)a3 body:(id)a4;
@end

@implementation C2NetworkingResponse

+ (id)responseWithURLResponse:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [v7 copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

+ (id)responseFromRequest:(id)a3 statusCode:(int64_t)a4 headerFields:(id)a5 body:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(a1);
  if (v13)
  {
    v14 = [v11 mutableCopy];
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

    v18 = [v10 valueForHTTPHeaderField:@"x-apple-request-uuid"];
    if (v18)
    {
      [v17 setObject:v18 forKeyedSubscript:@"x-apple-request-uuid"];
    }

    v19 = objc_alloc(MEMORY[0x277CCAA40]);
    v20 = [v10 URL];
    v21 = [v19 initWithURL:v20 statusCode:a4 HTTPVersion:@"HTTP/1.1" headerFields:v17];
    v22 = v13[1];
    v13[1] = v21;

    v23 = [v12 copy];
    v24 = v13[2];
    v13[2] = v23;
  }

  return v13;
}

@end