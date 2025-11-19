@interface GEOTileServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOTileServer)initWithDaemon:(id)a3;
- (NSString)description;
- (void)_canShrinkBySize:(id)a3 fromPeer:(id)a4 synchronous:(BOOL)a5;
- (void)_receivedTile:(void *)a3 error:(void *)a4 info:(void *)a5 forKey:(void *)a6 forPeer:(void *)a7;
- (void)_shrinkDB:(id)a3 fromPeer:(id)a4 synchronous:(BOOL)a5;
- (void)beginPreload:(id)a3 fromPeer:(id)a4;
- (void)cancel:(id)a3 fromPeer:(id)a4;
- (void)corrupt:(id)a3 fromPeer:(id)a4;
- (void)dealloc;
- (void)endPreload:(id)a3 fromPeer:(id)a4;
- (void)enumerateTiles:(id)a3 fromPeer:(id)a4;
- (void)loadTiles:(id)a3 fromPeer:(id)a4;
- (void)peerDidConnect:(id)a3;
- (void)peerDidDisconnect:(id)a3;
- (void)reprioritizeKey:(id)a3 fromPeer:(id)a4;
- (void)runBackgroundTask:(id)a3;
- (void)tileLoader:(id)a3 submittedTilesToNetwork:(id)a4 forClient:(id)a5;
@end

@implementation GEOTileServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 <= 782)
  {
    if (v13 <= 417)
    {
      if (v13 == 120)
      {
        [(GEOTileServer *)self cancel:v11 fromPeer:v12];
        if (a6 != -1)
        {
          v20 = GEOGetGEODaemonLog();
          v16 = v20;
          if (!a6 || !os_signpost_enabled(v20))
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }

      else
      {
        if (v13 != 224)
        {
          goto LABEL_67;
        }

        [(GEOTileServer *)self loadTiles:v11 fromPeer:v12];
        if (a6 != -1)
        {
          v19 = GEOGetGEODaemonLog();
          v16 = v19;
          if (!a6 || !os_signpost_enabled(v19))
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }
    }

    else
    {
      if (v13 == 418)
      {
        if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088EF8, 2))
        {
          goto LABEL_66;
        }

        [(GEOTileServer *)self beginPreload:v11 fromPeer:v12];
        if (a6 == -1)
        {
          goto LABEL_66;
        }

        v24 = GEOGetGEODaemonLog();
        v16 = v24;
        if (!a6 || !os_signpost_enabled(v24))
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (v13 != 421)
      {
        if (v13 == 655)
        {
          if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088EC8, 2))
          {
            goto LABEL_66;
          }

          [(GEOTileServer *)self shrinkDB:v11 fromPeer:v12];
          if (a6 == -1)
          {
            goto LABEL_66;
          }

          v17 = GEOGetGEODaemonLog();
          v16 = v17;
          if (!a6 || !os_signpost_enabled(v17))
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        goto LABEL_67;
      }

      [(GEOTileServer *)self endPreload:v11 fromPeer:v12];
      if (a6 != -1)
      {
        v21 = GEOGetGEODaemonLog();
        v16 = v21;
        if (!a6 || !os_signpost_enabled(v21))
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    goto LABEL_66;
  }

  if (v13 > 1067)
  {
    if (v13 == 1068)
    {
      if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088EE0, 2))
      {
        goto LABEL_66;
      }

      [(GEOTileServer *)self shrinkDBSync:v11 fromPeer:v12];
      if (a6 == -1)
      {
        goto LABEL_66;
      }

      v26 = GEOGetGEODaemonLog();
      v16 = v26;
      if (!a6 || !os_signpost_enabled(v26))
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v13 != 1320)
    {
      if (v13 == 1374)
      {
        if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088EB0, 2))
        {
          goto LABEL_66;
        }

        [(GEOTileServer *)self canShrinkBySizeSync:v11 fromPeer:v12];
        if (a6 == -1)
        {
          goto LABEL_66;
        }

        v18 = GEOGetGEODaemonLog();
        v16 = v18;
        if (!a6 || !os_signpost_enabled(v18))
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_67;
    }

    [(GEOTileServer *)self reprioritizeKey:v11 fromPeer:v12];
    if (a6 != -1)
    {
      v23 = GEOGetGEODaemonLog();
      v16 = v23;
      if (!a6 || !os_signpost_enabled(v23))
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

LABEL_66:
    v14 = 1;
    goto LABEL_67;
  }

  switch(v13)
  {
    case 783:
      [(GEOTileServer *)self corrupt:v11 fromPeer:v12];
      if (a6 != -1)
      {
        v25 = GEOGetGEODaemonLog();
        v16 = v25;
        if (!a6 || !os_signpost_enabled(v25))
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_66;
    case 961:
      if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088E98, 2))
      {
        goto LABEL_66;
      }

      [(GEOTileServer *)self canShrinkBySize:v11 fromPeer:v12];
      if (a6 == -1)
      {
        goto LABEL_66;
      }

      v22 = GEOGetGEODaemonLog();
      v16 = v22;
      if (!a6 || !os_signpost_enabled(v22))
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 966:
      if (!sub_100001B78(v12, v11, @"tiles", v10, &off_100088F10, 2))
      {
        goto LABEL_66;
      }

      [(GEOTileServer *)self enumerateTiles:v11 fromPeer:v12];
      if (a6 == -1)
      {
        goto LABEL_66;
      }

      v15 = GEOGetGEODaemonLog();
      v16 = v15;
      if (!a6 || !os_signpost_enabled(v15))
      {
        goto LABEL_65;
      }

LABEL_64:
      v27 = [v12 bundleIdentifier];
      v28 = [objc_opt_class() identifier];
      v30 = 138412802;
      v31 = v27;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, a6, "HandleRequest", "type=raw_message,peer=%@,message=%@.%@", &v30, 0x20u);

LABEL_65:
      goto LABEL_66;
  }

LABEL_67:

  return v14;
}

- (void)runBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:GEOProactiveTileDownloaderTaskIdentifier];

  if (v7)
  {
    v8 = +[GEOTileLoader modernLoader];
    v9 = [v8 proxy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 runOpportunisticTileDownloader:v4];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [proxy isKindOfClass:GEOTileServerLocalProxy.class]", buf, 2u);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GEOTileServer;
    [(GEOTileServer *)&v10 runBackgroundTask:v4];
  }
}

- (void)enumerateTiles:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  reply = xpc_dictionary_create_reply(v6);
  v9 = reply;
  if (reply)
  {
    v10 = xpc_dictionary_get_remote_connection(reply);
    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(v6, "include_data");
      v12 = dispatch_group_create();
      v13 = sub_10003FD64(v7, v6);
      queue = self->_queue;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10003FF00;
      v22[3] = &unk_1000832D8;
      v24 = v11;
      v15 = v10;
      v16 = v10;
      v23 = v16;
      [v13 enumerateAllKeysIncludingData:v11 onQueue:queue group:v12 dataHandler:v22];

      v17 = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040060;
      block[3] = &unk_100083940;
      v18 = v16;
      v10 = v15;
      v20 = v18;
      v21 = v9;
      dispatch_group_notify(v12, v17, block);
    }
  }
}

- (void)tileLoader:(id)a3 submittedTilesToNetwork:(id)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(GEOTileServer *)self daemon];
  v12 = [v11 peers];

  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v13)
  {
    v16 = v12;
    goto LABEL_13;
  }

  v14 = v13;
  v26 = v9;
  v15 = v8;
  v16 = 0;
  v17 = *v28;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v27 + 1) + 8 * i);
      v20 = [v19 peerID];
      v21 = [v10 isEqualToString:v20];

      if (v21)
      {
        v22 = v19;

        v16 = v22;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v14);

  v8 = v15;
  v9 = v26;
  if (v16)
  {
    v23 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v23, "event", "tiles.net");
    v24 = [v26 newXPCData];
    xpc_dictionary_set_value(v23, "list", v24);
    v25 = [v16 connection];
    [v25 sendMessage:v23];

LABEL_13:
  }
}

- (void)_receivedTile:(void *)a3 error:(void *)a4 info:(void *)a5 forKey:(void *)a6 forPeer:(void *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  dispatch_assert_queue_V2(a1[2]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [(dispatch_queue_t *)a1 daemon];
  v17 = [v16 peers];

  v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    bytes = a6;
    v34 = v12;
    v19 = v13;
    v20 = v14;
    v21 = *v36;
LABEL_3:
    v22 = 0;
    while (1)
    {
      if (*v36 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v35 + 1) + 8 * v22);
      v24 = [v23 peerID];
      v25 = [v15 isEqualToString:v24];

      if (v25)
      {
        break;
      }

      if (v18 == ++v22)
      {
        v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        v14 = v20;
        v13 = v19;
        v12 = v34;
        goto LABEL_26;
      }
    }

    v18 = v23;

    v14 = v20;
    if (v18)
    {
      v13 = v19;
      if (!v19 || [v19 code] != -2 || (objc_msgSend(v19, "domain"), v26 = objc_claimAutoreleasedReturnValue(), GEOErrorDomain(), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, (v28 & 1) == 0))
      {
        v17 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_data(v17, "tileKey", bytes, 0x10uLL);
        v12 = v34;
        if (v34 && (([v18 canPeerLikelyReadOurCache] & 1) != 0 || (v29 = objc_msgSend(v34, "copyWithoutURL"), v34, (v12 = v29) != 0)))
        {
          xpc_dictionary_set_string(v17, "event", "tiles.tile");
          v30 = xpc_dictionary_create(0, 0, 0);
          [v12 encodeToXPCDictionary:v30];
          xpc_dictionary_set_value(v17, "tileData", v30);
        }

        else
        {
          xpc_dictionary_set_string(v17, "event", "tiles.err");
          v30 = [v13 _geo_newXPCData];
          if (v30)
          {
            xpc_dictionary_set_value(v17, "err", v30);
          }

          v12 = 0;
        }

        if (v14)
        {
          v31 = [v14 _geo_newXPCObject];
          xpc_dictionary_set_value(v17, "tileInfo", v31);
        }

        v32 = [v18 connection];
        [v32 sendMessage:v17];

        goto LABEL_26;
      }
    }

    else
    {
      v13 = v19;
    }

    v12 = v34;
    goto LABEL_27;
  }

LABEL_26:

LABEL_27:
}

- (void)peerDidDisconnect:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pendingPeerToClientIdentifiers = self->_pendingPeerToClientIdentifiers;
  v6 = [v4 peerID];
  v7 = [(NSMutableDictionary *)pendingPeerToClientIdentifiers objectForKeyedSubscript:v6];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = +[GEOTileLoader modernLoader];
        [v13 cancelAllForClient:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = self->_pendingPeerToClientIdentifiers;
  v15 = [v4 peerID];
  [(NSMutableDictionary *)v14 removeObjectForKey:v15];

  if ([v4 preloading])
  {
    v16 = +[GEOTileLoader modernLoader];
    v17 = [v4 peerID];
    [v16 endPreloadSessionForClient:v17];

    [v4 setPreloading:0];
  }

  v18 = +[GEOTileLoader modernLoader];
  v19 = [v4 peerID];
  [v18 closeForClient:v19];

  v20.receiver = self;
  v20.super_class = GEOTileServer;
  [(GEOTileServer *)&v20 peerDidDisconnect:v4];
}

- (void)peerDidConnect:(id)a3
{
  v3 = a3;
  v5 = +[GEOTileLoader modernLoader];
  v4 = [v3 peerID];

  [v5 openForClient:v4];
}

- (void)endPreload:(id)a3 fromPeer:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v5 preloading])
  {
    [v5 setPreloading:0];
    v6 = sub_10003FD64(v5, v8);
    v7 = [v5 peerID];
    [v6 endPreloadSessionForClient:v7];
  }
}

- (void)beginPreload:(id)a3 fromPeer:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(queue);
  uint64 = xpc_dictionary_get_uint64(v7, "sz");
  [v6 setPreloading:1];
  v10 = sub_10003FD64(v6, v7);

  v9 = [v6 peerID];

  [v10 beginPreloadSessionOfSize:uint64 forClient:v9];
}

- (void)corrupt:(id)a3 fromPeer:(id)a4
{
  v5 = a3;
  v6 = a4;
  length = 0;
  data = xpc_dictionary_get_data(v5, "key", &length);
  if (length == 16)
  {
    v11 = 1;
    *buf = xmmword_100062AB0;
    *buf = *data;
    v8 = sub_10003FD64(v6, v5);
    [v8 reportCorruptTile:buf];
  }

  else
  {
    v8 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Peer %@ provided incorrect tile key data for corrupt data", buf, 0xCu);
    }
  }
}

- (void)_shrinkDB:(id)a3 fromPeer:(id)a4 synchronous:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v36 = a4;
  dispatch_assert_queue_V2(self->_queue);
  reply = xpc_dictionary_create_reply(v8);
  if (reply)
  {
    v35 = v5;
    v10 = xpc_dictionary_get_remote_connection(v8);
    v33 = self;
    uint64 = xpc_dictionary_get_uint64(v8, "sz");
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = [(GEOTileServer *)self daemon];
    v12 = [v11 peers];

    v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v30 = v10;
      v31 = reply;
      v32 = v8;
      v15 = 0;
      v16 = 0;
      v17 = *v41;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = [v36 bundleIdentifier];
          v21 = [v19 bundleIdentifier];
          if ([v20 isEqual:v21])
          {
          }

          else
          {
            v22 = [v19 isLocationd];

            if ((v22 & 1) == 0)
            {
              if (!v16)
              {
                v16 = +[NSMutableString string];
              }

              v23 = [v19 bundleIdentifier];
              [v16 appendFormat:@"%@, ", v23];

              ++v15;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
      v24 = v15 == 0;
      reply = v31;
      v8 = v32;
      v25 = v16;
      v10 = v30;
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }

    v26 = v25;
    [v25 deleteCharactersInRange:{objc_msgSend(v25, "length") - 2, 2}];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100040E98;
    v37[3] = &unk_1000832B0;
    v38 = reply;
    v27 = v10;
    v39 = v27;
    v28 = objc_retainBlock(v37);
    if (v24 || ([v36 hasEntitlement:@"com.apple.geoservices.shrinkdb.force"] & 1) != 0)
    {
      v29 = sub_10003FD64(v36, v8);
      if (v35)
      {
        (v28[2])(v28, [v29 shrinkDiskCacheToSizeSync:uint64]);
      }

      else
      {
        [v29 shrinkDiskCacheToSize:uint64 callbackQ:v33->_queue finished:v28];
      }
    }

    else
    {
      NSLog(@"Refusing to shrink tile db because there are clients: %@", v25);
      (v28[2])(v28, 0);
    }
  }
}

- (void)_canShrinkBySize:(id)a3 fromPeer:(id)a4 synchronous:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  reply = xpc_dictionary_create_reply(v8);
  if (reply)
  {
    v11 = xpc_dictionary_get_remote_connection(v8);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100041050;
    v18 = &unk_1000832B0;
    v19 = reply;
    v12 = v11;
    v20 = v12;
    v13 = objc_retainBlock(&v15);
    sub_10003FD64(v9, v8);
    if (v5)
      v14 = {;
      (v13[2])(v13, [v14 calculateFreeableSizeSync]);
    }

    else
      v14 = {;
      [v14 calculateFreeableSizeWithCallbackQ:self->_queue finished:{v13, v15, v16, v17, v18, v19}];
    }
  }
}

- (void)reprioritizeKey:(id)a3 fromPeer:(id)a4
{
  v5 = a3;
  v6 = a4;
  *length = 0;
  data = xpc_dictionary_get_data(v5, "key", length);
  if (*length != 16)
  {
    v14 = 0uLL;
    LOBYTE(v15) = 0;
    v12 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *length = 138412290;
      *&length[4] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Received wrong length for tileKey from peer %@", length, 0xCu);
    }

    goto LABEL_6;
  }

  LOBYTE(v15) = 1;
  v14 = xmmword_100062AB0;
  v14 = *data;
  uint64 = xpc_dictionary_get_uint64(v5, "priority");
  if (uint64)
  {
    int64 = xpc_dictionary_get_int64(v5, "batch");
    v10 = v6;
    v11 = [v10 peerID];
    v12 = [NSString stringWithFormat:@"%@-%lli", v11, int64, v14, v15];

    v13 = sub_10003FD64(v10, v5);
    [v13 reprioritizeKey:&v14 forClient:v12 newPriority:uint64];

LABEL_6:
  }
}

- (void)cancel:(id)a3 fromPeer:(id)a4
{
  v5 = a3;
  v6 = a4;
  *length = 0;
  data = xpc_dictionary_get_data(v5, "key", length);
  if (*length == 16)
  {
    LOBYTE(v14) = 1;
    v13 = xmmword_100062AB0;
    v13 = *data;
    int64 = xpc_dictionary_get_int64(v5, "batch");
    v9 = v6;
    v10 = [v9 peerID];
    v11 = [NSString stringWithFormat:@"%@-%lli", v10, int64, v13, v14];

    v12 = sub_10003FD64(v9, v5);
    [v12 cancelKey:&v13 forClient:v11];
  }

  else
  {
    v13 = 0uLL;
    LOBYTE(v14) = 0;
    v11 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *length = 138412290;
      *&length[4] = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Received wrong length for tileKey from peer %@", length, 0xCu);
    }
  }
}

- (void)loadTiles:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = xpc_dictionary_get_value(v6, "list");
  v9 = [GEOTileKeyList listFromXPCData:v8];

  v10 = xpc_dictionary_get_BOOL(v6, "disk");
  LODWORD(v8) = xpc_dictionary_get_BOOL(v6, "net");
  v11 = xpc_dictionary_get_BOOL(v6, "wifi");
  v225 = xpc_dictionary_get_BOOL(v6, "preload");
  v12 = xpc_dictionary_get_BOOL(v6, "proactively_load_on_failure");
  v13 = xpc_dictionary_get_BOOL(v6, "prefer_stale");
  objc_opt_class();
  v14 = GEODecodeXPCValue();
  v15 = sub_100002560(v6);
  v16 = v10;
  v17 = v15;
  if (v8)
  {
    v16 |= 2uLL;
  }

  if (v11)
  {
    v16 |= 8uLL;
  }

  if (v12)
  {
    v16 |= 0x100uLL;
  }

  if (v13)
  {
    v18 = v16 | 0x1000;
  }

  else
  {
    v18 = v16;
  }

  v19 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:v14 locale:v15];
  reply = xpc_dictionary_create_reply(v6);
  v21 = reply;
  if (reply)
  {
    xpc_dictionary_set_string(reply, "event", "tiles.finished");
    v22 = xpc_dictionary_get_remote_connection(v6);
    if (![v9 count])
    {
      xpc_connection_send_message(v22, v21);
LABEL_52:

      goto LABEL_53;
    }

    v218 = v18;
    v219 = v17;
    v220 = v14;
    v221 = v22;
    v223 = v9;
    v224 = v19;
    v222 = v21;
    if (v225 && ([v7 hasEntitlement:@"com.apple.geoservices.preload"] & 1) == 0)
    {
      v44 = NSStringFromSelector(a2);
      v45 = [v7 bundleIdentifier];
      v46 = [NSString stringWithFormat:@"%@ is not allowed for %@ because of missing entitlement", v44, v45];

      NSLog(@"%@", v46);
      aSelectora = v46;
      v47 = [NSError GEOErrorWithCode:-5 reason:v46];
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v298 = 0u;
      v48 = v9;
      v49 = [v48 countByEnumeratingWithState:&v295 objects:v313 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v296;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v296 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v295 + 1) + 8 * i);
            v54 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v47 info:0 forKey:v53 forPeer:v54];
          }

          v50 = [v48 countByEnumeratingWithState:&v295 objects:v313 count:16];
        }

        while (v50);
      }

      v22 = v221;
      v21 = v222;
      xpc_connection_send_message(v221, v222);

      v9 = v223;
      v17 = v219;
      v14 = v220;
      goto LABEL_51;
    }

    v23 = xpc_dictionary_get_value(v6, "priorities");
    v204 = v23;
    if (xpc_get_type(v23) != &_xpc_type_data)
    {
      v24 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (type)"];
      v25 = v9;
      v26 = v24;
      v291 = 0u;
      v292 = 0u;
      v293 = 0u;
      v294 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v291 objects:v312 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v292;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v292 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v291 + 1) + 8 * j);
            v33 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v26 info:0 forKey:v32 forPeer:v33];
          }

          v29 = [v27 countByEnumeratingWithState:&v291 objects:v312 count:16];
        }

        while (v29);
      }

LABEL_49:

      v22 = v221;
      v21 = v222;
      xpc_connection_send_message(v221, v222);
      v17 = v219;
      v14 = v220;
LABEL_50:

      v9 = v223;
LABEL_51:
      v19 = v224;
      goto LABEL_52;
    }

    v34 = xpc_data_get_length(v23);
    if (v34 != 4 * [v9 count])
    {
      v55 = v9;
      v26 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (length)"];
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v290 = 0u;
      v27 = v55;
      v56 = [v27 countByEnumeratingWithState:&v287 objects:v311 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v288;
        do
        {
          for (k = 0; k != v57; k = k + 1)
          {
            if (*v288 != v58)
            {
              objc_enumerationMutation(v27);
            }

            v60 = *(*(&v287 + 1) + 8 * k);
            v61 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v26 info:0 forKey:v60 forPeer:v61];
          }

          v57 = [v27 countByEnumeratingWithState:&v287 objects:v311 count:16];
        }

        while (v57);
      }

      goto LABEL_49;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v23);
    v26 = xpc_dictionary_get_value(v6, "has_additional_infos");
    v186 = v6;
    if (xpc_get_type(v26) != &_xpc_type_data)
    {
      v36 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (type)"];
      v283 = 0u;
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v37 = v223;
      v38 = [v37 countByEnumeratingWithState:&v283 objects:v310 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v284;
        do
        {
          for (m = 0; m != v39; m = m + 1)
          {
            if (*v284 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v283 + 1) + 8 * m);
            v43 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v36 info:0 forKey:v42 forPeer:v43];
          }

          v39 = [v37 countByEnumeratingWithState:&v283 objects:v310 count:16];
        }

        while (v39);
      }

LABEL_71:

      xpc_connection_send_message(v221, v222);
      v17 = v219;
      v14 = v220;
LABEL_72:

      v6 = v186;
      v22 = v221;
      v21 = v222;
      goto LABEL_50;
    }

    v62 = xpc_data_get_length(v26);
    if (v62 != [v223 count])
    {
      v36 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (length)"];
      v279 = 0u;
      v280 = 0u;
      v281 = 0u;
      v282 = 0u;
      v37 = v223;
      v71 = [v37 countByEnumeratingWithState:&v279 objects:v309 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v280;
        do
        {
          for (n = 0; n != v72; n = n + 1)
          {
            if (*v280 != v73)
            {
              objc_enumerationMutation(v37);
            }

            v75 = *(*(&v279 + 1) + 8 * n);
            v76 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v36 info:0 forKey:v75 forPeer:v76];
          }

          v72 = [v37 countByEnumeratingWithState:&v279 objects:v309 count:16];
        }

        while (v72);
      }

      goto LABEL_71;
    }

    v203 = bytes_ptr;
    v63 = xpc_data_get_bytes_ptr(v26);
    v36 = xpc_dictionary_get_value(v6, "additional_infos");
    if (xpc_get_type(v36) != &_xpc_type_data)
    {
      aSelectorb = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (type)"];
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      v278 = 0u;
      v64 = v223;
      v65 = [v64 countByEnumeratingWithState:&v275 objects:v308 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v276;
        do
        {
          for (ii = 0; ii != v66; ii = ii + 1)
          {
            if (*v276 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v275 + 1) + 8 * ii);
            v70 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:aSelectorb info:0 forKey:v69 forPeer:v70];
          }

          v66 = [v64 countByEnumeratingWithState:&v275 objects:v308 count:16];
        }

        while (v66);
      }

LABEL_91:

      xpc_connection_send_message(v221, v222);
      v17 = v219;
      v14 = v220;
LABEL_92:

      goto LABEL_72;
    }

    v200 = v63;
    v77 = xpc_data_get_length(v36);
    if (v77 != 16 * [v223 count])
    {
      aSelectorb = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (length)"];
      v271 = 0u;
      v272 = 0u;
      v273 = 0u;
      v274 = 0u;
      v64 = v223;
      v87 = [v64 countByEnumeratingWithState:&v271 objects:v307 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v272;
        do
        {
          for (jj = 0; jj != v88; jj = jj + 1)
          {
            if (*v272 != v89)
            {
              objc_enumerationMutation(v64);
            }

            v91 = *(*(&v271 + 1) + 8 * jj);
            v92 = [v7 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:aSelectorb info:0 forKey:v91 forPeer:v92];
          }

          v88 = [v64 countByEnumeratingWithState:&v271 objects:v307 count:16];
        }

        while (v88);
      }

      goto LABEL_91;
    }

    v199 = xpc_data_get_bytes_ptr(v36);
    v78 = xpc_dictionary_get_value(v6, "signposts");
    aSelectorb = v78;
    if (v78)
    {
      v79 = v78;
      if (xpc_get_type(v78) != &_xpc_type_data)
      {
        v217 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (type)"];
        v267 = 0u;
        v268 = 0u;
        v269 = 0u;
        v270 = 0u;
        v80 = v223;
        v81 = [v80 countByEnumeratingWithState:&v267 objects:v306 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v268;
          do
          {
            for (kk = 0; kk != v82; kk = kk + 1)
            {
              if (*v268 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v267 + 1) + 8 * kk);
              v86 = [v7 peerID];
              [(GEOTileServer *)self _receivedTile:0 error:v217 info:0 forKey:v85 forPeer:v86];
            }

            v82 = [v80 countByEnumeratingWithState:&v267 objects:v306 count:16];
          }

          while (v82);
        }

LABEL_114:

        xpc_connection_send_message(v221, v222);
LABEL_210:
        v17 = v219;
        v14 = v220;

        goto LABEL_92;
      }

      v93 = v79;
      v94 = xpc_data_get_length(v79);
      if (v94 != 8 * [v223 count])
      {
        v217 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (length)"];
        v263 = 0u;
        v264 = 0u;
        v265 = 0u;
        v266 = 0u;
        v80 = v223;
        v104 = [v80 countByEnumeratingWithState:&v263 objects:v305 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v264;
          do
          {
            for (mm = 0; mm != v105; mm = mm + 1)
            {
              if (*v264 != v106)
              {
                objc_enumerationMutation(v80);
              }

              v108 = *(*(&v263 + 1) + 8 * mm);
              v109 = [v7 peerID];
              [(GEOTileServer *)self _receivedTile:0 error:v217 info:0 forKey:v108 forPeer:v109];
            }

            v105 = [v80 countByEnumeratingWithState:&v263 objects:v305 count:16];
          }

          while (v105);
        }

        goto LABEL_114;
      }

      v195 = xpc_data_get_bytes_ptr(v93);
    }

    else
    {
      v195 = 0;
    }

    v95 = xpc_dictionary_get_value(v6, "ctime");
    v217 = v95;
    if (v95)
    {
      v96 = v95;
      if (xpc_get_type(v95) != &_xpc_type_data)
      {
        v216 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (type)"];
        v259 = 0u;
        v260 = 0u;
        v261 = 0u;
        v262 = 0u;
        v97 = v223;
        v98 = [v97 countByEnumeratingWithState:&v259 objects:v304 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v260;
          do
          {
            for (nn = 0; nn != v99; nn = nn + 1)
            {
              if (*v260 != v100)
              {
                objc_enumerationMutation(v97);
              }

              v102 = *(*(&v259 + 1) + 8 * nn);
              v103 = [v7 peerID];
              [(GEOTileServer *)self _receivedTile:0 error:v216 info:0 forKey:v102 forPeer:v103];
            }

            v99 = [v97 countByEnumeratingWithState:&v259 objects:v304 count:16];
          }

          while (v99);
        }

LABEL_133:

        xpc_connection_send_message(v221, v222);
LABEL_209:

        goto LABEL_210;
      }

      v110 = xpc_data_get_length(v96);
      if (v110 != 8 * [v223 count])
      {
        v216 = [NSError GEOErrorWithCode:-10 reason:@"Bad XPC request encoding (length)"];
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v97 = v223;
        v119 = [v97 countByEnumeratingWithState:&v255 objects:v303 count:16];
        if (v119)
        {
          v120 = v119;
          v121 = *v256;
          do
          {
            for (i1 = 0; i1 != v120; i1 = i1 + 1)
            {
              if (*v256 != v121)
              {
                objc_enumerationMutation(v97);
              }

              v123 = *(*(&v255 + 1) + 8 * i1);
              v124 = [v7 peerID];
              [(GEOTileServer *)self _receivedTile:0 error:v216 info:0 forKey:v123 forPeer:v124];
            }

            v120 = [v97 countByEnumeratingWithState:&v255 objects:v303 count:16];
          }

          while (v120);
        }

        goto LABEL_133;
      }

      v191 = xpc_data_get_bytes_ptr(v96);
    }

    else
    {
      v191 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(v6, "reason");
    v111 = xpc_dictionary_get_array(v6, "cis");
    if (xpc_get_type(v111) == &_xpc_type_array && xpc_array_get_count(v111))
    {
      v216 = [NSArray _geo_arrayFromXPCObject:v111];
    }

    else
    {
      v216 = 0;
    }

    int64 = xpc_dictionary_get_int64(v6, "batch");
    v198 = [v7 peerID];
    v112 = [v7 auditToken];
    length[0] = 0;
    data = xpc_dictionary_get_data(v6, "__audit_token", length);
    if (data && (v114 = data, [v7 hasEntitlement:GEOAuditTokenOverrideEntitlement]))
    {
      v115 = [NSData dataWithBytes:v114 length:length[0]];
      v116 = [NSSet setWithObject:objc_opt_class()];
      v117 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v116 fromData:v115 error:0];

      if (v112)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      v215 = v118;
    }

    else
    {
      v215 = v112;
    }

    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    obj = v223;
    v185 = v111;
    v210 = [obj countByEnumeratingWithState:&v251 objects:v302 count:16];
    if (!v210)
    {
      v182 = 0;
      v156 = obj;
      goto LABEL_183;
    }

    group = 0;
    v208 = *v252;
    v188 = GeoOfflineConfig_CohortAllowList[1];
LABEL_138:
    v125 = 0;
    while (1)
    {
      if (*v252 != v208)
      {
        objc_enumerationMutation(obj);
      }

      v126 = *(*(&v251 + 1) + 8 * v125);
      v127 = v7;
      v128 = v215;
      if (GEOTileKeyIsOffline())
      {
        v129 = [v127 valueForEntitlement:@"com.apple.geoservices.restricted-tiles"];
        if (([v129 containsObject:@"offline"] & 1) == 0)
        {
          GEOConfigGetArray();
          v130 = v205 = v128;
          [v205 offlineCohortId];
          v212 = v127;
          v131 = v129;
          v133 = v132 = v126;
          v134 = [v130 containsObject:v133];

          v126 = v132;
          v129 = v131;
          v127 = v212;

          v128 = v205;
          if ((v134 & 1) == 0)
          {
            v145 = GEOGetTileLoadingLog();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
            {
              v146 = [v205 offlineCohortId];
              LODWORD(length[0]) = 138543362;
              *(length + 4) = v146;
              _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_FAULT, "Attempt to load offline tiles from un-entitled or mis-entitled client: %{public}@", length, 0xCu);
            }

            v128 = v205;
LABEL_162:

            v147 = GEOGetTileLoadingLog();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              v148 = GEOStringFromTileKey();
              LODWORD(length[0]) = 138543619;
              *(length + 4) = v7;
              WORD2(length[1]) = 2113;
              *(&length[1] + 6) = v148;
              _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_ERROR, "%{public}@ is not allowed to load tile %{private}@", length, 0x16u);
            }

            v149 = [NSError GEOErrorWithCode:-5 reason:@"Peer is not allowed to load this tile type"];
            v150 = [v127 peerID];
            [(GEOTileServer *)self _receivedTile:0 error:v149 info:0 forKey:v126 forPeer:v150];

            v151 = group;
            if (!group)
            {
              v151 = objc_alloc_init(GEOTileKeyList);
            }

            group = v151;
            [v151 addKey:v126];
            goto LABEL_167;
          }
        }
      }

      length[0] = GEOTileKeyMakeOnline();
      length[1] = v135;
      LODWORD(v242) = 0;
      if (GEOTileKeyStyle())
      {
        v213 = v127;
        v136 = v127;
        v137 = v136;
        v196 = v126;
        v152 = -1;
        v153 = "A";
        do
        {
          if (v152 == 10)
          {
            goto LABEL_157;
          }

          v154 = *(v153 + 4);
          v153 += 16;
          ++v152;
        }

        while (v154 != v242);
        v206 = v152 > 0xA;
        v138 = *(v153 + 1);
        if (!v138)
        {
          goto LABEL_157;
        }

        v139 = v128;
        v140 = [v136 valueForEntitlement:@"com.apple.geoservices.restricted-tiles"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v141 = (v153 + 5);
          while (1)
          {
            v142 = *v141++;
            v143 = v142 - 1;
            v144 = @"<unknown>";
            if ((v142 - 1) <= 8)
            {
              v144 = off_100082468[v143];
            }

            if ([v140 containsObject:v144])
            {
              break;
            }

            if (!--v138)
            {
              goto LABEL_154;
            }
          }

          v128 = v139;
LABEL_157:

          v127 = v213;
          goto LABEL_158;
        }

LABEL_154:

        v126 = v196;
        v127 = v213;
        v128 = v139;
        if (v206)
        {
          goto LABEL_158;
        }

        goto LABEL_162;
      }

LABEL_158:

LABEL_167:
      if (++v125 == v210)
      {
        v155 = [obj countByEnumeratingWithState:&v251 objects:v302 count:16];
        v210 = v155;
        if (!v155)
        {

          if (group)
          {
            v249 = 0u;
            v250 = 0u;
            v247 = 0u;
            v248 = 0u;
            v156 = group;
            v157 = [v156 countByEnumeratingWithState:&v247 objects:v300 count:16];
            if (v157)
            {
              v158 = v157;
              v159 = *v248;
              do
              {
                for (i2 = 0; i2 != v158; i2 = i2 + 1)
                {
                  if (*v248 != v159)
                  {
                    objc_enumerationMutation(v156);
                  }

                  [obj removeKey:*(*(&v247 + 1) + 8 * i2)];
                }

                v158 = [v156 countByEnumeratingWithState:&v247 objects:v300 count:16];
              }

              while (v158);
            }

            v182 = v156;
LABEL_183:
          }

          else
          {
            v182 = 0;
          }

          v161 = v7;
          v162 = [v161 peerID];
          v197 = [NSString stringWithFormat:@"%@-%lli", v162, int64];

          pendingPeerToClientIdentifiers = self->_pendingPeerToClientIdentifiers;
          if (!pendingPeerToClientIdentifiers)
          {
            v164 = +[NSMutableDictionary dictionary];
            v165 = self->_pendingPeerToClientIdentifiers;
            self->_pendingPeerToClientIdentifiers = v164;

            pendingPeerToClientIdentifiers = self->_pendingPeerToClientIdentifiers;
          }

          v166 = [(NSMutableDictionary *)pendingPeerToClientIdentifiers objectForKeyedSubscript:v198];
          if (!v166)
          {
            v166 = +[NSMutableArray array];
            [(NSMutableDictionary *)self->_pendingPeerToClientIdentifiers setObject:v166 forKeyedSubscript:v198];
          }

          v184 = v166;
          [v166 addObject:v197];
          groupa = dispatch_group_create();
          GEOMachAbsoluteTimeGetCurrent();
          v168 = v167;
          v192 = [v161 offlineCohortId];
          v243 = 0u;
          v244 = 0u;
          v245 = 0u;
          v246 = 0u;
          v187 = obj;
          obja = [v187 countByEnumeratingWithState:&v243 objects:v299 count:16];
          if (!obja)
          {
LABEL_208:

            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100042EA8;
            block[3] = &unk_100083288;
            block[4] = self;
            v230 = v198;
            v231 = v197;
            v232 = v221;
            v233 = v222;
            v179 = v197;
            v180 = v198;
            dispatch_group_notify(groupa, queue, block);

            goto LABEL_209;
          }

          v169 = 0;
          v189 = *v244;
          while (2)
          {
            v170 = 0;
LABEL_192:
            if (*v244 != v189)
            {
              objc_enumerationMutation(v187);
            }

            v171 = *(*(&v243 + 1) + 8 * v170);
            length[1] = 0;
            length[0] = 0;
            *length = *v171;
            v172 = v200[v169];
            v242 = v199[v169];
            v214 = v203[v169];
            if (v195)
            {
              v211 = v195[v169];
            }

            else
            {
              v211 = 0;
            }

            if (v191)
            {
              v173 = v191[v169];
              if (v216)
              {
                goto LABEL_199;
              }

LABEL_201:
              v174 = 0;
            }

            else
            {
              v173 = 0.0;
              if (!v216)
              {
                goto LABEL_201;
              }

LABEL_199:
              v174 = [v216 objectAtIndexedSubscript:v169];
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v174 = 0;
            }

            ++v169;
            dispatch_group_enter(groupa);
            v175 = &v242;
            if (!v172)
            {
              v175 = 0;
            }

            v209 = v175;
            v207 = qos_class_self();
            v176 = self->_queue;
            v234[0] = _NSConcreteStackBlock;
            v234[1] = 3221225472;
            v234[2] = sub_100042D04;
            v234[3] = &unk_100083260;
            v240 = *length;
            v241 = v225;
            v177 = v192;
            v239 = v168;
            v235 = v177;
            v236 = self;
            v237 = v198;
            v238 = groupa;
            HIDWORD(v181) = v207;
            LOBYTE(v181) = uint64;
            [v224 loadKey:length additionalInfo:v209 priority:v214 forClient:v197 auditToken:v215 options:v218 | 0x20 cacheInfo:v173 reason:v174 qos:v181 signpostID:v211 createTime:v176 callbackQ:0 beginNetwork:v234 callback:v182];

            if (obja == ++v170)
            {
              obja = [v187 countByEnumeratingWithState:&v243 objects:v299 count:16];
              if (!obja)
              {
                goto LABEL_208;
              }

              continue;
            }

            goto LABEL_192;
          }
        }

        goto LABEL_138;
      }
    }
  }

LABEL_53:
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = GEOTileServer;
  v2 = [(GEOTileServer *)&v7 description];
  v3 = +[GEOTileLoader modernLoader];
  v4 = [v3 description];
  v5 = [NSString stringWithFormat:@"%@ %@", v2, v4];

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEOTileServer;
  [(GEOTileServer *)&v4 dealloc];
}

- (GEOTileServer)initWithDaemon:(id)a3
{
  v11.receiver = self;
  v11.super_class = GEOTileServer;
  v3 = [(GEOTileServer *)&v11 initWithDaemon:a3];
  if (v3)
  {
    global_queue = geo_get_global_queue();
    v5 = geo_dispatch_queue_create_with_target();
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = +[GEOTileLoader modernLoader];
    [v7 setInternalDelegate:v3];

    v8 = +[GEOTileLoader modernLoader];
    [v8 setInternalDelegateQ:v3->_queue];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_didDeleteExternalTileData:" name:GEOTileLoaderDidDeleteExternalTileDataNotification object:0];
  }

  return v3;
}

@end