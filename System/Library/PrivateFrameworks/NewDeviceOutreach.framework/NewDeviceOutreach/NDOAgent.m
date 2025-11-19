@interface NDOAgent
+ (void)createCachesDirectoryIfNeeded;
- (NDOAgent)initWithCallingProcessBundleID:(id)a3;
- (NDOAgent)initWithWarrantyProvider:(id)a3 deviceProvider:(id)a4;
- (void)_getInfosForDevices:(id)a3 usingPolicy:(unint64_t)a4 updateFollowUps:(BOOL)a5 withReply:(id)a6;
- (void)allFUPEligibleDevices:(id)a3;
- (void)appSupportAvailability:(id)a3 withReply:(id)a4;
- (void)checkIsAvailableInStore:(id)a3 withReply:(id)a4;
- (void)clearAllUserInitiatedFollowUpDismissalsWithCompletion:(id)a3;
- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 completion:(id)a4;
- (void)defaultDevice:(id)a3;
- (void)dismissFollowUpForSerialNumber:(id)a3 completion:(id)a4;
- (void)dismissFollowUps:(id)a3 completion:(id)a4;
- (void)dismissNotificationForSerialNumber:(id)a3 completion:(id)a4;
- (void)getAmsPropertiesForContext:(id)a3 withReply:(id)a4;
- (void)getBTDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5;
- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5;
- (void)getClientConfigurationWithReply:(id)a3;
- (void)getCoverageInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5;
- (void)getDecodedParamsForPath:(id)a3 withReply:(id)a4;
- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)a3 withReply:(id)a4;
- (void)getDeviceInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 sessionID:(id)a5 params:(id)a6 andForcePostFollowup:(BOOL)a7 withReply:(id)a8;
- (void)getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 withReply:(id)a6;
- (void)getEligibleBluetoothAndWatchDeviceInfos:(id)a3;
- (void)getLocalDeviceListWithReply:(id)a3;
- (void)getLocalDeviceWarrantyForSerialNumber:(id)a3 withReply:(id)a4;
- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5;
- (void)getRemoteDeviceListWithReply:(id)a3;
- (void)getRemoteDeviceWarrantyForSerialNumber:(id)a3 withAdditionalHeaders:(id)a4 withReply:(id)a5;
- (void)getWarrantyUsingPolicy:(unint64_t)a3 params:(id)a4 withReply:(id)a5;
- (void)getWarrantyUsingPolicy:(unint64_t)a3 serialNumber:(id)a4 sessionID:(id)a5 params:(id)a6 withReply:(id)a7;
- (void)handleInternalCommand:(id)a3 withReply:(id)a4;
- (void)pairedBTDevices:(id)a3;
- (void)pairedBTPioneerDevices:(id)a3;
- (void)pairedWatches:(id)a3;
- (void)primaryFUPEligibleDevices:(id)a3;
- (void)readAPSSupportedOverride:(id)a3;
- (void)readULWebURLOverride:(id)a3;
- (void)readWebURLOverride:(id)a3;
- (void)removePromoSectionWithHashValue:(int64_t)a3 andAckData:(id)a4 withReply:(id)a5;
- (void)scheduleOutreachAfter:(double)a3 withReply:(id)a4;
- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 completion:(id)a4;
@end

@implementation NDOAgent

- (NDOAgent)initWithCallingProcessBundleID:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_callingProcessBundleID, a3);
  if (!self->_callingProcessBundleID)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "[NDOAgent initWithCallingProcessBundleID:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: callingProcessBundleID is nil. Falling back to Preferences Bundle ID", &v12, 0xCu);
    }

    callingProcessBundleID = self->_callingProcessBundleID;
    self->_callingProcessBundleID = @"com.apple.Preferences";
  }

  v8 = [[NDOAgentDefaultWarrantyProvider alloc] initWithCallingProcessBundleID:self->_callingProcessBundleID];
  v9 = +[NDODeviceProvider sharedProvider];
  v10 = [(NDOAgent *)self initWithWarrantyProvider:v8 deviceProvider:v9];

  return v10;
}

- (NDOAgent)initWithWarrantyProvider:(id)a3 deviceProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NDOAgent;
  v8 = [(NDOAgent *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(NDOAgent *)v8 setWarrantyProvider:v6];
    [(NDOAgent *)v9 setDeviceProvider:v7];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.NewDeviceOutreach/.ndoagent.policyqueue", v10);
    policyLookupQueue = v9->_policyLookupQueue;
    v9->_policyLookupQueue = v11;

    v13 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v13;
  }

  return v9;
}

+ (void)createCachesDirectoryIfNeeded
{
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "+[NDOAgent createCachesDirectoryIfNeeded]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:", buf, 0xCu);
  }

  v3 = NSHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"Library/Application Support/com.apple.NewDeviceOutreach"];

  v12 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v12];

  if ((v6 & 1) == 0)
  {
    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "+[NDOAgent createCachesDirectoryIfNeeded]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: No caches folder. Creating: %@", buf, 0x16u);
    }

    v8 = +[NSFileManager defaultManager];
    v11 = 0;
    [v8 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v9 = v11;

    if (v9)
    {
      v10 = _NDOLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v14 = "+[NDOAgent createCachesDirectoryIfNeeded]";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Cannot create ndo folder. Error:%@", buf, 0x16u);
      }
    }
  }
}

- (void)scheduleOutreachAfter:(double)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [NDOScheduler newSchedulerWithActivityDelegate:v6];

  [v7 scheduleActivityWithDelay:a3];
  v5[2](v5, 1);
}

- (void)checkIsAvailableInStore:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking for %@ in the App Store", &v9, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 checkIsAvailableInStore:v5 withReply:v6];
}

- (void)appSupportAvailability:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Availability for %@", &v9, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 appSupportAvailability:v5 withReply:v6];
}

- (void)readWebURLOverride:(id)a3
{
  v3 = a3;
  if (!+[NDOUtilities isInternal])
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v3[2](v3, v4);
    goto LABEL_8;
  }

  v4 = +[NDOServerVersionUtilities readWebURLOverride];
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "readWebURLOverride = %@", &v6, 0xCu);
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readULWebURLOverride:(id)a3
{
  v3 = a3;
  if (!+[NDOUtilities isInternal])
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v3[2](v3, v4);
    goto LABEL_8;
  }

  v4 = +[NDOServerVersionUtilities readULWebURLOverride];
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "readULWebURLOverride = %@", &v6, 0xCu);
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readAPSSupportedOverride:(id)a3
{
  v3 = a3;
  v4 = +[NDOServerVersionUtilities readAPSSupportedOverride];
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "readAPSSupportedOverride = %@", &v6, 0xCu);
  }

  if (v3)
  {
    v3[2](v3, v4);
  }
}

- (void)getDecodedParamsForPath:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100014E94;
    v7[3] = &unk_10009AC80;
    v8 = v5;
    [NDOServerVersionUtilities getDecodedParamsForPath:a3 withCompletion:v7];
  }
}

- (void)getClientConfigurationWithReply:(id)a3
{
  v4 = a3;
  v5 = +[NDOServerVersionUtilities clientConfig];
  (*(a3 + 2))(v4, v5);
}

- (void)defaultDevice:(id)a3
{
  v5 = a3;
  v7 = [(NDOAgent *)self deviceProvider];
  v6 = [v7 defaultDevice];
  (*(a3 + 2))(v5, v6);
}

- (void)pairedWatches:(id)a3
{
  v5 = a3;
  v8 = [(NDOAgent *)self deviceProvider];
  v6 = [v8 pairedWatches];
  v7 = [v6 allValues];
  (*(a3 + 2))(v5, v7);
}

- (void)pairedBTDevices:(id)a3
{
  v5 = a3;
  v8 = [(NDOAgent *)self deviceProvider];
  v6 = [v8 pairedBTDevices];
  v7 = [v6 allValues];
  (*(a3 + 2))(v5, v7);
}

- (void)pairedBTPioneerDevices:(id)a3
{
  v5 = a3;
  v8 = [(NDOAgent *)self deviceProvider];
  v6 = [v8 pairedBTPioneerDevices];
  v7 = [v6 allValues];
  (*(a3 + 2))(v5, v7);
}

- (void)allFUPEligibleDevices:(id)a3
{
  v5 = a3;
  v8 = [(NDOAgent *)self deviceProvider];
  v6 = [v8 allFUPEligibleDevices];
  v7 = [v6 allValues];
  (*(a3 + 2))(v5, v7);
}

- (void)primaryFUPEligibleDevices:(id)a3
{
  v5 = a3;
  v8 = [(NDOAgent *)self deviceProvider];
  v6 = [v8 primaryFUPEligibleDevices];
  v7 = [v6 allValues];
  (*(a3 + 2))(v5, v7);
}

- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [(NDOAgent *)self deviceProvider];
  v8 = [v7 defaultDevice];

  v9 = [v8 serialNumber];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001538C;
  v12[3] = &unk_10009ACA8;
  v14 = self;
  v15 = v6;
  v13 = v8;
  v10 = v6;
  v11 = v8;
  [(NDOAgent *)self getWarrantyUsingPolicy:a3 serialNumber:v9 sessionID:0 params:0 withReply:v12];
}

- (void)getDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 withReply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[NDOWarrantyDownloader alloc] initWithCallingProcessBundleID:self->_callingProcessBundleID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000155A0;
  v16[3] = &unk_10009ACD0;
  v17 = v10;
  v15 = v10;
  [(NDOWarrantyDownloader *)v14 downloadDeviceForLocalDevices:v13 sessionID:v12 params:v11 completionHandler:v16];
}

- (void)getDeviceInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 sessionID:(id)a5 params:(id)a6 andForcePostFollowup:(BOOL)a7 withReply:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 dictionaryForKey:@"PairedWatchesSerialNumbers"];

  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [v20 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

  if (v19 | v21)
  {
    v31 = a4;
    v22 = [v19 objectForKeyedSubscript:v14];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [v21 objectForKeyedSubscript:v14];
    }

    v25 = v24;

    v26 = _NDOLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_100073CC0();
    }

    if (v25)
    {
      v27 = v25;

      v28 = _NDOLogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_100073D34();
      }

      v14 = v27;
    }

    a4 = v31;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000157FC;
  v32[3] = &unk_10009ACF8;
  v33 = v14;
  v34 = self;
  v35 = v17;
  v36 = a7;
  v29 = v17;
  v30 = v14;
  [(NDOAgent *)self getWarrantyUsingPolicy:a4 serialNumber:v30 sessionID:v15 params:v16 withReply:v32];
}

- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5
{
  v8 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  v9 = [(NDOAgent *)self deviceProvider];
  v10 = [v9 primaryFUPEligibleDevices];
  v11 = [v10 allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100015C5C;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = a3;
  [v11 enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015E7C;
  block[3] = &unk_10009AD98;
  v16 = v8;
  v17 = v20;
  v18 = a4;
  block[4] = self;
  v14 = v8;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getEligibleBluetoothAndWatchDeviceInfos:(id)a3
{
  v4 = a3;
  v12 = objc_opt_new();
  v5 = [(NDOAgent *)self deviceProvider];
  v6 = [v5 pairedWatches];
  v7 = [v6 allValues];
  [v12 addObjectsFromArray:v7];

  v8 = [(NDOAgent *)self deviceProvider];
  v9 = [v8 pairedBTDevices];
  v10 = [v9 allValues];
  [v12 addObjectsFromArray:v10];

  v11 = [v12 copy];
  [(NDOAgent *)self _getInfosForDevices:v11 usingPolicy:2 updateFollowUps:1 withReply:v4];
}

- (void)_getInfosForDevices:(id)a3 usingPolicy:(unint64_t)a4 updateFollowUps:(BOOL)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000162F8;
  v19[3] = &unk_10009AD70;
  v19[5] = v20;
  v19[6] = a4;
  v19[4] = self;
  [v10 enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016518;
  block[3] = &unk_10009AD98;
  v16 = v11;
  v17 = v20;
  v18 = a5;
  block[4] = self;
  v14 = v11;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getBTDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5
{
  v8 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  v9 = [(NDOAgent *)self deviceProvider];
  v10 = [v9 pairedBTDevices];
  v11 = [v10 allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100016800;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = a3;
  [v11 enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016A20;
  block[3] = &unk_10009AD98;
  v16 = v8;
  v17 = v20;
  v18 = a4;
  block[4] = self;
  v14 = v8;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)a3 updateFollowUps:(BOOL)a4 withReply:(id)a5
{
  v8 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  v9 = [(NDOAgent *)self deviceProvider];
  v10 = [v9 pairedBTPioneerDevices];
  v11 = [v10 allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100016CF4;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = a3;
  [v11 enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F14;
  block[3] = &unk_10009AD98;
  v16 = v8;
  v17 = v20;
  v18 = a4;
  block[4] = self;
  v14 = v8;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)dismissFollowUpForSerialNumber:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(NDOAgent *)self warrantyProvider];
  [v7 dismissFollowUpForSerialNumber:v6];

  v8[2](v8, 1);
}

- (void)dismissNotificationForSerialNumber:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(NDOAgent *)self warrantyProvider];
  [v7 dismissNotificationForSerialNumber:v6];

  v8[2](v8, 1);
}

- (void)getWarrantyUsingPolicy:(unint64_t)a3 params:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = [(NDOAgent *)self deviceProvider];
  v10 = [v12 defaultDevice];
  v11 = [v10 serialNumber];
  [(NDOAgent *)self getWarrantyUsingPolicy:a3 serialNumber:v11 sessionID:0 params:v9 withReply:v8];
}

- (void)getWarrantyUsingPolicy:(unint64_t)a3 serialNumber:(id)a4 sessionID:(id)a5 params:(id)a6 withReply:(id)a7
{
  v12 = a4;
  v53 = a5;
  v54 = a6;
  v13 = a7;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100001F0C;
  v67 = sub_100003F8C;
  v68 = 0;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100017AE8;
  v58[3] = &unk_10009ADC0;
  v14 = COERCE_DOUBLE(v12);
  v59 = v14;
  v52 = v13;
  v60 = v52;
  v61 = &v69;
  v62 = &v63;
  v55 = objc_retainBlock(v58);
  *(v70 + 24) = 0;
  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v74 = v14;
    v75 = 2048;
    v76 = a3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "getting warranty using policy %@: %lu", buf, 0x16u);
  }

  v16 = [(NDOAgent *)self warrantyProvider];
  v17 = [v16 cachedWarrantyForSerialNumber:*&v14];
  v18 = v64[5];
  v64[5] = v17;

  if (v64[5])
  {
    v19 = _NDOLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v64[5];
      *buf = 138412546;
      v74 = v14;
      v75 = 2112;
      v76 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Has cache: %@ with cached warranty : %@", buf, 0x16u);
    }

    v21 = [(NDOAgent *)self warrantyProvider];
    [v21 cachedWarrantyVersionForSerialNumber:*&v14];
    *&v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    if ([v22 isEqualToString:@"2"])
    {
      v23 = [(NDOAgent *)self warrantyProvider];
      [v23 cachedWarrantyLocaleForSerialNumber:*&v14];
      *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v25 = +[NSLocale preferredLocale];
      v26 = [v25 localeIdentifier];
      v27 = [v24 isEqualToString:v26];

      if (v27)
      {
        v28 = [(NDOAgent *)self warrantyProvider];
        v29 = [v28 isSignedInToiCloud];

        if (v29)
        {
          v30 = _NDOLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v74 = *&v24;
            v75 = 2112;
            v76 = v22;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "cached warranty is for locale ('%@') and version ('%@') match system, consider it valid", buf, 0x16u);
          }

          *(v70 + 24) = 1;
        }

        else
        {
          v34 = _NDOLogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "user is signed out of iCloud, cached warranty not allowed", buf, 2u);
          }
        }
      }

      else
      {
        v31 = _NDOLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = +[NSLocale preferredLocale];
          v33 = [v32 localeIdentifier];
          *buf = 138412546;
          v74 = *&v24;
          v75 = 2112;
          v76 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "cached warranty is for locale '%@', system is now in '%@', consider it invalid", buf, 0x16u);
        }
      }
    }

    else
    {
      _NDOLogSystem();
      *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v74 = *&v22;
        v75 = 2112;
        v76 = @"2";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "cached warranty is of outdated version '%@', current version is '%@', consider it invalid", buf, 0x16u);
      }
    }
  }

  else
  {
    _NDOLogSystem();
    *&v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v14;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "no cached warranty : %@", buf, 0xCu);
    }
  }

  if (a3 == 2)
  {
    *(v70 + 24) = 0;
LABEL_38:
    v45 = 1;
    goto LABEL_46;
  }

  if (a3)
  {
    v45 = 0;
    goto LABEL_46;
  }

  if (*(v70 + 24) != 1)
  {
    v46 = _NDOLogSystem();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Default policy query: cached warranty is invalid, refresh it", buf, 2u);
    }

    goto LABEL_38;
  }

  v35 = _NDOLogSystem();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Default policy query: cached warranty is valid, examine expiration date", buf, 2u);
  }

  v36 = [(NDOAgent *)self warrantyProvider];
  v37 = [v36 lastUpdatedDateForSerialNumber:*&v14];

  if (v37)
  {
    [v37 timeIntervalSinceNow];
    v39 = v38;
    v40 = [(NDOAgent *)self warrantyProvider];
    [v40 cachedWarrantyValidityDurationForSerialNumber:*&v14];
    v42 = v41;

    v43 = v39 + v42;
    if (v43 > 0.0)
    {
      v44 = _NDOLogSystem();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v74 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "warranty valid for %.02f seconds", buf, 0xCu);
      }

      v45 = 0;
      goto LABEL_45;
    }

    v44 = _NDOLogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v74 = -v43;
      v47 = "warranty validity expired %.02f seconds ago, refresh it";
      v48 = v44;
      v49 = 12;
      goto LABEL_43;
    }
  }

  else
  {
    v44 = _NDOLogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v47 = "warranty validity expired, refresh it";
      v48 = v44;
      v49 = 2;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
    }
  }

  v45 = 1;
LABEL_45:

LABEL_46:
  v50 = _NDOLogSystem();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v74 = COERCE_DOUBLE("[NDOAgent getWarrantyUsingPolicy:serialNumber:sessionID:params:withReply:]");
    v75 = 1024;
    LODWORD(v76) = v45;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldDownloadWarranty: %d", buf, 0x12u);
  }

  if (v45)
  {
    v51 = [(NDOAgent *)self warrantyProvider];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100017C08;
    v56[3] = &unk_10009ADE8;
    v57 = v55;
    [v51 downloadWarrantyForSerialNumber:*&v14 sessionID:v53 params:v54 completionHandler:v56];
  }

  else
  {
    (v55[2])(v55, 0);
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);
}

- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent clearUserInitiatedFollowUpDismissalForSerialNumber:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [NDOFollowUpDismissalTracker eraseFollowUpDismissalForDeviceSerial:v6];
  if (v5)
  {
    v5[2](v5);
  }
}

- (void)clearAllUserInitiatedFollowUpDismissalsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent clearAllUserInitiatedFollowUpDismissalsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  +[NDOFollowUpDismissalTracker eraseAllFollowUpDismissals];
  if (v3)
  {
    v3[2](v3);
  }
}

- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent storeUserInitiatedFollowUpDismissalForSerialNumber:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [NDOFollowUpDismissalTracker storeFollowUpDismissalWithDeviceSerial:v6];
  if (v5)
  {
    v5[2](v5);
  }
}

- (void)getLocalDeviceListWithReply:(id)a3
{
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent getLocalDeviceListWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getLocalDeviceListWithCompletion:v3];
}

- (void)getRemoteDeviceListWithReply:(id)a3
{
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent getRemoteDeviceListWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getRemoteDeviceListWithCompletion:v3];
}

- (void)removePromoSectionWithHashValue:(int64_t)a3 andAckData:(id)a4 withReply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136380675;
    v12 = "[NDOAgent removePromoSectionWithHashValue:andAckData:withReply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{private}s", &v11, 0xCu);
  }

  v10 = +[_TtC8ndoagent19NDOCompositionLayer uiActionHandler];
  [v10 removeAndAckDismissedPromoFor:a3 actionData:v8];

  v7[2](v7);
}

- (void)getAmsPropertiesForContext:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136380675;
    v24 = "[NDOAgent getAmsPropertiesForContext:withReply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v23, 0xCu);
  }

  if (+[NDOUtilities isInternal])
  {
    v8 = [v5 serialNumber];

    if (v8)
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      v10 = [v9 dictionaryForKey:@"PairedWatchesSerialNumbers"];

      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

      v13 = [v5 serialNumber];
      v14 = [v10 objectForKeyedSubscript:v13];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v16 = [v5 serialNumber];
        v15 = [v12 objectForKeyedSubscript:v16];

        if (!v15)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      v17 = _NDOLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100073DA4(v15, v5, v17);
      }

      v18 = [NDOAMSPropertiesRequestContext alloc];
      v19 = [v5 requestType];
      v20 = [v5 universalLinkPath];
      v21 = [v5 additionalBody];
      v22 = [v18 initWithRequestType:v19 serialNumber:v15 universalLinkPath:v20 additionalBody:v21];

      v5 = v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  [_TtC8ndoagent20NDOAgentSwiftHelpers getAmsPropertiesFor:v5 completion:v6];
}

- (void)getLocalDeviceWarrantyForSerialNumber:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent getLocalDeviceWarrantyForSerialNumber:withReply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getLocalDeviceWarrantyFor:v6 completion:v5];
}

- (void)getRemoteDeviceWarrantyForSerialNumber:(id)a3 withAdditionalHeaders:(id)a4 withReply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = _NDOLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136380675;
    v12 = "[NDOAgent getRemoteDeviceWarrantyForSerialNumber:withAdditionalHeaders:withReply:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{private}s", &v11, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getRemoteDeviceWarrantyFor:v9 with:v8 completion:v7];
}

- (void)getCoverageInfoForSerialNumber:(id)a3 usingPolicy:(unint64_t)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100001F0C;
  v26 = sub_100003F8C;
  v27 = [_TtC8ndoagent19NDOCompositionLayer makeWarrantyPropertiesLoaderFor:a4];
  if (v23[5])
  {
    if (+[NDOUtilities isInternal])
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      v10 = [v9 dictionaryForKey:@"PairedWatchesSerialNumbers"];

      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

      v13 = [v10 objectForKeyedSubscript:v7];
      if (v13 || ([v12 objectForKeyedSubscript:v7], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = _NDOLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_100073E50();
        }

        v15 = v13;
        v7 = v15;
      }
    }

    v16 = v23[5];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100018860;
    v19[3] = &unk_10009AE10;
    v21 = &v22;
    v20 = v8;
    [v16 fetchWarrantyPropertiesFor:v7 completionHandler:v19];
    v17 = v20;
  }

  else
  {
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100073EC4(a4, v18);
    }

    v17 = [NSError errorWithDomain:@"com.apple.newDeviceOutreach" code:-400 userInfo:&off_10009F7D0];
    (*(v8 + 2))(v8, 0, v17);
  }

  _Block_object_dispose(&v22, 8);
}

- (void)dismissFollowUps:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  v12 = 0;
  v8 = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:&v12];

  v9 = v12;
  v10 = v9;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  (v5)[2](v5, v11);
}

- (void)handleInternalCommand:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = [_TtC8ndoagent28NDOAgentInternalDebugHelpers handleInternalCommand:a3];
  v5[2](v5, v6);
}

@end