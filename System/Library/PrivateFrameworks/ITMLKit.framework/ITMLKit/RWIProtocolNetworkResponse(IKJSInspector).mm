@interface RWIProtocolNetworkResponse(IKJSInspector)
+ (id)ik_responseFromURLResponse:()IKJSInspector;
+ (id)ik_responseFromURLResponse:()IKJSInspector forRequest:;
@end

@implementation RWIProtocolNetworkResponse(IKJSInspector)

+ (id)ik_responseFromURLResponse:()IKJSInspector
{
  v3 = a3;
  v4 = [objc_opt_class() ik_responseFromURLResponse:v3 forRequest:0];

  return v4;
}

+ (id)ik_responseFromURLResponse:()IKJSInspector forRequest:
{
  v5 = MEMORY[0x277D7B748];
  v6 = a4;
  v7 = a3;
  allHeaderFields = [v7 allHeaderFields];
  v9 = [v5 ik_networkHeadersFromHTTPHeaderFields:allHeaderFields];

  v10 = MEMORY[0x277D7B748];
  allHTTPHeaderFields = [v6 allHTTPHeaderFields];

  v12 = [v10 ik_networkHeadersFromHTTPHeaderFields:allHTTPHeaderFields];

  v13 = MEMORY[0x277D7B770];
  v14 = [v7 URL];
  absoluteString = [v14 absoluteString];
  itunes_statusCode = [v7 itunes_statusCode];
  v17 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(v7, "itunes_statusCode")}];
  mIMEType = [v7 MIMEType];

  if (mIMEType)
  {
    v19 = mIMEType;
  }

  else
  {
    v19 = &stru_2866C1E60;
  }

  v20 = [v13 safe_initWithUrl:absoluteString status:itunes_statusCode statusText:v17 headers:v9 mimeType:v19 source:1];

  if (v12)
  {
    [v20 setRequestHeaders:v12];
  }

  return v20;
}

@end