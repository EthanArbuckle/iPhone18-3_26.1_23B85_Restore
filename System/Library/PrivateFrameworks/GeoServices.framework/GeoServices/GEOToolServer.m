@interface GEOToolServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)calculatePurgableSpaceWithMessage:(id)a3;
- (void)checkProactiveTileDownloadPolicyEnabledWithMessage:(id)a3;
- (void)fetchOfflineMetadataWithMessage:(id)a3;
- (void)flushPurgeableOfflineDataWithMessage:(id)a3;
- (void)forceProactiveTileDownloaderRunWithMessage:(id)a3;
- (void)freePurgableSpaceWithMessage:(id)a3;
- (void)getDefaultWithMessage:(id)a3;
- (void)invalidateTileCacheWithMessage:(id)a3;
- (void)listFilePathsWithMessage:(id)a3;
- (void)lockDBsWithMessage:(id)a3;
- (void)notifyNetworkDefaultsChangedWithMessage:(id)a3;
- (void)unlockDBsWithMessage:(id)a3;
@end

@implementation GEOToolServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sub_100001B78(v12, v11, @"geotool", v10, &off_100088B50, 0))
  {
    v13 = sub_100001334(v10);
    v14 = 0;
    if (v13 <= 1922)
    {
      if (v13 > 1028)
      {
        switch(v13)
        {
          case 1029:
            v26 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v26;
            if (v26)
            {
              [v26 setSignpostId:a6];
              [(GEOToolServer *)self getDefaultWithMessage:v16];
              goto LABEL_46;
            }

            goto LABEL_49;
          case 1340:
            v28 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v28;
            if (v28)
            {
              [v28 setSignpostId:a6];
              [(GEOToolServer *)self listFilePathsWithMessage:v16];
              goto LABEL_46;
            }

            goto LABEL_49;
          case 1728:
            v19 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v19;
            if (v19)
            {
              [v19 setSignpostId:a6];
              [(GEOToolServer *)self freePurgableSpaceWithMessage:v16];
              goto LABEL_46;
            }

            goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 430:
            v25 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v25;
            if (v25)
            {
              [v25 setSignpostId:a6];
              [(GEOToolServer *)self pingWithMessage:v16];
              goto LABEL_46;
            }

            goto LABEL_49;
          case 674:
            v27 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v27;
            if (v27)
            {
              [v27 setSignpostId:a6];
              [(GEOToolServer *)self lockDBsWithMessage:v16];
              goto LABEL_46;
            }

            goto LABEL_49;
          case 901:
            v17 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v17;
            if (v17)
            {
              [v17 setSignpostId:a6];
              [(GEOToolServer *)self unlockDBsWithMessage:v16];
              goto LABEL_46;
            }

LABEL_49:
            v14 = 0;
            goto LABEL_47;
        }
      }
    }

    else if (v13 <= 2549)
    {
      switch(v13)
      {
        case 1923:
          v23 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v23;
          if (v23)
          {
            [v23 setSignpostId:a6];
            [(GEOToolServer *)self invalidateTileCacheWithMessage:v16];
            goto LABEL_46;
          }

          goto LABEL_49;
        case 2030:
          v24 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v24;
          if (v24)
          {
            [v24 setSignpostId:a6];
            [(GEOToolServer *)self fetchOfflineMetadataWithMessage:v16];
            goto LABEL_46;
          }

          goto LABEL_49;
        case 2252:
          v18 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v18;
          if (v18)
          {
            [v18 setSignpostId:a6];
            [(GEOToolServer *)self calculatePurgableSpaceWithMessage:v16];
            goto LABEL_46;
          }

          goto LABEL_49;
      }
    }

    else if (v13 > 3213)
    {
      if (v13 == 3214)
      {
        v22 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v22;
        if (v22)
        {
          [v22 setSignpostId:a6];
          [(GEOToolServer *)self forceProactiveTileDownloaderRunWithMessage:v16];
          goto LABEL_46;
        }

        goto LABEL_49;
      }

      if (v13 == 3980)
      {
        v20 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v20;
        if (v20)
        {
          [v20 setSignpostId:a6];
          [(GEOToolServer *)self checkProactiveTileDownloadPolicyEnabledWithMessage:v16];
          goto LABEL_46;
        }

        goto LABEL_49;
      }
    }

    else
    {
      if (v13 == 2550)
      {
        v21 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v21;
        if (v21)
        {
          [v21 setSignpostId:a6];
          [(GEOToolServer *)self flushPurgeableOfflineDataWithMessage:v16];
          goto LABEL_46;
        }

        goto LABEL_49;
      }

      if (v13 == 2917)
      {
        v15 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v15;
        if (v15)
        {
          [v15 setSignpostId:a6];
          [(GEOToolServer *)self notifyNetworkDefaultsChangedWithMessage:v16];
LABEL_46:
          v14 = 1;
LABEL_47:

          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_48:

  return v14;
}

- (void)notifyNetworkDefaultsChangedWithMessage:(id)a3
{
  v3 = a3;
  v4 = [GEOFilePaths urlFor:23];
  v13 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:1 error:&v13];
  v6 = v13;
  if (v5)
  {
    v12 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v12];
    v8 = v12;

    objc_opt_class();
    v9 = 0;
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = +[GEONetworkDefaults sharedNetworkDefaults];
    [v10 serverProxy:0 networkDefaultsDidChange:v9];

    notify_post("com.apple.GeoServices.internal.networkDefaultsChanged");
    v11 = &off_1000890B8;
  }

  else
  {
    v11 = &off_1000890E0;
  }

  [v3 sendReply:v11];
}

- (void)flushPurgeableOfflineDataWithMessage:(id)a3
{
  v3 = a3;
  v4 = +[GEOTileLoader modernLoader];
  v5 = [v4 proxy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 tileCache];
    v9 = @"success";
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 clearPurgeableOfflineData]);
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v3 sendReply:v8];
  }

  else
  {
    [v3 sendReply:0];
  }
}

- (void)fetchOfflineMetadataWithMessage:(id)a3
{
  v3 = a3;
  v4 = +[GEOOfflineDataConfiguration sharedConfiguration];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 activeVersions];
  v7 = v6;
  if (v6)
  {
    v22 = v5;
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 unsignedIntValue];
          if (v15 >= 0x1D)
          {
            v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
          }

          else
          {
            v16 = off_100082358[v15];
          }

          v17 = [v9 objectForKeyedSubscript:v14];
          [v8 setObject:v17 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v5 = v22;
    [v22 setObject:v8 forKeyedSubscript:@"activeVersions"];

    v7 = v21;
  }

  v18 = [v4 lastUpdatedDate];
  v19 = v18;
  if (v18)
  {
    [v18 timeIntervalSinceReferenceDate];
    v20 = [NSNumber numberWithDouble:?];
    [v5 setObject:v20 forKeyedSubscript:@"updated"];
  }

  [v3 sendReply:v5];
}

- (void)listFilePathsWithMessage:(id)a3
{
  v3 = a3;
  v4 = +[GEOFilePaths dictionaryRepresentation];
  [v3 sendReply:v4];
}

- (void)invalidateTileCacheWithMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GEOTileEditionUpdate);
  [v5 setInvalidateEverything:1];
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = GEOTileEditionUpdateNotification;
  v11 = GEOTileEditionUpdateKey;
  v12 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 postNotificationName:v7 object:0 userInfo:v8];

  v9 = dispatch_time(0, 5000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000279D4;
  v10[3] = &unk_1000838C8;
  v10[4] = self;
  dispatch_after(v9, &_dispatch_main_q, v10);
  [v4 sendReply:0];
}

- (void)freePurgableSpaceWithMessage:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027AE4;
  block[3] = &unk_1000838C8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)calculatePurgableSpaceWithMessage:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027E30;
  block[3] = &unk_1000838C8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)getDefaultWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"key"];

  v6 = GEOGetDefaultWithSource();
  v10 = @"value";
  v7 = v6;
  if (!v6)
  {
    v7 = +[NSNull null];
  }

  v8 = [NSNumber numberWithInteger:0, 0, v10, @"source", v7];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:&v10 count:2];

  if (!v6)
  {
  }

  [v3 sendReply:v9];
}

- (void)checkProactiveTileDownloadPolicyEnabledWithMessage:(id)a3
{
  v3 = a3;
  v6 = @"enabled";
  v4 = [NSNumber numberWithBool:GEOProactiveTileDownloadPolicyIsEnabled()];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 sendReply:v5];
}

- (void)forceProactiveTileDownloaderRunWithMessage:(id)a3
{
  v5 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:GEOTileServerLocalProxyForceExplicitProactiveTileDownloadRunNotification object:self];

  [v5 sendReply:0];
}

- (void)lockDBsWithMessage:(id)a3
{
  v5 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:GEOLockSQLiteDBNotificationName object:self];

  [v5 sendReply:0];
}

- (void)unlockDBsWithMessage:(id)a3
{
  v5 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:GEOUnlockSQLiteDBNotificationName object:self];

  [v5 sendReply:0];
}

@end