@interface RWIProtocolNetworkRequest(IKJSInspector)
+ (id)ik_networkRequestFromURLRequest:()IKJSInspector;
@end

@implementation RWIProtocolNetworkRequest(IKJSInspector)

+ (id)ik_networkRequestFromURLRequest:()IKJSInspector
{
  v3 = a3;
  v4 = MEMORY[0x277D7B748];
  allHTTPHeaderFields = [v3 allHTTPHeaderFields];
  v6 = [v4 ik_networkHeadersFromHTTPHeaderFields:allHTTPHeaderFields];

  v7 = MEMORY[0x277D7B760];
  v8 = [v3 URL];
  absoluteString = [v8 absoluteString];
  hTTPMethod = [v3 HTTPMethod];
  v11 = [v7 safe_initWithUrl:absoluteString method:hTTPMethod headers:v6];

  hTTPBody = [v3 HTTPBody];
  v13 = [hTTPBody length];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    hTTPBody2 = [v3 HTTPBody];
    v16 = [v14 initWithData:hTTPBody2 encoding:4];
    [v11 setPostData:v16];
  }

  else
  {
    hTTPBodyStream = [v3 HTTPBodyStream];

    if (hTTPBodyStream)
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