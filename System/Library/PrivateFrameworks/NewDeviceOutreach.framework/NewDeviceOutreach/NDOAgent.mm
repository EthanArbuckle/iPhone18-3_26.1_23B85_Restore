@interface NDOAgent
+ (void)createCachesDirectoryIfNeeded;
- (NDOAgent)initWithCallingProcessBundleID:(id)d;
- (NDOAgent)initWithWarrantyProvider:(id)provider deviceProvider:(id)deviceProvider;
- (void)_getInfosForDevices:(id)devices usingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)allFUPEligibleDevices:(id)devices;
- (void)appSupportAvailability:(id)availability withReply:(id)reply;
- (void)checkIsAvailableInStore:(id)store withReply:(id)reply;
- (void)clearAllUserInitiatedFollowUpDismissalsWithCompletion:(id)completion;
- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number completion:(id)completion;
- (void)defaultDevice:(id)device;
- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion;
- (void)dismissFollowUps:(id)ups completion:(id)completion;
- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion;
- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply;
- (void)getBTDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getClientConfigurationWithReply:(id)reply;
- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDecodedParamsForPath:(id)path withReply:(id)reply;
- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply;
- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params withReply:(id)reply;
- (void)getEligibleBluetoothAndWatchDeviceInfos:(id)infos;
- (void)getLocalDeviceListWithReply:(id)reply;
- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply;
- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getRemoteDeviceListWithReply:(id)reply;
- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply;
- (void)getWarrantyUsingPolicy:(unint64_t)policy params:(id)params withReply:(id)reply;
- (void)getWarrantyUsingPolicy:(unint64_t)policy serialNumber:(id)number sessionID:(id)d params:(id)params withReply:(id)reply;
- (void)handleInternalCommand:(id)command withReply:(id)reply;
- (void)pairedBTDevices:(id)devices;
- (void)pairedBTPioneerDevices:(id)devices;
- (void)pairedWatches:(id)watches;
- (void)primaryFUPEligibleDevices:(id)devices;
- (void)readAPSSupportedOverride:(id)override;
- (void)readULWebURLOverride:(id)override;
- (void)readWebURLOverride:(id)override;
- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data withReply:(id)reply;
- (void)scheduleOutreachAfter:(double)after withReply:(id)reply;
- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number completion:(id)completion;
@end

@implementation NDOAgent

- (NDOAgent)initWithCallingProcessBundleID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_callingProcessBundleID, d);
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

- (NDOAgent)initWithWarrantyProvider:(id)provider deviceProvider:(id)deviceProvider
{
  providerCopy = provider;
  deviceProviderCopy = deviceProvider;
  v16.receiver = self;
  v16.super_class = NDOAgent;
  v8 = [(NDOAgent *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(NDOAgent *)v8 setWarrantyProvider:providerCopy];
    [(NDOAgent *)v9 setDeviceProvider:deviceProviderCopy];
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

- (void)scheduleOutreachAfter:(double)after withReply:(id)reply
{
  replyCopy = reply;
  v6 = objc_opt_new();
  v7 = [NDOScheduler newSchedulerWithActivityDelegate:v6];

  [v7 scheduleActivityWithDelay:after];
  replyCopy[2](replyCopy, 1);
}

- (void)checkIsAvailableInStore:(id)store withReply:(id)reply
{
  storeCopy = store;
  replyCopy = reply;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = storeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking for %@ in the App Store", &v9, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 checkIsAvailableInStore:storeCopy withReply:replyCopy];
}

- (void)appSupportAvailability:(id)availability withReply:(id)reply
{
  availabilityCopy = availability;
  replyCopy = reply;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = availabilityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Availability for %@", &v9, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 appSupportAvailability:availabilityCopy withReply:replyCopy];
}

- (void)readWebURLOverride:(id)override
{
  overrideCopy = override;
  if (!+[NDOUtilities isInternal])
  {
    v4 = 0;
    if (!overrideCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    overrideCopy[2](overrideCopy, v4);
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

  if (overrideCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readULWebURLOverride:(id)override
{
  overrideCopy = override;
  if (!+[NDOUtilities isInternal])
  {
    v4 = 0;
    if (!overrideCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    overrideCopy[2](overrideCopy, v4);
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

  if (overrideCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readAPSSupportedOverride:(id)override
{
  overrideCopy = override;
  v4 = +[NDOServerVersionUtilities readAPSSupportedOverride];
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "readAPSSupportedOverride = %@", &v6, 0xCu);
  }

  if (overrideCopy)
  {
    overrideCopy[2](overrideCopy, v4);
  }
}

- (void)getDecodedParamsForPath:(id)path withReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100014E94;
    v7[3] = &unk_10009AC80;
    v8 = replyCopy;
    [NDOServerVersionUtilities getDecodedParamsForPath:path withCompletion:v7];
  }
}

- (void)getClientConfigurationWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[NDOServerVersionUtilities clientConfig];
  (*(reply + 2))(replyCopy, v5);
}

- (void)defaultDevice:(id)device
{
  deviceCopy = device;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  defaultDevice = [deviceProvider defaultDevice];
  (*(device + 2))(deviceCopy, defaultDevice);
}

- (void)pairedWatches:(id)watches
{
  watchesCopy = watches;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedWatches = [deviceProvider pairedWatches];
  allValues = [pairedWatches allValues];
  (*(watches + 2))(watchesCopy, allValues);
}

- (void)pairedBTDevices:(id)devices
{
  devicesCopy = devices;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedBTDevices = [deviceProvider pairedBTDevices];
  allValues = [pairedBTDevices allValues];
  (*(devices + 2))(devicesCopy, allValues);
}

- (void)pairedBTPioneerDevices:(id)devices
{
  devicesCopy = devices;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedBTPioneerDevices = [deviceProvider pairedBTPioneerDevices];
  allValues = [pairedBTPioneerDevices allValues];
  (*(devices + 2))(devicesCopy, allValues);
}

- (void)allFUPEligibleDevices:(id)devices
{
  devicesCopy = devices;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  allFUPEligibleDevices = [deviceProvider allFUPEligibleDevices];
  allValues = [allFUPEligibleDevices allValues];
  (*(devices + 2))(devicesCopy, allValues);
}

- (void)primaryFUPEligibleDevices:(id)devices
{
  devicesCopy = devices;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  primaryFUPEligibleDevices = [deviceProvider primaryFUPEligibleDevices];
  allValues = [primaryFUPEligibleDevices allValues];
  (*(devices + 2))(devicesCopy, allValues);
}

- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  defaultDevice = [deviceProvider defaultDevice];

  serialNumber = [defaultDevice serialNumber];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001538C;
  v12[3] = &unk_10009ACA8;
  selfCopy = self;
  v15 = replyCopy;
  v13 = defaultDevice;
  v10 = replyCopy;
  v11 = defaultDevice;
  [(NDOAgent *)self getWarrantyUsingPolicy:policy serialNumber:serialNumber sessionID:0 params:0 withReply:v12];
}

- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params withReply:(id)reply
{
  replyCopy = reply;
  paramsCopy = params;
  dCopy = d;
  devicesCopy = devices;
  v14 = [[NDOWarrantyDownloader alloc] initWithCallingProcessBundleID:self->_callingProcessBundleID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000155A0;
  v16[3] = &unk_10009ACD0;
  v17 = replyCopy;
  v15 = replyCopy;
  [(NDOWarrantyDownloader *)v14 downloadDeviceForLocalDevices:devicesCopy sessionID:dCopy params:paramsCopy completionHandler:v16];
}

- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply
{
  numberCopy = number;
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 dictionaryForKey:@"PairedWatchesSerialNumbers"];

  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [v20 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

  if (v19 | v21)
  {
    policyCopy = policy;
    v22 = [v19 objectForKeyedSubscript:numberCopy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [v21 objectForKeyedSubscript:numberCopy];
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

      numberCopy = v27;
    }

    policy = policyCopy;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000157FC;
  v32[3] = &unk_10009ACF8;
  v33 = numberCopy;
  selfCopy = self;
  v35 = replyCopy;
  followupCopy = followup;
  v29 = replyCopy;
  v30 = numberCopy;
  [(NDOAgent *)self getWarrantyUsingPolicy:policy serialNumber:v30 sessionID:dCopy params:paramsCopy withReply:v32];
}

- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  replyCopy = reply;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  deviceProvider = [(NDOAgent *)self deviceProvider];
  primaryFUPEligibleDevices = [deviceProvider primaryFUPEligibleDevices];
  allValues = [primaryFUPEligibleDevices allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100015C5C;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = policy;
  [allValues enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015E7C;
  block[3] = &unk_10009AD98;
  v16 = replyCopy;
  v17 = v20;
  upsCopy = ups;
  block[4] = self;
  v14 = replyCopy;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getEligibleBluetoothAndWatchDeviceInfos:(id)infos
{
  infosCopy = infos;
  v12 = objc_opt_new();
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedWatches = [deviceProvider pairedWatches];
  allValues = [pairedWatches allValues];
  [v12 addObjectsFromArray:allValues];

  deviceProvider2 = [(NDOAgent *)self deviceProvider];
  pairedBTDevices = [deviceProvider2 pairedBTDevices];
  allValues2 = [pairedBTDevices allValues];
  [v12 addObjectsFromArray:allValues2];

  v11 = [v12 copy];
  [(NDOAgent *)self _getInfosForDevices:v11 usingPolicy:2 updateFollowUps:1 withReply:infosCopy];
}

- (void)_getInfosForDevices:(id)devices usingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  devicesCopy = devices;
  replyCopy = reply;
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
  v19[6] = policy;
  v19[4] = self;
  [devicesCopy enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016518;
  block[3] = &unk_10009AD98;
  v16 = replyCopy;
  v17 = v20;
  upsCopy = ups;
  block[4] = self;
  v14 = replyCopy;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getBTDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  replyCopy = reply;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedBTDevices = [deviceProvider pairedBTDevices];
  allValues = [pairedBTDevices allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100016800;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = policy;
  [allValues enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016A20;
  block[3] = &unk_10009AD98;
  v16 = replyCopy;
  v17 = v20;
  upsCopy = ups;
  block[4] = self;
  v14 = replyCopy;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  replyCopy = reply;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100001F0C;
  v20[4] = sub_100003F8C;
  v21 = +[NSMutableArray array];
  deviceProvider = [(NDOAgent *)self deviceProvider];
  pairedBTPioneerDevices = [deviceProvider pairedBTPioneerDevices];
  allValues = [pairedBTPioneerDevices allValues];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100016CF4;
  v19[3] = &unk_10009AD70;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = policy;
  [allValues enumerateObjectsUsingBlock:v19];
  policyLookupQueue = self->_policyLookupQueue;
  group = self->_group;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F14;
  block[3] = &unk_10009AD98;
  v16 = replyCopy;
  v17 = v20;
  upsCopy = ups;
  block[4] = self;
  v14 = replyCopy;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v20, 8);
}

- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  warrantyProvider = [(NDOAgent *)self warrantyProvider];
  [warrantyProvider dismissFollowUpForSerialNumber:numberCopy];

  completionCopy[2](completionCopy, 1);
}

- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  warrantyProvider = [(NDOAgent *)self warrantyProvider];
  [warrantyProvider dismissNotificationForSerialNumber:numberCopy];

  completionCopy[2](completionCopy, 1);
}

- (void)getWarrantyUsingPolicy:(unint64_t)policy params:(id)params withReply:(id)reply
{
  replyCopy = reply;
  paramsCopy = params;
  deviceProvider = [(NDOAgent *)self deviceProvider];
  defaultDevice = [deviceProvider defaultDevice];
  serialNumber = [defaultDevice serialNumber];
  [(NDOAgent *)self getWarrantyUsingPolicy:policy serialNumber:serialNumber sessionID:0 params:paramsCopy withReply:replyCopy];
}

- (void)getWarrantyUsingPolicy:(unint64_t)policy serialNumber:(id)number sessionID:(id)d params:(id)params withReply:(id)reply
{
  numberCopy = number;
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
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
  v14 = COERCE_DOUBLE(numberCopy);
  v59 = v14;
  v52 = replyCopy;
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
    policyCopy = policy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "getting warranty using policy %@: %lu", buf, 0x16u);
  }

  warrantyProvider = [(NDOAgent *)self warrantyProvider];
  v17 = [warrantyProvider cachedWarrantyForSerialNumber:*&v14];
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
      policyCopy = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Has cache: %@ with cached warranty : %@", buf, 0x16u);
    }

    warrantyProvider2 = [(NDOAgent *)self warrantyProvider];
    [warrantyProvider2 cachedWarrantyVersionForSerialNumber:*&v14];
    *&v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    if ([v22 isEqualToString:@"2"])
    {
      warrantyProvider3 = [(NDOAgent *)self warrantyProvider];
      [warrantyProvider3 cachedWarrantyLocaleForSerialNumber:*&v14];
      *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v25 = +[NSLocale preferredLocale];
      localeIdentifier = [v25 localeIdentifier];
      v27 = [v24 isEqualToString:localeIdentifier];

      if (v27)
      {
        warrantyProvider4 = [(NDOAgent *)self warrantyProvider];
        isSignedInToiCloud = [warrantyProvider4 isSignedInToiCloud];

        if (isSignedInToiCloud)
        {
          v30 = _NDOLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v74 = *&v24;
            v75 = 2112;
            policyCopy = v22;
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
          localeIdentifier2 = [v32 localeIdentifier];
          *buf = 138412546;
          v74 = *&v24;
          v75 = 2112;
          policyCopy = localeIdentifier2;
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
        policyCopy = @"2";
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

  if (policy == 2)
  {
    *(v70 + 24) = 0;
LABEL_38:
    v45 = 1;
    goto LABEL_46;
  }

  if (policy)
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

  warrantyProvider5 = [(NDOAgent *)self warrantyProvider];
  v37 = [warrantyProvider5 lastUpdatedDateForSerialNumber:*&v14];

  if (v37)
  {
    [v37 timeIntervalSinceNow];
    v39 = v38;
    warrantyProvider6 = [(NDOAgent *)self warrantyProvider];
    [warrantyProvider6 cachedWarrantyValidityDurationForSerialNumber:*&v14];
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
    LODWORD(policyCopy) = v45;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldDownloadWarranty: %d", buf, 0x12u);
  }

  if (v45)
  {
    warrantyProvider7 = [(NDOAgent *)self warrantyProvider];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100017C08;
    v56[3] = &unk_10009ADE8;
    v57 = v55;
    [warrantyProvider7 downloadWarrantyForSerialNumber:*&v14 sessionID:dCopy params:paramsCopy completionHandler:v56];
  }

  else
  {
    (v55[2])(v55, 0);
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);
}

- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent clearUserInitiatedFollowUpDismissalForSerialNumber:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [NDOFollowUpDismissalTracker eraseFollowUpDismissalForDeviceSerial:numberCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)clearAllUserInitiatedFollowUpDismissalsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent clearAllUserInitiatedFollowUpDismissalsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  +[NDOFollowUpDismissalTracker eraseAllFollowUpDismissals];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent storeUserInitiatedFollowUpDismissalForSerialNumber:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [NDOFollowUpDismissalTracker storeFollowUpDismissalWithDeviceSerial:numberCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)getLocalDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent getLocalDeviceListWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getLocalDeviceListWithCompletion:replyCopy];
}

- (void)getRemoteDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136380675;
    v6 = "[NDOAgent getRemoteDeviceListWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{private}s", &v5, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getRemoteDeviceListWithCompletion:replyCopy];
}

- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  dataCopy = data;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136380675;
    v12 = "[NDOAgent removePromoSectionWithHashValue:andAckData:withReply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{private}s", &v11, 0xCu);
  }

  v10 = +[_TtC8ndoagent19NDOCompositionLayer uiActionHandler];
  [v10 removeAndAckDismissedPromoFor:value actionData:dataCopy];

  replyCopy[2](replyCopy);
}

- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136380675;
    v24 = "[NDOAgent getAmsPropertiesForContext:withReply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v23, 0xCu);
  }

  if (+[NDOUtilities isInternal])
  {
    serialNumber = [contextCopy serialNumber];

    if (serialNumber)
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      v10 = [v9 dictionaryForKey:@"PairedWatchesSerialNumbers"];

      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

      serialNumber2 = [contextCopy serialNumber];
      v14 = [v10 objectForKeyedSubscript:serialNumber2];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        serialNumber3 = [contextCopy serialNumber];
        v15 = [v12 objectForKeyedSubscript:serialNumber3];

        if (!v15)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      v17 = _NDOLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100073DA4(v15, contextCopy, v17);
      }

      v18 = [NDOAMSPropertiesRequestContext alloc];
      requestType = [contextCopy requestType];
      universalLinkPath = [contextCopy universalLinkPath];
      additionalBody = [contextCopy additionalBody];
      v22 = [v18 initWithRequestType:requestType serialNumber:v15 universalLinkPath:universalLinkPath additionalBody:additionalBody];

      contextCopy = v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  [_TtC8ndoagent20NDOAgentSwiftHelpers getAmsPropertiesFor:contextCopy completion:replyCopy];
}

- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136380675;
    v9 = "[NDOAgent getLocalDeviceWarrantyForSerialNumber:withReply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{private}s", &v8, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getLocalDeviceWarrantyFor:numberCopy completion:replyCopy];
}

- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply
{
  replyCopy = reply;
  headersCopy = headers;
  numberCopy = number;
  v10 = _NDOLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136380675;
    v12 = "[NDOAgent getRemoteDeviceWarrantyForSerialNumber:withAdditionalHeaders:withReply:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{private}s", &v11, 0xCu);
  }

  [_TtC8ndoagent19NDOCompositionLayer getRemoteDeviceWarrantyFor:numberCopy with:headersCopy completion:replyCopy];
}

- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply
{
  numberCopy = number;
  replyCopy = reply;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100001F0C;
  v26 = sub_100003F8C;
  v27 = [_TtC8ndoagent19NDOCompositionLayer makeWarrantyPropertiesLoaderFor:policy];
  if (v23[5])
  {
    if (+[NDOUtilities isInternal])
    {
      v9 = +[NSUserDefaults standardUserDefaults];
      v10 = [v9 dictionaryForKey:@"PairedWatchesSerialNumbers"];

      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

      v13 = [v10 objectForKeyedSubscript:numberCopy];
      if (v13 || ([v12 objectForKeyedSubscript:numberCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = _NDOLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_100073E50();
        }

        v15 = v13;
        numberCopy = v15;
      }
    }

    v16 = v23[5];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100018860;
    v19[3] = &unk_10009AE10;
    v21 = &v22;
    v20 = replyCopy;
    [v16 fetchWarrantyPropertiesFor:numberCopy completionHandler:v19];
    v17 = v20;
  }

  else
  {
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100073EC4(policy, v18);
    }

    v17 = [NSError errorWithDomain:@"com.apple.newDeviceOutreach" code:-400 userInfo:&off_10009F7D0];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  _Block_object_dispose(&v22, 8);
}

- (void)dismissFollowUps:(id)ups completion:(id)completion
{
  completionCopy = completion;
  upsCopy = ups;
  v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  v12 = 0;
  v8 = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:upsCopy error:&v12];

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

  (completionCopy)[2](completionCopy, v11);
}

- (void)handleInternalCommand:(id)command withReply:(id)reply
{
  replyCopy = reply;
  v6 = [_TtC8ndoagent28NDOAgentInternalDebugHelpers handleInternalCommand:command];
  replyCopy[2](replyCopy, v6);
}

@end