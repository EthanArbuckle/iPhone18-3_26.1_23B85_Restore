@interface FTURLRequestMessage
- (FTURLRequestMessage)initWithURL:(id)l type:(unint64_t)type headers:(id)headers stringParams:(id)params body:(id)body;
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)handleResponseHeaders:(id)headers;
- (void)handleResponseStatus:(unint64_t)status;
@end

@implementation FTURLRequestMessage

- (FTURLRequestMessage)initWithURL:(id)l type:(unint64_t)type headers:(id)headers stringParams:(id)params body:(id)body
{
  lCopy = l;
  headersCopy = headers;
  paramsCopy = params;
  bodyCopy = body;
  v20.receiver = self;
  v20.super_class = FTURLRequestMessage;
  v17 = [(FTIDSMessage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_requestURL, l);
    [(IDSBaseMessage *)v18 setURLOverride:lCopy];
    v18->_requestType = type;
    objc_storeStrong(&v18->_requestHeaders, headers);
    objc_storeStrong(&v18->_requestStringParams, params);
    objc_storeStrong(&v18->_requestBody, body);
    [(IDSBaseMessage *)v18 setImportanceLevel:2];
    [(IDSBaseMessage *)v18 setHttpDoNotDecodeData:1];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = FTURLRequestMessage;
  v4 = [(FTIDSMessage *)&v12 copyWithZone:zone];
  [v4 setRequestType:{-[FTURLRequestMessage requestType](self, "requestType")}];
  requestURL = [(FTURLRequestMessage *)self requestURL];
  [v4 setRequestURL:requestURL];

  requestHeaders = [(FTURLRequestMessage *)self requestHeaders];
  [v4 setRequestHeaders:requestHeaders];

  requestStringParams = [(FTURLRequestMessage *)self requestStringParams];
  [v4 setRequestStringParams:requestStringParams];

  responseHeaders = [(FTURLRequestMessage *)self responseHeaders];
  [v4 setResponseHeaders:responseHeaders];

  responseBody = [(FTURLRequestMessage *)self responseBody];
  [v4 setResponseBody:responseBody];

  responseStatusCode = [(FTURLRequestMessage *)self responseStatusCode];
  [v4 setResponseStatusCode:responseStatusCode];

  return v4;
}

- (id)additionalQueryStringParameters
{
  v7.receiver = self;
  v7.super_class = FTURLRequestMessage;
  additionalQueryStringParameters = [(IDSBaseMessage *)&v7 additionalQueryStringParameters];
  Mutable = [additionalQueryStringParameters mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  requestStringParams = [(FTURLRequestMessage *)self requestStringParams];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:requestStringParams];

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v12.receiver = self;
  v12.super_class = FTURLRequestMessage;
  additionalMessageHeaders = [(FTIDSMessage *)&v12 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  requestHeaders = [(FTURLRequestMessage *)self requestHeaders];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:requestHeaders];

  [(__CFDictionary *)Mutable removeObjectForKey:@"x-apple-apns-dual-mode-delivery-type"];
  hasAttemptedAPSDelivery = [(IDSBaseMessage *)self hasAttemptedAPSDelivery];
  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  if (hasAttemptedAPSDelivery)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = [v7 initWithInt:v8];
  stringValue = [v9 stringValue];
  [(__CFDictionary *)Mutable setValue:stringValue forKey:@"x-apple-apns-dual-mode-delivery-type"];

  return Mutable;
}

- (void)handleResponseHeaders:(id)headers
{
  v10 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = headersCopy;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "FT URL  Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = headersCopy;
    _IDSLogV();
  }

  [(FTURLRequestMessage *)self setResponseHeaders:headersCopy, v7];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleResponseStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  [(FTURLRequestMessage *)self setResponseStatusCode:v4];
}

@end