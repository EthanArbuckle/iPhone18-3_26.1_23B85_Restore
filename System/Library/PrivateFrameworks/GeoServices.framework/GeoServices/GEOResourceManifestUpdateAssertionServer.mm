@interface GEOResourceManifestUpdateAssertionServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)checkinForUpdateAssertionWithRequest:(id)request;
- (void)peerDidDisconnect:(id)disconnect;
@end

@implementation GEOResourceManifestUpdateAssertionServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  if (sub_100001334(messageCopy) == 2583)
  {
    v13 = 1;
    if (sub_100001B78(peerCopy, objectCopy, @"resourcemanifestupdateassertion", messageCopy, &off_100088E38, 1))
    {
      v14 = objc_opt_class();
      v15 = sub_100001388(@"resourcemanifestupdateassertion", messageCopy, objectCopy, v14, peerCopy);
      v16 = v15;
      v13 = v15 != 0;
      if (v15)
      {
        [v15 setSignpostId:id];
        [(GEOResourceManifestUpdateAssertionServer *)self checkinForUpdateAssertionWithRequest:v16];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)checkinForUpdateAssertionWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  bundleIdentifier = [peer bundleIdentifier];
  v7 = bundleIdentifier;
  v8 = @"<unknown>";
  if (bundleIdentifier)
  {
    v8 = bundleIdentifier;
  }

  v9 = v8;

  v10 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
  reason = [requestCopy reason];
  [requestCopy timestamp];
  v12 = [v10 addAssertionForProcess:v9 reason:reason creationTimestamp:?];

  peerToAssertionRecord = self->_peerToAssertionRecord;
  if (!peerToAssertionRecord)
  {
    v14 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:5];
    v15 = self->_peerToAssertionRecord;
    self->_peerToAssertionRecord = v14;

    peerToAssertionRecord = self->_peerToAssertionRecord;
  }

  peer2 = [requestCopy peer];
  v17 = [(NSMapTable *)peerToAssertionRecord objectForKey:peer2];

  if (v17)
  {
    v18 = GEOGetResourceManifestLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      reason2 = [requestCopy reason];
      v23 = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = reason2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Process '%{public}@' already has an existing update assertion on this connection (reason: '%{public}@')", &v23, 0x16u);
    }

    v20 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v20 removeAssertion:v17];
  }

  v21 = self->_peerToAssertionRecord;
  peer3 = [requestCopy peer];
  [(NSMapTable *)v21 setObject:v12 forKey:peer3];
}

- (void)peerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = [(NSMapTable *)self->_peerToAssertionRecord objectForKey:disconnectCopy];
  if (v5)
  {
    [(NSMapTable *)self->_peerToAssertionRecord removeObjectForKey:disconnectCopy];
    v6 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v6 removeAssertion:v5];
  }

  v7.receiver = self;
  v7.super_class = GEOResourceManifestUpdateAssertionServer;
  [(GEOResourceManifestUpdateAssertionServer *)&v7 peerDidDisconnect:disconnectCopy];
}

@end