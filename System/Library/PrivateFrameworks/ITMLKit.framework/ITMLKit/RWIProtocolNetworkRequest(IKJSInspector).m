@interface RWIProtocolNetworkRequest(IKJSInspector)
+ (id)ik_networkRequestFromURLRequest:()IKJSInspector;
@end

@implementation RWIProtocolNetworkRequest(IKJSInspector)

+ (id)ik_networkRequestFromURLRequest:()IKJSInspector
{
  v3 = a3;
  v4 = MEMORY[0x277D7B748];
  v5 = [v3 allHTTPHeaderFields];
  v6 = [v4 ik_networkHeadersFromHTTPHeaderFields:v5];

  v7 = MEMORY[0x277D7B760];
  v8 = [v3 URL];
  v9 = [v8 absoluteString];
  v10 = [v3 HTTPMethod];
  v11 = [v7 safe_initWithUrl:v9 method:v10 headers:v6];

  v12 = [v3 HTTPBody];
  v13 = [v12 length];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v3 HTTPBody];
    v16 = [v14 initWithData:v15 encoding:4];
    [v11 setPostData:v16];
  }

  else
  {
    v17 = [v3 HTTPBodyStream];

    if (v17)
    {
      v18 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [RWIProtocolNetworkRequest(IKJSInspector) ik_networkRequestFromURLRequest:v18];
      }
    }
  }

  return v11;
}

@end