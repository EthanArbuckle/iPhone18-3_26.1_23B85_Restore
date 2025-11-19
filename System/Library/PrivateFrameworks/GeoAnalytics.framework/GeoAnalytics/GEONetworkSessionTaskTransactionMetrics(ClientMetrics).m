@interface GEONetworkSessionTaskTransactionMetrics(ClientMetrics)
- (id)initWithClientNetworkTransactionMetrics:()ClientMetrics;
@end

@implementation GEONetworkSessionTaskTransactionMetrics(ClientMetrics)

- (id)initWithClientNetworkTransactionMetrics:()ClientMetrics
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &off_1F2073820;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    if ([v4 hasConnectStart])
    {
      [v4 connectStart];
      [v5 setConnectStart:?];
    }

    if ([v4 hasConnectEnd])
    {
      [v4 connectEnd];
      [v5 setConnectEnd:?];
    }

    if ([v4 hasDomainLookupStart])
    {
      [v4 domainLookupStart];
      [v5 setDomainLookupStart:?];
    }

    if ([v4 hasDomainLookupEnd])
    {
      [v4 domainLookupEnd];
      [v5 setDomainLookupEnd:?];
    }

    if ([v4 hasFetchStart])
    {
      [v4 fetchStart];
      [v5 setFetchStart:?];
    }

    if ([v4 hasRequestStart])
    {
      [v4 requestStart];
      [v5 setRequestStart:?];
    }

    if ([v4 hasRequestEnd])
    {
      [v4 requestEnd];
      [v5 setRequestEnd:?];
    }

    if ([v4 hasResponseStart])
    {
      [v4 responseStart];
      [v5 setResponseStart:?];
    }

    if ([v4 hasResponseEnd])
    {
      [v4 responseEnd];
      [v5 setResponseEnd:?];
    }

    if ([v4 hasSecureConnectStart])
    {
      [v4 secureConnectStart];
      [v5 setSecureConnectStart:?];
    }

    if ([v4 hasSecureConnectEnd])
    {
      [v4 secureConnectEnd];
      [v5 setSecureConnectEnd:?];
    }

    if ([v4 hasProxyConnection])
    {
      [v5 setProxyConnection:{objc_msgSend(v4, "proxyConnection")}];
    }

    if ([v4 hasReusedConnection])
    {
      [v5 setReusedConnection:{objc_msgSend(v4, "reusedConnection")}];
    }
  }

  return v5;
}

@end