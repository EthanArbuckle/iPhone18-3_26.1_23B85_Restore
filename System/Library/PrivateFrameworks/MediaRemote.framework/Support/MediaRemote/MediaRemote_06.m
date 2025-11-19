unint64_t sub_100126074(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(*(*(a1 + 48) + 8) + 40) origin];
    if ([v5 isLocal] && MRMediaRemoteApplicationIsSystemApplication())
    {
      v4 = ([*(a1 + 40) entitlements] >> 1) & 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_100126100(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_100126120(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = MRGetClientFromUserInfo();

  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6 && [*(a1 + 40) disarm])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100126210;
    v8[3] = &unk_1004BDC38;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100126210(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  Error = MRMediaRemoteCreateError();
  (*(v2 + 16))(v2, v3, Error);
}

void sub_100126288(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:*(a1 + 32)];

    if ([*(a1 + 40) disarm])
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = dispatch_time(0, ((*(a1 + 56) + *(a1 + 56)) * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001263AC;
    block[3] = &unk_1004B6D08;
    v10 = *(a1 + 32);
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

void sub_1001263AC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_1001268D0(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = +[NSDate distantPast];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = [*(a1 + 32) client];
  if (v6 || ([*(a1 + 32) player], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v13 = [*(a1 + 40) originClient];

    if (v13)
    {
      v8 = [*(a1 + 40) originClient];
      goto LABEL_6;
    }
  }

  v7 = [*(a1 + 40) playerClient];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [*(a1 + 40) playerClient];
LABEL_6:
  v9 = v8;
  [v8 timeSincePlaying];
  v11 = [NSDate dateWithTimeIntervalSinceNow:-v10];
  [v11 timeIntervalSinceReferenceDate];
  v5 = v12;

LABEL_7:
  xpc_dictionary_set_double(xdict, "MRXPC_TIMESTAMP", v5);
  [*(a1 + 40) error];
  MRAddErrorToXPCMessage();
}

void sub_100127054(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  xpc_dictionary_set_double(xdict, "MRXPC_ARTWORK_DIMENSION_WIDTH_KEY", v3);
  xpc_dictionary_set_double(xdict, "MRXPC_ARTWORK_DIMENSION_HEIGHT_KEY", *(a1 + 40));
}

void sub_1001271E0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    MRAddDataToXPCMessage();
  }

  [*(a1 + 40) error];
  MRAddErrorToXPCMessage();
}

void sub_10012737C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    sub_10000F9E4(*(a1 + 32), [v6 code]);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10003513C;
    v18 = sub_100035A54;
    v19 = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100127504;
    v11[3] = &unk_1004BDD78;
    v13 = &v14;
    v12 = *(a1 + 32);
    v9 = [v8 addObserverForName:@"MRDMusicHandoffSessionDidFinishNotification" object:v5 queue:0 usingBlock:v11];
    v10 = v15[5];
    v15[5] = v9;

    _Block_object_dispose(&v14, 8);
  }
}

void sub_1001274EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100127504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"MRDMusicHandoffSessionErrorKey"];

  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100127608;
  v9[3] = &unk_1004B6E08;
  v10 = v6;
  v8 = v6;
  sub_100008278(v7, v9);
}

void sub_100127608(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }
}

void *sub_100127848(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a1 + 40);
    [result code];

    return MRAddErrorToXPCMessage();
  }

  return result;
}

void sub_10012794C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = a2;
    MRAddStringToXPCMessage();
  }
}

void sub_100128260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1001282B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 userInfo];

  v6 = MRGetPlayerPathFromUserInfo();

  if ([v6 isEqual:*(a1 + 32)])
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 playbackQueue];
    v9 = [v8 contentItems];
    v10 = [v9 firstObject];
    v11 = [v10 metadata];
    v12 = [v11 mediaType];

    if (v12)
    {
      v13 = WeakRetained[9];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100128414;
      v14[3] = &unk_1004BB348;
      v14[4] = WeakRetained;
      objc_copyWeak(&v15, (a1 + 48));
      dispatch_async(v13, v14);
      objc_destroyWeak(&v15);
    }
  }
}

void sub_100128414(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 wakeDeviceIfNecessaryForNowPlayingPlayerClient:WeakRetained];
}

void sub_100128468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained wakeDeviceIfNecessaryForNowPlayingPlayerClient:v2];
}

id sub_100129610(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) sortedArrayUsingComparator:&stru_1004BDE50];
  [*(a1 + 32) setOriginClients:v2];

  v3 = [*(*(a1 + 40) + 80) origin];
  [*(a1 + 32) setActiveOrigin:v3];

  v4 = [*(*(a1 + 40) + 96) electedPlayerPath];
  [*(a1 + 32) setElectedPlayer:v4];

  v5 = [NSString alloc];
  v6 = [*(*(a1 + 40) + 96) event];
  v7 = [*(*(a1 + 40) + 96) eventReason];
  v8 = [*(*(a1 + 40) + 96) selectionReason];
  v9 = [*(*(a1 + 40) + 96) mostRecentEvent];
  v10 = [*(*(a1 + 40) + 96) mostRecentEventReason];
  v11 = [*(*(a1 + 40) + 96) mostRecentSelectionReason];
  v12 = [v5 initWithFormat:@"event %@, eventReason = <%@>, selectionReason = <%@>, mostRecentEVent = %@, mostRecentEventReason = <%@>, mostRecentSelectionReason = <%@>", v6, v7, v8, v9, v10, v11];
  [*(a1 + 32) setElectedPlayerReason:v12];

  [*(a1 + 32) setLockScreenWidgetActive:{objc_msgSend(*(*(a1 + 40) + 112), "isLockScreenWidgetActive")}];
  [*(a1 + 32) setLockScreenWidgetVisible:{objc_msgSend(*(*(a1 + 40) + 112), "isLockScreenWidgetVisible")}];
  v13 = [*(*(a1 + 40) + 112) playerPath];
  [*(a1 + 32) setLockScreenPlayerPath:v13];

  v14 = [*(*(a1 + 40) + 40) allObjects];
  [*(a1 + 32) setOriginForwarders:v14];

  v15 = *(a1 + 32);
  v16 = *(*(a1 + 40) + 120);

  return [v15 setLockScreenRoutingController:v16];
}

int64_t sub_100129824(id a1, MRDNowPlayingOriginClient *a2, MRDNowPlayingOriginClient *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MRDNowPlayingOriginClient *)v4 origin];
  v7 = [v6 isLocal];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [(MRDNowPlayingOriginClient *)v4 origin];
    v10 = [v9 displayName];
    v11 = [(MRDNowPlayingOriginClient *)v5 origin];
    v12 = [v11 displayName];
    v8 = [v10 compare:v12 options:1];
  }

  return v8;
}

uint64_t sub_1001299F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = MRGetPlayerPathFromUserInfo();
  if (v10 && ![v7 isAllowedAccessToDataFromPlayerPath:v10])
  {
    v12 = 0;
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = (*(v11 + 16))(v11, v7, v8, a4);
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

uint64_t sub_10012B094(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if ([a2 hasRequestedSupportedCommands])
  {
    *a4 = *(a1 + 32);
  }

  return 1;
}

id sub_10012B3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hasRequestedLegacyNowPlayingInfo];
  if (v4 && *(a1 + 32))
  {
    v5 = [v3 playbackQueueRequests];
    v6 = [v5 subscriptionControllerForPlayerPath:*(a1 + 40)];

    v7 = [MRPlaybackQueue alloc];
    v12 = *(a1 + 32);
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [v7 initWithContentItems:v8 location:0];

    v10 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:0, 1];
    [v6 subscribeToPlaybackQueue:v9 forRequest:v10];
  }

  return v4;
}

BOOL sub_10012B704(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v7 = [v6 playbackQueueRequests];
  v8 = [v7 existingSubscriptionControllerForPlayerPath:*(a1 + 32)];

  v9 = [v8 filteredContentItemsBySubscriptionsForContentItems:*(a1 + 40)];
  v10 = [v9 count];
  if (v10)
  {
    *a4 = objc_alloc_init(NSMutableDictionary);
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      v15 = [v6 displayName];
      v16 = MRContentItemsCopyMinimalReadableDescription();
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Posting contentItemChange for path %{public}@ to xpcClient %{public}@ %@", &v17, 0x20u);
    }

    v12 = *a4;
    MRAddContentItemsToUserInfo();
  }

  return v10 != 0;
}

BOOL sub_10012B9CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:7];
  v8 = [v6 playbackQueueRequests];

  v9 = [v8 existingSubscriptionControllerForPlayerPath:*(a1 + 32)];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  v11 = *(a1 + 40);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10012BB80;
  v23 = &unk_1004BDA40;
  v12 = v7;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  [v9 enumerateFilteredContentItemsBySubscriptionsForContentItems:v11 block:&v20];
  v14 = [v13 count];
  if (v14)
  {
    v15 = [[MRPlaybackQueueRequest alloc] initFromTransactionName:0];
    v16 = MRContentItemsCreateFromRequest();
    v17 = objc_alloc_init(NSMutableDictionary);
    MRAddContentItemsToUserInfo();
    v18 = v17;
    *a4 = v17;
  }

  return v14 != 0;
}

void sub_10012BB80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) match:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_10012C5EC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C720;
  v7[3] = &unk_1004B99A0;
  v7[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0 queue:0 usingBlock:v7];

  v4 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012C7C8;
  v6[3] = &unk_1004B99A0;
  v6[4] = *(a1 + 32);
  v5 = [v4 addObserverForName:MROriginNowPlayingPlaybackQueueNowPlayingItemChangedNotification object:0 queue:0 usingBlock:v6];
}

void sub_10012C720(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = MRGetPlayerPathFromUserInfo();
  v5 = [*(*(a1 + 32) + 112) playerPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(a1 + 32);

    [v7 postLockScreenControlsDidChangeDistributedNotification];
  }
}

void sub_10012C7C8(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = MRGetPlayerPathFromUserInfo();
  v5 = [*(*(a1 + 32) + 112) playerPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(a1 + 32);

    [v7 postLockScreenControlsDidChangeDistributedNotification];
  }
}

void sub_10012C92C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.maybePostDistributedNotifications.serialQueue", v2);
  v4 = qword_100529490;
  qword_100529490 = v3;

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = qword_100529488;
  qword_100529488 = v5;

  byte_100529470 = [qword_100529488 BOOLForKey:@"LastNowPlayingAppIsPlayingState"];
  v7 = [MRPlayerPath alloc];
  v8 = [qword_100529488 dataForKey:@"_MRDActivePlayerPathDateDefaultsKey"];
  v9 = [v7 initWithData:v8];
  v10 = qword_100529478;
  qword_100529478 = v9;

  byte_100529480 = [qword_100529488 BOOLForKey:@"_MRDAnyNowPlayingAppIsPlayingDefaultsKey"];
}

void sub_10012CA5C(uint64_t a1)
{
  v1 = qword_100529488;
  v2 = [*(a1 + 32) data];
  [v1 setObject:v2 forKey:@"_MRDActivePlayerPathDateDefaultsKey"];
}

id sub_10012CCDC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_10012D088(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForOrigin:*(a1 + 40)];
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v20 = 138543362;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering origin %{public}@", &v20, 0xCu);
  }

  v5 = [*(a1 + 40) isLocal];
  v6 = [MRDNowPlayingOriginClient alloc];
  if (v5)
  {
    v7 = [(MRDNowPlayingOriginClient *)v6 initWithDeviceInfoDataSource:*(*(a1 + 32) + 48) delegate:?];
    v8 = +[MRUserSettings currentSettings];
    v9 = [v8 supportMultiplayerHost];

    if ((v9 & 1) == 0)
    {
      v10 = +[MRDNowPlayingDataSource sharedDataSource];
      [(MRDNowPlayingOriginClient *)v7 setNowPlayingDataSource:v10];
    }

    [*(a1 + 32) setLocalOriginClient:v7];
  }

  else
  {
    v7 = [(MRDNowPlayingOriginClient *)v6 initWithOrigin:*(a1 + 40) deviceInfo:*(a1 + 48) delegate:*(a1 + 32)];
    if ([*(a1 + 40) isLocallyHosted])
    {
      v11 = +[MRUserSettings currentSettings];
      v12 = [v11 supportMultiplayerHost];

      if (v12)
      {
        v13 = +[MRDNowPlayingDataSource sharedDataSource];
        [(MRDNowPlayingOriginClient *)v7 setNowPlayingDataSource:v13];
      }
    }
  }

  v14 = *(*(a1 + 32) + 16);
  if (!v14)
  {
    v15 = objc_alloc_init(NSMutableArray);
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    *(v16 + 16) = v15;

    v14 = *(*(a1 + 32) + 16);
  }

  [v14 addObject:v7];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) postOriginDidRegister:*(a1 + 40) handler:0];
  }

  v18 = *(a1 + 32);
  v19 = [(MRDNowPlayingOriginClient *)v7 deviceInfo];
  [v18 handleNowPlayingOriginClient:v7 deviceInfoDidChange:v19 previousDeviceInfo:0];
}

void sub_10012D37C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_originClientForOrigin:*(a1 + 40)];
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unregistering origin %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _onQueue_activeOriginClient];

  if (v2 == v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing active origin %{public}@. Setting active origin to the local one.", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = +[MROrigin localOrigin];
    [v8 _onQueue_setActiveOrigin:v9 saveState:0];
  }

  v10 = [v2 nowPlayingClients];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) client];
        [v2 removeNowPlayingClientForClient:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [v2 deviceInfo];
  [v16 postOriginDidUnRegister:v17 deviceInfo:v18 handler:0];

  [*(*(a1 + 32) + 16) removeObject:v2];
}

id sub_10012E474(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = MRIDSCompanionConnectionDeviceDidConnect;
  v5 = +[MRIDSCompanionConnection sharedManager];
  [v2 addObserver:v3 selector:"_handleCompanionDeviceConnectedNotification:" name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:"_handleExternalDeviceConnectionStateDidChangeNotification:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:0];

  v7 = *(a1 + 32);

  return [v7 _maybeAttemptToDiscoverAndConnectToCompanionWithReason:@"Startup"];
}

void sub_10012E8A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerDidUndiscoverCompanion:*(a1 + 32)];
}

void sub_10012E8F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didDiscoverCompanion:*(a1 + 40)];
}

void sub_10012EDE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    *(*(a1 + 32) + 17) = 1;
    [*(a1 + 32) setCompanionEndpoint:v5];
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:*(*(a1 + 32) + 32)];
      v10 = *(a1 + 40);
      *buf = 134218242;
      v20 = v11;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] Discovered companion endpoint in <%lf> seconds. Attempting to connect because <%@>", buf, 0x16u);
    }

    v17 = MREndpointConnectionReasonUserInfoKey;
    v18 = @"discoverAndConnectToCompanion";
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10012F050;
    v15[3] = &unk_1004B9C80;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v13;
    [v5 connectToExternalDeviceWithUserInfo:v12 completion:v15];
  }

  else
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9BCC(v6, v14);
    }

    objc_storeStrong((*(a1 + 32) + 40), a3);
    [*(a1 + 32) setCompanionEndpoint:0];
  }

  *(*(a1 + 32) + 16) = 0;
  objc_sync_exit(v7);
}

void sub_10012F050(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9C44(v4, v6);
    }

    objc_storeStrong((*(a1 + 32) + 40), a2);
    [*(a1 + 32) setCompanionEndpoint:0];
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSDate date];
      [v8 timeIntervalSinceDate:*(*(a1 + 32) + 32)];
      v9 = *(a1 + 40);
      v11 = 134218242;
      v12 = v10;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] Connected to companion endpoint in <%lf> seconds because <%@>", &v11, 0x16u);
    }
  }

  *(*(a1 + 32) + 17) = 0;
  objc_sync_exit(v5);
}

void sub_10012F408()
{
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1003A9CBC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v0 = NSTemporaryDirectory();
    v1 = 138412290;
    v2 = v0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Temporary directory set to %@", &v1, 0xCu);
  }
}

intptr_t sub_10012F7A8(uint64_t a1, uint64_t a2)
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] Setting pid for %{public}@ to %d", &v7, 0x12u);
  }

  [*(a1 + 40) setProcessIdentifier:a2];
  return dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_10012FC20(uint64_t a1, void *a2, void *a3)
{
  if (*(*(a1 + 32) + 56) == a2)
  {
    return -1;
  }

  v4 = a3;
  v5 = [a2 playerPath];
  v6 = [v5 player];
  v7 = [v6 displayName];
  v8 = [v4 playerPath];

  v9 = [v8 player];
  v10 = [v9 displayName];
  v11 = [v7 compare:v10 options:1];

  return v11;
}

void sub_10012FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012FE08(uint64_t a1)
{
  v2 = [*(a1 + 32) activePlayerClient];
  v3 = [v2 playerPath];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) playerPath];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

id sub_10012FF38(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  [*(*(a1 + 32) + 32) setClient:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _onQueue_popState];
}

id sub_100130018(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  v2 = [*(*(a1 + 32) + 32) client];
  [v2 mergeFrom:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onQueue_popState];
}

void sub_1001304E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001304FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 26) == 1)
  {
    v3 = [v2 activePlayerClient];
    v4 = [v3 canBeNowPlayingPlayerTimestamp];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 40);
  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v7);
}

void sub_100130628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100130640(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_anyPlayerIsPlaying];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100130850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 27) != v3)
  {
    *(v2 + 27) = v3;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained nowPlayingClient:*(a1 + 32) applicationDidForeground:*(*(a1 + 32) + 27)];
  }
}

void sub_1001309D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001309F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_playerClientForPlayer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100130E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100130E78(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_existingPlayerClientForPlayer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100131214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013122C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasNowPlayingData])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001315F0(id a1)
{
  v1 = [[MRDMediaRemoteServer alloc] _init];
  v2 = qword_1005294A0;
  qword_1005294A0 = v1;
}

void sub_100131AE8(id a1, int a2)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AppleLanguagePreferencesChangedNotification. Will tell libxpc to kill us once we're clean. Will invalidate MROSTransactions.", buf, 2u);
  }

  xpc_transaction_exit_clean();
  MRInvalidateTransactions();
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received AppleLanguagePreferencesChangedNotification. Did tell libxpc to kill us once we're clean. Did invalidate MROSTransactions.", v4, 2u);
  }
}

AVOutputContext *__cdecl sub_100131BA4(id a1)
{
  v1 = MRMediaRemoteCopyDeviceUID();
  if (v1)
  {
    v2 = +[MRDAVOutputContextManager sharedManager];
    v3 = [v2 outputContextForOutputDeviceUID:v1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 avOutputContext];

  return v4;
}

void sub_100131C30(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = string;
    if (strcmp("com.apple.ProximityControl.LockScreenDiscovery", string))
    {
      *&v6 = COERCE_DOUBLE(xpc_dictionary_get_uint64(v3, "_State"));
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received DACP command '%s'.", &v21, 0xCu);
      }

      v8 = [*(*(a1 + 32) + 40) activeOriginClient];
      v9 = [v8 origin];

      if (!strcmp("com.apple.AirTunes.DACP.nextitem", v5))
      {
        v13 = *(a1 + 32);
        v14 = 4;
      }

      else if (!strcmp("com.apple.AirTunes.DACP.previtem", v5))
      {
        v13 = *(a1 + 32);
        v14 = 5;
      }

      else if (!strcmp("com.apple.AirTunes.DACP.pause", v5))
      {
        v13 = *(a1 + 32);
        v14 = 1;
      }

      else if (!strcmp("com.apple.AirTunes.DACP.play", v5))
      {
        v13 = *(a1 + 32);
        v14 = 0;
      }

      else if (!strcmp("com.apple.AirTunes.DACP.repeatadv", v5))
      {
        v13 = *(a1 + 32);
        v14 = 7;
      }

      else
      {
        if (strcmp("com.apple.AirTunes.DACP.shuffletoggle", v5))
        {
          if (!strcmp("com.apple.AirTunes.DACP.volumeup", v5))
          {
            v15 = +[AVSystemController sharedAVSystemController];
            v12 = v15;
            v17 = 1031798784;
          }

          else
          {
            if (strcmp("com.apple.AirTunes.DACP.volumedown", v5))
            {
              if (!strcmp("com.apple.AirTunes.DACP.mutetoggle", v5))
              {
                v12 = +[AVSystemController sharedAVSystemController];
                [v12 toggleActiveCategoryMuted];
              }

              else
              {
                if (strcmp("com.apple.AirTunes.DACP.devicevolume", v5))
                {
                  if (!strcmp("com.apple.AirTunes.DACP.devicevolumechanged", v5))
                  {
                    v10 = _MRLogForCategory();
                    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = 134217984;
                      v22 = v6;
                      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "System volume was set to %f", &v21, 0xCu);
                    }
                  }

                  goto LABEL_30;
                }

                v18 = *&v6;
                v19 = _MRLogForCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = 134217984;
                  v22 = v6;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting volume to %f", &v21, 0xCu);
                }

                v12 = +[AVSystemController sharedAVSystemController];
                *&v20 = v18;
                [v12 setActiveCategoryVolumeTo:v20];
              }

              goto LABEL_22;
            }

            v15 = +[AVSystemController sharedAVSystemController];
            v12 = v15;
            v17 = -1115684864;
          }

          LODWORD(v16) = v17;
          [v15 changeActiveCategoryVolumeBy:v16];
LABEL_22:

LABEL_30:
          goto LABEL_31;
        }

        v13 = *(a1 + 32);
        v14 = 6;
      }

      [v13 _sendMediaRemoteCommand:v14 withOrigin:v9];
      goto LABEL_30;
    }

    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Proximity event.", &v21, 2u);
    }

    v9 = [*(a1 + 32) nowPlayingServer];
    v12 = [v9 lockScreenRoutingController];
    [v12 startObservationIfNeeded];
    goto LABEL_22;
  }

LABEL_31:
}

void sub_100132304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100132330(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 152));
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;
}

void sub_100132540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100132558(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding client %{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 128);
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
  [v5 setObject:v4 forKey:v6];

  v7 = +[MRDSettings currentSettings];
  v8 = [v7 expectedClientAuditTokens];
  v9 = [NSSet setWithArray:v8];
  v10 = [v9 mutableCopy];

  v11 = [*(a1 + 32) auditToken];
  *(*(*(a1 + 48) + 8) + 24) = [v10 containsObject:v11];

  v12 = [*(a1 + 32) auditToken];
  [v10 removeObject:v12];

  v13 = [v10 allObjects];
  v14 = +[MRDSettings currentSettings];
  [v14 setExpectedClientAuditTokens:v13];

  v15 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [*(*(a1 + 40) + 128) allValues];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * i) auditToken];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  v22 = +[MRDSettings currentSettings];
  [v22 setConnectedClientAuditTokens:v15];
}

void sub_10013289C(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 128) objectForKey:v2];
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing client %{public}@", buf, 0xCu);
  }

  if (([v3 keepAlive] & 1) == 0)
  {
    [*(*(a1 + 32) + 128) removeObjectForKey:v2];
  }

  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(a1 + 32) + 128) allValues];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) auditToken];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = +[MRDSettings currentSettings];
  [v12 setConnectedClientAuditTokens:v5];
}

void sub_100132B90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100132D20(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100132DB8;
  v5[3] = &unk_1004BE130;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100132DB8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

int64_t sub_10013330C(id a1, MRDNowPlayingPlayerClient *a2, MRDNowPlayingPlayerClient *a3)
{
  v4 = a3;
  v5 = [(MRDNowPlayingPlayerClient *)a2 snapshotForIsPlaying:1];
  v6 = [v5 date];
  v7 = [(MRDNowPlayingPlayerClient *)v4 snapshotForIsPlaying:1];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

void sub_100133638(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 152);
  if (v1)
  {
    v2 = objc_retainBlock(*(a1 + 40));
    [v1 addObject:v2];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013370C;
    block[3] = &unk_1004B79A0;
    v4 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100133894(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.mediaremoted.notificationQueue", v3);
  v2 = qword_1005294B8;
  qword_1005294B8 = v1;
}

void sub_1001338F8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v4 = v3;
  [v3 setObject:*(v1 + 40) forKey:@"_MROriginatingNotification"];
  v33 = (v1 + 40);
  if (*(v1 + 48))
  {
    v5 = [*(*(v1 + 56) + 40) augmentedUserInfoForPlayerPath:?];
    [v4 addEntriesFromDictionary:v5];
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9D8C(v33, v6);
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9E08(v4, v7);
  }

  v8 = [[MRNotification alloc] initWithNotification:*(v1 + 40) userInfo:v4];
  [*(v1 + 56) allClients];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v9)
  {
LABEL_27:
    v25 = [v8 notification];
    v26 = [v8 userInfo];
    v27 = +[MRMediaRemoteServiceClient sharedServiceClient];
    MRNotificationServiceClientPostNotificationCallback();

    goto LABEL_28;
  }

  v11 = v9;
  v34 = v8;
  v12 = 0;
  v13 = *v38;
  *&v10 = 138412546;
  v28 = v10;
  v31 = v1;
  v32 = v4;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      v16 = [v15 isMediaRemoteDaemon];
      v17 = *(v1 + 64);
      if (!v17)
      {
        goto LABEL_23;
      }

      v36 = 0;
      v18 = (*(v17 + 16))(v17, v15, v4, &v36);
      v19 = v36;
      v20 = v19;
      if (!v18)
      {
        goto LABEL_24;
      }

      if (v19)
      {
        v21 = [v4 mutableCopy];
        [v21 addEntriesFromDictionary:v20];
        v22 = [[MRNotification alloc] initWithNotification:*v33 userInfo:v21];
        v23 = _MRLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v29 = *v33;
          v30 = [v15 displayName];
          *buf = v28;
          v44 = v29;
          v45 = 2112;
          v46 = v30;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Posting Custom Notification %@ to %@", buf, 0x16u);
        }

        v24 = _MRLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_1003A9E98(v41, v21, &v42, v24);
        }

        [v15 postNotification:v22];
        v1 = v31;
        v4 = v32;
      }

      else
      {
LABEL_23:
        [v15 postNotification:v34];
        v20 = 0;
      }

LABEL_24:
      v12 |= v16;
    }

    v11 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v11);
  v8 = v34;
  if ((v12 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:
}

void sub_100133D74(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = MRGetPlayerPathFromUserInfo();
  if (v14)
  {
    v7 = [v14 mutableCopy];
  }

  else
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v8 = v7;
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 nowPlayingServer];
  v11 = [v10 augmentedUserInfoForPlayerPath:v6];
  [v8 addEntriesFromDictionary:v11];

  v12 = *(a1 + 32);
  v13 = [[MRNotification alloc] initWithNotification:v5 userInfo:v8];

  [v12 postNotification:v13];
}

id sub_100134074(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001340F0;
  v3[3] = &unk_1004BE1C0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1001340F0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

id sub_100134274(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001342F0;
  v3[3] = &unk_1004BE1C0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1001342F0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 bundleIdentifier];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  if (IsSystemPodcastApplication)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100134474(id a1)
{
  v1 = objc_alloc_init(RPCompanionLinkClient);
  v2 = qword_1005294C0;
  qword_1005294C0 = v1;

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.mediaremote.companionLinkClient", v3);
  [qword_1005294C0 setDispatchQueue:v4];

  [qword_1005294C0 setInvalidationHandler:&stru_1004BE200];
  [qword_1005294C0 setInterruptionHandler:&stru_1004BE220];
  v5 = dispatch_semaphore_create(0);
  v6 = qword_1005294C0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100134628;
  v8[3] = &unk_1004B6FC0;
  v9 = v5;
  v7 = v5;
  [v6 activateWithCompletion:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100134598(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1003A9F20();
  }
}

void sub_1001345E0(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1003A9F54();
  }
}

void sub_100134628(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9F88();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001346DC(id a1)
{
  v1 = objc_alloc_init(RPRemoteDisplayDiscovery);
  v2 = qword_1005294D0;
  qword_1005294D0 = v1;

  [qword_1005294D0 setDiscoveryFlags:{objc_msgSend(qword_1005294D0, "discoveryFlags") | 3}];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.mediaremote.remoteDisplayDiscovery", v3);
  [qword_1005294D0 setDispatchQueue:v4];

  [qword_1005294D0 setInvalidationHandler:&stru_1004BE260];
  [qword_1005294D0 setInterruptionHandler:&stru_1004BE280];
  v5 = dispatch_semaphore_create(0);
  v6 = qword_1005294D0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001348A8;
  v8[3] = &unk_1004B6FC0;
  v9 = v5;
  v7 = v5;
  [v6 activateWithCompletion:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100134818(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1003AA00C();
  }
}

void sub_100134860(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1003AA040();
  }
}

void sub_1001348A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA074();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100134A38(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
    v3 = v5;
  }
}

void sub_100135198(uint64_t a1)
{
  v2 = MRCreateDiagnosticFromXPCMessage();
  (*(*(a1 + 32) + 16))();
}

void sub_100135854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRGetVolumeMutedResultMessage alloc] initWithMuted:*(a1 + 32)];
  MRAddProtobufToXPCMessage();
}

void sub_100135C8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA118();
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) bundleIdentifier];
      v10 = [NSString stringWithFormat:@"System Media Wake - %@", v9];
      (*(v8 + 16))(v8, [v5 takeAssertionAndBlessForReason:v10]);

      goto LABEL_7;
    }

    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA188();
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_7:
}

void sub_100136504(id *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "** Beginning Diagnostic Collection **", buf, 2u);
  }

  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Main Server **", buf, 2u);
  }

  [a1[4] collectDiagnostic:a1[5]];
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for UI Server **", buf, 2u);
  }

  [*(a1[4] + 11) collectDiagnostic:a1[5]];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Now Playing Server **", buf, 2u);
  }

  [*(a1[4] + 5) collectDiagnostic:a1[5]];
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Remote Control Server **", buf, 2u);
  }

  [*(a1[4] + 7) collectDiagnostic:a1[5]];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Browsable Content Server **", buf, 2u);
  }

  [*(a1[4] + 8) collectDiagnostic:a1[5]];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for External Device Server **", buf, 2u);
  }

  [*(a1[4] + 9) collectDiagnostic:a1[5]];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Routing Server **", buf, 2u);
  }

  [*(a1[4] + 10) collectDiagnostic:a1[5]];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Group Session Server **", buf, 2u);
  }

  [*(a1[4] + 23) collectDiagnostic:a1[5]];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Virtual Audio Input Server **", buf, 2u);
  }

  [*(a1[4] + 13) collectDiagnostic:a1[5]];
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Transaction Server **", buf, 2u);
  }

  [*(a1[4] + 14) collectDiagnostic:a1[5]];
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "** Collecting Diagnostic for Media Control Server **", buf, 2u);
  }

  [*(a1[4] + 12) collectDiagnostic:a1[5]];
  v14 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100136988;
  v15[3] = &unk_1004BE368;
  v16 = a1[6];
  v17 = a1[5];
  [v14 _handleCollectClientDiagnosticsMessageWithCompletion:v15];
}

void sub_100136988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Diagnostic Complete **", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100136A80;
  v7[3] = &unk_1004B6E30;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  sub_100008278(v5, v7);
}

void sub_100136A80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 createDiagnosticInfo];
  v5 = [NSString alloc];
  v6 = [v9 diagnosticInfo];
  v7 = [*(a1 + 40) diagnosticInfo];
  v8 = [v5 initWithFormat:@"%@\n%@", v6, v7];
  [v9 setDiagnosticInfo:v8];

  MRAddDiagnosticToXPCMessage();
}

void sub_100136BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100136C7C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_100137028(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001370F4;
  v8[3] = &unk_1004B7310;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v5, v8);
}

void sub_1001370F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRDiagnosticCopyInfo();
  if (!v3)
  {
    v3 = @"No diagnostic info";
  }

  v6 = v3;
  v4 = [*(a1 + 40) displayName];
  v5 = [NSString stringWithFormat:@"XPC Client: %@:\n%@\n", v4, v6];

  [*(a1 + 48) addObject:v5];
  dispatch_group_leave(*(a1 + 56));
}

void sub_1001371A8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = objc_alloc_init(NSDate);
  [v2 appendString:@"MediaRemote Client Diagnostic\n"];
  [v2 appendFormat:@"Collected at: %@\n", v3];
  [v2 appendString:@"================================================================================\n"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001372D0;
  block[3] = &unk_1004B68F0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v2;
  v5 = v2;
  dispatch_sync(v4, block);
  v6 = MRDiagnosticCreate();
  (*(*(a1 + 48) + 16))();
}

void sub_1001372D0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) appendString:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_1001373D4(uint64_t a1)
{
  result = [*(a1 + 32) disarm];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void sub_1001375DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) bundleIdentifier];
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding authorization callback for route UID: %{public}@ | process: %{public}@", buf, 0x16u);
  }

  v9 = [*(a1 + 40) pairingHandler];
  [v9 addHandlerForRouteUID:*(a1 + 32) completion:v5];

  v10 = [NSNumber numberWithInteger:a2, kMRMediaRemotePairingHandlerRouteUIDUserInfoKey, @"inputType", *(a1 + 32)];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v13 count:2];

  v12 = +[MRDMediaRemoteServer server];
  [v12 postClientNotificationNamed:kMRMediaRemotePairingHandlerNotification userInfo:v11];
}

void sub_100137C40(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100137CD4;
  block[3] = &unk_1004B6D08;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100137F0C(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 128) allValues];
  v3 = [v2 sortedArrayUsingComparator:&stru_1004BE438];
  [*(a1 + 32) setActiveClients:v3];

  v4 = MRCopyRegisteredTransactionDescriptions();
  [*(a1 + 32) setActiveTransactions:v4];
}

int64_t sub_100137FA4(id a1, MRDMediaRemoteClient *a2, MRDMediaRemoteClient *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MRDMediaRemoteClient *)v4 pid];
  if (v6 == getpid())
  {
    v7 = -1;
  }

  else
  {
    v8 = [(MRDMediaRemoteClient *)v4 displayName];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_1004D2058];
    v10 = [(MRDMediaRemoteClient *)v5 displayName];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_1004D2058];
    v7 = [v9 compare:v11 options:1];
  }

  return v7;
}

void sub_1001381AC(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{kMRMediaRemoteSupportedCommandsDidChangeNotification, kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification, kMRMediaRemoteNowPlayingApplicationDisplayNameDidChangeNotification, kMRMediaRemoteApplicationDidReportPlaybackErrorNotification, kMRMediaRemoteBrowsableContentEndpointChangedNotification, kMRMediaRemoteApplicationFinishedLoadingContentNotification, kMRMediaRemoteApplicationInvalidatedBrowsableContentDataSourceNotification, kMRMediaRemoteContentItemsUpdatedNotification, kMRMediaRemoteBrowsableContentNowPlayingIdentifiersUpdatedNotification, kMRMediaRemoteApplicationInitiatedPlaybackOfContentItemNotification, kMRMediaRemoteBrowsableContentAPIChangedNotification, kMRMediaRemoteSystemAppDidSkipTrackNotification, 0}];
  v3 = qword_1005294E0;
  qword_1005294E0 = v2;
}

void sub_100138720(id a1)
{
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0) < 0)
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA2B4();
    }

    v1 = 0;
  }

  else
  {
    v1 = [NSString stringWithUTF8String:v7];
  }

  if ([v1 length])
  {
    v3 = +[MRDSettings currentSettings];
    v4 = [v3 lastBootUUID];
    byte_100520678 = [v1 isEqualToString:v4] ^ 1;

    v5 = +[MRDSettings currentSettings];
    [v5 setLastBootUUID:v1];
  }
}

void sub_100138C0C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 40) clientForPID:{objc_msgSend(v6, "intValue")}];
        v8 = [MRDTaskAssertion alloc];
        v9 = [v6 intValue];
        v10 = [v7 bundleIdentifier];
        v11 = [(MRDTaskAssertion *)v8 initWithType:5 pid:v9 bundleID:v10 name:@"Restoring state of client after daemon launch"];

        [(MRDTaskAssertion *)v11 invalidateInDuration:10.0];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void sub_100138D94(uint64_t a1)
{
  v2 = objc_alloc_init(MRMutableApplicationActivity);
  [v2 setStatus:4];
  [*(a1 + 32) _postAppActivityNotificationNamed:kMRApplicationActivityStatusDidChangeNotification withActivity:v2];
}

void sub_1001391AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001391CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 localizedDescription];

  [WeakRetained invalidateWithReason:v5];
}

void sub_100139B24(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.mrdtaskassertion", v3);
  v2 = qword_1005294F8;
  qword_1005294F8 = v1;
}

void sub_100139D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100139D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateWithReason:@"Timer Elapsed"];
}

void sub_10013A19C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA470(a1, v6, v7);
    }
  }

  else
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [v5 debugName];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v18 = 138544130;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v18, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v18 = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v18, 0x20u);
    }
  }

LABEL_10:

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v6);
  }
}

void sub_10013A760(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10013A7D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:*(a1 + 32) type:3 outputDeviceUIDs:*(a1 + 40)];
  v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013A8F4;
  v9[3] = &unk_1004BE598;
  v12 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  [v5 modifyTopologyWithRequest:v4 withReplyQueue:v7 completion:v9];
}

void sub_10013A8F4(uint64_t a1)
{
  v2 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MRUpdateActiveSystemEndpointRequest alloc];
  v6 = [*(a1 + 32) requestReasonID];
  v7 = [v5 initWithOutputDeviceUID:0 reason:v6];

  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 routingServer];
  v10 = [v9 systemEndpointController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013AA30;
  v11[3] = &unk_1004B6FE8;
  v12 = *(a1 + 40);
  [v10 updateSystemEndpointForRequest:v7 event:1 completion:v11];
}

void sub_10013AA44(double *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013AB2C;
  v10[3] = &unk_1004BE610;
  v7 = v5;
  v8 = *(a1 + 6);
  v12 = v3;
  v13 = v8;
  v11 = v7;
  v9 = v3;
  [MRDCreateOptimizedEndpointRequest createOptimizedEndpointWithOutputDeviceUIDs:v6 timeout:v7 details:v10 previewCallback:0 completion:v4];
}

void sub_10013AB2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MRUpdateActiveSystemEndpointRequest alloc];
  v8 = [v5 outputDeviceUIDs];
  v9 = [v8 firstObject];
  v10 = [*(a1 + 32) requestReasonID];
  v11 = [v7 initWithOutputDeviceUID:v9 reason:v10];

  v12 = +[MRDMediaRemoteServer server];
  v13 = [v12 routingServer];
  v14 = [v13 systemEndpointController];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013ACBC;
  v19[3] = &unk_1004BE5E8;
  v20 = v5;
  v21 = v6;
  v18 = *(a1 + 40);
  v15 = v18;
  v22 = v18;
  v16 = v6;
  v17 = v5;
  [v14 updateSystemEndpointForRequest:v11 event:1 completion:v19];
}

void sub_10013ACBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10013AD40(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(NSMutableArray);
  if (a2)
  {
    v5 = objc_retainBlock(*(a1 + 32));
    [v4 addObject:v5];
  }

  v6 = objc_retainBlock(*(a1 + 40));
  [v4 addObject:v6];

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  MRPerformAsyncOperationsUntilSuccess();
}

uint64_t sub_10013B070(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) requestID];
      v6 = 138543874;
      v7 = @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs";
      v8 = 2114;
      v9 = v4;
      v10 = 2112;
      v11 = @"Destination supports RemoteSetQueue";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

BOOL sub_10013B290(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 canAccessAppleMusic])
  {
    v3 = [(MRAVOutputDevice *)v2 canAccessiCloudMusicLibrary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10013B4D0(id a1, NSData *a2)
{
  v2 = a2;
  memset(&v7, 0, sizeof(v7));
  [(NSData *)v2 getBytes:&v7 length:32];
  atoken = v7;
  v3 = audit_token_to_pid(&atoken);
  atoken = v7;
  v4 = [NSString stringWithFormat:@"PID: %i, PID_V: %i", v3, audit_token_to_pidversion(&atoken)];

  return v4;
}

void sub_10013B80C(id a1)
{
  v1 = [[MRDAutoConnectionController alloc] _init];
  v2 = qword_100529508;
  qword_100529508 = v1;
}

void sub_10013BAF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRGetPlayerPathFromUserInfo();
  v5 = [[NSString alloc] initWithFormat:@"player %@ started playing", v4];
  v6 = [MRDAutoConnectionControllerReason reasonWithType:1 string:v5];
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013BC08;
  v9[3] = &unk_1004BE780;
  v10 = v3;
  v8 = v3;
  [v7 connectToAllOutputDevicesForReason:v6 comparator:v9 queue:0 completion:0];
}

uint64_t sub_10013BC08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 outputDeviceUIDs];
  v7 = [*(a1 + 32) deviceUID];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 outputDeviceUIDs];
    v11 = [*(a1 + 32) deviceUID];
    v12 = [v10 containsObject:v11];

    v9 = (v12 << 63) >> 63;
  }

  return v9;
}

void sub_10013BCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MRGetPlayerPathFromUserInfo();
  v4 = [[NSString alloc] initWithFormat:@"player %@ started playing", v8];
  v5 = [MRDAutoConnectionControllerReason reasonWithType:1 string:v4];
  v6 = *(a1 + 32);
  v7 = [v3 deviceUID];

  [v6 connectToOutputDevice:v7 reason:v5 queue:0 completion:0];
}

void sub_10013BDB0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

  v3 = *(a1 + 32);
  MRAVEndpointGetActiveSystemEndpointUID();
}

void sub_10013BE80(uint64_t a1, uint64_t a2)
{
  v4 = [NSString alloc];
  v5 = *(a1 + 40);
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v8 = [v4 initWithFormat:@"%@ endpoint changed", active];

  v7 = [MRDAutoConnectionControllerReason reasonWithType:2 string:v8];
  [*(a1 + 32) connectToOutputDevice:a2 reason:v7 queue:0 completion:0];
}

void sub_10013C028(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013C168(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013C30C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10013C3C8;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_10013C520(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10013C5DC;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_10013C734(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10013C7F0;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_10013C948(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10013CA04;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_10013CB5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10013CC18;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_10013CF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013D008;
  block[3] = &unk_1004BE8C0;
  v5 = *(a1 + 56);
  v11 = v3;
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_10013D008(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 sortedArrayUsingComparator:?];
  }

  else
  {
    v4 = v3;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10013D1AC;
        v13[3] = &unk_1004B9C80;
        v14 = *(a1 + 56);
        v15 = v9;
        [v10 _onSerialQueue_connectToEndpoint:v9 reason:v11 queue:&_dispatch_main_q completion:v13];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

id *sub_10013D1AC(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] addObject:result[5]];
  }

  return result;
}

id sub_10013D1C0(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDAutoConnectionController] Begin DiscoverySession %@ because %@", &v6, 0x16u);
  }

  return [*(a1 + 48) setDiscoveryMode:3];
}

void sub_10013D284(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDAutoConnectionController] End DiscoverySession %@", buf, 0xCu);
  }

  [*(a1 + 40) setDiscoveryMode:0];
  if (*(a1 + 64))
  {
    v4 = [*(a1 + 48) copy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013D3D0;
    v8[3] = &unk_1004B8B50;
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v9 = v4;
    v10 = v6;
    v7 = v4;
    dispatch_async(v5, v8);
  }
}

void sub_10013DB10(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_10013DC54(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalEndpoint])
  {
    v4 = *(a1 + 48);
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (*(v4 + 16))(v4, v5);
  }

  else if (v3 && *(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v6[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013DD84;
    v9[3] = &unk_1004B9DE8;
    v11 = *(a1 + 48);
    v10 = v3;
    [v6 _onSerialQueue_connectToEndpoint:v10 reason:v7 queue:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_10013DD84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_10013E0CC(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 48) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_10013E210(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalEndpoint])
  {
    v4 = *(a1 + 48);
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (*(v4 + 16))(v4, v5);
  }

  else if (v3 && *(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v6[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013E340;
    v9[3] = &unk_1004B9DE8;
    v11 = *(a1 + 48);
    v10 = v3;
    [v6 _onSerialQueue_connectToEndpoint:v10 reason:v7 queue:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_10013E340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_10013E75C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10013E80C;
    v6[3] = &unk_1004B8B50;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10013E820(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 72);
  v5 = [*(a1 + 40) uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v14 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 72);
  v13 = [v11 uniqueIdentifier];
  [v12 setObject:0 forKeyedSubscript:v13];
}

void sub_10013E988(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = +[NSDate date];
  v5 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"autoConnectToEndpoint", v3];
  v6 = [*(a1 + 32) debugName];

  if (v6)
  {
    v7 = [*(a1 + 32) debugName];
    [v5 appendFormat:@" for %@", v7];
  }

  v8 = [*(a1 + 40) string];

  if (v8)
  {
    v9 = [*(a1 + 40) string];
    [v5 appendFormat:@" because %@", v9];
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v11 = [*(a1 + 40) type];
  if (v11 > 4)
  {
    v12 = @"endpointChanged";
  }

  else
  {
    v12 = off_1004BE980[v11];
  }

  v13 = [NSString stringWithFormat:@"autoConnectToEndpoint-%@", v12];
  v26[0] = MREndpointConnectionReasonUserInfoKey;
  v26[1] = MREndpointConnectionCorrelationIDUserInfoKey;
  v27[0] = v13;
  v27[1] = v3;
  v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v15 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013EC64;
  v20[3] = &unk_1004B9780;
  v21 = v15;
  v22 = v3;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v23 = v4;
  v24 = v16;
  v25 = v17;
  v18 = v4;
  v19 = v3;
  [v21 connectToExternalDeviceWithUserInfo:v14 completion:v20];
}

void sub_10013EC64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) debugName];

  v5 = _MRLogForCategory();
  v6 = v5;
  if (v3)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v7)
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) debugName];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v25 = @"autoConnectToEndpoint";
        v26 = 2114;
        v27 = v8;
        v28 = 2114;
        v29 = v3;
        v30 = 2114;
        v31 = v9;
        v32 = 2048;
        v33 = v11;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_8:

LABEL_13:
      }
    }

    else if (v7)
    {
      sub_1003AA578(a1, v3, v6);
    }
  }

  else
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v12)
      {
        v13 = *(a1 + 40);
        v9 = [*(a1 + 32) debugName];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v25 = @"autoConnectToEndpoint";
        v26 = 2114;
        v27 = v13;
        v28 = 2114;
        v29 = v9;
        v30 = 2048;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
        goto LABEL_8;
      }
    }

    else if (v12)
    {
      v15 = *(a1 + 40);
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v25 = @"autoConnectToEndpoint";
      v26 = 2114;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      goto LABEL_13;
    }
  }

  v17 = *(a1 + 56);
  v18 = *(v17 + 8);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013EF6C;
  v20[3] = &unk_1004B6BB0;
  v20[4] = v17;
  v21 = *(a1 + 32);
  v22 = v3;
  v23 = *(a1 + 64);
  v19 = v3;
  dispatch_sync(v18, v20);
}

uint64_t sub_10013EF6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) uniqueIdentifier];
  [v2 setObject:0 forKeyedSubscript:v3];

  if (!*(a1 + 48))
  {
    [*(a1 + 32) _onSerialQueue_addConnectedEndpoint:*(a1 + 40)];
    v4 = *(a1 + 48);
  }

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

void sub_100140398(void *a1, void *a2)
{
  v3 = a2;
  v11 = MREndpointConnectionReasonUserInfoKey;
  v12 = @"activeSystemEndpointDidChange";
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001404BC;
  v7[3] = &unk_1004BE9B8;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v5;
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_1001404BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqual:v8];

    if (!v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDElectedPlayerController] Ignoring activeSystemEndpointDidChange for %@ because a new change for %@ was received", &v22, 0x16u);
      }

      goto LABEL_12;
    }
  }

  if (v3)
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDElectedPlayerController] Failed to connect to proactive endpoint %@ with error %@. Reset to local.", &v22, 0x16u);
    }

    v16 = &_dispatch_main_q;
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
  }

  else
  {
    v17 = [*(a1 + 48) origin];
    v18 = *(a1 + 32);
    v19 = +[MRDMediaRemoteServer server];
    v20 = [v19 nowPlayingServer];
    v21 = [v20 originClientForOrigin:v17];
    [v18 setOriginClient:v21 withChangeType:*(a1 + 56)];
  }

LABEL_12:
  objc_sync_exit(v4);
}

uint64_t sub_100140AD0(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1004BEA00 + a1);
  }
}

id sub_100140AF0(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[6];
  return [*(a1[4] + 96) electedPlayerController:? electedPlayerDidChange:? change:? event:? reason:?];
}

void sub_100141278(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  v3 = [NSString alloc];
  v4 = *(a1 + 40);
  v5 = sub_100140AD0(*(a1 + 48));
  v6 = [v3 initWithFormat:@"%@ playback timeout event %@ after <%lf> seconds", v4, v5, *(a1 + 56)];
  [v2 _onSyncSelf_reevaluateElectedPlayerForEvent:3 withReason:v6];

  objc_sync_exit(obj);
}

void sub_1001414FC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100529520;
  qword_100529520 = v1;
}

void sub_100141630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*(a1 + 32)];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v3;
      v8 = "[MRDRRC].SIC handled interaction, %@";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    LOWORD(v11) = 0;
    v8 = "[MRDRRC].SIC not handling this interaction";
    v9 = v6;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_10014196C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100141988(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    [v6 removeAttribution:?];
  }

  if (*(a1 + 40))
  {
    [v6 addAttribution:?];
  }

  [v5 setUserInitiated:1];
}

void sub_100141A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 1, *(a1 + 32));
}

uint64_t sub_100141ED8()
{
  v3[0] = 0;
  if (!qword_100529528)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100142D78;
    v3[4] = &unk_1004B82A0;
    v3[5] = v3;
    v4 = off_1004BEB10;
    v5 = 0;
    qword_100529528 = _sl_dlopen();
  }

  v0 = qword_100529528;
  v1 = v3[0];
  if (!qword_100529528)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_100141FD8(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_100529530;
  v8 = off_100529530;
  if (!off_100529530)
  {
    v3 = sub_100141ED8();
    v6[3] = dlsym(v3, "APReceiverMediaRemoteXPCClient_SetDelegate");
    off_100529530 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v4 = sub_1003AA728();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2(v1);
}

void sub_100142350(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100142408;
  v5[3] = &unk_1004BEAC8;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 _didReceiveData:v3 fromCommunicationChannel:v6 connectionFactory:v5];
}

id sub_100142408(uint64_t a1)
{
  v1 = [[MRAirPlayTransportConnection alloc] initWithOutputContextCommunicationChannel:*(a1 + 32) outputContext:*(a1 + 40)];

  return v1;
}

void sub_1001424E4(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:105 description:@"AVOutputContextCommunicationChannel.didCloseCommunicationChannel"];
  [*(a1 + 32) _didCloseCommunicationChannel:*(a1 + 40) error:v2];
}

void sub_100142610(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001426A4;
  v4[3] = &unk_1004BEAF0;
  v5 = v3;
  [v1 _didReceiveData:v2 fromCommunicationChannel:v5 connectionFactory:v4];
}

id sub_1001426A4(uint64_t a1)
{
  v1 = [[MRAirPlayTransportConnection alloc] initWithAPCommunicationChannel:*(a1 + 32)];

  return v1;
}

void sub_100142780(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:105 description:@"APReceiverMediaRemoteCommunicationChannel.didCloseCommunicationChannel"];
  [*(a1 + 32) _didCloseCommunicationChannel:*(a1 + 40) error:v2];
}

uint64_t sub_100142D78(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100529528 = result;
  return result;
}

void *sub_100142DEC(uint64_t a1)
{
  v2 = sub_100141ED8();
  result = dlsym(v2, "APReceiverMediaRemoteXPCClient_SetDelegate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100529530 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100143D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = *(a1 + 40);
  v12 = v3;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  [v5 _appendDescribableArray:v6 toString:*(a1 + 48) withTitle:@"Endpoint" indentLevel:0 usingDebugDescription:1];

  v7 = [*(*(a1 + 40) + 360) objectForKeyedSubscript:v4];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 40);
    v11 = v7;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v9 _appendDescribableArray:v10 toString:*(a1 + 48) withTitle:@"External Device" indentLevel:1 usingDebugDescription:1];
  }

  [*(a1 + 48) appendString:@"\n"];
}

void sub_100143E88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"EndpointID: %@\n", a2];
  v7 = *(a1 + 40);
  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 _appendDescribableArray:v8 toString:*(a1 + 32) withTitle:@"External Device" indentLevel:1 usingDebugDescription:1];

  [*(a1 + 32) appendString:@"\n"];
}

void sub_100144398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001443B0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100144EE0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MediaRemote.MRDParticipantDataSource.notification.targetQueue", v3);
  v2 = qword_100529540;
  qword_100529540 = v1;
}

void sub_100145530(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"handleMusicStateUpdateNotification:" name:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"handleGroupSessionServerDidStartNotification:" name:@"MRDGroupSessionServerDidStartNotification" object:0];

  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 groupSessionServer];
  v6 = [v5 sessionManager];

  [v6 addObserver:*(a1 + 32)];
  [*(a1 + 32) loadFromStorage];
  [*(a1 + 32) loadLocalIdentities];
}

void sub_1001457E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145800(uint64_t a1)
{
  v2 = [*(a1 + 32) localIdentityMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) remoteIdentityMap];
    v7 = [v6 objectForKey:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) pepper];
      v12 = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:v10 withRandomData:v11];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = [*(a1 + 32) remoteIdentityMap];
      [v15 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];

      v16 = *(a1 + 32);

      [v16 rebuildParticipants];
    }
  }
}

void sub_10014593C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didUpdateParticipants:*(a1 + 40)];
}

void sub_100145990(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 groupSessionServer];
  v6 = [v3 sessionManager];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 session];
  [WeakRetained updatePepperIfNeededWithSession:v5];
}

void sub_100145B08(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 groupSessionServer];
  v6 = [v3 sessionManager];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 session];
  [WeakRetained updatePepperIfNeededWithSession:v5];
}

void sub_1001465C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001465F0(void *a1)
{
  v2 = [[MRDIDSCompanionRemoteControlService alloc] initWithRoutingDataSource:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(a1[4] + 64) setDelegate:?];
  v5 = a1[4];
  if (*(v5 + 8) == 1)
  {
    [*(v5 + 64) start];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(*(a1[6] + 8) + 40)];
}

void sub_100146698(uint64_t a1)
{
  if ([*(a1 + 32) disarm])
  {
    v2 = +[NRPairedDeviceRegistry sharedInstance];
    v3 = [v2 getActivePairedDevice];

    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 name];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlService] observed new activePairedDevice <%@>, creating IDSRemoteControlService...", &v6, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100146B84(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.remoteControlService.serverClientConnectionQueue", v3);
  v2 = qword_100529548;
  qword_100529548 = v1;
}

void sub_1001471A0(id a1)
{
  v1 = objc_alloc_init(MRDUIServer);
  v2 = qword_100529558;
  qword_100529558 = v1;
}

void sub_1001475DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 listener];
  v4 = [v6 endpoint];
  v5 = [v4 _endpoint];
  xpc_dictionary_set_value(v3, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v5);
}

void sub_100147808(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001478A0;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_1001478A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _endpoint];
  xpc_dictionary_set_value(v3, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v4);
}

void sub_100147AA0(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  v2 = MRSupportsSystemUIActivities();
  xpc_dictionary_set_BOOL(xdict, "MRXPC_BOOL_RESULT_KEY", v2);
}

void sub_100148ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148AD4(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 16) bargeCalls];
  if ([v4 count])
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 16) handleMediaRemoteCommandForBargeCalls:{objc_msgSend(*(a1 + 40), "commandType")}];
    }
  }

  else
  {
  }
}

void sub_100148E10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) playerPath];

    v7 = _MRLogForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = [*(a1 + 32) commandID];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 40)];
      v24 = 138544130;
      v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v5;
      v30 = 2048;
      v31 = v18;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v24, 0x2Au);
      goto LABEL_18;
    }

    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) commandID];
    v10 = [*(a1 + 32) playerPath];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 40)];
    v24 = 138544386;
    v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = v10;
    v32 = 2048;
    v33 = v12;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
    goto LABEL_17;
  }

  v13 = [NSNumber numberWithBool:a2];

  v14 = [*(a1 + 32) playerPath];

  v7 = _MRLogForCategory();
  v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_19;
      }

      v9 = [*(a1 + 32) commandID];
      v10 = [NSNumber numberWithBool:a2];
      v11 = [*(a1 + 32) playerPath];
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 40)];
      v24 = 138544386;
      v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", &v24, 0x34u);

      goto LABEL_17;
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) commandID];
    v10 = [NSNumber numberWithBool:a2];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 40)];
    v24 = 138544130;
    v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
    v26 = 2114;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2048;
    v31 = v21;
    v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v20, &v24, 0x2Au);
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if (v14)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) commandID];
    v10 = [*(a1 + 32) playerPath];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 40)];
    v24 = 138544130;
    v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2048;
    v31 = v19;
    v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_16;
  }

  if (v15)
  {
    v9 = [*(a1 + 32) commandID];
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:*(a1 + 40)];
    v24 = 138543874;
    v25 = @"MRDPhoneCallObserver.handleMediaRemoteCommand";
    v26 = 2114;
    v27 = v9;
    v28 = 2048;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v24, 0x20u);
    goto LABEL_18;
  }

LABEL_19:

  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v5);
  }
}

void sub_100149FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  v3 = [v5 origin];
  v4 = [v3 isHosted];

  if (v4)
  {
    [*(a1 + 40) _onQueue_adjustPlaybackTimerIfNeededForPlayerPath:v5];
  }
}

void sub_10014A39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014A3C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onQueue_simplifyToplogyOfPlayerPathIfNeeded:*(a1 + 32)];
}

id sub_10014A8A4(uint64_t a1, void *a2)
{
  v3 = [a2 origin];
  v4 = [*(a1 + 32) origin];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_10014A908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v8 = [*(a1 + 48) outputDevices];
    if ([v8 count] == 1)
    {
      v9 = [*(a1 + 48) outputDevices];
      v10 = [v9 firstObject];
      v11 = [v10 isSmartDevice];

      if (v11)
      {
        v4 = _MRLogForCategory();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v12 = *(a1 + 32);
        v6 = [*(a1 + 48) uniqueIdentifier];
        v7 = [*(a1 + 48) outputDevices];
        v13 = [v7 firstObject];
        *buf = 134218498;
        v20 = v12;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDITS] <%p> Not trying to recreate WHA group; Endpoint (%@) only had one smart device (%@)", buf, 0x20u);

        goto LABEL_4;
      }
    }

    else
    {
    }

    v14 = *(a1 + 56);
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(v16 + 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10014AB74;
    v18[3] = &unk_1004BD478;
    v18[4] = v16;
    [MRAVEndpoint createEndpointWithOutputDeviceUIDs:v15 details:v14 queue:v17 completion:v18];
    goto LABEL_12;
  }

  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    v7 = [*(a1 + 48) uniqueIdentifier];
    *buf = 134218754;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDITS] <%p> Could not remove devices <%@> from existing endpoint (%@) - error: %@", buf, 0x2Au);
LABEL_4:
  }

LABEL_5:

LABEL_12:
}

void sub_10014AB74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v12 = 134218242;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      v10 = "[MRDITS] <%p> Topology not simplified, error: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x16u);
    }
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v12 = 134218242;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v10 = "[MRDITS] <%p> Topology simplified, new endpoint: %@";
    goto LABEL_6;
  }
}

void sub_10014B4EC(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 userInfo];
  v4 = MRGetPlayerPathFromUserInfo();

  v5 = [v4 origin];
  v6 = [v5 isLocallyHosted];

  if (v6)
  {
    v7 = [v15 userInfo];
    v8 = [v7 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v4 origin];
      if ([v10 isLocal])
      {
        v11 = +[MRDMediaRemoteServer server];
        v12 = [v11 deviceInfo];
        v13 = [v12 considerLocalOriginAsSeperateStream];

        if (!v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v14 = *(a1 + 32);
      [objc_opt_class() _reportStreamCountAnalytics];
    }
  }

LABEL_8:
}

void sub_10014BA28(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BAD8;
  v4[3] = &unk_1004BED20;
  v4[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:_MRMediaRemoteDefaultSupportedCommandsDidChangeNotification object:0 queue:0 usingBlock:v4];
}

void sub_10014BAD8(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v4 = [v6 origin];
  v5 = [v4 isLocal];

  if (v5)
  {
    [*(a1 + 32) prewarmSoon];
  }
}

void sub_10014BDB8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = _MRLogForCategory();
  v12 = v11;
  if (v8 && !v9)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v13)
      {
        v15 = a1[5];
        v14 = a1[6];
        v16 = a1[4];
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:a1[7]];
        v38 = 138544386;
        v39 = v15;
        v40 = 2114;
        v41 = v14;
        v42 = 2112;
        v43 = v8;
        v44 = 2114;
        v45 = v16;
        v46 = 2048;
        v47 = v18;
        v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v20 = v12;
        v21 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v38, v21);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:a1[7]];
    v38 = 138544130;
    v39 = v32;
    v40 = 2114;
    v41 = v33;
    v42 = 2112;
    v43 = v8;
    v44 = 2048;
    v45 = v34;
    v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v20 = v12;
    v21 = 42;
    goto LABEL_16;
  }

  if (v9)
  {
    v22 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v22)
      {
        v24 = a1[5];
        v23 = a1[6];
        v25 = a1[4];
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:a1[7]];
        v38 = 138544386;
        v39 = v24;
        v40 = 2114;
        v41 = v23;
        v42 = 2114;
        v43 = v9;
        v44 = 2114;
        v45 = v25;
        v46 = 2048;
        v47 = v26;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v38, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v22)
    {
      sub_1003AAB18(a1, v9, v12);
    }

    goto LABEL_22;
  }

  v27 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v27)
    {
      goto LABEL_22;
    }

    v35 = a1[5];
    v36 = a1[6];
    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:a1[7]];
    v38 = 138543874;
    v39 = v35;
    v40 = 2114;
    v41 = v36;
    v42 = 2048;
    v43 = v37;
    v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v20 = v12;
    v21 = 32;
    goto LABEL_16;
  }

  if (v27)
  {
    v29 = a1[5];
    v28 = a1[6];
    v30 = a1[4];
    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:a1[7]];
    v38 = 138544130;
    v39 = v29;
    v40 = 2114;
    v41 = v28;
    v42 = 2114;
    v43 = v30;
    v44 = 2048;
    v45 = v31;
    v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:
}

void sub_10014C238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10014C250(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) debugName];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v2 forKeyedSubscript:@"designatedGroupLeader"];

  v3 = [*(*(a1 + 32) + 80) displayName];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:@"origin"];

  v4 = *(*(a1 + 32) + 72);
  v5 = *(*(*(a1 + 40) + 8) + 40);

  return [v5 setObject:v4 forKeyedSubscript:@"outputContext"];
}

void sub_10014C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014C428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v13 = [*(v4 + 72) uniqueIdentifier];
  v5 = [*(*(a1 + 32) + 48) uid];
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  if (*(v7 + 24))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<%@: %p id=%@ leader=%@ origin=<%@> originFwd=%@>", v3, v4, v13, v5, v8, v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_10014C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014C644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v19 = MRCreateIndentedDebugDescriptionFromObject();
  v6 = *(*(a1 + 32) + 80);
  v7 = MRCreateIndentedDebugDescriptionFromObject();
  v8 = *(*(a1 + 32) + 24);
  v9 = MRCreateIndentedDebugDescriptionFromObject();
  v10 = *(*(a1 + 32) + 120);
  v11 = MRCreateIndentedDebugDescriptionFromObject();
  v12 = *(*(a1 + 32) + 72);
  v13 = MRCreateIndentedDebugDescriptionFromObject();
  v14 = [*(*(a1 + 32) + 32) mr_formattedDebugDescription];
  v15 = [*(*(a1 + 32) + 56) mr_formattedDebugDescription];
  v16 = [NSString stringWithFormat:@"<%@: %p {\n    designatedGroupLeader = %@\n    origin = %@\n    originForwarder = %@\n    disconnectionError = %@\n    outputContext = %@\n    pendingCommitRequests = %@\n    pendingCommandCompletions = %@\n}>", v3, v4, v19, v7, v9, v11, v13, v14, v15];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

void sub_10014C8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014C8E0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) name];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014CA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014CA60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014CBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014CBC4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10014CE28(uint64_t result)
{
  v1 = *(result + 48);
  v3 = *(*(result + 32) + 8) != v1 || v1 == 3;
  *(*(*(result + 40) + 8) + 24) = v3;
  *(*(result + 32) + 8) = v1;
  return result;
}

void sub_10014CE5C(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = +[NSMutableDictionary dictionary];
    v3 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
    [v5 setObject:v3 forKey:kMRExternalDeviceConnectionStateUserInfoKey];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:kMRExternalDeviceConnectionStateDidChangeNotification object:*(a1 + 32) userInfo:v5];
  }
}

void sub_10014D020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014D038(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) uid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014D3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014D408(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 16));
  v2 = a1[5];
  v3 = (a1[4] + 16);

  objc_storeStrong(v3, v2);
}

void sub_10014D460(void *a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:MRExternalDevicePreviousDeviceInfoUserInfoKey];
  [v3 setObject:a1[4] forKeyedSubscript:MRExternalDeviceDeviceInfoUserInfoKey];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:MRExternalDeviceDeviceInfoDidChangeNotification object:a1[5] userInfo:v3];
}

void sub_10014DA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v41 - 160));
  objc_destroyWeak((v41 - 120));
  objc_destroyWeak((v41 - 112));
  _Unwind_Resume(a1);
}

void sub_10014DAF0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v9];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10014DC24;
    v16[3] = &unk_1004B7888;
    v17 = v11;
    [v13 _handleRemoteCommand:a3 withOptions:v10 playerPath:v14 completion:v16];
  }

  else
  {
    v15 = [MRCommandResult commandResultWithSendError:2];
    (*(v11 + 2))(v11, v15);
  }
}

void sub_10014DC34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    Error = [WeakRetained _createResolvedPlayerPathFromPlayerPath:a3];
    [v10 _handlePlaybackQueueRequest:a2 forPlayerPath:Error completion:v7];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    v7[2](v7, 0, Error);
  }
}

void sub_10014DCEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v8];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10014DE10;
    v13[3] = &unk_1004B8D40;
    v14 = v9;
    [v11 _handlePlaybackSessionRequest:v7 forPlayerPath:v12 completion:v13];
  }

  else
  {
    v12 = MRMediaRemoteCreateError();
    (*(v9 + 2))(v9, 0, v12);
  }
}

void sub_10014DE20(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a4;
  v10 = a5;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    Error = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v9];
    [v13 _handlePlaybackSessionMigrateRequest:v15 request:v11 forPlayerPath:Error completion:v10];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    v10[2](v10, v11, Error);
  }
}

void sub_10014DF10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v7];
    [v10 _handlePlaybackSessionMigrateBeginRequest:v12 forPlayerPath:v11 completion:v8];
  }

  else
  {
    v11 = [[NSError alloc] initWithMRError:100];
    v8[2](v8, 0, v11);
  }
}

void sub_10014DFF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v13];
    [v16 _handlePlaybackSessionMigrateEndRequest:v18 error:v12 setPlaybackSessionCommandStatus:v11 forPlayerPath:v17 completion:v14];
  }

  else
  {
    v17 = [[NSError alloc] initWithMRError:100];
    v14[2](v14, 0, v17);
  }
}

void sub_10014E100(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained _createResolvedPlayerPathFromPlayerPath:v10];
    [v13 _handlePlaybackSessionMigratePostRequest:v15 setPlaybackSessionCommandID:v9 forPlayerPath:v14 completion:v11];
  }

  else
  {
    v14 = [[NSError alloc] initWithMRError:100];
    v11[2](v11, 0, v14);
  }
}

void sub_10014E1FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 context];
  v12 = v11;
  if (WeakRetained)
  {
    v13 = [v11 destinationPlayerPath];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10014E330;
    v14[3] = &unk_1004BED70;
    v18 = v9;
    v15 = v7;
    v16 = v12;
    v17 = v8;
    [WeakRetained _createPlayerAndWaitForCanBeNowPlaying:v13 completion:v14];
  }
}

void sub_10014E330(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = [v7 bundleIdentifier];
    sub_10019FC4C(v10);

    objc_initWeak(&location, v7);
    [*(a1 + 32) setType:1];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10014E558;
    v20 = &unk_1004B77C0;
    objc_copyWeak(&v21, &location);
    [*(a1 + 32) setServerBoundMessageHandler:&v17];
    [*(a1 + 32) setLocalHostedInvalidationPlayerPath:{v8, v17, v18, v19, v20}];
    v11 = MRCreateXPCMessage();
    v12 = [MRApplicationConnectionContext alloc];
    v13 = [*(a1 + 40) identifier];
    v14 = [*(a1 + 40) service];
    v15 = [v12 initWithIdentifier:v13 service:v14 destinationPlayerPath:v8];

    v16 = [[MRCreateApplicationConnectionMessage alloc] initWithConnectionContext:v15 requestInfo:*(a1 + 48)];
    MRAddProtobufToXPCMessage();
    [v7 relayXPCMessage:v11 andReply:0];
    (*(*(a1 + 56) + 16))();

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void sub_10014E524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014E558(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v5 type];
    v7 = MRCreateXPCMessage();
    MRAddProtobufToXPCMessage();
    [WeakRetained relayXPCMessage:v7 andReply:0];
  }

  else
  {
    v7 = [[NSError alloc] initWithMRError:178];
    [v8 invalidate:v7];
  }
}

void sub_10014E640(id a1, MRDApplicationConnection *a2, MRApplicationConnectionRequestInfo *a3, id a4)
{
  v5 = a4;
  v6 = [[NSError alloc] initWithMRError:132];
  (*(a4 + 2))(v5, v6);
}

void sub_10014E7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014E9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_10014EA0C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 48);
  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isEqual:v2] ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    return;
  }

  v6 = [*(*(a1 + 40) + 48) debugName];

  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [*(v9 + 48) debugName];
      v11 = [*(a1 + 32) debugName];
      v15 = 138544130;
      v16 = v9;
      v17 = 2114;
      v18 = @"designatedGroupLeader";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v15, 0x2Au);

LABEL_10:
    }
  }

  else if (v8)
  {
    v12 = *(a1 + 40);
    v10 = [*(a1 + 32) debugName];
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = @"designatedGroupLeader";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v15, 0x20u);
    goto LABEL_10;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 40) + 48));
  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
  [*(*(a1 + 40) + 40) setDesignatedGroupLeaderWhenContextEmpty:*(a1 + 32)];
  if (([*(a1 + 32) isLocalDevice] & 1) == 0)
  {
    [*(a1 + 40) _onQueue_clearLocalOriginForwaderWithReason:@"designatedGroupLeader no longer local"];
  }

  if ([*(a1 + 32) isLocalDevice])
  {
    v13 = *(a1 + 40);
    v14 = [v13 origin];
    [v13 _onQueue_forwardOriginToLocalOrigin:v14];
  }

  [*(a1 + 40) _reevaluateDeviceInfo];
}

void sub_10014F450(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v3 && !v4)
  {
    v5 = a1[4];
    v6 = _MRLogForCategory();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      v9 = a1[5];
      v8 = a1[6];
      v10 = a1[4];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v43 = v9;
      v44 = 2114;
      v45 = v8;
      v46 = 2112;
      v47 = v3;
      v48 = 2114;
      v49 = v10;
      v50 = 2048;
      v51 = v12;
      v13 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v14 = v6;
      v15 = 52;
      goto LABEL_16;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

    v30 = a1[5];
    v31 = a1[6];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v43 = v30;
    v44 = 2114;
    v45 = v31;
    v46 = 2112;
    v47 = v3;
    v48 = 2048;
    v49 = v32;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  v16 = [v3 error];

  v17 = a1[4];
  v18 = _MRLogForCategory();
  v6 = v18;
  if (v16)
  {
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = a1[5];
      v21 = a1[6];
      v11 = [v3 error];
      v22 = a1[4];
      v23 = +[NSDate date];
      [v23 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v43 = v20;
      v44 = 2114;
      v45 = v21;
      v46 = 2114;
      v47 = v11;
      v48 = 2114;
      v49 = v22;
      v50 = 2048;
      v51 = v24;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);

      goto LABEL_17;
    }

    if (v19)
    {
      sub_1003AABCC(a1, v3, v6);
    }
  }

  else
  {
    v25 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (!v25)
      {
        goto LABEL_22;
      }

      v27 = a1[5];
      v26 = a1[6];
      v28 = a1[4];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v43 = v27;
      v44 = 2114;
      v45 = v26;
      v46 = 2114;
      v47 = v28;
      v48 = 2048;
      v49 = v29;
      v13 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v14 = v6;
      v15 = 42;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_17:

      goto LABEL_22;
    }

    if (v25)
    {
      v33 = a1[5];
      v34 = a1[6];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v43 = v33;
      v44 = 2114;
      v45 = v34;
      v46 = 2048;
      v47 = v35;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v6;
      v15 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v37 = a1[8];
  v36 = a1[9];
  v38 = *(v37 + 88);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10014F870;
  v40[3] = &unk_1004B68F0;
  v40[4] = v37;
  v41 = v36;
  dispatch_sync(v38, v40);
  v39 = a1[10];
  if (v39)
  {
    (*(v39 + 16))(v39, v3);
  }
}

void sub_10014F888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[MRCommandResult alloc] initWithErrorCode:26];
  (*(v1 + 16))(v1, v2);
}

void sub_10014F8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10014F954(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014FDC8;
  block[3] = &unk_1004B71F8;
  block[4] = v3;
  v43 = v2;
  v44 = *(a1 + 56);
  dispatch_sync(v4, block);
  v5 = kMRMediaRemoteOptionDestinationDeviceUIDs;
  v6 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:kMRMediaRemoteOptionDestinationDeviceUIDs];

  if (!v6)
  {
    v7 = [*(*(*(a1 + 64) + 8) + 40) mutableCopy];
    v8 = [*(a1 + 32) outputContext];
    v9 = [v8 outputDeviceUIDs];
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    [v7 setObject:v10 forKeyedSubscript:v5];

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v7;
  }

  v13 = [*(a1 + 48) origin];
  v14 = [v13 isLocal];

  if (v14)
  {
    v15 = [[MRDRemoteControlCommand alloc] initWithCommandType:*(a1 + 72) playerPath:*(a1 + 48) unresolvedPlayerPath:*(a1 + 48) senderAppDisplayID:0 options:*(*(*(a1 + 64) + 8) + 40)];
    v16 = *(a1 + 76);
    v17 = +[MRDMediaRemoteServer server];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 nowPlayingServer];
      v20 = [v19 localOriginClient];
      v21 = [v20 overrideClient];
    }

    else
    {
      v19 = [*(a1 + 48) client];
      v21 = [v18 clientForPID:{objc_msgSend(v19, "processIdentifier")}];
    }

    if (v21)
    {
      goto LABEL_14;
    }

    v35 = [MRCommandResult alloc];
    v36 = [[NSString alloc] initWithFormat:@"Could not find xpcClient for playerPath %@", *(a1 + 48)];
    v29 = [v35 initWithWithSendError:1 description:v36];

    goto LABEL_17;
  }

  if (*(a1 + 76) == 1)
  {
    v15 = [[MRDRemoteControlCommand alloc] initWithCommandType:*(a1 + 72) playerPath:*(a1 + 48) unresolvedPlayerPath:*(a1 + 48) senderAppDisplayID:0 options:*(*(*(a1 + 64) + 8) + 40)];
    v22 = +[MRDMediaRemoteServer server];
    v23 = [v22 nowPlayingServer];
    v24 = [v23 localOriginClient];
    v21 = [v24 overrideClient];

    if (v21)
    {
LABEL_14:
      [v21 sendRemoteControlCommand:v15 withCompletionBlock:*(a1 + 56)];
LABEL_18:

      goto LABEL_19;
    }

    v25 = +[MRDMediaRemoteServer server];
    v26 = [v25 deviceInfo];
    v27 = [v26 isAirPlayActive];

    if (v27)
    {
      v28 = @"Could not find overrideClient";
    }

    else
    {
      v28 = @"AirPlay not active";
    }

    v29 = [[MRCommandResult alloc] initWithWithSendError:22 description:v28];
LABEL_17:
    (*(*(a1 + 56) + 16))();

    goto LABEL_18;
  }

  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v32 = [NSNumber numberWithUnsignedInt:*(a1 + 72)];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10014FE64;
  v37[3] = &unk_1004BEDE0;
  v33 = *(a1 + 32);
  v41 = *(a1 + 72);
  v34 = *(a1 + 64);
  v37[4] = v33;
  v40 = v34;
  v38 = *(a1 + 48);
  v39 = *(a1 + 56);
  [v30 _createPlayerAndWaitForConnection:v31 command:v32 completion:v37];

LABEL_19:
}

void sub_10014FDC8(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v6 = [*(a1 + 48) copy];
  v5 = objc_retainBlock(v6);
  [*(*(a1 + 32) + 56) setObject:v5 forKeyedSubscript:*(a1 + 40)];
}

void sub_10014FE64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (v15)
  {
    v9 = [*(a1 + 32) designatedGroupLeader];
    v10 = [v9 isLocalDevice];

    if (v10)
    {
      v11 = *(a1 + 32);
      [objc_opt_class() _sendCommandPreview:*(a1 + 64) options:*(*(*(a1 + 56) + 8) + 40) playerPath:v7];
    }

    v12 = [[MRDRemoteControlCommand alloc] initWithCommandType:*(a1 + 64) playerPath:v7 unresolvedPlayerPath:*(a1 + 40) senderAppDisplayID:0 options:*(*(*(a1 + 56) + 8) + 40)];
    [v15 sendRemoteControlCommand:v12 withCompletionBlock:*(a1 + 48)];
  }

  else
  {
    v13 = [MRCommandResult alloc];
    v14 = [v8 localizedFailureReason];
    v12 = [v13 initWithWithSendError:1 description:v14];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10014FFB4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 <= 121)
  {
    if (v2)
    {
      if (v2 != 2)
      {
        goto LABEL_9;
      }

      v3 = +[MRDMediaRemoteServer server];
      v4 = [v3 nowPlayingServer];
      v5 = [v4 queryExistingPlayerPath:*(a1 + 32)];

      v6 = [v5 playerClient];
      LOBYTE(v4) = [v6 isPlaying];

      if (v4)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v7 = +[MRDStreamCapacityManager sharedManager];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100150138;
    v11[3] = &unk_1004BEE30;
    v12 = v8;
    v13 = *(a1 + 48);
    [v7 interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:v9 reason:v12 completion:v11];

    return;
  }

  if (v2 == 122 || v2 == 133)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = *(*(a1 + 48) + 16);

  v10();
}

uint64_t sub_100150138(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[NSString alloc] initWithFormat:@"Needed to interrupt %@ in order to continue with command", v3];

    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543874;
      v9 = @"originCommand";
      v10 = 2114;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100150254(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[MRCommandResult alloc] initWithError:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_100150860(uint64_t a1)
{
  if (*(a1 + 40) != 1 || *(a1 + 41) != 1)
  {
    return 0;
  }

  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 nowPlayingServer];
  v4 = [v3 localOriginClient];
  v5 = [v4 overrideClient];

  if (!v5)
  {
    v6 = MRLogCategoryConnections();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) _resolveReason:0];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ has no airplayClient", &v14, 0xCu);
    }
  }

  v8 = [v5 nowPlayingAirPlaySession];
  if (!v8)
  {
    v9 = MRLogCategoryConnections();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) _resolveReason:0];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ airplayClient has not nowPlayingSession", &v14, 0xCu);
    }
  }

  v11 = [v8 origin];
  v12 = [v11 isLocal];

  return v12;
}

void sub_100150B2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100150C74;
  v18[3] = &unk_1004BEE80;
  v19 = *(a1 + 40);
  v10 = objc_retainBlock(v18);
  v11 = v10;
  if (v9)
  {
    (v10[2])(v10, v7, 0, v9);
  }

  else
  {
    v12 = *(a1 + 32);
    v17 = 0;
    v13 = [v12 verifyCreatedPlayerPath:v8 forClient:v7 error:&v17];
    v14 = v17;
    if (v13)
    {
      v15 = v8;
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = v14;
    }

    (v11)[2](v11, v7, v15, v16);
  }
}

uint64_t sub_100150C74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001512EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = +[MRDMediaRemoteServer server];
    v10 = [v5 client];
    v8 = [v9 clientForPID:{objc_msgSend(v10, "processIdentifier")}];

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = [[NSError alloc] initWithMRError:4 format:{@"Could not find xpcClient for playerPath %@", v5}];
    }
  }

  v11 = _MRLogForCategory();
  v12 = [*(a1 + 32) hash];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v13, "createPlayerAndWaitForConnection", "", buf, 2u);
    }
  }

  if (!v7)
  {
    v23 = [v8 displayName];

    v14 = _MRLogForCategory();
    v24 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!v23)
    {
      if (v5)
      {
        if (!v24)
        {
          goto LABEL_30;
        }

        v36 = *(a1 + 32);
        v35 = *(a1 + 40);
        v18 = +[NSDate date];
        [v18 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v48 = v35;
        v49 = 2114;
        v50 = v36;
        v51 = 2114;
        v52 = v5;
        v53 = 2048;
        v54 = v37;
        v38 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v39 = v14;
        v40 = 42;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_30;
        }

        v45 = *(a1 + 32);
        v44 = *(a1 + 40);
        v18 = +[NSDate date];
        [v18 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v48 = v44;
        v49 = 2114;
        v50 = v45;
        v51 = 2048;
        v52 = v46;
        v38 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v39 = v14;
        v40 = 32;
      }

      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
      goto LABEL_29;
    }

    if (v5)
    {
      if (!v24)
      {
        goto LABEL_30;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v18 = [v8 displayName];
      v27 = +[NSDate date];
      [v27 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v48 = v25;
      v49 = 2114;
      v50 = v26;
      v51 = 2112;
      v52 = v18;
      v53 = 2114;
      v54 = v5;
      v55 = 2048;
      v56 = v28;
      v29 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v30 = v14;
      v31 = 52;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_30;
      }

      v42 = *(a1 + 32);
      v41 = *(a1 + 40);
      v18 = [v8 displayName];
      v27 = +[NSDate date];
      [v27 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v48 = v41;
      v49 = 2114;
      v50 = v42;
      v51 = 2112;
      v52 = v18;
      v53 = 2048;
      v54 = v43;
      v29 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v30 = v14;
      v31 = 42;
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);

    goto LABEL_29;
  }

  v14 = _MRLogForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v15)
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v48 = v16;
      v49 = 2114;
      v50 = v17;
      v51 = 2114;
      v52 = v7;
      v53 = 2114;
      v54 = v5;
      v55 = 2048;
      v56 = v19;
      v20 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v21 = v14;
      v22 = 52;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
LABEL_29:
    }
  }

  else if (v15)
  {
    v33 = *(a1 + 32);
    v32 = *(a1 + 40);
    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v48 = v32;
    v49 = 2114;
    v50 = v33;
    v51 = 2114;
    v52 = v7;
    v53 = 2048;
    v54 = v34;
    v20 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v21 = v14;
    v22 = 42;
    goto LABEL_19;
  }

LABEL_30:

  (*(*(a1 + 56) + 16))();
}

void sub_10015180C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100151884(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_3:
    v6();
    goto LABEL_6;
  }

  if (!v10)
  {
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  v7 = [*(a1 + 32) copy];
  v8 = [v10 createNowPlayingClient];
  [v7 setClient:v8];

  v9 = *(a1 + 56);
  [objc_opt_class() _createPlayerForClient:v10 playerPath:v7 deviceInfo:*(a1 + 40) completion:*(a1 + 48)];

LABEL_6:
}

void sub_100151A48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[NSThread currentThread];
  v11 = [v10 threadDictionary];
  v12 = [v11 objectForKeyedSubscript:@"migrateRequest"];

  if (v12)
  {
    v13 = [v12 startEvent:@"VerifyPlayer" role:3];
  }

  else
  {
    v13 = 0;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100151BF0;
  v22[3] = &unk_1004BEF20;
  v14 = v12;
  v23 = v14;
  v25 = v13;
  v24 = *(a1 + 40);
  v15 = objc_retainBlock(v22);
  v16 = *(a1 + 32);
  v21 = 0;
  v17 = [v16 verifyCreatedPlayerPath:v8 forClient:v7 error:&v21];
  v18 = v21;
  if (v17)
  {
    v19 = v8;
    v20 = v9;
  }

  else
  {
    v19 = 0;
    v20 = v18;
  }

  (v15[2])(v15, v7, v19, v20);
}

void sub_100151BF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 endEventWithID:*(a1 + 48) error:v8];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v11, v7, v8);
  }
}

void sub_100152178(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _MRLogForCategory();
  v11 = [*(a1 + 32) hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      LOWORD(v49) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "createPlayerAndWaitForCanBeNowPlaying", "", &v49, 2u);
    }
  }

  if (v9)
  {
    v13 = _MRLogForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 48)];
      v49 = 138544386;
      v50 = v15;
      v51 = 2114;
      v52 = v16;
      v53 = 2114;
      v54 = v9;
      v55 = 2114;
      v56 = v8;
      v57 = 2048;
      v58 = v18;
      v19 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v20 = v13;
      v21 = 52;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 48)];
      v49 = 138544130;
      v50 = v31;
      v51 = 2114;
      v52 = v32;
      v53 = 2114;
      v54 = v9;
      v55 = 2048;
      v56 = v33;
      v19 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v20 = v13;
      v21 = 42;
    }

    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, &v49, v21);
  }

  else
  {
    v22 = [v7 displayName];

    v13 = _MRLogForCategory();
    v23 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v8)
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v17 = [v7 displayName];
        v26 = +[NSDate date];
        [v26 timeIntervalSinceDate:*(a1 + 48)];
        v49 = 138544386;
        v50 = v24;
        v51 = 2114;
        v52 = v25;
        v53 = 2112;
        v54 = v17;
        v55 = 2114;
        v56 = v8;
        v57 = 2048;
        v58 = v27;
        v28 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v29 = v13;
        v30 = 52;
      }

      else
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        v41 = *(a1 + 32);
        v40 = *(a1 + 40);
        v17 = [v7 displayName];
        v26 = +[NSDate date];
        [v26 timeIntervalSinceDate:*(a1 + 48)];
        v49 = 138544130;
        v50 = v40;
        v51 = 2114;
        v52 = v41;
        v53 = 2112;
        v54 = v17;
        v55 = 2048;
        v56 = v42;
        v28 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v29 = v13;
        v30 = 42;
      }

      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &v49, v30);
    }

    else
    {
      if (v8)
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        v35 = *(a1 + 32);
        v34 = *(a1 + 40);
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:*(a1 + 48)];
        v49 = 138544130;
        v50 = v34;
        v51 = 2114;
        v52 = v35;
        v53 = 2114;
        v54 = v8;
        v55 = 2048;
        v56 = v36;
        v37 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v38 = v13;
        v39 = 42;
      }

      else
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        v44 = *(a1 + 32);
        v43 = *(a1 + 40);
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:*(a1 + 48)];
        v49 = 138543874;
        v50 = v43;
        v51 = 2114;
        v52 = v44;
        v53 = 2048;
        v54 = v45;
        v37 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v38 = v13;
        v39 = 32;
      }

      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, &v49, v39);
    }
  }

LABEL_25:
  (*(*(a1 + 56) + 16))();
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v46 = +[NSNotificationCenter defaultCenter];
    [v46 removeObserver:*(*(*(a1 + 64) + 8) + 40)];

    v47 = *(*(a1 + 64) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = 0;
  }
}

void sub_100152674(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100152708(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying;
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1001529BC;
    v29 = &unk_1004BEF98;
    v11 = v8;
    v30 = v11;
    v32 = *(a1 + 48);
    v12 = v7;
    v31 = v12;
    v13 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:&v26];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = +[MRDMediaRemoteServer server];
    v17 = [v16 nowPlayingServer];
    v18 = [v17 queryExistingPlayerPath:v11];

    v19 = [v18 playerClient];
    LODWORD(v17) = [v19 canBeNowPlayingPlayer];

    if (v17)
    {
      v20 = *(a1 + 48);
      v21 = [v18 playerClient];
      v22 = [v21 playerPath];
      (*(v20 + 16))(v20, v12, v22, 0);
    }

    else
    {
      v23 = [NSString alloc];
      v21 = [v23 initWithFormat:@"Waiting for %@ to set canBeNowPlayingPlayer=YES", v11, v26, v27, v28, v29, v30];
      v22 = _MRLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        *buf = 138543874;
        v34 = v24;
        v35 = 2114;
        v36 = v25;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }
  }
}

void sub_1001529BC(void *a1, void *a2)
{
  v3 = [a2 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  if ([v6 isEqual:a1[4]])
  {
    v4 = a1[5];
    v5 = a1[4];
    (*(a1[6] + 16))();
  }
}

void sub_100152E40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = [*(a1 + 32) hash];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v41) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "CreatePlayer", "", &v41, 2u);
    }
  }

  v10 = *(a1 + 40);
  v11 = _MRLogForCategory();
  v12 = v11;
  if (v5 && !v6)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v41 = 138544386;
      v42 = @"createPlayer";
      v43 = 2114;
      v44 = v14;
      v45 = 2112;
      v46 = v5;
      v47 = 2114;
      v48 = v15;
      v49 = 2048;
      v50 = v17;
      v18 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v19 = v12;
      v20 = 52;
      goto LABEL_19;
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    v32 = *(a1 + 32);
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 48)];
    v41 = 138544130;
    v42 = @"createPlayer";
    v43 = 2114;
    v44 = v32;
    v45 = 2112;
    v46 = v5;
    v47 = 2048;
    v48 = v33;
    v18 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_18;
  }

  if (v6)
  {
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v41 = 138544386;
      v42 = @"createPlayer";
      v43 = 2114;
      v44 = v22;
      v45 = 2114;
      v46 = v6;
      v47 = 2114;
      v48 = v23;
      v49 = 2048;
      v50 = v24;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v26 = v12;
      v27 = 52;
      goto LABEL_23;
    }

    if (v21)
    {
      v34 = *(a1 + 32);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v41 = 138544130;
      v42 = @"createPlayer";
      v43 = 2114;
      v44 = v34;
      v45 = 2114;
      v46 = v6;
      v47 = 2048;
      v48 = v35;
      v25 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v26 = v12;
      v27 = 42;
LABEL_23:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, &v41, v27);
      goto LABEL_20;
    }
  }

  else
  {
    v28 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v41 = 138544130;
      v42 = @"createPlayer";
      v43 = 2114;
      v44 = v29;
      v45 = 2114;
      v46 = v30;
      v47 = 2048;
      v48 = v31;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_18:
      v19 = v12;
      v20 = 42;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v41, v20);
LABEL_20:

      goto LABEL_26;
    }

    if (v28)
    {
      v36 = *(a1 + 32);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v41 = 138543874;
      v42 = @"createPlayer";
      v43 = 2114;
      v44 = v36;
      v45 = 2048;
      v46 = v37;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v12;
      v20 = 32;
      goto LABEL_19;
    }
  }

LABEL_26:

  v38 = *(a1 + 56);
  if (v38)
  {
    v39 = [v5 description];
    [v38 addEventOutput:v39 withKey:@"playerPath" toEventID:*(a1 + 72)];

    [*(a1 + 56) endEventWithID:*(a1 + 72) error:v6];
  }

  v40 = *(a1 + 64);
  if (v40)
  {
    (*(v40 + 16))(v40, v5, v6);
  }
}

void sub_1001532F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = MRCreatePlayerPathFromXPCMessage();
  (*(v3 + 16))(v3, v5, v4);
}

id sub_100153498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = MRCreateXPCMessage();
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v3);
    MRAddProtobufToXPCMessage();
  }

  MRAddPlayerPathToXPCMessage();

  return v5;
}

void sub_10015352C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = MRCreateProtobufFromXPCMessage();
    v6 = [v7 error];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

void sub_1001537E8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100153860(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v6 = (*(a1[6] + 16))();
    [v8 takeAssertion:2 forReason:a1[4] duration:30.0];
    v7 = [v8 connection];
    [v7 sendMessage:v6 queue:*(a1[5] + 96) reply:a1[7]];
  }
}

void sub_100153C54(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = MRCreatePlaybackQueueFromXPCMessage();
  }

  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_100153E4C(uint64_t a1)
{
  v1 = [[MRPlaybackSessionRequestMessage alloc] initWithRequest:*(a1 + 32) forPlayerPath:*(a1 + 40)];

  return v1;
}

uint64_t sub_100153E90(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10015404C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) startEvent:@"InterruptBestStreamIfNecessary" role:3];
    v6 = +[MRDStreamCapacityManager sharedManager];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) requestID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001541C4;
    v11[3] = &unk_1004BF128;
    v12 = *(a1 + 32);
    v16 = v5;
    v10 = *(a1 + 40);
    v9 = v10.i64[0];
    v13 = vextq_s8(v10, v10, 8uLL);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v6 interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:v7 reason:v8 completion:v11];
  }
}

void sub_1001541C4(uint64_t a1)
{
  [*(a1 + 32) endEventWithID:*(a1 + 72)];
  v2 = [*(a1 + 32) startEvent:@"SendPlaybackSession" role:3];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [v4 _resolveReason:@"_handlePlaybackSessionMigrateRequest"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10015432C;
  v9[3] = &unk_1004BF0B0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100154394;
  v6[3] = &unk_1004BF100;
  v8 = v2;
  v7 = *(a1 + 64);
  [v4 sendMessageWithType:0x400000000000007 playerPath:v3 timeout:v5 reason:v9 factory:v6 completion:30.0];
}

id sub_10015432C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlaybackSessionMigrateRequestMessage alloc] initWithPlaybackSession:*(a1 + 32) request:*(a1 + 40) forPlayerPath:v3];

  return v4;
}

void sub_100154394(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 request];
  [v6 endEventWithID:*(a1 + 40) error:v5];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v9 request];
    (*(v7 + 16))(v7, v8, v5);
  }
}

id sub_100154590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlaybackSessionMigrateBeginMessage alloc] initWithRequest:*(a1 + 32) playerPath:v3];

  return v4;
}

uint64_t sub_1001545F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1001547A8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlaybackSessionMigrateEndMessage alloc] initWithRequest:a1[4] error:a1[5] setPlaybackSessionCommandStatus:a1[6] playerPath:v3];

  return v4;
}

uint64_t sub_100154814(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1001549AC(void *a1)
{
  v1 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:a1[4] playerPath:a1[5] setPlaybackSessionCommandID:a1[6]];

  return v1;
}

uint64_t sub_1001549F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100154E14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    LODWORD(v4) = *(a1 + 80);
    v13 = [NSNumber numberWithFloat:v4];

    v14 = *(a1 + 32);
    v6 = _MRLogForCategory();
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v25 = *(a1 + 32);
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v42 = v24;
        v43 = 2114;
        v44 = v9;
        v45 = 2114;
        v46 = v25;
        v47 = 2048;
        v48 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v6;
        v29 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v11 = +[NSDate date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v42 = v33;
        v43 = 2114;
        v44 = v9;
        v45 = 2048;
        v46 = v34;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v6;
        v29 = 32;
      }

      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_20;
    }

    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v17) = *(a1 + 80);
      v11 = [NSNumber numberWithFloat:v17];
      v18 = *(a1 + 32);
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v16;
      v43 = 2114;
      v44 = v9;
      v45 = 2112;
      v46 = v11;
      v47 = 2114;
      v48 = v18;
      v49 = 2048;
      v50 = v20;
      v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v31) = *(a1 + 80);
      v11 = [NSNumber numberWithFloat:v31];
      v19 = +[NSDate date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v42 = v30;
      v43 = 2114;
      v44 = v9;
      v45 = 2112;
      v46 = v11;
      v47 = 2048;
      v48 = v32;
      v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

    goto LABEL_20;
  }

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v10 = *(a1 + 32);
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v8;
      v43 = 2114;
      v44 = v9;
      v45 = 2114;
      v46 = v3;
      v47 = 2114;
      v48 = v10;
      v49 = 2048;
      v50 = v12;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v7)
  {
    sub_1003AACA8(a1, v3, v6);
  }

LABEL_21:

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100155270;
  v38[3] = &unk_1004B8B50;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v39 = v3;
  v40 = v36;
  v37 = v3;
  dispatch_async(v35, v38);
}

void sub_100155284(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 64);
  v3 = [*(*(a1 + 32) + 40) setVolume:*(a1 + 40) outputDeviceUID:*(a1 + 48) details:a2];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_1001552F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_10015572C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = *(a1 + 80);
    v13 = MRMediaRemoteVolumeControlAdjustmentDescription();

    v14 = *(a1 + 32);
    v5 = _MRLogForCategory();
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v27 = *(a1 + 32);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v44 = v26;
        v45 = 2114;
        v46 = v8;
        v47 = 2114;
        v48 = v27;
        v49 = 2048;
        v50 = v28;
        v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v30 = v5;
        v31 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v35 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v44 = v35;
        v45 = 2114;
        v46 = v8;
        v47 = 2048;
        v48 = v36;
        v29 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v30 = v5;
        v31 = 32;
      }

      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      goto LABEL_20;
    }

    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) requestID];
      v18 = *(a1 + 80);
      v19 = MRMediaRemoteVolumeControlAdjustmentDescription();
      v20 = *(a1 + 32);
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v44 = v16;
      v45 = 2114;
      v46 = v17;
      v47 = 2112;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      v51 = 2048;
      v52 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v5;
      v25 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v32 = *(a1 + 40);
      v17 = [*(a1 + 48) requestID];
      v33 = *(a1 + 80);
      v19 = MRMediaRemoteVolumeControlAdjustmentDescription();
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v44 = v32;
      v45 = 2114;
      v46 = v17;
      v47 = 2112;
      v48 = v19;
      v49 = 2048;
      v50 = v34;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v5;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_21;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v44 = v7;
      v45 = 2114;
      v46 = v8;
      v47 = 2114;
      v48 = v3;
      v49 = 2114;
      v50 = v9;
      v51 = 2048;
      v52 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    sub_1003AACA8(a1, v3, v5);
  }

LABEL_21:

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100155B80;
  v40[3] = &unk_1004B8B50;
  v37 = *(a1 + 64);
  v38 = *(a1 + 72);
  v41 = v3;
  v42 = v38;
  v39 = v3;
  dispatch_async(v37, v40);
}

void sub_100155B94(void *a1)
{
  v2 = [*(a1[4] + 40) adjustVolume:a1[8] outputDeviceUID:a1[5] details:a1[6]];
  (*(a1[7] + 16))();
}

uint64_t sub_100155C08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_10015603C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = [NSNumber numberWithBool:*(a1 + 80)];

    v13 = *(a1 + 32);
    v5 = _MRLogForCategory();
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v22 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v23 = *(a1 + 32);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v39 = v22;
        v40 = 2114;
        v41 = v8;
        v42 = 2114;
        v43 = v23;
        v44 = 2048;
        v45 = v24;
        v25 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v26 = v5;
        v27 = 42;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v30 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v39 = v30;
        v40 = 2114;
        v41 = v8;
        v42 = 2048;
        v43 = v31;
        v25 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v26 = v5;
        v27 = 32;
      }

      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_20;
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [NSNumber numberWithBool:*(a1 + 80)];
      v16 = *(a1 + 32);
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v39 = v15;
      v40 = 2114;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2114;
      v45 = v16;
      v46 = 2048;
      v47 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v5;
      v21 = 52;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v28 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [NSNumber numberWithBool:*(a1 + 80)];
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v39 = v28;
      v40 = 2114;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2048;
      v45 = v29;
      v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v20 = v5;
      v21 = 42;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);

    goto LABEL_20;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v39 = v7;
      v40 = 2114;
      v41 = v8;
      v42 = 2114;
      v43 = v3;
      v44 = 2114;
      v45 = v9;
      v46 = 2048;
      v47 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    sub_1003AACA8(a1, v3, v5);
  }

LABEL_21:

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100156498;
  v35[3] = &unk_1004B8B50;
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v36 = v3;
  v37 = v33;
  v34 = v3;
  dispatch_async(v32, v35);
}

void sub_1001564AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) muteVolume:*(a1 + 64) outputDeviceUID:*(a1 + 40) details:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100156520(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_100156648(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v3;
    (*(v4 + 16))();
  }

  else
  {
    v6 = 0;
    v5 = [*(a1 + 32) outputContext];
    [v5 modifyTopologyWithRequest:*(a1 + 40) withReplyQueue:*(a1 + 48) completion:*(a1 + 56)];
  }

  v3 = v6;
LABEL_6:
}

void sub_100156B84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 80);
  v5 = qos_class_self();
  if (!v3 && v4 < v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"qos: %u->%u", *(a1 + 80), qos_class_self()];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v36 = v8;
      v37 = 2114;
      v38 = v9;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_10:
    v18 = *(a1 + 48);
    v11 = _MRLogForCategory();
    v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v36 = v20;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      v24 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v25 = v11;
      v26 = 42;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_19;
      }

      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      v39 = 2048;
      v40 = v29;
      v24 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v25 = v11;
      v26 = 32;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_16;
  }

  v10 = *(a1 + 48);
  v11 = _MRLogForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v36 = v13;
    v37 = 2114;
    v38 = v14;
    v39 = 2114;
    v40 = v3;
    v41 = 2114;
    v42 = v15;
    v43 = 2048;
    v44 = v17;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_16:

    goto LABEL_19;
  }

  if (v12)
  {
    sub_1003AAD4C(a1, v3, v11);
  }

LABEL_19:

  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100156F10;
    block[3] = &unk_1004B8B50;
    v34 = v30;
    v33 = v3;
    dispatch_async(v31, block);
  }
}

void sub_100156F24(uint64_t a1)
{
  if ([*(a1 + 32) connectionState] == 2)
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3[15])
    {
      v4 = _MRLogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        *buf = 138543874;
        v31 = v5;
        v32 = 2114;
        v33 = v6;
        v34 = 2112;
        v35 = @"Previously Disconnected";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v7 = *(*(a1 + 32) + 120);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v8 = [v3 designatedGroupLeader];
      if (v8 && (v9 = v8, [*(a1 + 56) routingContextID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
      {
        v11 = [*(a1 + 56) routingContextID];
        v12 = [v11 UTF8String];
        v13 = (v12[1] << 16) | (*v12 << 24) | (v12[2] << 8);
        v14 = v12[3];

        v15 = [MROrigin alloc];
        v16 = [*(a1 + 32) name];
        v17 = [v15 initWithIdentifier:v13 | v14 type:1 displayName:v16];

        [v17 setLocallyHosted:1];
        v18 = +[MRDMediaRemoteServer server];
        v19 = [v18 nowPlayingServer];
        [v19 registerOrigin:v17 deviceInfo:*(a1 + 56)];

        v20 = +[MRNowPlayingOriginClientManager sharedManager];
        v21 = [v20 originClientForOrigin:v17];

        if (v21)
        {
          [*(a1 + 32) setOrigin:v17];
          v28 = 0;
        }

        else
        {
          v28 = [[NSError alloc] initWithMRError:5 description:@"Failed to fetch originClientState"];
        }

        v24 = v28;
      }

      else
      {
        v22 = [*(a1 + 56) routingContextID];

        v23 = [NSError alloc];
        if (v22)
        {
          v24 = [v23 initWithMRError:32 description:@"Called connect without a group leader"];
        }

        else
        {
          v24 = [v23 initWithMRError:32 format:@"Invalid routingContextID detected"];
        }
      }

      v29 = v24;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      [*(a1 + 32) setConnectionState:v25];
      if (v29)
      {
        v26 = [v29 userInfo];
        v27 = [v26 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
        [MSVAutoBugCapture snapshotWithDomain:@"MediaRemote" type:@"Multiplayer" subType:@"OutputContextExternalDevice.connect" context:v27 triggerThresholdValues:0 events:0 completion:0];
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

id sub_100157664(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uid];
  v5 = [v3 containsUID:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[MRDeviceInfo alloc] initWithOutputDevice:v3];
  }

  return v6;
}

void sub_100157828(uint64_t a1)
{
  v2 = [*(a1 + 32) mr_errorByEnvelopingWithMRError:128];
  v3 = *(a1 + 40);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
  v5 = v2;

  [*(a1 + 40) cleanUp];
  [*(a1 + 40) setConnectionState:3];
}

void sub_1001579C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSError alloc] initWithMRError:3];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t sub_100157AE0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100157CEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157DC0;
  block[3] = &unk_1004B8190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100157ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001584C0(uint64_t a1, void *a2)
{
  v3 = [a2 outputDevices];
  v4 = [v3 msv_firstWhere:&stru_1004BF300];

  if (v4)
  {
    v5 = [v4 clusterType] == *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100158540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRLogCategoryConnections();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v3;
      v7 = "%{public}@ Found endpoint containing local in discovery that matches cluster type: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v15 = v11;
    v7 = "%{public}@ Timed out waiting for local device to appear with expected clusterType in discovery";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }

  v12 = [[NSError alloc] initWithMRError:32 format:{@"Local device changed clusterType to %u", *(a1 + 40)}];
  [*(a1 + 32) disconnect:v12];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MRDAVOutputContextExternalDeviceDiscoveryLocalClusterTypeDidChangeNotification" object:*(a1 + 32)];
}

void sub_1001588EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100158904(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) outputDevices];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001589C8;
  v6[3] = &unk_1004B8A40;
  v7 = *(a1 + 40);
  v3 = [v2 mr_first:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100158C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 88));
  v4 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v5 = *(a1 + 32);
  v6 = _MRLogForCategory();
  v7 = v6;
  if (!v3)
  {
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v10 = [*(a1 + 48) requestID];
      v16 = *(a1 + 32);
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v10;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v7;
      v20 = 42;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v10 = [*(a1 + 48) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v10;
      v33 = 2048;
      v34 = v22;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v7;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) requestID];
      v11 = *(a1 + 32);
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v30 = v9;
      v31 = 2114;
      v32 = v10;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v11;
      v37 = 2048;
      v38 = v13;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:
    }
  }

  else if (v8)
  {
    sub_1003AACA8(a1, v3, v7);
  }

LABEL_14:

  v23 = *(*(a1 + 32) + 96);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100158FB0;
  v26[3] = &unk_1004B68F0;
  v27 = v3;
  v28 = v4;
  v24 = v4;
  v25 = v3;
  dispatch_async(v23, v26);
}

void sub_100158FB0(uint64_t a1)
{
  v2 = [*(a1 + 32) mr_errorByEnvelopingWithMRError:134];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001590C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = *(v2 + 32);
    if (!v3)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(*(a1 + 32) + 32);
    }

    v7 = [*(a1 + 64) copy];
    [v3 addObject:v7];

    if ([*(*(a1 + 32) + 32) count] < 2)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100159648;
      v40[3] = &unk_1004B9FE8;
      v40[4] = *(a1 + 32);
      v15 = objc_retainBlock(v40);
      if ((v15[2])())
      {
        v16 = +[NSThread currentThread];
        v17 = [v16 threadDictionary];
        v18 = [v17 objectForKeyedSubscript:@"migrateRequest"];

        if (v18)
        {
          v19 = [v18 startEvent:@"ModifyTopology" role:3];
        }

        else
        {
          v19 = 0;
        }

        objc_initWeak(buf, *(a1 + 32));
        v27 = [MRGroupTopologyModificationRequest alloc];
        v28 = *(a1 + 48);
        v41 = *(*(a1 + 32) + 48);
        v29 = [NSArray arrayWithObjects:&v41 count:1];
        v30 = [v27 initWithRequestDetails:v28 type:3 outputDevices:v29];

        v31 = *(a1 + 32);
        v32 = *(v31 + 72);
        v33 = *(v31 + 88);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100159708;
        v35[3] = &unk_1004BF370;
        v34 = v18;
        v36 = v34;
        v39 = v19;
        objc_copyWeak(&v38, buf);
        v37 = *(a1 + 56);
        [v32 modifyTopologyWithRequest:v30 withReplyQueue:v33 completion:v35];

        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = _MRLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 40);
          v22 = [*(a1 + 48) requestID];
          *buf = 138543874;
          v43 = v21;
          v44 = 2114;
          v45 = v22;
          v46 = 2112;
          v47 = @"Ignoring commit, not neccessary...";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v23 = _MRLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 40);
          v25 = [*(a1 + 48) requestID];
          v26 = [*(*(a1 + 32) + 72) description];
          *buf = 138543874;
          v43 = v24;
          v44 = 2114;
          v45 = v25;
          v46 = 2112;
          v47 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 48) requestID];
        *buf = 138543874;
        v43 = v9;
        v44 = 2114;
        v45 = v10;
        v46 = 2112;
        v47 = @"Already commiting outputDevice...";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) requestID];
      *buf = 138543874;
      v43 = v12;
      v44 = 2114;
      v45 = v13;
      v46 = 2112;
      v47 = @"Nil designatedGroupLeader";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v14 = *(*(a1 + 32) + 120);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10015961C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_100159648(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = MRMediaRemoteCopyDeviceUID();
  v4 = [v2 containsUID:v3];

  v5 = [*(*(a1 + 32) + 72) outputDevices];
  v6 = [v5 count];

  if (v4)
  {
    return v6 == 0;
  }

  v8 = [*(*(a1 + 32) + 72) outputDevices];
  v7 = [v8 containsObject:*(*(a1 + 32) + 48)] ^ 1;

  return v7;
}

void sub_100159708(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3 && (v5 = [v3 isInformational], v4 = v8, (v5 & 1) == 0))
  {
    [*(a1 + 32) endEventWithID:*(a1 + 56) error:v8];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained disconnect:v8];
    }
  }

  else
  {
    [*(a1 + 32) endEventWithID:{*(a1 + 56), v4}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10015A240(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10015A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10015AAE0(uint64_t a1, void *a2)
{
  v3 = [a2 origin];
  v4 = [*(a1 + 32) originClientForOrigin:v3];

  return v4;
}

BOOL sub_10015AB44(id a1, MRAVEndpoint *a2)
{
  v2 = [(MRAVEndpoint *)a2 outputDevices];
  v3 = [v2 msv_firstWhere:&stru_1004BF460];
  v4 = v3 != 0;

  return v4;
}

BOOL sub_10015ABB4(id a1, MRDNowPlayingOriginClient *a2)
{
  v2 = [(MRDNowPlayingOriginClient *)a2 deviceInfo];
  v3 = [v2 containsLocalDevice];

  return v3;
}

id sub_10015ABF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableString alloc];
  v5 = [v3 origin];
  v6 = [v5 identifier];
  v7 = [*(a1 + 32) name];
  v8 = [*(a1 + 32) deviceUID];
  v9 = [v4 initWithFormat:@"origin-%ld %@ (%@)", v6, v7, v8];

  v10 = [*(a1 + 32) groupedDevices];
  v11 = [v10 count];

  if (v11)
  {
    [v9 appendString:@" + "];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 32) groupedDevices];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 name];
        v19 = [v17 deviceUID];
        [v9 appendFormat:@"%@ (%@) + ", v18, v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v20 = [NSString alloc];
  v21 = [v3 activePlayerPath];
  v22 = [v20 initWithFormat:@"%@ (%@)", v21, v9];

  return v22;
}

id sub_10015B0B4(void *a1, const char *a2)
{
  v4 = *(v2 + 56);

  return [a1 timeIntervalSinceDate:v4];
}

void sub_10015B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10015B3B4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 setError:a3];
  v7 = [v6 connection];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[5];

  return dispatch_semaphore_signal(v10);
}

uint64_t sub_10015BBEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _canSendMessage];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10015BC30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onCalloutQueue_notifyStatusDidChange:1];
}

void sub_10015BF78(uint64_t a1)
{
  [*(a1 + 32) invalidateWithReason:@"task finished: connection successfully resumed"];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    [*(a1 + 48) timeIntervalSinceNow];
    v5 = 138412546;
    v6 = v3;
    v7 = 2048;
    v8 = -v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Resumed connection %@ in %lf seconds", &v5, 0x16u);
  }
}

void sub_10015C750(id a1, MRGroupTopologyModificationRequest *a2, MRAVConcreteOutputContext *a3, OS_dispatch_queue *a4, id a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[MRDOutputContextModification alloc] initWithRequest:v11];

  [(MRDOutputContextModification *)v12 modifyWithOutputContext:v10 queue:v9 completion:v8];
}

void sub_10015C804(uint64_t a1)
{
  [*(a1 + 32) _updateSystemRouteDiscoveryMode];
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportMultiplayerHost];

  if ((v3 & 1) == 0)
  {
    out_token = 0;
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_10015C8E8;
    v7 = &unk_1004BF588;
    v8 = *(a1 + 32);
    notify_register_dispatch("com.apple.airplay.active", &out_token, &_dispatch_main_q, &v4);
    [*(a1 + 32) setAirplayActive:{MRMediaRemoteGetIsAirPlayActive(), v4, v5, v6, v7}];
  }
}

id sub_10015C8E8(uint64_t a1)
{
  IsAirPlayActive = MRMediaRemoteGetIsAirPlayActive();
  v3 = *(a1 + 32);

  return [v3 setAirplayActive:IsAirPlayActive];
}

id sub_10015DFD8(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003AAE00(v2);
    }

    return [*(v2 + 48) _clearPasswordForOutputDevice:*(v2 + 32)];
  }

  return result;
}

uint64_t sub_10015E03C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] User cancelled authorization request for %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) cancel];
  return notify_post("com.apple.mediaplayer.airPlayPasswordAlertDidCancel");
}

void sub_10015E0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) name];
      *buf = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Responding to authorization request using user entered password for %{public}@: %@", buf, 0x16u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10015E29C;
    v9[3] = &unk_1004BF5B0;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v11 = v7;
    v12 = v8;
    v13 = v3;
    v14 = *(a1 + 32);
    [v6 respondWithAuthorizationToken:v13 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10015E29C(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Authorization token accepted for %{public}@", &v9, 0xCu);
    }

    if (*(a1 + 40) == AVOutputDeviceAuthorizationTokenTypePassword)
    {
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Updating keychain with new passcode for %{public}@", &v9, 0xCu);
      }

      [*(a1 + 48) _storePassword:*(a1 + 56) forOutputDevice:*(a1 + 64)];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003AAEAC(a1);
    }
  }
}

void sub_10015E9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_10015EA08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] AV reconnaissance session found route with UID %{public}@ : %{public}@", &v16, 0x16u);
    }

    v10 = [v5 dictionary];
    [WeakRetained setPickedRoute:v10 withPassword:*(a1 + 40) options:*(a1 + 72)];

    v11 = 0;
  }

  else
  {
    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v13)
      {
        sub_1003AAF5C(a1);
      }

      v11 = [v6 code];
    }

    else
    {
      if (v13)
      {
        sub_1003AAFD0(a1);
      }

      v11 = 1;
    }
  }

  v14 = objc_loadWeakRetained((a1 + 64));
  v15 = v14;
  if (WeakRetained && v14)
  {
    [WeakRetained[4] removeObject:v14];
  }

  sub_10000F9E4(*(a1 + 48), v11);
}

void sub_10015F5B4(uint64_t a1)
{
  v3 = [*(a1 + 32) _createAirPlaySecuritySettings];
  ExternalRepresentation = MRAVAirPlaySecuritySettingsCreateExternalRepresentation();
  sub_10001673C(*(a1 + 40), "MRXPC_AIRPLAY_SEC_SETTINGS_DATA_KEY", ExternalRepresentation, 0);
}

void sub_10015F6F0(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportsNativeThirdPartyApps];

  if (!v3 || ([*(a1 + 32) entitlements] & 0x8000) != 0)
  {
    v6 = [*(*(a1 + 40) + 160) xpcEndpoint];
    v7 = 0;
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB0F4((a1 + 32));
    }

    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1003AB190((a1 + 32), v5);
    }

    v6 = 0;
    v7 = 130;
  }

  v8 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015F844;
  v10[3] = &unk_1004BDB98;
  v11 = v6;
  v12 = v7;
  v9 = v6;
  sub_100008278(v8, v10);
}

void sub_10015F844(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  v4 = [v3 _endpoint];
  xpc_dictionary_set_value(xdict, "MRXPC_CUSTOM_XPC_ENDPOINT_KEY", v4);

  xpc_dictionary_set_uint64(xdict, "MRXPC_ERROR_CODE_KEY", *(a1 + 40));
}

void sub_10015FB0C(uint64_t a1)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015FC94;
  v11[3] = &unk_1004B6FC0;
  v12 = *(a1 + 32);
  v2 = objc_retainBlock(v11);
  v3 = *(a1 + 32);
  v4 = MRCreateProtobufFromXPCMessage();
  if (!*(*(a1 + 40) + 168))
  {
    v9 = [NSError alloc];
    v10 = @"SystemEndpointController is not supported on platform";
LABEL_6:
    v8 = [v9 initWithMRError:6 format:v10];
    (v2[2])(v2, v8);
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [NSError alloc];
    v10 = @"Malformed xpc message types";
    goto LABEL_6;
  }

  v5 = [*(a1 + 48) bundleIdentifier];
  v6 = [v4 request];
  [v6 setClientBundleIdentifier:v5];

  v7 = *(*(a1 + 40) + 168);
  v8 = [v4 request];
  [v7 updateSystemEndpointForRequest:v8 completion:v2];
LABEL_7:
}

void sub_10015FC94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015FD2C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_10015FE08(uint64_t a1)
{
  v2 = [*(a1 + 32) isEntitledFor:0x10000];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(*(a1 + 48) + 168) activeOutputDeviceUID:{xpc_dictionary_get_int64(v3, "MRXPC_ROUTE_OPTIONS_KEY")}];
    v5 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10015FEF8;
    v7[3] = &unk_1004B6E08;
    v8 = v4;
    v6 = v4;
    sub_100008278(v5, v7);
  }

  else
  {

    sub_10000F9E4(v3, 0x82u);
  }
}

void sub_10015FFDC(uint64_t a1)
{
  v2 = [*(a1 + 32) isEntitledFor:0x8000];
  v3 = *(a1 + 40);
  if (v2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001600A0;
    v6[3] = &unk_1004B6E30;
    v4 = v3;
    v5 = *(a1 + 48);
    v7 = v4;
    v8 = v5;
    sub_100008278(v4, v6);
  }

  else
  {

    sub_10000F9E4(v3, 0x82u);
  }
}

void sub_1001600A0(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = MRCreateStringFromXPCMessage();
  v5 = [*(*(a1 + 40) + 160) endpointForDeviceUID:v4];
  if (v5)
  {
    MRAddDistantEndpointToXPCMessage();
  }

  v6 = *(a1 + 32);
  MRAddErrorToXPCMessage();
}

void sub_1001602E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016037C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_10016037C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPromptForRouteAuthorizationResponseMessage alloc] initWithResponse:*(a1 + 32)];
  MRAddProtobufToXPCMessage();
}

uint64_t sub_100160560(uint64_t a1)
{
  LocalGroupContainsDiscoverableGroupLeader = MRMediaRemoteGetLocalGroupContainsDiscoverableGroupLeader();
  v3 = [*(a1 + 32) airplayActive];
  v4 = 1;
  if (LocalGroupContainsDiscoverableGroupLeader)
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return sub_10000BEE0(v6, "MRXPC_AIRPLAY_LEADER_TYPE", 1, v5, 0);
}

void sub_1001606F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateStringFromXPCMessage();
  v4 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001607D4;
  v5[3] = &unk_1004B6FC0;
  v6 = *(a1 + 32);
  [v4 setOutputDevices:0 initiator:v3 withReplyQueue:&_dispatch_main_q completion:v5];
}

void sub_1001607D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016086C;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_100160A14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreatePropertyListFromXPCMessage();
  v4 = *(a1 + 32);
  v5 = MRCreateRequestDetailsFromXPCMessage();
  if (!v5)
  {
    v6 = [MRRequestDetails alloc];
    v7 = MRRequestDetailsInitiatorInfer;
    v8 = [*(a1 + 40) bundleIdentifier];
    v5 = [v6 initWithInitiator:v7 requestID:0 reason:@"RoutingServer.handleCreateGroupWithDevices" userInitiated:0 originatingBundleID:v8];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100160B48;
  v9[3] = &unk_1004BF668;
  v10 = *(a1 + 32);
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:v3 timeout:v5 details:v9 groupUIDCompletion:30.0];
}

void sub_100160B48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100160C0C;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100008278(v7, v10);
}

void sub_100160C0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  MRAddClientErrorToXPCMessage();
  v4 = *(a1 + 40);
  MRAddStringToXPCMessage();
}

void sub_100160D3C(uint64_t a1)
{
  [*(a1 + 32) setDeclaringAirplayActive:1];
  v2 = *(*(a1 + 40) + 120);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100160DF4;
  v5[3] = &unk_1004BF6B0;
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  [v2 startNowPlayingSessionWithCompletion:v5];
}

void sub_100160DF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  v9 = [v6 origin];
  v10 = [v8 originClientForOrigin:v9];
  v11 = [v10 deviceInfo];

  v12 = [v11 routingContextID];

  if (v12)
  {
    if (!v5)
    {
LABEL_5:
      v14 = +[MRUserSettings currentSettings];
      v15 = [v14 forceNowPlayingSessionFailure];

      if (v15)
      {
        v5 = [[NSError alloc] initWithMRError:6];
        if (v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v5 = 0;
      }

      v19 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [[NSError alloc] initWithMRError:32];

    v5 = v13;
    if (!v13)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  v16 = [MRPlayerPath alloc];
  v17 = +[MROrigin localOrigin];
  v18 = [v16 initWithOrigin:v17 client:0 player:0];

  v19 = 0;
  v6 = v18;
LABEL_10:
  [*(a1 + 32) setNowPlayingAirPlaySession:v6];
  v20 = *(a1 + 40);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100161104;
  v31 = &unk_1004B7508;
  v21 = v5;
  v32 = v21;
  v22 = v11;
  v33 = v22;
  v23 = v6;
  v34 = v23;
  sub_100008278(v20, &v28);
  if ((v19 & 1) == 0)
  {
    v24 = +[MRUserSettings currentSettings];
    v25 = [v24 startNowPlayingSessionABC];

    if (v25)
    {
      v26 = [*(*(a1 + 48) + 120) description];
      v35 = v26;
      v27 = [NSArray arrayWithObjects:&v35 count:1];
      [MSVAutoBugCapture snapshotWithDomain:@"MediaRemote" type:&stru_1004D2058 subType:@"Routing" context:@"StartNowPlayingSession" triggerThresholdValues:0 events:v27 completion:&stru_1004BF688, v28, v29, v30, v31, v32, v33];
    }
  }
}

void sub_100161104(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  MRAddClientErrorToXPCMessage();
  v4 = a1[5];
  MRAddDeviceInfoToXPCMessage();
  v5 = a1[6];
  MRAddPlayerPathToXPCMessage();
}

uint64_t sub_10016123C(uint64_t a1)
{
  [*(a1 + 32) setDeclaringAirplayActive:0];
  [*(a1 + 32) setNowPlayingAirPlaySession:0];
  [*(*(a1 + 40) + 120) stopNowPlayingSesion];
  v2 = *(a1 + 48);

  return sub_100008278(v2, 0);
}

uint64_t sub_100161390(uint64_t a1)
{
  [*(a1 + 32) setDeclaringAirplayActive:1];
  [*(a1 + 32) setNowPlayingAirPlaySession:*(a1 + 40)];
  [*(*(a1 + 48) + 120) resumeNowPlayingSesion];
  v2 = *(a1 + 56);

  return sub_100008278(v2, 0);
}

void sub_1001614A4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.routingServer.getDeviceUID", v3);
  v2 = qword_100529570;
  qword_100529570 = v1;
}

void sub_100161508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRDAVOutputContextManager sharedManager];
  v5 = [v4 outputContextForOutputDeviceUID:v3];

  v6 = [v5 contextID];
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001615EC;
  v9[3] = &unk_1004B6E08;
  v10 = v6;
  v8 = v6;
  sub_100008278(v7, v9);
}

void sub_10016169C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MRCreateDataFromXPCMessage();
  v4 = MSVPropertyListDataClasses();
  v5 = MSVUnarchivedObjectOfClasses();

  v6 = [v5 mr_map:&stru_1004BF6F0];
  v7 = *(a1 + 32);
  v8 = MRCreateStringFromXPCMessage();
  if (v8)
  {
    v9 = [*(*(a1 + 40) + 160) hostedRoutingController];
    v10 = [v9 availableEndpoints];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001619C8;
    v26[3] = &unk_1004B9698;
    v21 = &v27;
    v27 = v8;
    v11 = [v10 mr_first:v26];
  }

  else
  {
    v11 = MRAVEndpointGetLocalEndpoint();
  }

  v12 = [MRPlaybackSessionMigrateRequest alloc];
  v13 = *(a1 + 32);
  v14 = MRCreateDataFromXPCMessage();
  v15 = [v12 initWithData:v14];
  v16 = [v15 copy];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100161A0C;
  v22[3] = &unk_1004B8690;
  v17 = v11;
  v23 = v17;
  v24 = *(a1 + 32);
  v18 = v16;
  v25 = v18;
  v19 = objc_retainBlock(v22);
  if (v17 && [v6 count])
  {
    [v17 performMigrationToOutputDevices:v6 request:v18 initiator:&stru_1004D2058 queue:&_dispatch_main_q completion:v19];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    (v19[2])(v19, Error);
  }

  if (v8)
  {
  }
}

id sub_100161944(id a1, NSData *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [[_MRAVOutputDeviceDescriptorProtobuf alloc] initWithData:v2];

  v5 = [v3 initWithDescriptor:v4];

  return v5;
}

id sub_1001619C8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100161A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100161ACC;
  v8[3] = &unk_1004B6E30;
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  v7 = v5;
  sub_100008278(v4, v8);
}

void sub_100161ACC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) protobufData];
  MRAddDataToXPCMessage();

  if (*(a1 + 40))
  {
    MRAddClientErrorToXPCMessage();
  }
}

void sub_100161BE0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = MRCreateStringFromXPCMessage();
  v5 = *(a1 + 32);
  v6 = MRCreateStringFromXPCMessage();
  if (!v4)
  {
    v9 = MRAVEndpointGetLocalEndpoint();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = MRAVEndpointGetLocalEndpoint();
    goto LABEL_6;
  }

  v7 = [*(*(a1 + 40) + 160) hostedRoutingController];
  v8 = [v7 availableEndpoints];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100161F0C;
  v28[3] = &unk_1004B9698;
  v22 = &v29;
  v29 = v4;
  v9 = [v8 mr_first:v28];

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [*(*(a1 + 40) + 160) hostedRoutingController];
  v11 = [v10 availableEndpoints];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100161F50;
  v26[3] = &unk_1004B9698;
  v1 = &v27;
  v27 = v6;
  v12 = [v11 mr_first:v26];

LABEL_6:
  v13 = [MRPlaybackSessionMigrateRequest alloc];
  v14 = *(a1 + 32);
  v15 = MRCreateDataFromXPCMessage();
  v16 = [v13 initWithData:v15];
  v17 = [v16 copy];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100161F94;
  v23[3] = &unk_1004B9C80;
  v24 = *(a1 + 32);
  v18 = v17;
  v25 = v18;
  v19 = objc_retainBlock(v23);
  if (v9 && v12)
  {
    [v9 performMigrationToEndpoint:v12 request:v18 queue:&_dispatch_main_q completion:v19];
  }

  else
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB248();
    }

    Error = MRMediaRemoteCreateError();
    (v19[2])(v19, Error);
  }

  if (v6)
  {
  }

  if (v4)
  {
  }
}