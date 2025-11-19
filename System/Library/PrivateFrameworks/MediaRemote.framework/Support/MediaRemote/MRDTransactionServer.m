@interface MRDTransactionServer
- (MRDTransactionServer)init;
- (unint64_t)transactionRequestingMemorySize:(id)a3;
- (void)_sendContentItemTransaction:(id)a3 request:(id)a4 playerPath:(id)a5;
- (void)adjustMemory:(int64_t)a3;
- (void)collectDiagnostic:(id)a3;
- (void)handleContentItemTransaction:(id)a3 packets:(id)a4 group:(id)a5;
- (void)handlePlaybackQueueRequestTransaction:(id)a3 packets:(id)a4 group:(id)a5;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)sendContentItemTransaction:(id)a3 request:(id)a4 playerPath:(id)a5;
- (void)sendContentItemTransactionWithPlaybackQueue:(id)a3 request:(id)a4 playerPath:(id)a5;
- (void)transaction:(id)a3 didReceivePackets:(id)a4 receivedSize:(unint64_t)a5 requestedSize:(unint64_t)a6 queue:(id)a7 completion:(id)a8;
- (void)transactionDidEnd:(id)a3 bytesRemaining:(unint64_t)a4;
@end

@implementation MRDTransactionServer

- (MRDTransactionServer)init
{
  v9.receiver = self;
  v9.super_class = MRDTransactionServer;
  v2 = [(MRDTransactionServer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaRemote.transactionServer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[MRUserSettings currentSettings];
    v2->_allowedMemory = [v6 maxTransactionMemorySize];
    [v6 transactionWaitDurationOnXpcSend];
    v2->_transactionWaitDuration = v7;
  }

  return v2;
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  uint64 = xpc_dictionary_get_uint64(v5, "MRXPC_TRANSACTION_NAME");
  if (uint64 > 0xA)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = uint64;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRTransactionServer] Unhandled transaction name: %ld", buf, 0xCu);
    }
  }

  else
  {
    v7 = [[MRTransaction alloc] initWithName:uint64 fromMessage:v5 withDelegate:self];
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B73E8;
    v10[3] = &unk_1004B68F0;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_sync(queue, v10);
  }
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B74E4;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)transactionDidEnd:(id)a3 bytesRemaining:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B75E8;
  block[3] = &unk_1004B6AC0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (unint64_t)transactionRequestingMemorySize:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B76FC;
  block[3] = &unk_1004BA9B8;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (void)transaction:(id)a3 didReceivePackets:(id)a4 receivedSize:(unint64_t)a5 requestedSize:(unint64_t)a6 queue:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B797C;
  block[3] = &unk_1004B6C50;
  block[4] = self;
  block[5] = a6;
  block[6] = a5;
  v18 = a7;
  dispatch_sync(queue, block);
  v19 = dispatch_group_create();
  v20 = [v14 name];
  if ((v20 - 2) >= 6)
  {
    if (v20 == 10)
    {
      [(MRDTransactionServer *)self handlePlaybackQueueRequestTransaction:v14 packets:v15 group:v19];
    }

    else
    {
      v22 = _MRLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRTransactionServer] Unhandled Transaction delegate callback", buf, 2u);
      }
    }
  }

  else
  {
    [(MRDTransactionServer *)self handleContentItemTransaction:v14 packets:v15 group:v19];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B7990;
  v23[3] = &unk_1004B94C0;
  v24 = v16;
  v25 = a5;
  v23[4] = self;
  v21 = v16;
  dispatch_group_notify(v19, v18, v23);
}

- (void)adjustMemory:(int64_t)a3
{
  if (a3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A7098(self, a3, v5);
    }

    self->_usedMemory += a3;
  }
}

- (void)handlePlaybackQueueRequestTransaction:(id)a3 packets:(id)a4 group:(id)a5
{
  v38 = a3;
  v37 = a4;
  v7 = a5;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A7130(v38);
  }

  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 allClients];

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v47 = 0u;
  obj = v10;
  v36 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v36)
  {
    v35 = *v48;
    group = v7;
    while (2)
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v47 + 1) + 8 * i);
        v12 = [v34 playbackQueueRequests];
        v13 = [v38 playerPath];
        v14 = [v12 subscriptionControllerForPlayerPath:v13];

        v15 = objc_alloc_init(NSMutableArray);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = v37;
        v17 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v44;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v43 + 1) + 8 * j);
              v22 = [v21 key];
              v23 = [v22 identifier];

              if ([v14 hasRequest:v23])
              {
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
          }

          while (v18);
        }

        if ([v15 count])
        {
          v24 = +[NSUUID UUID];
          v25 = [v24 UUIDString];

          v26 = _MRLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [v38 name];
            v30 = MRTransactionNameGetDescription();
            v31 = MRTransactionPacketsGetKeys();
            *buf = 138413058;
            v52 = v25;
            v53 = 2112;
            v54 = v30;
            v55 = 2112;
            v56 = v34;
            v57 = 2112;
            v58 = v31;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] %@ %@ sending client %@ subscribed packets %@", buf, 0x2Au);
          }

          v7 = group;
          if (group)
          {
            dispatch_group_enter(group);
          }

          v27 = [v34 connection];
          v28 = [v27 connection];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000B7F14;
          v39[3] = &unk_1004BA9E0;
          v40 = v25;
          v41 = group;
          v42 = v38;
          v29 = v25;
          [v42 send:v15 toConnection:v28 completion:v39];

          goto LABEL_26;
        }
      }

      v7 = group;
      v36 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
}

- (void)handleContentItemTransaction:(id)a3 packets:(id)a4 group:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v45 = v8;
  v47 = sub_1000B8568(v8);
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A7254(v7, v47);
  }

  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 allClients];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v12;
  v48 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v48)
  {
    v46 = *v72;
    *&v13 = 138412802;
    v41 = v13;
    group = v9;
    v44 = v7;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v72 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        v16 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:{objc_msgSend(v7, "name")}];
        v52 = v15;
        v17 = [v15 playbackQueueRequests];
        v18 = [v7 playerPath];
        v19 = [v17 subscriptionControllerForPlayerPath:v18];

        v20 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v47 count]);
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_1000B8788;
        v67[3] = &unk_1004BAA08;
        v21 = v16;
        v68 = v21;
        v22 = v19;
        v69 = v22;
        v23 = v20;
        v70 = v23;
        [v47 enumerateKeysAndObjectsUsingBlock:v67];
        v56 = v23;
        if ([v23 count])
        {
          v49 = v22;
          v50 = v21;
          v51 = i;
          v54 = objc_alloc_init(NSMutableArray);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v53 = v45;
          v24 = [v53 countByEnumeratingWithState:&v63 objects:v82 count:16];
          if (v24)
          {
            v25 = v24;
            v55 = *v64;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v64 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v27 = *(*(&v63 + 1) + 8 * j);
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v62 = 0u;
                v28 = v56;
                v29 = [v28 countByEnumeratingWithState:&v59 objects:v81 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v60;
                  while (2)
                  {
                    for (k = 0; k != v30; k = k + 1)
                    {
                      if (*v60 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v59 + 1) + 8 * k);
                      v34 = [v27 key];
                      v35 = [v34 identifier];
                      LODWORD(v33) = [v33 isEqualToString:v35];

                      if (v33)
                      {
                        [v54 addObject:v27];
                        goto LABEL_24;
                      }
                    }

                    v30 = [v28 countByEnumeratingWithState:&v59 objects:v81 count:16];
                    if (v30)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_24:
              }

              v25 = [v53 countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v25);
          }

          v36 = _MRLogForCategory();
          v7 = v44;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [v44 name];
            v39 = MRTransactionNameGetDescription();
            v40 = MRTransactionPacketsGetKeys();
            *buf = v41;
            v76 = v39;
            v77 = 2112;
            v78 = v52;
            v79 = 2112;
            v80 = v40;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] %@ sending client %@ subscribed packets %@", buf, 0x20u);
          }

          v9 = group;
          i = v51;
          v22 = v49;
          if (group)
          {
            dispatch_group_enter(group);
          }

          v37 = [v52 connection];
          v38 = [v37 connection];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1000B8868;
          v57[3] = &unk_1004BAA30;
          v58 = group;
          [v44 send:v54 toConnection:v38 completion:v57];

          v21 = v50;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v48);
  }
}

- (void)sendContentItemTransactionWithPlaybackQueue:(id)a3 request:(id)a4 playerPath:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v13)
  {
    v10 = [v13 contentItems];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v13 contentItems];
      if (v12)
      {
        [(MRDTransactionServer *)self sendContentItemTransaction:v12 request:v8 playerPath:v9];
      }
    }
  }
}

- (void)sendContentItemTransaction:(id)a3 request:(id)a4 playerPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B8A30;
    v11[3] = &unk_1004B7310;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

- (void)_sendContentItemTransaction:(id)a3 request:(id)a4 playerPath:(id)a5
{
  v7 = a3;
  v29 = a4;
  v28 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v24 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v24)
  {
    v23 = *v32;
    v26 = _kMRPlaybackQueueRequestIDUserInfoKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v8;
        v9 = *(*(&v31 + 1) + 8 * v8);
        v30 = MRContentItemGetAncestorIdentifier();
        for (i = 2; i != 9; ++i)
        {
          v11 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:i];
          v12 = MRContentItemCreateFromRequest();
          if ((MRContentItemIsEmpty() & 1) == 0)
          {
            v13 = objc_alloc_init(_MRTransactionKeyProtobuf);
            v14 = [v29 requestIdentifier];
            v15 = v14;
            if (v14)
            {
              v36 = v26;
              v37 = v14;
              v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
              v17 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
            }

            else
            {
              v17 = 0;
            }

            [v13 setIdentifier:v30];
            [v13 setUserData:v17];

            ExternalRepresentation = MRContentItemCreateExternalRepresentation();
            v19 = [[MRTransactionPacket alloc] initWithData:ExternalRepresentation forKey:v13];
            v20 = [[MRTransaction alloc] initWithName:i playerPath:v28];
            v35 = v19;
            v21 = [NSArray arrayWithObjects:&v35 count:1];
            [(MRDTransactionServer *)self handleContentItemTransaction:v20 packets:v21 group:0];
          }
        }

        v8 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v24);
  }
}

@end