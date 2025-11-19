@interface FTURLRequestMessage
- (FTURLRequestMessage)initWithURL:(id)a3 type:(unint64_t)a4 headers:(id)a5 stringParams:(id)a6 body:(id)a7;
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (void)handleResponseHeaders:(id)a3;
- (void)handleResponseStatus:(unint64_t)a3;
@end

@implementation FTURLRequestMessage

- (FTURLRequestMessage)initWithURL:(id)a3 type:(unint64_t)a4 headers:(id)a5 stringParams:(id)a6 body:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = FTURLRequestMessage;
  v17 = [(FTIDSMessage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_requestURL, a3);
    [(IDSBaseMessage *)v18 setURLOverride:v13];
    v18->_requestType = a4;
    objc_storeStrong(&v18->_requestHeaders, a5);
    objc_storeStrong(&v18->_requestStringParams, a6);
    objc_storeStrong(&v18->_requestBody, a7);
    [(IDSBaseMessage *)v18 setImportanceLevel:2];
    [(IDSBaseMessage *)v18 setHttpDoNotDecodeData:1];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = FTURLRequestMessage;
  v4 = [(FTIDSMessage *)&v12 copyWithZone:a3];
  [v4 setRequestType:{-[FTURLRequestMessage requestType](self, "requestType")}];
  v5 = [(FTURLRequestMessage *)self requestURL];
  [v4 setRequestURL:v5];

  v6 = [(FTURLRequestMessage *)self requestHeaders];
  [v4 setRequestHeaders:v6];

  v7 = [(FTURLRequestMessage *)self requestStringParams];
  [v4 setRequestStringParams:v7];

  v8 = [(FTURLRequestMessage *)self responseHeaders];
  [v4 setResponseHeaders:v8];

  v9 = [(FTURLRequestMessage *)self responseBody];
  [v4 setResponseBody:v9];

  v10 = [(FTURLRequestMessage *)self responseStatusCode];
  [v4 setResponseStatusCode:v10];

  return v4;
}

- (id)additionalQueryStringParameters
{
  v7.receiver = self;
  v7.super_class = FTURLRequestMessage;
  v3 = [(IDSBaseMessage *)&v7 additionalQueryStringParameters];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = [(FTURLRequestMessage *)self requestStringParams];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v5];

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v12.receiver = self;
  v12.super_class = FTURLRequestMessage;
  v3 = [(FTIDSMessage *)&v12 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = [(FTURLRequestMessage *)self requestHeaders];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v5];

  [(__CFDictionary *)Mutable removeObjectForKey:@"x-apple-apns-dual-mode-delivery-type"];
  v6 = [(IDSBaseMessage *)self hasAttemptedAPSDelivery];
  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = [v7 initWithInt:v8];
  v10 = [v9 stringValue];
  [(__CFDictionary *)Mutable setValue:v10 forKey:@"x-apple-apns-dual-mode-delivery-type"];

  return Mutable;
}

- (void)handleResponseHeaders:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "FT URL  Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v4;
    _IDSLogV();
  }

  [(FTURLRequestMessage *)self setResponseHeaders:v4, v7];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleResponseStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(FTURLRequestMessage *)self setResponseStatusCode:v4];
}

@end