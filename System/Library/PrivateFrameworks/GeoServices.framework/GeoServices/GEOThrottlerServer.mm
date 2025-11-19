@interface GEOThrottlerServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)isSafeWithRequest:(id)a3;
@end

@implementation GEOThrottlerServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sub_100001334(v10) == 603)
  {
    v13 = objc_opt_class();
    v14 = sub_100001388(@"throttler", v10, v11, v13, v12);
    v15 = v14;
    v16 = v14 != 0;
    if (v14)
    {
      [v14 setSignpostId:a6];
      [(GEOThrottlerServer *)self isSafeWithRequest:v15];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)isSafeWithRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 requestKindType];
  v5 = [v3 requestKindSubtype];
  v6 = [[GEOThrottlerIsSafeReply alloc] initWithRequest:v3];
  if ([v3 includeToken])
  {
    v7 = [v3 throttlerToken];
    v8 = +[GEODataRequestThrottler sharedThrottler];
    v9 = [v3 preferredAuditToken];
    v19 = 0;
    v20 = v7;
    [v8 allowRequest:v4 | (v5 << 32) forClient:v9 throttlerToken:&v20 error:&v19];
    v10 = v20;

    v11 = v19;
    [v6 setThrottlerToken:v10];
    [v6 setError:v11];
  }

  if (([v3 availableRequestCount] & 1) != 0 || objc_msgSend(v3, "nextSafeRequestTime"))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v18 = 0.0;
    v17 = 0;
    v13 = +[GEODataRequestThrottler sharedThrottler];
    v14 = [v3 preferredAuditToken];
    [v13 getInfoForRequest:v4 | (v5 << 32) client:v14 timeUntilNextReset:&v18 availableRequestCount:&v17];

    [v6 setAvailableRequestCount:v17];
    v15 = [v6 availableRequestCount];
    v16 = Current + v18;
    if (v15)
    {
      v16 = Current;
    }

    [v6 setNextSafeRequestTime:v16];
  }

  [v6 send];
}

@end