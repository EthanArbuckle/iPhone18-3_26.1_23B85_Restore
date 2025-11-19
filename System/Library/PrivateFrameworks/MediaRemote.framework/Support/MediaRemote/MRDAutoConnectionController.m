@interface MRDAutoConnectionController
+ (id)sharedConnectionController;
- (NSArray)autoConnectedEndpoints;
- (NSArray)autoConnectingEndpoints;
- (id)_init;
- (void)_connectToAllOutputDevicesForReason:(id)a3 comparator:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_connectToGroup:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)_connectToOutputDevice:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)_discoverGroup:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)_discoverOutputDevice:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleEndpointDidInvalidateNotification:(id)a3;
- (void)_onSerialQueue_addConnectedEndpoint:(id)a3;
- (void)_onSerialQueue_connectToEndpoint:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_onSerialQueue_discoverGroup:(id)a3 connect:(BOOL)a4 reason:(id)a5 completion:(id)a6;
- (void)_onSerialQueue_discoverOutputDevice:(id)a3 connect:(BOOL)a4 reason:(id)a5 completion:(id)a6;
- (void)_onSerialQueue_removeConnectedEndpoint:(id)a3;
- (void)connectToAllOutputDevicesForReason:(id)a3 comparator:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)connectToGroup:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)connectToOutputDevice:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)discoverGroup:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)discoverOutputDevice:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation MRDAutoConnectionController

+ (id)sharedConnectionController
{
  if (qword_100529510 != -1)
  {
    sub_1003AA564();
  }

  v3 = qword_100529508;

  return v3;
}

- (id)_init
{
  v28.receiver = self;
  v28.super_class = MRDAutoConnectionController;
  v2 = [(MRDAutoConnectionController *)&v28 init];
  if (!v2)
  {
    return v2;
  }

  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  nowPlayingServer = v2->_nowPlayingServer;
  v2->_nowPlayingServer = v4;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.mediaremote.MRDAutoConnectionController", v6);
  serialQueue = v2->_serialQueue;
  v2->_serialQueue = v7;

  v9 = +[MRUserSettings currentSettings];
  v10 = [v9 connectToAllEndpointsWhenAnyEndpointBeginsPlayback];

  if (v10)
  {
    v11 = +[MRCompanionLinkClient sharedCompanionLinkClient];
    v12 = MRCompanionLinkClientEventIsPlaying;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10013BAF4;
    v26[3] = &unk_1004BA640;
    v13 = &v27;
    v27 = v2;
    v14 = v26;
  }

  else
  {
    v15 = +[MRUserSettings currentSettings];
    v16 = [v15 connectToEndpointWhenBeginsPlayback];

    if (!v16)
    {
      goto LABEL_7;
    }

    v11 = +[MRCompanionLinkClient sharedCompanionLinkClient];
    v12 = MRCompanionLinkClientEventIsPlaying;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10013BCCC;
    v24[3] = &unk_1004BA640;
    v13 = &v25;
    v25 = v2;
    v14 = v24;
  }

  v17 = [v11 registerEvent:v12 callback:v14];

LABEL_7:
  v18 = +[MRUserSettings currentSettings];
  v19 = [v18 connectToUserSelectedEndpoint];

  if (v19)
  {
    v20 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013BDB0;
    block[3] = &unk_1004B6D08;
    v23 = v2;
    dispatch_after(v20, &_dispatch_main_q, block);
  }

  return v2;
}

- (NSArray)autoConnectingEndpoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003517C;
  v10 = sub_100035A74;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013C028;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)autoConnectedEndpoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003517C;
  v10 = sub_100035A74;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013C168;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)connectToAllOutputDevicesForReason:(id)a3 comparator:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (!v10)
  {
    v10 = &_dispatch_main_q;
    v12 = &_dispatch_main_q;
  }

  v13 = a4;
  v14 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013C30C;
  v19[3] = &unk_1004BE7F0;
  v21 = v10;
  v22 = v11;
  v20 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BE7C8];
  v15 = v10;
  v16 = v11;
  v17 = v20;
  v18 = objc_retainBlock(v19);
  [(MRDAutoConnectionController *)self _connectToAllOutputDevicesForReason:v14 comparator:v13 queue:v15 completion:v18];
}

- (void)connectToOutputDevice:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013C520;
  v18[3] = &unk_1004BE838;
  v20 = v10;
  v21 = v11;
  v19 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BE810];
  v14 = v10;
  v15 = v11;
  v16 = v19;
  v17 = objc_retainBlock(v18);
  [(MRDAutoConnectionController *)self _connectToOutputDevice:v13 reason:v12 completion:v17];
}

- (void)connectToGroup:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013C734;
  v18[3] = &unk_1004BE838;
  v20 = v10;
  v21 = v11;
  v19 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BE858];
  v14 = v10;
  v15 = v11;
  v16 = v19;
  v17 = objc_retainBlock(v18);
  [(MRDAutoConnectionController *)self _connectToGroup:v13 reason:v12 completion:v17];
}

- (void)discoverOutputDevice:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013C948;
  v18[3] = &unk_1004BE838;
  v20 = v10;
  v21 = v11;
  v19 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BE878];
  v14 = v10;
  v15 = v11;
  v16 = v19;
  v17 = objc_retainBlock(v18);
  [(MRDAutoConnectionController *)self _discoverOutputDevice:v13 reason:v12 completion:v17];
}

- (void)discoverGroup:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013CB5C;
  v18[3] = &unk_1004BE838;
  v20 = v10;
  v21 = v11;
  v19 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BE898];
  v14 = v10;
  v15 = v11;
  v16 = v19;
  v17 = objc_retainBlock(v18);
  [(MRDAutoConnectionController *)self _discoverGroup:v13 reason:v12 completion:v17];
}

- (void)_connectToAllOutputDevicesForReason:(id)a3 comparator:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10013CF14;
  v43[3] = &unk_1004BE8E8;
  v43[4] = self;
  v46 = v11;
  v16 = v10;
  v44 = v16;
  v17 = v14;
  v45 = v17;
  v18 = v11;
  v19 = [v15 addEndpointsChangedCallback:v43];
  v20 = +[NSUUID UUID];
  v21 = [v20 UUIDString];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013D1C0;
  block[3] = &unk_1004B69D0;
  v22 = v21;
  v40 = v22;
  v41 = v16;
  v23 = v15;
  v42 = v23;
  v24 = v16;
  dispatch_async(&_dispatch_main_q, block);
  v25 = +[MRUserSettings currentSettings];
  [v25 discoverEndpointTimeoutInterval];
  v27 = dispatch_time(0, (v26 * 1000000000.0));
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10013D284;
  v33[3] = &unk_1004B7400;
  v34 = v22;
  v35 = v23;
  v37 = v12;
  v38 = v13;
  v36 = v17;
  v28 = v12;
  v29 = v17;
  v30 = v13;
  v31 = v23;
  v32 = v22;
  dispatch_after(v27, &_dispatch_main_q, v33);
}

- (void)_connectToOutputDevice:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013D4C8;
  v15[3] = &unk_1004B6BB0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)_connectToGroup:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013D5C0;
  v15[3] = &unk_1004B6BB0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)_discoverOutputDevice:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013D6B8;
  v15[3] = &unk_1004B6BB0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)_discoverGroup:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013D7B0;
  v15[3] = &unk_1004B6BB0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(serialQueue, v15);
}

- (void)_onSerialQueue_discoverOutputDevice:(id)a3 connect:(BOOL)a4 reason:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  serialQueue = self->_serialQueue;
  v13 = a6;
  dispatch_assert_queue_V2(serialQueue);
  if (v10)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10013DB10;
    v43[3] = &unk_1004BE910;
    v43[4] = self;
    v14 = v10;
    v44 = v14;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10013DC54;
    v39[3] = &unk_1004BE938;
    v15 = objc_retainBlock(v43);
    v42 = a4;
    v41 = v15;
    v39[4] = self;
    v16 = v11;
    v40 = v16;
    v17 = objc_retainBlock(v39);
    pendingReconSessionCompletions = self->_pendingReconSessionCompletions;
    if (!pendingReconSessionCompletions)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_pendingReconSessionCompletions;
      self->_pendingReconSessionCompletions = v19;

      pendingReconSessionCompletions = self->_pendingReconSessionCompletions;
    }

    v21 = [(NSMutableDictionary *)pendingReconSessionCompletions objectForKeyedSubscript:v14];

    if (!v21)
    {
      v22 = objc_alloc_init(NSMutableArray);
      [(NSMutableDictionary *)self->_pendingReconSessionCompletions setObject:v22 forKeyedSubscript:v14];
    }

    v23 = [(NSMutableDictionary *)self->_pendingReconSessionCompletions objectForKeyedSubscript:v14];
    v24 = [v13 copy];

    v25 = objc_retainBlock(v24);
    [v23 addObject:v25];

    v26 = [(NSMutableDictionary *)self->_pendingReconSessions objectForKeyedSubscript:v14];

    if (!v26)
    {
      v27 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      pendingReconSessions = self->_pendingReconSessions;
      if (!pendingReconSessions)
      {
        v29 = objc_alloc_init(NSMutableDictionary);
        v30 = self->_pendingReconSessions;
        self->_pendingReconSessions = v29;

        pendingReconSessions = self->_pendingReconSessions;
      }

      [(NSMutableDictionary *)pendingReconSessions setObject:v27 forKeyedSubscript:v14];
      v31 = +[MRUserSettings currentSettings];
      [v31 discoverEndpointTimeoutInterval];
      v33 = v32;
      v34 = [v16 string];
      v35 = self->_serialQueue;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10013DDA8;
      v37[3] = &unk_1004BE960;
      v38 = v17;
      [v27 searchEndpointsForOutputDeviceUID:v14 timeout:v34 reason:v35 queue:v37 completion:v33];
    }
  }

  else
  {
    v36 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (*(v13 + 2))(v13, v36);
  }
}

- (void)_onSerialQueue_discoverGroup:(id)a3 connect:(BOOL)a4 reason:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  serialQueue = self->_serialQueue;
  v13 = a6;
  dispatch_assert_queue_V2(serialQueue);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10013E0CC;
  v42[3] = &unk_1004BE910;
  v42[4] = self;
  v14 = v10;
  v43 = v14;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10013E210;
  v38[3] = &unk_1004BE938;
  v15 = objc_retainBlock(v42);
  v41 = a4;
  v40 = v15;
  v38[4] = self;
  v16 = v11;
  v39 = v16;
  v17 = objc_retainBlock(v38);
  pendingGroupReconSessionCompletions = self->_pendingGroupReconSessionCompletions;
  if (!pendingGroupReconSessionCompletions)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = self->_pendingGroupReconSessionCompletions;
    self->_pendingGroupReconSessionCompletions = v19;

    pendingGroupReconSessionCompletions = self->_pendingGroupReconSessionCompletions;
  }

  v21 = [(NSMutableDictionary *)pendingGroupReconSessionCompletions objectForKeyedSubscript:v14];

  if (!v21)
  {
    v22 = objc_alloc_init(NSMutableArray);
    [(NSMutableDictionary *)self->_pendingGroupReconSessionCompletions setObject:v22 forKeyedSubscript:v14];
  }

  v23 = [(NSMutableDictionary *)self->_pendingGroupReconSessionCompletions objectForKeyedSubscript:v14];
  v24 = [v13 copy];

  v25 = objc_retainBlock(v24);
  [v23 addObject:v25];

  v26 = [(NSMutableDictionary *)self->_pendingGroupReconSessions objectForKeyedSubscript:v14];

  if (!v26)
  {
    v27 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    pendingGroupReconSessions = self->_pendingGroupReconSessions;
    if (!pendingGroupReconSessions)
    {
      v29 = objc_alloc_init(NSMutableDictionary);
      v30 = self->_pendingGroupReconSessions;
      self->_pendingGroupReconSessions = v29;

      pendingGroupReconSessions = self->_pendingGroupReconSessions;
    }

    [(NSMutableDictionary *)pendingGroupReconSessions setObject:v27 forKeyedSubscript:v14];
    v31 = +[MRUserSettings currentSettings];
    [v31 discoverEndpointTimeoutInterval];
    v33 = v32;
    v34 = [v16 string];
    v35 = self->_serialQueue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10013E364;
    v36[3] = &unk_1004BE960;
    v37 = v17;
    [v27 searchEndpointsForGroupUID:v14 timeout:v34 reason:v35 queue:v36 completion:v33];
  }
}

- (void)_onSerialQueue_connectToEndpoint:(id)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_serialQueue);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10013E75C;
  v51[3] = &unk_1004B9DE8;
  v14 = v13;
  v53 = v14;
  v15 = v12;
  v52 = v15;
  v16 = objc_retainBlock(v51);
  if (v10)
  {
    v42 = v11;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10013E820;
    v49[3] = &unk_1004B9C80;
    v49[4] = self;
    v17 = v10;
    v50 = v17;
    v43 = objc_retainBlock(v49);
    pendingConnectingEndpointCompletions = self->_pendingConnectingEndpointCompletions;
    if (!pendingConnectingEndpointCompletions)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_pendingConnectingEndpointCompletions;
      self->_pendingConnectingEndpointCompletions = v19;

      pendingConnectingEndpointCompletions = self->_pendingConnectingEndpointCompletions;
    }

    v21 = [v17 uniqueIdentifier];
    v22 = [(NSMutableDictionary *)pendingConnectingEndpointCompletions objectForKeyedSubscript:v21];

    if (!v22)
    {
      v23 = objc_alloc_init(NSMutableArray);
      v24 = self->_pendingConnectingEndpointCompletions;
      v25 = [v17 uniqueIdentifier];
      [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v25];
    }

    v26 = self->_pendingConnectingEndpointCompletions;
    v27 = [v17 uniqueIdentifier];
    v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
    v29 = [v16 copy];
    v30 = objc_retainBlock(v29);
    [v28 addObject:v30];

    v31 = [v17 externalDevice];
    if ([v31 connectionState] == 2)
    {

      v11 = v42;
    }

    else
    {
      v33 = [v17 isLocalEndpoint];

      v11 = v42;
      if ((v33 & 1) == 0)
      {
        connectingEndpoints = self->_connectingEndpoints;
        v36 = [v17 uniqueIdentifier];
        v37 = [(NSMutableDictionary *)connectingEndpoints objectForKey:v36];

        v34 = v43;
        if (!v37)
        {
          v38 = self->_connectingEndpoints;
          if (!v38)
          {
            v39 = objc_alloc_init(NSMutableDictionary);
            v40 = self->_connectingEndpoints;
            self->_connectingEndpoints = v39;

            v38 = self->_connectingEndpoints;
          }

          v41 = [v17 uniqueIdentifier];
          [(NSMutableDictionary *)v38 setObject:v17 forKeyedSubscript:v41];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10013E988;
          block[3] = &unk_1004B6BB0;
          v45 = v17;
          v46 = v42;
          v47 = self;
          v34 = v43;
          v48 = v43;
          dispatch_async(&_dispatch_main_q, block);
        }

        goto LABEL_11;
      }
    }

    v34 = v43;
    (v43[2])(v43, 0);
LABEL_11:

    goto LABEL_12;
  }

  Error = MRMediaRemoteCreateError();
  (v16[2])(v16, Error);

LABEL_12:
}

- (void)_onSerialQueue_addConnectedEndpoint:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 externalDevice];
  if (v5)
  {
    v24 = v5;
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = kMRExternalDeviceConnectionStateDidChangeNotification;
    v8 = [v4 externalDevice];
    [v6 addObserver:self selector:"_handleEndpointDidInvalidateNotification:" name:v7 object:v8];

    connectedEndpoints = self->_connectedEndpoints;
    if (!connectedEndpoints)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v11 = self->_connectedEndpoints;
      self->_connectedEndpoints = v10;

      connectedEndpoints = self->_connectedEndpoints;
    }

    [(NSMutableSet *)connectedEndpoints allObjects];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v28)
    {
      v26 = *v35;
      v27 = v4;
      do
      {
        v12 = 0;
        do
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v12;
          v13 = *(*(&v34 + 1) + 8 * v12);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = [v4 outputDeviceUIDs];
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v30 + 1) + 8 * i);
                v20 = [v13 outputDeviceUIDs];
                LODWORD(v19) = [v20 containsObject:v19];

                if (v19)
                {
                  v21 = _MRLogForCategory();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = [v13 uniqueIdentifier];
                    v23 = [v13 localizedName];
                    *buf = 138412546;
                    v39 = v22;
                    v40 = 2112;
                    v41 = v23;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDAutoConnectionController] Removing outdated endpoint <%@> (<%@>)", buf, 0x16u);
                  }

                  [(NSMutableSet *)self->_connectedEndpoints removeObject:v13];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
            }

            while (v16);
          }

          v12 = v29 + 1;
          v4 = v27;
        }

        while ((v29 + 1) != v28);
        v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v28);
    }

    [(NSMutableSet *)self->_connectedEndpoints addObject:v4];

    v5 = v24;
  }
}

- (void)_onSerialQueue_removeConnectedEndpoint:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(NSMutableSet *)self->_connectedEndpoints allObjects];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 externalDevice];

        if (v11 == v4)
        {
          v12 = _MRLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v10 uniqueIdentifier];
            v14 = [v10 localizedName];
            *buf = 138412546;
            v21 = v13;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDAutoConnectionController] Removing endpoint <%@> (<%@>)", buf, 0x16u);
          }

          v15 = +[NSNotificationCenter defaultCenter];
          [v15 removeObserver:self name:kMRExternalDeviceConnectionStateDidChangeNotification object:v4];

          [(NSMutableSet *)self->_connectedEndpoints removeObject:v10];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_handleEndpointDidInvalidateNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
  v8 = [v7 intValue];

  if (v8 == 3)
  {
    serialQueue = self->_serialQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013F60C;
    v10[3] = &unk_1004B68F0;
    v10[4] = self;
    v11 = v5;
    dispatch_async(serialQueue, v10);
  }
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v13 = a3;
  v4 = [v13 userInfo];
  v5 = [v4 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v6 = [v5 intValue];

  if (!v6)
  {
    v7 = [v13 userInfo];
    v8 = [v7 objectForKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];

    v9 = [NSString alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v11 = [v9 initWithFormat:@"%@ endpoint changed", active];

    v12 = [MRDAutoConnectionControllerReason reasonWithType:2 string:v11];
    [(MRDAutoConnectionController *)self connectToOutputDevice:v8 reason:v12 queue:0 completion:0];
  }
}

@end