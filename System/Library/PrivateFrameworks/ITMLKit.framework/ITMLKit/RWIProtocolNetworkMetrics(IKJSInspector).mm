@interface RWIProtocolNetworkMetrics(IKJSInspector)
+ (id)ik_networkMetricsFromURLRequest:()IKJSInspector response:responseBody:timingData:;
@end

@implementation RWIProtocolNetworkMetrics(IKJSInspector)

+ (id)ik_networkMetricsFromURLRequest:()IKJSInspector response:responseBody:timingData:
{
  v7 = a6;
  v8 = MEMORY[0x277D7B758];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [v7 objectForKey:@"_kCFNTimingDataNetworkProtocolName"];

  if (v11)
  {
    v12 = [v7 objectForKey:@"_kCFNTimingDataNetworkProtocolName"];
    [v10 setProtocol:v12];
  }

  v13 = [v7 objectForKey:@"_kCFNTimingDataRemoteAddressAndPort"];

  if (v13)
  {
    v14 = [v7 objectForKey:@"_kCFNTimingDataRemoteAddressAndPort"];
    [v10 setRemoteAddress:v14];
  }

  v15 = [v7 objectForKey:@"_kCFNTimingDataConnectionInterfaceIdentifier"];

  if (v15)
  {
    v16 = [v7 objectForKey:@"_kCFNTimingDataConnectionInterfaceIdentifier"];
    [v10 setConnectionIdentifier:v16];
  }

  v17 = [v7 objectForKey:@"_kCFNTimingDataResponseBodyBytesDecoded"];

  if (v17)
  {
    v18 = [v7 objectForKey:@"_kCFNTimingDataResponseBodyBytesDecoded"];
    [v18 doubleValue];
    [v10 setResponseBodyDecodedSize:?];
  }

  v19 = [v7 objectForKey:@"_kCFNTimingDataResponseBodyBytesReceived"];

  if (v19)
  {
    v20 = [v7 objectForKey:@"_kCFNTimingDataResponseBodyBytesReceived"];
    [v20 doubleValue];
    [v10 setResponseBodyBytesReceived:?];
  }

  v21 = [v7 objectForKey:@"_kCFNTimingDataRequestHeaderSize"];

  if (v21)
  {
    v22 = [v7 objectForKey:@"_kCFNTimingDataRequestHeaderSize"];
    [v22 doubleValue];
    [v10 setRequestHeaderBytesSent:?];
  }

  hTTPBody = [v9 HTTPBody];
  [v10 setRequestBodyBytesSent:{objc_msgSend(hTTPBody, "length")}];

  v24 = MEMORY[0x277D7B748];
  allHTTPHeaderFields = [v9 allHTTPHeaderFields];

  v26 = [v24 ik_networkHeadersFromHTTPHeaderFields:allHTTPHeaderFields];

  [v10 setRequestHeaders:v26];

  return v10;
}

@end