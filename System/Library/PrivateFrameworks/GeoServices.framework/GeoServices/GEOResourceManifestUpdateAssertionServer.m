@interface GEOResourceManifestUpdateAssertionServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)checkinForUpdateAssertionWithRequest:(id)a3;
- (void)peerDidDisconnect:(id)a3;
@end

@implementation GEOResourceManifestUpdateAssertionServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sub_100001334(v10) == 2583)
  {
    v13 = 1;
    if (sub_100001B78(v12, v11, @"resourcemanifestupdateassertion", v10, &off_100088E38, 1))
    {
      v14 = objc_opt_class();
      v15 = sub_100001388(@"resourcemanifestupdateassertion", v10, v11, v14, v12);
      v16 = v15;
      v13 = v15 != 0;
      if (v15)
      {
        [v15 setSignpostId:a6];
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

- (void)checkinForUpdateAssertionWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [v5 bundleIdentifier];
  v7 = v6;
  v8 = @"<unknown>";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
  v11 = [v4 reason];
  [v4 timestamp];
  v12 = [v10 addAssertionForProcess:v9 reason:v11 creationTimestamp:?];

  peerToAssertionRecord = self->_peerToAssertionRecord;
  if (!peerToAssertionRecord)
  {
    v14 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:5];
    v15 = self->_peerToAssertionRecord;
    self->_peerToAssertionRecord = v14;

    peerToAssertionRecord = self->_peerToAssertionRecord;
  }

  v16 = [v4 peer];
  v17 = [(NSMapTable *)peerToAssertionRecord objectForKey:v16];

  if (v17)
  {
    v18 = GEOGetResourceManifestLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = [v4 reason];
      v23 = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Process '%{public}@' already has an existing update assertion on this connection (reason: '%{public}@')", &v23, 0x16u);
    }

    v20 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v20 removeAssertion:v17];
  }

  v21 = self->_peerToAssertionRecord;
  v22 = [v4 peer];
  [(NSMapTable *)v21 setObject:v12 forKey:v22];
}

- (void)peerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_peerToAssertionRecord objectForKey:v4];
  if (v5)
  {
    [(NSMapTable *)self->_peerToAssertionRecord removeObjectForKey:v4];
    v6 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v6 removeAssertion:v5];
  }

  v7.receiver = self;
  v7.super_class = GEOResourceManifestUpdateAssertionServer;
  [(GEOResourceManifestUpdateAssertionServer *)&v7 peerDidDisconnect:v4];
}

@end