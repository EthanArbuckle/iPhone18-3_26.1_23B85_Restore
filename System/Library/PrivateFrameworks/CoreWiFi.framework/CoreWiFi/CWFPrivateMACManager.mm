@interface CWFPrivateMACManager
- (BOOL)__calloutToAllowRotation;
- (BOOL)allowUserJoinFailureUIForNetworkProfile:(id)profile;
- (CWFPrivateMACManager)init;
- (CWFPrivateMACManager)initWithInterfaceName:(id)name hardwareMACAddress:(id)address;
- (NSData)deviceKey;
- (NSData)rotationKey;
- (NSDate)rotationKeyUpdatedAt;
- (id)__calloutToGetEffectiveHardwareMACAddress;
- (id)privateMACAddressForNetworkProfile:(id)profile;
- (id)setNetworkIDForAssociationWithMACAddress:(id)address networkProfile:(id)profile;
- (int64_t)privateMACAddressModeForNetworkProfile:(id)profile;
- (int64_t)systemSetting;
- (int64_t)temporaryUserSettingForNetworkProfile:(id)profile;
- (void)clearTemporaryUserSettings;
- (void)invalidate;
- (void)setDeviceKey:(id)key;
- (void)setRotationKey:(id)key;
- (void)setRotationKeyUpdatedAt:(id)at;
- (void)setSystemSetting:(int64_t)setting;
- (void)setTemporaryUserSetting:(int64_t)setting networkProfile:(id)profile;
- (void)setUserJoinFailureUIState:(BOOL)state networkProfile:(id)profile;
- (void)submitPrivateMACStatsMetricWithEventType:(id)type networkProfile:(id)profile;
@end

@implementation CWFPrivateMACManager

- (CWFPrivateMACManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFPrivateMACManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (CWFPrivateMACManager)initWithInterfaceName:(id)name hardwareMACAddress:(id)address
{
  nameCopy = name;
  addressCopy = address;
  v31.receiver = self;
  v31.super_class = CWFPrivateMACManager;
  v9 = [(CWFPrivateMACManager *)&v31 init];
  v10 = v9;
  if (!nameCopy)
  {
    goto LABEL_15;
  }

  if (!v9)
  {
    rotationKeyUpdatedAt = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&v9->_interfaceName, name);
  if (!addressCopy)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v10->_hardwareMACAddress, address);
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.corewifi.private-mac.target", v11);
  targetQueue = v10->_targetQueue;
  v10->_targetQueue = v12;

  if (!v10->_targetQueue)
  {
    goto LABEL_15;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  privateMACAddressCache = v10->_privateMACAddressCache;
  v10->_privateMACAddressCache = v14;

  if (!v10->_privateMACAddressCache)
  {
    goto LABEL_15;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  privateMACAddressCacheIDList = v10->_privateMACAddressCacheIDList;
  v10->_privateMACAddressCacheIDList = v16;

  if (!v10->_privateMACAddressCacheIDList)
  {
    goto LABEL_15;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userJoinFailureTimestampMap = v10->_userJoinFailureTimestampMap;
  v10->_userJoinFailureTimestampMap = v18;

  if (!v10->_userJoinFailureTimestampMap)
  {
    goto LABEL_15;
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userJoinFailureCountMap = v10->_userJoinFailureCountMap;
  v10->_userJoinFailureCountMap = v20;

  if (!v10->_userJoinFailureCountMap)
  {
    goto LABEL_15;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tempUserSettingMap = v10->_tempUserSettingMap;
  v10->_tempUserSettingMap = v22;

  if (v10->_tempUserSettingMap)
  {
    v10->_rotationInterval = 86400;
    if (os_variant_has_internal_content() && _os_feature_enabled_impl())
    {
      v10->_rotationInterval = 60;
    }

    v24 = sub_1E0BEF1AC(0x100uLL);
    deviceKey = v10->_deviceKey;
    v10->_deviceKey = v24;

    v26 = sub_1E0BEF1AC(0x100uLL);
    rotationKey = v10->_rotationKey;
    v10->_rotationKey = v26;

    date = [MEMORY[0x1E695DF00] date];
    rotationKeyUpdatedAt = v10->_rotationKeyUpdatedAt;
    v10->_rotationKeyUpdatedAt = date;
  }

  else
  {
LABEL_15:
    rotationKeyUpdatedAt = v10;
    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)invalidate
{
  [(CWFPrivateMACManager *)self setUpdatedDeviceKeyHandler:0];
  [(CWFPrivateMACManager *)self setUpdatedRotationKeyHandler:0];
  [(CWFPrivateMACManager *)self setUpdatedSystemSettingHandler:0];

  [(CWFPrivateMACManager *)self setUpdatedNetworkIDHandler:0];
}

- (NSData)rotationKey
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_rotationKey;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRotationKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rotationKey = selfCopy->_rotationKey;
  if (rotationKey == keyCopy || keyCopy && rotationKey && ([(NSData *)rotationKey isEqual:keyCopy]& 1) != 0)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_storeStrong(&selfCopy->_rotationKey, key);
    [(NSMutableDictionary *)selfCopy->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)selfCopy->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(selfCopy);

    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CWFHexadecimalStringFromData(keyCopy);
      redactedForWiFi = [v11 redactedForWiFi];
      rotationInterval = selfCopy->_rotationInterval;
      v17 = 138543618;
      v18 = redactedForWiFi;
      v19 = 2048;
      v20 = rotationInterval;
      _os_log_send_and_compose_impl();
    }

    targetQueue = [(CWFPrivateMACManager *)selfCopy targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C10D9C;
    block[3] = &unk_1E86E6010;
    block[4] = selfCopy;
    dispatch_async(targetQueue, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSDate)rotationKeyUpdatedAt
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_rotationKeyUpdatedAt;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRotationKeyUpdatedAt:(id)at
{
  v17 = *MEMORY[0x1E69E9840];
  atCopy = at;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rotationKeyUpdatedAt = selfCopy->_rotationKeyUpdatedAt;
  if (rotationKeyUpdatedAt == atCopy || atCopy && rotationKeyUpdatedAt && ([(NSDate *)rotationKeyUpdatedAt isEqual:atCopy]& 1) != 0)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_storeStrong(&selfCopy->_rotationKeyUpdatedAt, at);
    [(NSMutableDictionary *)selfCopy->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)selfCopy->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(selfCopy);

    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      rotationInterval = selfCopy->_rotationInterval;
      v15 = 134217984;
      v16 = rotationInterval;
      _os_log_send_and_compose_impl();
    }

    targetQueue = [(CWFPrivateMACManager *)selfCopy targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C11088;
    block[3] = &unk_1E86E6010;
    block[4] = selfCopy;
    dispatch_async(targetQueue, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSData)deviceKey
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceKey;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDeviceKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceKey = selfCopy->_deviceKey;
  if (deviceKey == keyCopy || keyCopy && deviceKey && ([(NSData *)deviceKey isEqual:keyCopy]& 1) != 0)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_storeStrong(&selfCopy->_deviceKey, key);
    [(NSMutableDictionary *)selfCopy->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)selfCopy->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(selfCopy);

    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CWFHexadecimalStringFromData(keyCopy);
      [v11 redactedForWiFi];
      v16 = v15 = 138543362;
      _os_log_send_and_compose_impl();
    }

    targetQueue = [(CWFPrivateMACManager *)selfCopy targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1139C;
    block[3] = &unk_1E86E6010;
    block[4] = selfCopy;
    dispatch_async(targetQueue, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (int64_t)systemSetting
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemSetting = selfCopy->_systemSetting;
  objc_sync_exit(selfCopy);

  return systemSetting;
}

- (void)setSystemSetting:(int64_t)setting
{
  v14 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_systemSetting == setting)
  {
    objc_sync_exit(obj);
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    obj->_systemSetting = setting;
    [(NSMutableDictionary *)obj->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)obj->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(obj);

    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1E0BEF2F4(setting);
      v13 = v12 = 138543362;
      _os_log_send_and_compose_impl();
    }

    targetQueue = [(CWFPrivateMACManager *)obj targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C11680;
    block[3] = &unk_1E86E6010;
    block[4] = obj;
    dispatch_async(targetQueue, block);

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)__calloutToAllowRotation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B89A70);
  targetQueue = [(CWFPrivateMACManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C11858;
  v7[3] = &unk_1E86E63D0;
  v9 = &v13;
  v10 = v11;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  dispatch_async(targetQueue, v7);

  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(targetQueue) = *(v14 + 24);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return targetQueue;
}

- (id)privateMACAddressForNetworkProfile:(id)profile
{
  v79 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  identifier = [profileCopy identifier];

  if (!identifier)
  {
    v62 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v64 = CWFErrorWithDescription(v62, 22, v63);
LABEL_49:
    v26 = v64;

    rotationKey = 0;
    deviceKey = 0;
LABEL_51:
    cachedPrivateMACAddress3 = 0;
    goto LABEL_34;
  }

  if ([(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:profileCopy]== 1)
  {
    v65 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v64 = CWFErrorWithDescription(v65, 45, v63);
    goto LABEL_49;
  }

  if ([(CWFPrivateMACManager *)self __calloutToAllowRotation])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    rotationInterval = selfCopy->_rotationInterval;
    [(NSDate *)selfCopy->_rotationKeyUpdatedAt timeIntervalSinceReferenceDate];
    if (ceil(v8 / rotationInterval) != ceil(v10 / selfCopy->_rotationInterval))
    {
      v11 = sub_1E0BEF1AC(0x100uLL);
      [(CWFPrivateMACManager *)selfCopy setRotationKey:v11];

      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
      [(CWFPrivateMACManager *)selfCopy setRotationKeyUpdatedAt:v12];
    }

    objc_sync_exit(selfCopy);
  }

  deviceKey = [(CWFPrivateMACManager *)self deviceKey];
  if (!deviceKey)
  {
    v66 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v64 = CWFErrorWithDescription(v66, 6, v63);
    goto LABEL_49;
  }

  rotationKey = [(CWFPrivateMACManager *)self rotationKey];
  if (!rotationKey)
  {
    v67 = *MEMORY[0x1E696A798];
    v68 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v26 = CWFErrorWithDescription(v67, 6, v68);

    rotationKey = 0;
    goto LABEL_51;
  }

  if ([profileCopy isPublicAirPlayNetwork])
  {
    cachedPrivateMACAddress = [profileCopy cachedPrivateMACAddress];
    if (!cachedPrivateMACAddress)
    {
      goto LABEL_17;
    }

    lastJoinedAt = [profileCopy lastJoinedAt];
    [lastJoinedAt timeIntervalSinceReferenceDate];
    v18 = v17;
    lastDisconnectTimestamp = [profileCopy lastDisconnectTimestamp];
    [lastDisconnectTimestamp timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 <= v21)
    {
LABEL_17:
      v23 = sub_1E0BEF1AC(0x100uLL);

      hardwareMACAddress = [(CWFPrivateMACManager *)self hardwareMACAddress];
      v70 = 0;
      cachedPrivateMACAddress3 = sub_1E0BEF394(profileCopy, hardwareMACAddress, deviceKey, v23, &v70);
      v26 = v70;

      rotationKey = v23;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v22 = 120.0;
    }

    else
    {
      v22 = 1209600.0;
    }
  }

  else
  {
    v22 = 1209600.0;
  }

  cachedPrivateMACAddress2 = [profileCopy cachedPrivateMACAddress];
  if (cachedPrivateMACAddress2 && [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:profileCopy]== 2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v29 = v28;
    cachedPrivateMACAddressUpdatedAt = [profileCopy cachedPrivateMACAddressUpdatedAt];
    [cachedPrivateMACAddressUpdatedAt timeIntervalSinceReferenceDate];
    if (v29 - v31 < v22)
    {

LABEL_33:
      cachedPrivateMACAddress3 = [profileCopy cachedPrivateMACAddress];
      v26 = 0;
      goto LABEL_34;
    }

    lastJoinedAt2 = [profileCopy lastJoinedAt];
    [lastJoinedAt2 timeIntervalSinceReferenceDate];
    v49 = v48;
    lastDisconnectTimestamp2 = [profileCopy lastDisconnectTimestamp];
    [lastDisconnectTimestamp2 timeIntervalSinceReferenceDate];
    v52 = v51;

    if (v49 > v52)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  cachedPrivateMACAddress4 = [profileCopy cachedPrivateMACAddress];
  if (cachedPrivateMACAddress4)
  {
    v33 = [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:profileCopy];

    if (v33 == 3)
    {
      goto LABEL_33;
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  privateMACAddressCache = selfCopy2->_privateMACAddressCache;
  identifier2 = [profileCopy identifier];
  v37 = [(NSMutableDictionary *)privateMACAddressCache objectForKeyedSubscript:identifier2];

  if (v37)
  {
    cachedPrivateMACAddress3 = v37;
    v26 = 0;
  }

  else
  {
    hardwareMACAddress2 = [(CWFPrivateMACManager *)selfCopy2 hardwareMACAddress];
    v69 = 0;
    cachedPrivateMACAddress3 = sub_1E0BEF394(profileCopy, hardwareMACAddress2, deviceKey, rotationKey, &v69);
    v26 = v69;

    if (cachedPrivateMACAddress3)
    {
      v39 = selfCopy2->_privateMACAddressCache;
      identifier3 = [profileCopy identifier];
      [(NSMutableDictionary *)v39 setObject:cachedPrivateMACAddress3 forKeyedSubscript:identifier3];

      privateMACAddressCacheIDList = selfCopy2->_privateMACAddressCacheIDList;
      identifier4 = [profileCopy identifier];
      [(NSMutableArray *)privateMACAddressCacheIDList removeObject:identifier4];

      v43 = selfCopy2->_privateMACAddressCacheIDList;
      identifier5 = [profileCopy identifier];
      [(NSMutableArray *)v43 insertObject:identifier5 atIndex:0];

      if ([(NSMutableArray *)selfCopy2->_privateMACAddressCacheIDList count]== 10)
      {
        v45 = selfCopy2->_privateMACAddressCache;
        lastObject = [(NSMutableArray *)selfCopy2->_privateMACAddressCacheIDList lastObject];
        [(NSMutableDictionary *)v45 setObject:0 forKeyedSubscript:lastObject];

        [(NSMutableArray *)selfCopy2->_privateMACAddressCacheIDList removeLastObject];
      }
    }
  }

  objc_sync_exit(selfCopy2);
LABEL_34:
  v53 = CWFGetOSLog();
  if (v53)
  {
    v54 = CWFGetOSLog();
  }

  else
  {
    v54 = MEMORY[0x1E69E9C10];
    v55 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    if (cachedPrivateMACAddress3)
    {
      v56 = "Successfully created";
    }

    else
    {
      v56 = "FAILED to create";
    }

    redactedForWiFi = [cachedPrivateMACAddress3 redactedForWiFi];
    v71 = 136446978;
    v72 = v56;
    v73 = 2114;
    v74 = redactedForWiFi;
    v75 = 2114;
    v76 = profileCopy;
    v77 = 2114;
    v78 = v26;
    _os_log_send_and_compose_impl();
  }

  if (v26)
  {
    v58 = 0;
  }

  else
  {
    v58 = cachedPrivateMACAddress3;
  }

  v59 = v58;

  v60 = *MEMORY[0x1E69E9840];
  return v58;
}

- (id)__calloutToGetEffectiveHardwareMACAddress
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1E0BC2CE4;
  v18 = sub_1E0BC61BC;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B899D0);
  targetQueue = [(CWFPrivateMACManager *)self targetQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C12268;
  v8[3] = &unk_1E86E63D0;
  v10 = &v14;
  v11 = v12;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  dispatch_async(targetQueue, v8);

  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v15[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (int64_t)privateMACAddressModeForNetworkProfile:(id)profile
{
  profileCopy = profile;
  v5 = [profileCopy effectivePrivateMACModeWithSystemSetting:{-[CWFPrivateMACManager systemSetting](self, "systemSetting")}];
  addedAt = [profileCopy addedAt];

  if (!addedAt)
  {
    v7 = [(CWFPrivateMACManager *)self temporaryUserSettingForNetworkProfile:profileCopy];
    if (v7)
    {
      v5 = v7;
    }
  }

  return v5;
}

- (void)submitPrivateMACStatsMetricWithEventType:(id)type networkProfile:(id)profile
{
  v38 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  profileCopy = profile;
  if (!objc_opt_class())
  {
    goto LABEL_55;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:typeCopy forKeyedSubscript:@"privateMacEvent"];
  v9 = [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:profileCopy];
  v10 = [(CWFPrivateMACManager *)self privateMACAddressForNetworkProfile:profileCopy];
  hardwareMACAddress = [(CWFPrivateMACManager *)self hardwareMACAddress];
  __calloutToGetEffectiveHardwareMACAddress = [(CWFPrivateMACManager *)self __calloutToGetEffectiveHardwareMACAddress];
  v13 = __calloutToGetEffectiveHardwareMACAddress;
  switch(v9)
  {
    case 3:
      if (__calloutToGetEffectiveHardwareMACAddress != v10 && (!__calloutToGetEffectiveHardwareMACAddress || !v10 || ([__calloutToGetEffectiveHardwareMACAddress isEqual:v10] & 1) == 0))
      {
        cachedPrivateMACAddress = [profileCopy cachedPrivateMACAddress];
        v16 = cachedPrivateMACAddress;
        if (v13 == cachedPrivateMACAddress)
        {
        }

        else
        {
          if (!v13)
          {
            goto LABEL_28;
          }

          cachedPrivateMACAddress2 = [profileCopy cachedPrivateMACAddress];
          if (!cachedPrivateMACAddress2)
          {
            goto LABEL_28;
          }

          v23 = cachedPrivateMACAddress2;
          cachedPrivateMACAddress3 = [profileCopy cachedPrivateMACAddress];
          v25 = [v13 isEqual:cachedPrivateMACAddress3];

          if ((v25 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      v14 = @"Static";
      goto LABEL_34;
    case 2:
      if (__calloutToGetEffectiveHardwareMACAddress == v10 || __calloutToGetEffectiveHardwareMACAddress && v10 && ([__calloutToGetEffectiveHardwareMACAddress isEqual:v10] & 1) != 0)
      {
        goto LABEL_31;
      }

      cachedPrivateMACAddress4 = [profileCopy cachedPrivateMACAddress];
      v16 = cachedPrivateMACAddress4;
      if (v13 == cachedPrivateMACAddress4)
      {

        goto LABEL_31;
      }

      if (v13)
      {
        cachedPrivateMACAddress5 = [profileCopy cachedPrivateMACAddress];
        if (cachedPrivateMACAddress5)
        {
          v18 = cachedPrivateMACAddress5;
          cachedPrivateMACAddress6 = [profileCopy cachedPrivateMACAddress];
          v20 = [v13 isEqual:cachedPrivateMACAddress6];

          if ((v20 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_31:
          v14 = @"Rotating";
          goto LABEL_34;
        }
      }

LABEL_28:

      goto LABEL_29;
    case 1:
      if (__calloutToGetEffectiveHardwareMACAddress == hardwareMACAddress)
      {
        goto LABEL_9;
      }

      v14 = @"Configured";
      if (!__calloutToGetEffectiveHardwareMACAddress || !hardwareMACAddress)
      {
        goto LABEL_34;
      }

      if ([__calloutToGetEffectiveHardwareMACAddress isEqual:hardwareMACAddress])
      {
LABEL_9:
        v14 = @"Physical";
LABEL_34:
        [dictionary setObject:v14 forKeyedSubscript:@"privateMacType"];
        break;
      }

LABEL_29:
      v14 = @"Configured";
      goto LABEL_34;
  }

  privateMACAddressModeUserSetting = [profileCopy privateMACAddressModeUserSetting];
  v27 = MEMORY[0x1E695E118];
  v28 = MEMORY[0x1E695E110];
  if (privateMACAddressModeUserSetting)
  {
    v29 = MEMORY[0x1E695E118];
  }

  else
  {
    v29 = MEMORY[0x1E695E110];
  }

  [dictionary setObject:v29 forKeyedSubscript:@"privateMacToggled"];
  if ([profileCopy privateMACAddressModeConfigurationProfileSetting] == 1)
  {
    v30 = v27;
  }

  else
  {
    v30 = v28;
  }

  [dictionary setObject:v30 forKeyedSubscript:@"privateMacDisabledByProfile"];
  if ([profileCopy privateMACAddressEvaluationState])
  {
    v31 = v27;
  }

  else
  {
    v31 = v28;
  }

  [dictionary setObject:v31 forKeyedSubscript:@"privateMacClassification"];
  if ([profileCopy networkOfInterestHomeState])
  {
    if ([profileCopy networkOfInterestHomeState] != 1 && objc_msgSend(profileCopy, "networkOfInterestHomeState") != 3)
    {
      v27 = v28;
    }

    [dictionary setObject:v27 forKeyedSubscript:@"privateMacNetworkTypeIsHome"];
  }

  v32 = CWFGetOSLog();
  if (v32)
  {
    v33 = CWFGetOSLog();
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  v37 = dictionary;
  v35 = dictionary;
  AnalyticsSendEventLazy();

LABEL_55:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)setUserJoinFailureUIState:(BOOL)state networkProfile:(id)profile
{
  stateCopy = state;
  v35 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  identifier = [profileCopy identifier];

  if (!identifier)
  {
    goto LABEL_16;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  userJoinFailureTimestampMap = selfCopy->_userJoinFailureTimestampMap;
  identifier2 = [profileCopy identifier];
  v11 = [(NSMutableDictionary *)userJoinFailureTimestampMap objectForKeyedSubscript:identifier2];

  userJoinFailureCountMap = selfCopy->_userJoinFailureCountMap;
  identifier3 = [profileCopy identifier];
  v14 = [(NSMutableDictionary *)userJoinFailureCountMap objectForKeyedSubscript:identifier3];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  date = [MEMORY[0x1E695DF00] date];
  v17 = date;
  if (stateCopy)
  {
    if (_os_feature_enabled_impl())
    {
      v18 = [v17 dateByAddingTimeInterval:120.0];
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v25 setHour:5];
      [v25 setMinute:0];
      [v25 setSecond:0];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v18 = [currentCalendar nextDateAfterDate:v17 matchingComponents:v25 options:1024];

      v11 = v25;
    }

    v27 = selfCopy->_userJoinFailureCountMap;
    identifier4 = [profileCopy identifier];
    [(NSMutableDictionary *)v27 setObject:0 forKeyedSubscript:identifier4];

    v29 = selfCopy->_userJoinFailureTimestampMap;
    identifier5 = [profileCopy identifier];
    [(NSMutableDictionary *)v29 setObject:v18 forKeyedSubscript:identifier5];
    v11 = v18;
    goto LABEL_9;
  }

  [date timeIntervalSinceReferenceDate];
  v20 = v19;
  [v11 timeIntervalSinceReferenceDate];
  if (v20 >= v21)
  {
    identifier5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v23 = selfCopy->_userJoinFailureCountMap;
    identifier6 = [profileCopy identifier];
    [(NSMutableDictionary *)v23 setObject:identifier5 forKeyedSubscript:identifier6];

LABEL_9:
  }

  v30 = CWFGetOSLog();
  if (v30)
  {
    v31 = CWFGetOSLog();
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
    v32 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v34 = sub_1E0BCC248(v11);
    _os_log_send_and_compose_impl();
  }

  objc_sync_exit(selfCopy);
LABEL_16:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowUserJoinFailureUIForNetworkProfile:(id)profile
{
  profileCopy = profile;
  identifier = [profileCopy identifier];

  if (identifier)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    userJoinFailureTimestampMap = selfCopy->_userJoinFailureTimestampMap;
    identifier2 = [profileCopy identifier];
    v11 = [(NSMutableDictionary *)userJoinFailureTimestampMap objectForKeyedSubscript:identifier2];
    [v11 timeIntervalSinceReferenceDate];
    if (v8 >= v12)
    {
      userJoinFailureCountMap = selfCopy->_userJoinFailureCountMap;
      identifier3 = [profileCopy identifier];
      v16 = [(NSMutableDictionary *)userJoinFailureCountMap objectForKeyedSubscript:identifier3];
      v13 = [v16 unsignedIntegerValue] > 1;
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)temporaryUserSettingForNetworkProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [profileCopy identifier];

  if (identifier)
  {
    tempUserSettingMap = selfCopy->_tempUserSettingMap;
    identifier2 = [profileCopy identifier];
    v9 = [(NSMutableDictionary *)tempUserSettingMap objectForKeyedSubscript:identifier2];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  objc_sync_exit(selfCopy);

  return integerValue;
}

- (void)setTemporaryUserSetting:(int64_t)setting networkProfile:(id)profile
{
  v21 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [profileCopy identifier];

  if (identifier)
  {
    if (setting)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:setting];
      tempUserSettingMap = selfCopy->_tempUserSettingMap;
      identifier2 = [profileCopy identifier];
      [(NSMutableDictionary *)tempUserSettingMap setObject:v9 forKeyedSubscript:identifier2];

      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = sub_1E0BEF2F4(setting);
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v14 = selfCopy->_tempUserSettingMap;
      identifier3 = [profileCopy identifier];
      [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:identifier3];

      v16 = CWFGetOSLog();
      if (v16)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }
    }
  }

  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)clearTemporaryUserSettings
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_tempUserSettingMap removeAllObjects];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_sync_exit(selfCopy);
}

- (id)setNetworkIDForAssociationWithMACAddress:(id)address networkProfile:(id)profile
{
  v54 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  profileCopy = profile;
  hardwareMACAddress = addressCopy;
  if (!addressCopy)
  {
    hardwareMACAddress = [(CWFPrivateMACManager *)self hardwareMACAddress];
  }

  v47 = 0;
  v9 = sub_1E0BEF670(profileCopy, hardwareMACAddress, &v47);
  v10 = v47;
  if (!addressCopy)
  {
  }

  if (v9)
  {
    identifier = [profileCopy identifier];

    if (identifier)
    {
      cachedNetworkID = [profileCopy cachedNetworkID];
      v13 = cachedNetworkID;
      if (cachedNetworkID == v9)
      {
      }

      else
      {
        cachedNetworkID2 = [profileCopy cachedNetworkID];
        if (cachedNetworkID2)
        {
          v15 = cachedNetworkID2;
          cachedNetworkID3 = [profileCopy cachedNetworkID];
          v17 = [cachedNetworkID3 isEqual:v9];

          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        targetQueue = [(CWFPrivateMACManager *)self targetQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C13698;
        block[3] = &unk_1E86E6420;
        block[4] = self;
        v46 = profileCopy;
        dispatch_async(targetQueue, block);
      }

LABEL_14:

      interfaceName = [(CWFPrivateMACManager *)self interfaceName];
      v20 = sub_1E0BEF890(v9, interfaceName);
      v10 = 0;
      goto LABEL_15;
    }

    v36 = *MEMORY[0x1E696A798];
    v37 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v38 = CWFErrorWithDescription(v36, 22, v37);

    v39 = CWFGetOSLog();
    if (v39)
    {
      interfaceName = CWFGetOSLog();
    }

    else
    {
      interfaceName = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(interfaceName, OS_LOG_TYPE_ERROR))
    {
      v48 = 138412546;
      v49 = v38;
      v50 = 2114;
      v51 = profileCopy;
      LODWORD(v43) = 22;
      v42 = &v48;
      _os_log_send_and_compose_impl();
    }

    v20 = 0;
    v10 = v38;
  }

  else
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      interfaceName = CWFGetOSLog();
    }

    else
    {
      interfaceName = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(interfaceName, OS_LOG_TYPE_ERROR))
    {
      v48 = 138412546;
      v49 = v10;
      v50 = 2114;
      v51 = profileCopy;
      LODWORD(v43) = 22;
      v42 = &v48;
      _os_log_send_and_compose_impl();
    }

    v20 = 0;
  }

LABEL_15:

  v21 = CWFGetOSLog();
  if (v21)
  {
    v22 = CWFGetOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, (16 * (v10 != 0))))
  {
    v24 = profileCopy;
    v25 = v20;
    v26 = addressCopy;
    if (v10)
    {
      v27 = "FAILED to";
    }

    else
    {
      v27 = "Successfully";
    }

    v28 = [v9 subdataWithRange:{0, 32, v42, v43}];
    v29 = CWFHexadecimalStringFromData(v28);
    [v29 redactedForWiFi];
    v30 = v44 = v9;
    v48 = 136446722;
    v49 = v27;
    addressCopy = v26;
    v20 = v25;
    profileCopy = v24;
    v50 = 2114;
    v51 = v30;
    v52 = 2114;
    v53 = v24;
    _os_log_send_and_compose_impl();

    v9 = v44;
  }

  if (v20)
  {
    v31 = v9;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

@end