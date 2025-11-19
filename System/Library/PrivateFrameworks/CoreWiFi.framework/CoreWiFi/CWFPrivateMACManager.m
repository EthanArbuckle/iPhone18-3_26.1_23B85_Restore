@interface CWFPrivateMACManager
- (BOOL)__calloutToAllowRotation;
- (BOOL)allowUserJoinFailureUIForNetworkProfile:(id)a3;
- (CWFPrivateMACManager)init;
- (CWFPrivateMACManager)initWithInterfaceName:(id)a3 hardwareMACAddress:(id)a4;
- (NSData)deviceKey;
- (NSData)rotationKey;
- (NSDate)rotationKeyUpdatedAt;
- (id)__calloutToGetEffectiveHardwareMACAddress;
- (id)privateMACAddressForNetworkProfile:(id)a3;
- (id)setNetworkIDForAssociationWithMACAddress:(id)a3 networkProfile:(id)a4;
- (int64_t)privateMACAddressModeForNetworkProfile:(id)a3;
- (int64_t)systemSetting;
- (int64_t)temporaryUserSettingForNetworkProfile:(id)a3;
- (void)clearTemporaryUserSettings;
- (void)invalidate;
- (void)setDeviceKey:(id)a3;
- (void)setRotationKey:(id)a3;
- (void)setRotationKeyUpdatedAt:(id)a3;
- (void)setSystemSetting:(int64_t)a3;
- (void)setTemporaryUserSetting:(int64_t)a3 networkProfile:(id)a4;
- (void)setUserJoinFailureUIState:(BOOL)a3 networkProfile:(id)a4;
- (void)submitPrivateMACStatsMetricWithEventType:(id)a3 networkProfile:(id)a4;
@end

@implementation CWFPrivateMACManager

- (CWFPrivateMACManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFPrivateMACManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (CWFPrivateMACManager)initWithInterfaceName:(id)a3 hardwareMACAddress:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = CWFPrivateMACManager;
  v9 = [(CWFPrivateMACManager *)&v31 init];
  v10 = v9;
  if (!v7)
  {
    goto LABEL_15;
  }

  if (!v9)
  {
    rotationKeyUpdatedAt = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&v9->_interfaceName, a3);
  if (!v8)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v10->_hardwareMACAddress, a4);
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

    v28 = [MEMORY[0x1E695DF00] date];
    rotationKeyUpdatedAt = v10->_rotationKeyUpdatedAt;
    v10->_rotationKeyUpdatedAt = v28;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_rotationKey;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRotationKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  rotationKey = v6->_rotationKey;
  if (rotationKey == v5 || v5 && rotationKey && ([(NSData *)rotationKey isEqual:v5]& 1) != 0)
  {
    objc_sync_exit(v6);
  }

  else
  {
    objc_storeStrong(&v6->_rotationKey, a3);
    [(NSMutableDictionary *)v6->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)v6->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(v6);

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
      v11 = CWFHexadecimalStringFromData(v5);
      v12 = [v11 redactedForWiFi];
      rotationInterval = v6->_rotationInterval;
      v17 = 138543618;
      v18 = v12;
      v19 = 2048;
      v20 = rotationInterval;
      _os_log_send_and_compose_impl();
    }

    v14 = [(CWFPrivateMACManager *)v6 targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C10D9C;
    block[3] = &unk_1E86E6010;
    block[4] = v6;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (NSDate)rotationKeyUpdatedAt
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_rotationKeyUpdatedAt;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRotationKeyUpdatedAt:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  rotationKeyUpdatedAt = v6->_rotationKeyUpdatedAt;
  if (rotationKeyUpdatedAt == v5 || v5 && rotationKeyUpdatedAt && ([(NSDate *)rotationKeyUpdatedAt isEqual:v5]& 1) != 0)
  {
    objc_sync_exit(v6);
  }

  else
  {
    objc_storeStrong(&v6->_rotationKeyUpdatedAt, a3);
    [(NSMutableDictionary *)v6->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)v6->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(v6);

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
      rotationInterval = v6->_rotationInterval;
      v15 = 134217984;
      v16 = rotationInterval;
      _os_log_send_and_compose_impl();
    }

    v12 = [(CWFPrivateMACManager *)v6 targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C11088;
    block[3] = &unk_1E86E6010;
    block[4] = v6;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSData)deviceKey
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceKey;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDeviceKey:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  deviceKey = v6->_deviceKey;
  if (deviceKey == v5 || v5 && deviceKey && ([(NSData *)deviceKey isEqual:v5]& 1) != 0)
  {
    objc_sync_exit(v6);
  }

  else
  {
    objc_storeStrong(&v6->_deviceKey, a3);
    [(NSMutableDictionary *)v6->_privateMACAddressCache removeAllObjects];
    [(NSMutableArray *)v6->_privateMACAddressCacheIDList removeAllObjects];
    objc_sync_exit(v6);

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
      v11 = CWFHexadecimalStringFromData(v5);
      [v11 redactedForWiFi];
      v16 = v15 = 138543362;
      _os_log_send_and_compose_impl();
    }

    v12 = [(CWFPrivateMACManager *)v6 targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1139C;
    block[3] = &unk_1E86E6010;
    block[4] = v6;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (int64_t)systemSetting
{
  v2 = self;
  objc_sync_enter(v2);
  systemSetting = v2->_systemSetting;
  objc_sync_exit(v2);

  return systemSetting;
}

- (void)setSystemSetting:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_systemSetting == a3)
  {
    objc_sync_exit(obj);
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    obj->_systemSetting = a3;
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
      sub_1E0BEF2F4(a3);
      v13 = v12 = 138543362;
      _os_log_send_and_compose_impl();
    }

    v8 = [(CWFPrivateMACManager *)obj targetQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C11680;
    block[3] = &unk_1E86E6010;
    block[4] = obj;
    dispatch_async(v8, block);

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
  v4 = [(CWFPrivateMACManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C11858;
  v7[3] = &unk_1E86E63D0;
  v9 = &v13;
  v10 = v11;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return v4;
}

- (id)privateMACAddressForNetworkProfile:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];

  if (!v5)
  {
    v62 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v64 = CWFErrorWithDescription(v62, 22, v63);
LABEL_49:
    v26 = v64;

    v14 = 0;
    v13 = 0;
LABEL_51:
    v25 = 0;
    goto LABEL_34;
  }

  if ([(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:v4]== 1)
  {
    v65 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v64 = CWFErrorWithDescription(v65, 45, v63);
    goto LABEL_49;
  }

  if ([(CWFPrivateMACManager *)self __calloutToAllowRotation])
  {
    v6 = self;
    objc_sync_enter(v6);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    rotationInterval = v6->_rotationInterval;
    [(NSDate *)v6->_rotationKeyUpdatedAt timeIntervalSinceReferenceDate];
    if (ceil(v8 / rotationInterval) != ceil(v10 / v6->_rotationInterval))
    {
      v11 = sub_1E0BEF1AC(0x100uLL);
      [(CWFPrivateMACManager *)v6 setRotationKey:v11];

      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
      [(CWFPrivateMACManager *)v6 setRotationKeyUpdatedAt:v12];
    }

    objc_sync_exit(v6);
  }

  v13 = [(CWFPrivateMACManager *)self deviceKey];
  if (!v13)
  {
    v66 = *MEMORY[0x1E696A798];
    v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v64 = CWFErrorWithDescription(v66, 6, v63);
    goto LABEL_49;
  }

  v14 = [(CWFPrivateMACManager *)self rotationKey];
  if (!v14)
  {
    v67 = *MEMORY[0x1E696A798];
    v68 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v26 = CWFErrorWithDescription(v67, 6, v68);

    v14 = 0;
    goto LABEL_51;
  }

  if ([v4 isPublicAirPlayNetwork])
  {
    v15 = [v4 cachedPrivateMACAddress];
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = [v4 lastJoinedAt];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = [v4 lastDisconnectTimestamp];
    [v19 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 <= v21)
    {
LABEL_17:
      v23 = sub_1E0BEF1AC(0x100uLL);

      v24 = [(CWFPrivateMACManager *)self hardwareMACAddress];
      v70 = 0;
      v25 = sub_1E0BEF394(v4, v24, v13, v23, &v70);
      v26 = v70;

      v14 = v23;
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

  v27 = [v4 cachedPrivateMACAddress];
  if (v27 && [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:v4]== 2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v29 = v28;
    v30 = [v4 cachedPrivateMACAddressUpdatedAt];
    [v30 timeIntervalSinceReferenceDate];
    if (v29 - v31 < v22)
    {

LABEL_33:
      v25 = [v4 cachedPrivateMACAddress];
      v26 = 0;
      goto LABEL_34;
    }

    v47 = [v4 lastJoinedAt];
    [v47 timeIntervalSinceReferenceDate];
    v49 = v48;
    v50 = [v4 lastDisconnectTimestamp];
    [v50 timeIntervalSinceReferenceDate];
    v52 = v51;

    if (v49 > v52)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v32 = [v4 cachedPrivateMACAddress];
  if (v32)
  {
    v33 = [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:v4];

    if (v33 == 3)
    {
      goto LABEL_33;
    }
  }

  v34 = self;
  objc_sync_enter(v34);
  privateMACAddressCache = v34->_privateMACAddressCache;
  v36 = [v4 identifier];
  v37 = [(NSMutableDictionary *)privateMACAddressCache objectForKeyedSubscript:v36];

  if (v37)
  {
    v25 = v37;
    v26 = 0;
  }

  else
  {
    v38 = [(CWFPrivateMACManager *)v34 hardwareMACAddress];
    v69 = 0;
    v25 = sub_1E0BEF394(v4, v38, v13, v14, &v69);
    v26 = v69;

    if (v25)
    {
      v39 = v34->_privateMACAddressCache;
      v40 = [v4 identifier];
      [(NSMutableDictionary *)v39 setObject:v25 forKeyedSubscript:v40];

      privateMACAddressCacheIDList = v34->_privateMACAddressCacheIDList;
      v42 = [v4 identifier];
      [(NSMutableArray *)privateMACAddressCacheIDList removeObject:v42];

      v43 = v34->_privateMACAddressCacheIDList;
      v44 = [v4 identifier];
      [(NSMutableArray *)v43 insertObject:v44 atIndex:0];

      if ([(NSMutableArray *)v34->_privateMACAddressCacheIDList count]== 10)
      {
        v45 = v34->_privateMACAddressCache;
        v46 = [(NSMutableArray *)v34->_privateMACAddressCacheIDList lastObject];
        [(NSMutableDictionary *)v45 setObject:0 forKeyedSubscript:v46];

        [(NSMutableArray *)v34->_privateMACAddressCacheIDList removeLastObject];
      }
    }
  }

  objc_sync_exit(v34);
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
    if (v25)
    {
      v56 = "Successfully created";
    }

    else
    {
      v56 = "FAILED to create";
    }

    v57 = [v25 redactedForWiFi];
    v71 = 136446978;
    v72 = v56;
    v73 = 2114;
    v74 = v57;
    v75 = 2114;
    v76 = v4;
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
    v58 = v25;
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
  v4 = [(CWFPrivateMACManager *)self targetQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C12268;
  v8[3] = &unk_1E86E63D0;
  v10 = &v14;
  v11 = v12;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, v8);

  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v15[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (int64_t)privateMACAddressModeForNetworkProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 effectivePrivateMACModeWithSystemSetting:{-[CWFPrivateMACManager systemSetting](self, "systemSetting")}];
  v6 = [v4 addedAt];

  if (!v6)
  {
    v7 = [(CWFPrivateMACManager *)self temporaryUserSettingForNetworkProfile:v4];
    if (v7)
    {
      v5 = v7;
    }
  }

  return v5;
}

- (void)submitPrivateMACStatsMetricWithEventType:(id)a3 networkProfile:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!objc_opt_class())
  {
    goto LABEL_55;
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:v6 forKeyedSubscript:@"privateMacEvent"];
  v9 = [(CWFPrivateMACManager *)self privateMACAddressModeForNetworkProfile:v7];
  v10 = [(CWFPrivateMACManager *)self privateMACAddressForNetworkProfile:v7];
  v11 = [(CWFPrivateMACManager *)self hardwareMACAddress];
  v12 = [(CWFPrivateMACManager *)self __calloutToGetEffectiveHardwareMACAddress];
  v13 = v12;
  switch(v9)
  {
    case 3:
      if (v12 != v10 && (!v12 || !v10 || ([v12 isEqual:v10] & 1) == 0))
      {
        v21 = [v7 cachedPrivateMACAddress];
        v16 = v21;
        if (v13 == v21)
        {
        }

        else
        {
          if (!v13)
          {
            goto LABEL_28;
          }

          v22 = [v7 cachedPrivateMACAddress];
          if (!v22)
          {
            goto LABEL_28;
          }

          v23 = v22;
          v24 = [v7 cachedPrivateMACAddress];
          v25 = [v13 isEqual:v24];

          if ((v25 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      v14 = @"Static";
      goto LABEL_34;
    case 2:
      if (v12 == v10 || v12 && v10 && ([v12 isEqual:v10] & 1) != 0)
      {
        goto LABEL_31;
      }

      v15 = [v7 cachedPrivateMACAddress];
      v16 = v15;
      if (v13 == v15)
      {

        goto LABEL_31;
      }

      if (v13)
      {
        v17 = [v7 cachedPrivateMACAddress];
        if (v17)
        {
          v18 = v17;
          v19 = [v7 cachedPrivateMACAddress];
          v20 = [v13 isEqual:v19];

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
      if (v12 == v11)
      {
        goto LABEL_9;
      }

      v14 = @"Configured";
      if (!v12 || !v11)
      {
        goto LABEL_34;
      }

      if ([v12 isEqual:v11])
      {
LABEL_9:
        v14 = @"Physical";
LABEL_34:
        [v8 setObject:v14 forKeyedSubscript:@"privateMacType"];
        break;
      }

LABEL_29:
      v14 = @"Configured";
      goto LABEL_34;
  }

  v26 = [v7 privateMACAddressModeUserSetting];
  v27 = MEMORY[0x1E695E118];
  v28 = MEMORY[0x1E695E110];
  if (v26)
  {
    v29 = MEMORY[0x1E695E118];
  }

  else
  {
    v29 = MEMORY[0x1E695E110];
  }

  [v8 setObject:v29 forKeyedSubscript:@"privateMacToggled"];
  if ([v7 privateMACAddressModeConfigurationProfileSetting] == 1)
  {
    v30 = v27;
  }

  else
  {
    v30 = v28;
  }

  [v8 setObject:v30 forKeyedSubscript:@"privateMacDisabledByProfile"];
  if ([v7 privateMACAddressEvaluationState])
  {
    v31 = v27;
  }

  else
  {
    v31 = v28;
  }

  [v8 setObject:v31 forKeyedSubscript:@"privateMacClassification"];
  if ([v7 networkOfInterestHomeState])
  {
    if ([v7 networkOfInterestHomeState] != 1 && objc_msgSend(v7, "networkOfInterestHomeState") != 3)
    {
      v27 = v28;
    }

    [v8 setObject:v27 forKeyedSubscript:@"privateMacNetworkTypeIsHome"];
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

  v37 = v8;
  v35 = v8;
  AnalyticsSendEventLazy();

LABEL_55:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)setUserJoinFailureUIState:(BOOL)a3 networkProfile:(id)a4
{
  v4 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 identifier];

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = self;
  objc_sync_enter(v8);
  userJoinFailureTimestampMap = v8->_userJoinFailureTimestampMap;
  v10 = [v6 identifier];
  v11 = [(NSMutableDictionary *)userJoinFailureTimestampMap objectForKeyedSubscript:v10];

  userJoinFailureCountMap = v8->_userJoinFailureCountMap;
  v13 = [v6 identifier];
  v14 = [(NSMutableDictionary *)userJoinFailureCountMap objectForKeyedSubscript:v13];
  v15 = [v14 unsignedIntegerValue];

  v16 = [MEMORY[0x1E695DF00] date];
  v17 = v16;
  if (v4)
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
      v26 = [MEMORY[0x1E695DEE8] currentCalendar];
      v18 = [v26 nextDateAfterDate:v17 matchingComponents:v25 options:1024];

      v11 = v25;
    }

    v27 = v8->_userJoinFailureCountMap;
    v28 = [v6 identifier];
    [(NSMutableDictionary *)v27 setObject:0 forKeyedSubscript:v28];

    v29 = v8->_userJoinFailureTimestampMap;
    v22 = [v6 identifier];
    [(NSMutableDictionary *)v29 setObject:v18 forKeyedSubscript:v22];
    v11 = v18;
    goto LABEL_9;
  }

  [v16 timeIntervalSinceReferenceDate];
  v20 = v19;
  [v11 timeIntervalSinceReferenceDate];
  if (v20 >= v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15 + 1];
    v23 = v8->_userJoinFailureCountMap;
    v24 = [v6 identifier];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

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

  objc_sync_exit(v8);
LABEL_16:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)allowUserJoinFailureUIForNetworkProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    userJoinFailureTimestampMap = v6->_userJoinFailureTimestampMap;
    v10 = [v4 identifier];
    v11 = [(NSMutableDictionary *)userJoinFailureTimestampMap objectForKeyedSubscript:v10];
    [v11 timeIntervalSinceReferenceDate];
    if (v8 >= v12)
    {
      userJoinFailureCountMap = v6->_userJoinFailureCountMap;
      v15 = [v4 identifier];
      v16 = [(NSMutableDictionary *)userJoinFailureCountMap objectForKeyedSubscript:v15];
      v13 = [v16 unsignedIntegerValue] > 1;
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)temporaryUserSettingForNetworkProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 identifier];

  if (v6)
  {
    tempUserSettingMap = v5->_tempUserSettingMap;
    v8 = [v4 identifier];
    v9 = [(NSMutableDictionary *)tempUserSettingMap objectForKeyedSubscript:v8];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v5);

  return v10;
}

- (void)setTemporaryUserSetting:(int64_t)a3 networkProfile:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 identifier];

  if (v8)
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      tempUserSettingMap = v7->_tempUserSettingMap;
      v11 = [v6 identifier];
      [(NSMutableDictionary *)tempUserSettingMap setObject:v9 forKeyedSubscript:v11];

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
        v20 = sub_1E0BEF2F4(a3);
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v14 = v7->_tempUserSettingMap;
      v15 = [v6 identifier];
      [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:v15];

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

  objc_sync_exit(v7);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)clearTemporaryUserSettings
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSMutableDictionary *)v2->_tempUserSettingMap removeAllObjects];
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

  objc_sync_exit(v2);
}

- (id)setNetworkIDForAssociationWithMACAddress:(id)a3 networkProfile:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v6)
  {
    v8 = [(CWFPrivateMACManager *)self hardwareMACAddress];
  }

  v47 = 0;
  v9 = sub_1E0BEF670(v7, v8, &v47);
  v10 = v47;
  if (!v6)
  {
  }

  if (v9)
  {
    v11 = [v7 identifier];

    if (v11)
    {
      v12 = [v7 cachedNetworkID];
      v13 = v12;
      if (v12 == v9)
      {
      }

      else
      {
        v14 = [v7 cachedNetworkID];
        if (v14)
        {
          v15 = v14;
          v16 = [v7 cachedNetworkID];
          v17 = [v16 isEqual:v9];

          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v18 = [(CWFPrivateMACManager *)self targetQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C13698;
        block[3] = &unk_1E86E6420;
        block[4] = self;
        v46 = v7;
        dispatch_async(v18, block);
      }

LABEL_14:

      v19 = [(CWFPrivateMACManager *)self interfaceName];
      v20 = sub_1E0BEF890(v9, v19);
      v10 = 0;
      goto LABEL_15;
    }

    v36 = *MEMORY[0x1E696A798];
    v37 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v38 = CWFErrorWithDescription(v36, 22, v37);

    v39 = CWFGetOSLog();
    if (v39)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v48 = 138412546;
      v49 = v38;
      v50 = 2114;
      v51 = v7;
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
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v48 = 138412546;
      v49 = v10;
      v50 = 2114;
      v51 = v7;
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
    v24 = v7;
    v25 = v20;
    v26 = v6;
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
    v6 = v26;
    v20 = v25;
    v7 = v24;
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