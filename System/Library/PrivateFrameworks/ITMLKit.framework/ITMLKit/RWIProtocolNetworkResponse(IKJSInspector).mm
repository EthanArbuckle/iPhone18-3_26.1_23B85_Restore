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
  v8 = [v7 allHeaderFields];
  v9 = [v5 ik_networkHeadersFromHTTPHeaderFields:v8];

  v10 = MEMORY[0x277D7B748];
  v11 = [v6 allHTTPHeaderFields];

  v12 = [v10 ik_networkHeadersFromHTTPHeaderFields:v11];

  v13 = MEMORY[0x277D7B770];
  v14 = [v7 URL];
  v15 = [v14 absoluteString];
  v16 = [v7 itunes_statusCode];
  v17 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(v7, "itunes_statusCode")}];
  v18 = [v7 MIMEType];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_2866C1E60;
  }

  v20 = [v13 safe_initWithUrl:v15 status:v16 statusText:v17 headers:v9 mimeType:v19 source:1];

  if (v12)
  {
    [v20 setRequestHeaders:v12];
  }

  return v20;
}

@end