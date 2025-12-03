@interface GEOThrottlerServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)isSafeWithRequest:(id)request;
@end

@implementation GEOThrottlerServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  if (sub_100001334(messageCopy) == 603)
  {
    v13 = objc_opt_class();
    v14 = sub_100001388(@"throttler", messageCopy, objectCopy, v13, peerCopy);
    v15 = v14;
    v16 = v14 != 0;
    if (v14)
    {
      [v14 setSignpostId:id];
      [(GEOThrottlerServer *)self isSafeWithRequest:v15];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)isSafeWithRequest:(id)request
{
  requestCopy = request;
  requestKindType = [requestCopy requestKindType];
  requestKindSubtype = [requestCopy requestKindSubtype];
  v6 = [[GEOThrottlerIsSafeReply alloc] initWithRequest:requestCopy];
  if ([requestCopy includeToken])
  {
    throttlerToken = [requestCopy throttlerToken];
    v8 = +[GEODataRequestThrottler sharedThrottler];
    preferredAuditToken = [requestCopy preferredAuditToken];
    v19 = 0;
    v20 = throttlerToken;
    [v8 allowRequest:requestKindType | (requestKindSubtype << 32) forClient:preferredAuditToken throttlerToken:&v20 error:&v19];
    v10 = v20;

    v11 = v19;
    [v6 setThrottlerToken:v10];
    [v6 setError:v11];
  }

  if (([requestCopy availableRequestCount] & 1) != 0 || objc_msgSend(requestCopy, "nextSafeRequestTime"))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v18 = 0.0;
    v17 = 0;
    v13 = +[GEODataRequestThrottler sharedThrottler];
    preferredAuditToken2 = [requestCopy preferredAuditToken];
    [v13 getInfoForRequest:requestKindType | (requestKindSubtype << 32) client:preferredAuditToken2 timeUntilNextReset:&v18 availableRequestCount:&v17];

    [v6 setAvailableRequestCount:v17];
    availableRequestCount = [v6 availableRequestCount];
    v16 = Current + v18;
    if (availableRequestCount)
    {
      v16 = Current;
    }

    [v6 setNextSafeRequestTime:v16];
  }

  [v6 send];
}

@end