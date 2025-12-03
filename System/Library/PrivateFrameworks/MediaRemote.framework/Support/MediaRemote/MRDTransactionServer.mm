@interface MRDTransactionServer
- (MRDTransactionServer)init;
- (unint64_t)transactionRequestingMemorySize:(id)size;
- (void)_sendContentItemTransaction:(id)transaction request:(id)request playerPath:(id)path;
- (void)adjustMemory:(int64_t)memory;
- (void)collectDiagnostic:(id)diagnostic;
- (void)handleContentItemTransaction:(id)transaction packets:(id)packets group:(id)group;
- (void)handlePlaybackQueueRequestTransaction:(id)transaction packets:(id)packets group:(id)group;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)sendContentItemTransaction:(id)transaction request:(id)request playerPath:(id)path;
- (void)sendContentItemTransactionWithPlaybackQueue:(id)queue request:(id)request playerPath:(id)path;
- (void)transaction:(id)transaction didReceivePackets:(id)packets receivedSize:(unint64_t)size requestedSize:(unint64_t)requestedSize queue:(id)queue completion:(id)completion;
- (void)transactionDidEnd:(id)end bytesRemaining:(unint64_t)remaining;
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

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "MRXPC_TRANSACTION_NAME");
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
    v7 = [[MRTransaction alloc] initWithName:uint64 fromMessage:messageCopy withDelegate:self];
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

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B74E4;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(queue, v7);
}

- (void)transactionDidEnd:(id)end bytesRemaining:(unint64_t)remaining
{
  endCopy = end;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B75E8;
  block[3] = &unk_1004B6AC0;
  v10 = endCopy;
  remainingCopy = remaining;
  block[4] = self;
  v8 = endCopy;
  dispatch_sync(queue, block);
}

- (unint64_t)transactionRequestingMemorySize:(id)size
{
  sizeCopy = size;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B76FC;
  block[3] = &unk_1004BA9B8;
  selfCopy = self;
  v12 = &v13;
  v10 = sizeCopy;
  v6 = sizeCopy;
  dispatch_sync(queue, block);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (void)transaction:(id)transaction didReceivePackets:(id)packets receivedSize:(unint64_t)size requestedSize:(unint64_t)requestedSize queue:(id)queue completion:(id)completion
{
  transactionCopy = transaction;
  packetsCopy = packets;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B797C;
  block[3] = &unk_1004B6C50;
  block[4] = self;
  block[5] = requestedSize;
  block[6] = size;
  queueCopy = queue;
  dispatch_sync(queue, block);
  v19 = dispatch_group_create();
  name = [transactionCopy name];
  if ((name - 2) >= 6)
  {
    if (name == 10)
    {
      [(MRDTransactionServer *)self handlePlaybackQueueRequestTransaction:transactionCopy packets:packetsCopy group:v19];
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
    [(MRDTransactionServer *)self handleContentItemTransaction:transactionCopy packets:packetsCopy group:v19];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B7990;
  v23[3] = &unk_1004B94C0;
  v24 = completionCopy;
  sizeCopy = size;
  v23[4] = self;
  v21 = completionCopy;
  dispatch_group_notify(v19, queueCopy, v23);
}

- (void)adjustMemory:(int64_t)memory
{
  if (memory)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A7098(self, memory, v5);
    }

    self->_usedMemory += memory;
  }
}

- (void)handlePlaybackQueueRequestTransaction:(id)transaction packets:(id)packets group:(id)group
{
  transactionCopy = transaction;
  packetsCopy = packets;
  groupCopy4 = group;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A7130(transactionCopy);
  }

  v9 = +[MRDMediaRemoteServer server];
  allClients = [v9 allClients];

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v47 = 0u;
  obj = allClients;
  v36 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v36)
  {
    v35 = *v48;
    group = groupCopy4;
    while (2)
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v47 + 1) + 8 * i);
        playbackQueueRequests = [v34 playbackQueueRequests];
        playerPath = [transactionCopy playerPath];
        v14 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath];

        v15 = objc_alloc_init(NSMutableArray);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = packetsCopy;
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
              identifier = [v22 identifier];

              if ([v14 hasRequest:identifier])
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
          uUIDString = [v24 UUIDString];

          v26 = _MRLogForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [transactionCopy name];
            v30 = MRTransactionNameGetDescription();
            v31 = MRTransactionPacketsGetKeys();
            *buf = 138413058;
            v52 = uUIDString;
            v53 = 2112;
            v54 = v30;
            v55 = 2112;
            v56 = v34;
            v57 = 2112;
            v58 = v31;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] %@ %@ sending client %@ subscribed packets %@", buf, 0x2Au);
          }

          groupCopy4 = group;
          if (group)
          {
            dispatch_group_enter(group);
          }

          connection = [v34 connection];
          v27Connection = [connection connection];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000B7F14;
          v39[3] = &unk_1004BA9E0;
          v40 = uUIDString;
          groupCopy3 = group;
          v42 = transactionCopy;
          v29 = uUIDString;
          [v42 send:v15 toConnection:v27Connection completion:v39];

          goto LABEL_26;
        }
      }

      groupCopy4 = group;
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

- (void)handleContentItemTransaction:(id)transaction packets:(id)packets group:(id)group
{
  transactionCopy = transaction;
  packetsCopy = packets;
  groupCopy2 = group;
  v45 = packetsCopy;
  v47 = sub_1000B8568(packetsCopy);
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A7254(transactionCopy, v47);
  }

  v11 = +[MRDMediaRemoteServer server];
  allClients = [v11 allClients];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = allClients;
  v48 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v48)
  {
    v46 = *v72;
    *&v13 = 138412802;
    v41 = v13;
    group = groupCopy2;
    v44 = transactionCopy;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v72 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        v16 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:{objc_msgSend(transactionCopy, "name")}];
        v52 = v15;
        playbackQueueRequests = [v15 playbackQueueRequests];
        playerPath = [transactionCopy playerPath];
        v19 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath];

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
                      identifier = [v34 identifier];
                      LODWORD(v33) = [v33 isEqualToString:identifier];

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
          transactionCopy = v44;
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

          groupCopy2 = group;
          i = v51;
          v22 = v49;
          if (group)
          {
            dispatch_group_enter(group);
          }

          connection = [v52 connection];
          v37Connection = [connection connection];
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1000B8868;
          v57[3] = &unk_1004BAA30;
          groupCopy3 = group;
          [v44 send:v54 toConnection:v37Connection completion:v57];

          v21 = v50;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v48);
  }
}

- (void)sendContentItemTransactionWithPlaybackQueue:(id)queue request:(id)request playerPath:(id)path
{
  queueCopy = queue;
  requestCopy = request;
  pathCopy = path;
  if (queueCopy)
  {
    contentItems = [queueCopy contentItems];
    v11 = [contentItems count];

    if (v11)
    {
      contentItems2 = [queueCopy contentItems];
      if (contentItems2)
      {
        [(MRDTransactionServer *)self sendContentItemTransaction:contentItems2 request:requestCopy playerPath:pathCopy];
      }
    }
  }
}

- (void)sendContentItemTransaction:(id)transaction request:(id)request playerPath:(id)path
{
  transactionCopy = transaction;
  requestCopy = request;
  pathCopy = path;
  if ([transactionCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B8A30;
    v11[3] = &unk_1004B7310;
    v11[4] = self;
    v12 = transactionCopy;
    v13 = requestCopy;
    v14 = pathCopy;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

- (void)_sendContentItemTransaction:(id)transaction request:(id)request playerPath:(id)path
{
  transactionCopy = transaction;
  requestCopy = request;
  pathCopy = path;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = transactionCopy;
  v24 = [transactionCopy countByEnumeratingWithState:&v31 objects:v38 count:16];
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
            requestIdentifier = [requestCopy requestIdentifier];
            v15 = requestIdentifier;
            if (requestIdentifier)
            {
              v36 = v26;
              v37 = requestIdentifier;
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
            v20 = [[MRTransaction alloc] initWithName:i playerPath:pathCopy];
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