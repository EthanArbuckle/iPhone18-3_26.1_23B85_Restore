void sub_1000361FC(uint64_t a1)
{
  sub_100007294(@"com.apple.ntkd.synccontroller.outgoingsession");
  ++*(*(a1 + 32) + 168);
  v2 = [*(*(a1 + 32) + 24) pdrDevice];
  v3 = [v2 pairingID];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = LogBool();
    *buf = 138412546;
    v55 = v6;
    v56 = 2112;
    v57 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "outgoing session (reset=%@) did start for device with UUID: %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) _queue_checkoutLibraryStoreForDeviceUUID:v3];
  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = v7;

  v10 = [*(a1 + 32) _queue_storeStatusForDeviceUUID:v3];
  v11 = *(a1 + 32);
  v12 = *(v11 + 104);
  *(v11 + 104) = v10;

  v13 = [*(a1 + 32) _queue_checkoutComplicationStoresForDeviceUUID:v3];
  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = v13;

  v16 = *(a1 + 32);
  v17 = [v16[16] allKeys];
  v18 = [v16 _queue_complicationStoreStatusesForDeviceUUID:v3 withIdentifiers:v17];
  v19 = *(a1 + 32);
  v20 = *(v19 + 112);
  *(v19 + 112) = v18;

  *(*(a1 + 32) + 136) = *(a1 + 40);
  if ([*(*(a1 + 32) + 184) prepareForSyncing:?])
  {
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#color-sync Prepared for syncing pigment list.", buf, 2u);
    }
  }

  v22 = *(a1 + 40);
  v23 = [*(a1 + 32) _queue_outgoingMessageListForDeviceUUID:v3];
  v24 = v23;
  if (v22 == 1)
  {
    [v23 clearAllMessages];

    v25 = [[_MessageList alloc] initWithPersistencePath:0];
    v26 = *(a1 + 32);
    v27 = *(v26 + 96);
    *(v26 + 96) = v25;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = [*(*(a1 + 32) + 120) orderedUUIDs];
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        v32 = 0;
        do
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(a1 + 32) + 96);
          v34 = [NTKDSyncMessage messageOfType:0 withFaceUUID:*(*(&v49 + 1) + 8 * v32)];
          [v33 enqueueMessage:v34];

          v32 = v32 + 1;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v30);
    }

    v35 = *(*(a1 + 32) + 96);
    v36 = [NTKDSyncMessage messageOfType:5];
    [v35 enqueueMessage:v36];

    v37 = *(*(a1 + 32) + 96);
    v38 = [NTKDSyncMessage messageOfType:4];
    [v37 enqueueMessage:v38];

    v39 = *(a1 + 32);
    v40 = *(v39 + 128);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000366BC;
    v48[3] = &unk_10005E1F8;
    v48[4] = v39;
    [v40 enumerateKeysAndObjectsUsingBlock:v48];
  }

  else
  {
    v41 = *(a1 + 32);
    v42 = *(v41 + 96);
    *(v41 + 96) = v23;
  }

  *(*(a1 + 32) + 144) = [*(*(a1 + 32) + 96) count];
  *(*(a1 + 32) + 152) = 0;
  v43 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(*(a1 + 32) + 144);
    *buf = 134217984;
    v55 = v44;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "estimated number of messages to send (except color-sync): %lu", buf, 0xCu);
  }

  [*(*(a1 + 32) + 96) suspendCoalescing];
  v45 = [*(*(a1 + 32) + 96) messageEnumerator];
  v46 = *(a1 + 32);
  v47 = *(v46 + 160);
  *(v46 + 160) = v45;
}

void sub_1000366BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = a3;
  obj = [v15 clients];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v15 complicationDescriptorsForClientIdentifier:v10];
        v12 = *(*(a1 + 32) + 96);
        v13 = [NTKDSyncMessage messageOfType:10 withCollectionIdentifier:v5 clientId:v10];
        [v12 enqueueMessage:v13];

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000368A0;
        v16[3] = &unk_10005E1D0;
        v16[4] = *(a1 + 32);
        v17 = v5;
        v18 = v10;
        [v11 enumerateObjectsUsingBlock:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

void sub_1000368A0(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 96);
  v3 = [NTKDSyncMessage messageOfType:6 withCollectionIdentifier:a1[5] clientId:a1[6] descriptor:a2 family:0];
  [v2 enqueueMessage:v3];
}

void sub_100036A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100036AB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100036ACC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 184) isSyncing])
  {
    v2 = *(*(a1 + 32) + 184);
    v19 = 0;
    v3 = [v2 nextSyncData:&v19];
    v4 = v19;
    v5 = v4;
    if (v3)
    {
      v6 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#color-sync Sending color sync data to outgoing session.", buf, 2u);
      }

      v7 = [NTKDSyncMessage colorSyncMessageWithData:v3 domain:v5];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      return;
    }
  }

  v10 = [*(*(a1 + 32) + 160) nextObject];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    ++*(*(a1 + 32) + 152);
    v13 = *(a1 + 32);
    v14 = v13[18];
    if (v14)
    {
      v15 = v13[19] / v14;
      v16 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 32) + 144);
        v18 = *(*(a1 + 32) + 152);
        *buf = 134218496;
        v21 = v18;
        v22 = 2048;
        v23 = v17;
        v24 = 2048;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "progress: %lu / %lu => %f", buf, 0x20u);
      }

      [*(*(*(a1 + 40) + 8) + 40) setProgress:{fmin(v15, 1.0)}];
      v13 = *(a1 + 32);
    }

    [v13 _queue_addPayloadToMessage:*(*(*(a1 + 40) + 8) + 40) withFaceStore:v13[15] complicationStores:v13[16]];
  }
}

id sub_100036EA0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 136) == 1)
    {
      [*(v2 + 104) setNeedsResetSync:0];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v3 = [*(*(a1 + 32) + 112) allValues];
      v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v24;
        do
        {
          v7 = 0;
          do
          {
            if (*v24 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v23 + 1) + 8 * v7) setNeedsResetSync:0];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v5);
      }

      v2 = *(a1 + 32);
    }

    [*(v2 + 96) clearMessageCount:*(v2 + 152)];
    [*(a1 + 32) _queue_endGuardingOutgoingSessionRequest];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD60(a1, v8);
    }

    [*(a1 + 32) _queue_endGuardingOutgoingSessionRequest];
    [*(a1 + 32) _queue_requestSyncIfNecessary];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 160);
  *(v9 + 160) = 0;

  [*(*(a1 + 32) + 96) resumeCoalescing];
  v11 = +[NTKDCollectionCoordinator sharedInstance];
  [v11 relinquishStore:*(*(a1 + 32) + 120)];

  [*(*(a1 + 32) + 128) enumerateKeysAndObjectsUsingBlock:&stru_10005E218];
  v12 = *(a1 + 32);
  v13 = *(v12 + 120);
  *(v12 + 120) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 104);
  *(v16 + 104) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 112);
  *(v18 + 112) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 96);
  *(v20 + 96) = 0;

  *(*(a1 + 32) + 136) = 0;
  return [*(*(a1 + 32) + 184) finishSyncing:*(a1 + 48)];
}

void sub_1000370E4(id a1, NSString *a2, NTKDComplicationStore *a3, BOOL *a4)
{
  v4 = a3;
  v5 = +[NTKDComplicationStoreCoordinator sharedInstance];
  [v5 relinquishStore:v4];
}

void sub_100037148(uint64_t a1)
{
  if ([*(a1 + 32) isSetup])
  {
    sub_1000074E0(@"com.apple.ntkd.synccontroller.outgoingsession");
    --*(*(a1 + 32) + 168);
  }
}

void sub_100037208(uint64_t a1)
{
  sub_100007294(@"com.apple.ntkd.synccontroller.incomingsession");
  ++*(*(a1 + 32) + 176);
  v2 = [*(*(a1 + 32) + 24) pdrDevice];
  v3 = [v2 pairingID];

  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = LogBool();
    v24 = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "incoming session (reset=%@) did start for device with UUID: %@", &v24, 0x16u);
  }

  v7 = [*(a1 + 32) _queue_checkoutLibraryStoreForDeviceUUID:v3];
  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = v7;

  v10 = [*(a1 + 32) _queue_storeStatusForDeviceUUID:v3];
  v11 = *(a1 + 32);
  v12 = *(v11 + 104);
  *(v11 + 104) = v10;

  v13 = [*(a1 + 32) _queue_checkoutComplicationStoresForDeviceUUID:v3];
  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = v13;

  v16 = *(a1 + 32);
  v17 = [v16[16] allKeys];
  v18 = [v16 _queue_complicationStoreStatusesForDeviceUUID:v3 withIdentifiers:v17];
  v19 = *(a1 + 32);
  v20 = *(v19 + 112);
  *(v19 + 112) = v18;

  v21 = [*(a1 + 32) _queue_incomingMessageListForDeviceUUID:v3];
  v22 = *(a1 + 32);
  v23 = *(v22 + 96);
  *(v22 + 96) = v21;

  *(*(a1 + 32) + 136) = *(a1 + 40);
}

void sub_100037464(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "incoming session: enqueuing request to reset data store", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 96);
  v4 = [NTKDSyncMessage messageOfType:-1];
  [v3 enqueueMessage:v4];
}

void sub_10003763C(uint64_t a1)
{
  if ([*(a1 + 32) messageType] == 11)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#color-sync Received color sync data.", v10, 2u);
    }

    v3 = [*(*(a1 + 40) + 24) pdrDevice];
    v4 = [v3 pairingID];

    v5 = *(*(a1 + 40) + 192);
    v6 = [*(a1 + 32) payloadData];
    v7 = [*(a1 + 32) label];
    [v5 processSyncData:v6 domain:v7 deviceUUID:v4];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 96);

    [v9 enqueueMessage:v8];
  }
}

void sub_1000378DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) pdrDevice];
  v3 = [v2 pairingID];

  [*(*(a1 + 32) + 192) finishSyncingForDeviceUUID:v3 success:*(a1 + 40)];
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 136) == 1)
    {
      [*(v4 + 104) setNeedsResetSync:0];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [*(*(a1 + 32) + 112) allValues];
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
        do
        {
          v9 = 0;
          do
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v23 + 1) + 8 * v9) setNeedsResetSync:0];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v7);
      }

      v4 = *(a1 + 32);
    }

    [v4 _queue_applyIncomingMessageList:*(v4 + 96) collectionStore:*(v4 + 120) complicationStores:*(v4 + 128) storeStatus:*(v4 + 104)];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "clearing incoming message list after unsuccessful sync session", v22, 2u);
    }

    [*(*(a1 + 32) + 96) clearAllMessages];
    [*(a1 + 32) _queue_requestSyncIfNecessaryAndForceDeltaRequestOtherwise:1];
  }

  v11 = +[NTKDCollectionCoordinator sharedInstance];
  [v11 relinquishStore:*(*(a1 + 32) + 120)];

  [*(*(a1 + 32) + 128) enumerateKeysAndObjectsUsingBlock:&stru_10005E238];
  v12 = *(a1 + 32);
  v13 = *(v12 + 120);
  *(v12 + 120) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 96);
  *(v16 + 96) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 104);
  *(v18 + 104) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 112);
  *(v20 + 112) = 0;

  *(*(a1 + 32) + 136) = 0;
}

void sub_100037B50(id a1, NSString *a2, NTKDComplicationStore *a3, BOOL *a4)
{
  v4 = a3;
  v5 = +[NTKDComplicationStoreCoordinator sharedInstance];
  [v5 relinquishStore:v4];
}

void sub_100037BB4(uint64_t a1)
{
  if ([*(a1 + 32) isSetup])
  {
    sub_1000074E0(@"com.apple.ntkd.synccontroller.incomingsession");
    --*(*(a1 + 32) + 176);
  }
}

void sub_100037C94(uint64_t a1)
{
  sub_100007294(@"com.apple.ntkd.synccontroller.libraryvalidation");
  v2 = sub_1000059C8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037D64;
  v6[3] = &unk_10005CC38;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v9 = v3;
  v5 = v2;
  [v4 _queue_executeIfSyncQueuesAreEmpty:v6];
  sub_1000074E0(@"com.apple.ntkd.synccontroller.libraryvalidation");
}

void sub_100037D64(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "validating library store for device UUID: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) _queue_checkoutLibraryStoreForDeviceUUID:*(a1 + 32)];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100037EB4;
  v10 = &unk_10005E260;
  v5 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v5;
  [v4 flushAndComputeValidationHashWithObserverCallback:&v7];
  v6 = [NTKDCollectionCoordinator sharedInstance:v7];
  [v6 relinquishStore:v4];
}

void sub_100037EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037F6C;
  v6[3] = &unk_10005CC38;
  v6[4] = v4;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _onQueue_async:v6];
}

void sub_100037F6C(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100038010;
  v5[3] = &unk_10005CC38;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  [v2 _queue_executeIfSyncQueuesAreEmpty:v5];
}

uint64_t sub_100038010(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isEqualToString:*(a1 + 40)])
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v2;
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "library store validation succeeded -- hash matches between gizmo and companion: %@", &v8, 0xCu);
    }
  }

  else if (NTKInternalBuild() && CFPreferencesGetAppBooleanValue(@"EnableSyncFailureAlerts", NTKFacePreferencesDomain, 0))
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003FDDC(v2, v2 + 1);
    }

    sub_100005A14(@"Validation Failure", @"A discrepancy between the clock faces on your Watch and iPhone has been detected. Tap 'OK' to raise a radar. Please compare the faces between your devices and note any differences in the radar. (Internal alert only.)", @"Sync: Inconsistent Clock Faces Library State Detected (via Prompt)");
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FE58(v2, v2 + 1);
    }

    [*(*(a1 + 48) + 8) requestResetSync];
    [*(a1 + 48) _queue_beginGuardingOutgoingSessionRequest];
  }

  return NTKSubmitClockFacesValidation();
}

void sub_100038374(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  sub_1000074E0(@"com.apple.ntkd.synccontroller.busy");
}

void sub_10003866C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038688(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000389C4(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = +[NTKDComplicationStoreCoordinator sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038AB0;
  v7[3] = &unk_10005E288;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 32);
  v6 = v3;
  [v4 checkoutStoreForComplicationCollectionIdentifier:v6 deviceUUID:v5 withHandler:v7];
}

void sub_100038AB0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

id sub_100038AF4()
{
  v2[0] = NTKComplicationCollectionIdentifierRemoteComplications;
  v2[1] = NTKComplicationCollectionIdentifierWidgetComplications;
  v2[2] = NTKComplicationCollectionIdentifierBundleComplications;
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

void sub_100038C78(void *a1)
{
  v1 = a1;
  v3 = +[NSFileManager defaultManager];
  v2 = sub_10003D6D0(v1);

  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
}

id sub_100038D00(void *a1)
{
  v1 = sub_10003D6D0(a1);
  v2 = [v1 stringByAppendingPathComponent:@"outgoing-messages.plist"];

  return v2;
}

id sub_100038E2C(void *a1)
{
  v1 = sub_10003D6D0(a1);
  v2 = [v1 stringByAppendingPathComponent:@"incoming-messages.plist"];

  return v2;
}

id sub_100038F58(void *a1)
{
  v1 = sub_10003D6D0(a1);
  v2 = [v1 stringByAppendingPathComponent:@"store-status.plist"];

  return v2;
}

id sub_100039100(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 UUIDString];
  v5 = [NSString stringWithFormat:@"%@-%@", v4, v3];

  return v5;
}

id sub_100039188(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@.plist", a2];
  v5 = sub_10003D840(v3);

  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

void sub_1000397D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 hasMessages])
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100039A54(v5);
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "incoming message list for device uuid '%@' has messages; will apply...", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = sub_100039A54(v5);
    v11 = [v9 _queue_checkoutLibraryStoreForDeviceUUID:v10];

    v12 = *(a1 + 32);
    v13 = sub_100039A54(v5);
    v14 = [v12 _queue_checkoutComplicationStoresForDeviceUUID:v13];

    v15 = *(a1 + 32);
    v16 = sub_100039A54(v5);
    v17 = [v15 _queue_storeStatusForDeviceUUID:v16];

    v26 = v17;
    [*(a1 + 32) _queue_applyIncomingMessageList:v6 collectionStore:v11 complicationStores:v14 storeStatus:v17];
    v18 = +[NTKDCollectionCoordinator sharedInstance];
    [v18 relinquishStore:v11];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        v23 = 0;
        do
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v27 + 1) + 8 * v23);
          v25 = +[NTKDComplicationStoreCoordinator sharedInstance];
          [v25 relinquishStore:v24];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }
}

void *sub_100039A54(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void sub_10003A554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];

  v5 = objc_opt_new();
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v3];
}

id sub_10003A5E8()
{
  if (qword_100066CF8 != -1)
  {
    sub_10003FFE0();
  }

  v1 = qword_100066CF0;

  return v1;
}

void sub_10003A62C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v4];
  v7 = [*(a1 + 48) objectForKeyedSubscript:v4];

  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003A7B4;
    v15[3] = &unk_10005E328;
    v8 = v7;
    v16 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v15];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10003A7C0;
    v13 = &unk_10005E350;
    v9 = v8;
    v14 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v10];
    [v9 synchronize];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_10003A7C0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [v5 inflatedCopy];
  v9 = [v11 clientIdentifier];
  v10 = [v11 descriptor];
  [v7 withoutNotifyingSyncObserverSetComplicationSampleData:v8 forClientIdentifier:v9 descriptor:v10];

  objc_autoreleasePoolPop(v6);
}

id sub_10003C230(void *a1)
{
  v1 = qword_100066D18;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1000400DC();
  }

  v3 = qword_100066D10;
  v4 = [v2 stringByAppendingPathExtension:@"data"];

  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

void sub_10003C3CC(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = [a2 objectForKey:@"payload-id"];
    if (v5)
    {
      v8 = v5;
      v6 = +[NSFileManager defaultManager];
      v7 = sub_10003C230(v8);
      [v6 removeItemAtPath:v7 error:0];

      v5 = v8;
    }
  }
}

void sub_10003C540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003C558(uint64_t a1)
{
  [*(a1 + 32) _ensureCoalescingSuspended];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2 >= [*(*(a1 + 32) + 16) count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) _messageAtIndex:*(*(*(a1 + 40) + 8) + 24)];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v3;
}

uint64_t sub_10003CD38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _getMessageType:v4];
  v6 = *(a1 + 80);
  v7 = v5 == v6;
  v8 = [*(a1 + 32) _getFaceUUID:v4];
  v9 = *(a1 + 40);
  v10 = NTKEqualObjects();

  v11 = [*(a1 + 32) _getClientID:v4];
  v12 = *(a1 + 48);
  v13 = NTKEqualObjects();

  v14 = [*(a1 + 32) _getFamily:v4];
  v15 = *(a1 + 56);
  v16 = NTKEqualObjects();

  v17 = [*(a1 + 32) _getComplicationDescriptor:v4];
  v18 = *(a1 + 64);
  v19 = NTKEqualObjects();

  v20 = [*(a1 + 32) _getComplicationCollectionIdentifier:v4];

  v21 = *(a1 + 72);
  v22 = NTKEqualObjects();

  v23 = *(a1 + 80);
  if (v23 > 5)
  {
    if (v23 <= 8)
    {
      if ((v23 - 6) < 2)
      {
        return v13 & v19 & v22;
      }

      v7 = 1;
      if (v23 != 8)
      {
        return v7;
      }

      v24 = v13 & v16;
      v25 = v19 & v22;
      return v24 & v25;
    }

    if (v23 != 9)
    {
      if (v23 == 10)
      {
        v24 = v5 == v6;
        v25 = v13 & v22;
        return v24 & v25;
      }

      v7 = 1;
      if (v23 != 11)
      {
        return v7;
      }
    }

    return 0;
  }

  if (v23 <= 2)
  {
    if ((v23 - 1) < 2)
    {
      return (v5 == v6) & v10;
    }

    v7 = 1;
    if (v23)
    {
      return v7;
    }

    return v10;
  }

  if ((v23 - 4) >= 2)
  {
    v7 = 1;
    if (v23 == 3)
    {
      return v10;
    }
  }

  return v7;
}

void sub_10003CF28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) _messageAtIndex:a3];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pruning enqueued message made obsolete by new message. Pruned message: %@", &v11, 0xCu);
    }

    [*(a1 + 40) addIndex:a3];
    v8 = [v5 objectForKey:@"payload-id"];
    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      v10 = sub_10003C230(v8);
      [v9 removeItemAtPath:v10 error:0];
    }
  }
}

void sub_10003D640(id a1)
{
  v1 = NSTemporaryDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"sync.zippedpayloads"];
  v3 = qword_100066CF0;
  qword_100066CF0 = v2;

  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:qword_100066CF0 withIntermediateDirectories:1 attributes:0 error:0];
}

id sub_10003D6D0(void *a1)
{
  v1 = a1;
  v2 = sub_10003D76C();
  v3 = v2;
  if (v1)
  {
    v4 = [v1 UUIDString];
    v5 = [v3 stringByAppendingPathComponent:v4];
  }

  else
  {
    v5 = [v2 stringByAppendingPathComponent:@"Global"];
  }

  return v5;
}

id sub_10003D76C()
{
  if (qword_100066D08 != -1)
  {
    sub_1000401E0();
  }

  v1 = qword_100066D00;

  return v1;
}

void sub_10003D7B0(id a1)
{
  v1 = NTKHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Sync"];
  v3 = qword_100066D00;
  qword_100066D00 = v2;

  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:qword_100066D00 withIntermediateDirectories:1 attributes:0 error:0];
}

id sub_10003D840(void *a1)
{
  v1 = sub_10003D6D0(a1);
  v2 = [v1 stringByAppendingPathComponent:@"ComplicationStoreStatus"];

  return v2;
}

void sub_10003D894(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = sub_100038F58(v9);
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [[_StoreStatus alloc] initWithPersistencePath:v3];
    v8 = sub_100033858(v9);
    [v6 setObject:v7 forKey:v8];
  }
}

void sub_10003D95C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = sub_100039188(v9, &stru_10005E800);
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [[_StoreStatus alloc] initWithPersistencePath:v3];
    v8 = sub_100033858(v9);
    [v6 setObject:v7 forKey:v8];
  }
}

void sub_10003DA2C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = sub_100038E2C(v9);
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [[_MessageList alloc] initWithPersistencePath:v3];
    v8 = sub_100033858(v9);
    [v6 setObject:v7 forKey:v8];
  }
}

void sub_10003DAF4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = sub_100038D00(v9);
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [[_MessageList alloc] initWithPersistencePath:v3];
    v8 = sub_100033858(v9);
    [v6 setObject:v7 forKey:v8];
  }
}

void sub_10003DBBC(id a1)
{
  v1 = sub_10003D76C();
  v2 = [v1 stringByAppendingPathComponent:@"MessagePayloads"];
  v3 = qword_100066D10;
  qword_100066D10 = v2;

  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtPath:qword_100066D10 withIntermediateDirectories:1 attributes:0 error:0];
}

void sub_10003DCC0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't make record for %@ - %@", &v3, 0x16u);
}

void sub_10003DDD8(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 faceStyle];
  sub_1000078DC();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to archive face to json data. Face style: %lu - error: %{public}@", v5, 0x16u);
}

void sub_10003DF50(void *a1, NSObject *a2)
{
  v3 = [a1 localIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_NTKDPhotosFacesCuratorStore:    *** CANNOT CREATE RESOURCE DIRECTORY FOR LIBRARY PHOTO (%@) ***", &v4, 0xCu);
}

void sub_10003E054(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to reset collection store with proxy error: %@", &v2, 0xCu);
}

void sub_10003E260(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Library (%@) for deviceUUID (%@) doesn't have any faces. Nothing to snapshot.", &v4, 0x16u);
}

void sub_10003E2EC(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 device];
  v7 = [v6 deviceCategory] != 1;
  v8 = [a1 device];
  v9 = [v8 pairingID];
  v10 = [*(*(*a2 + 8) + 40) deviceUUID];
  v11 = 138413058;
  v12 = a1;
  v13 = 1024;
  v14 = v7;
  v15 = 2112;
  v16 = v9;
  v17 = 2112;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Prewarm: Face(%@)'s device(isLuxo: %d ID: %@) doesn't match the store device's ID(%@)", &v11, 0x26u);
}

void sub_10003E48C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to read removals dictionary at path %@: %@", buf, 0x16u);
}

void sub_10003E638(uint64_t a1)
{
  v1 = *(*a1 + 96);
  v2 = *(*a1 + 104);
  v3 = *(*a1 + 24);
  sub_100020C94();
  sub_100015948();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10003E6B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[3];
  sub_100020C94();
  sub_100015948();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10003E7A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "NTKFaceConfiguration nil: Found a nil NTKFaceConfiguration playing back collection store history, face uuid=%@ seqId=%@", &v5, 0x16u);
}

void sub_10003EA40(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't write JSON: %@", &v2, 0xCu);
}

void sub_10003EAB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "JSON didn't decode: %@", &v2, 0xCu);
}

void sub_10003EB44(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error reading removals dictionary at path %@: %@", buf, 0x16u);
}

void sub_10003EBB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Corrupted manifest - manifest says we should have descriptor %@, but the file was corrupted or not found", &v2, 0xCu);
}

void sub_10003EC30(void *a1, uint64_t *a2)
{
  [a1 intValue];
  v8 = *a2;
  sub_10002BAC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10003EDA0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = CLKStringForComplicationFamily();
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Failed to load complication sample template content hash for key %{public}@, family %{public}@: invalid UTF-8.", &v6, 0x16u);
}

void sub_10003EE54()
{
  v5 = CLKStringForComplicationFamily();
  sub_10002BAC4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003EF00(void *a1)
{
  v1 = [a1 identifier];
  sub_10002BAB0();
  sub_10002BAC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003EF9C(void *a1)
{
  v2 = [a1 clientIdentifier];
  v8 = [a1 complicationIdentifier];
  sub_10002BAC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003F108()
{
  sub_1000078DC();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003F178(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10002FB84();
  sub_10002FB48(&_mh_execute_header, v3, v4, "error sending out of band message [%ld, %@], error: %@");
}

void sub_10003F270()
{
  sub_10002FB24();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F2EC(void *a1)
{
  v1 = [a1 wideLoadId];
  sub_10002FB24();
  sub_10002BAC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003F384()
{
  sub_10002FB24();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F400(uint64_t a1, id *a2)
{
  v3 = [*a2 wideLoadId];
  [*a2 partsRemaining];
  [*a2 partsAdded];
  sub_10002FB84();
  sub_10002BAC4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x34u);
}

void sub_10003F4E4()
{
  sub_1000078DC();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003F554()
{
  sub_10002FB38();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F5CC(void *a1)
{
  v1 = [a1 identifier];
  sub_1000078DC();
  sub_10002BAC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003F698()
{
  sub_1000078DC();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003F708(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  sub_10002FB38();
  sub_10002BAC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003F7AC()
{
  sub_10002FB38();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F824()
{
  sub_10002FB24();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F8B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v6 = 136315650;
  sub_10002FB68();
  sub_10002FB48(&_mh_execute_header, v4, v5, "%s: trying to get a part from an empty outgoing queue (%lu/%lu)", v6, v7, v8);
}

void sub_10003F930()
{
  sub_10002FB24();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003F9AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v6 = 136315650;
  sub_10002FB68();
  sub_10002FB48(&_mh_execute_header, v4, v5, "%s: trying to add a part to an already full incoming queue (%lu/%lu)", v6, v7, v8);
}

void sub_10003FA28()
{
  sub_10002FB24();
  sub_100015948();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003FB24(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to _set_user_dir_suffix for nanotimekitcompaniond: %{errno}d", v3, 8u);
}

void sub_10003FBF0(NSObject *a1)
{
  v2 = +[CLKDevice currentDevice];
  v3 = [v2 pairingID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "paired sync restriction lifted but we don't have a nano registry device. pairingID: %{public}@", &v4, 0xCu);
}

void sub_10003FCA8(uint64_t a1, NSObject *a2)
{
  v3 = *(*a1 + 24);
  v4 = [v3 pairingID];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Current device forced update - _device: %{public}@ - pairingID: %{public}@", &v5, 0x16u);
}

void sub_10003FD60(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Session failed with error: %@", &v3, 0xCu);
}

void sub_10003FDDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10003DC4C();
  sub_10003DC64();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003FE58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10003DC4C();
  sub_10003DC64();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003FED4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003DC64();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10003FF10(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 messageType]);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "**** ignoring unexpected message type %@ in reset sync message list (this should not be possible: please file a radar on Watch Faces) ****", a1, 0xCu);
}

void sub_10003FFF4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003DC64();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100040030(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "unable to read message list at path %@: %@", buf, 0x16u);
}

void sub_1000400F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to persist message dictionaries: %@", &v2, 0xCu);
}

void sub_100040168(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to persist status: %@", &v2, 0xCu);
}