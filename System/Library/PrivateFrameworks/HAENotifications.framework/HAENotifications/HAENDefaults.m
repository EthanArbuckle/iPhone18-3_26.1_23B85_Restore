@interface HAENDefaults
+ (BOOL)HAENSupportedForCurrentDeviceClass;
+ (BOOL)isCurrentProcessMediaserverd;
+ (BOOL)isRunningCITests;
+ (id)sharedInstance;
- (BOOL)_shouldRepromptSinceDate:(id)a3;
- (BOOL)isConnectedUnknownWiredDeviceHeadphone;
- (BOOL)isCurrentAudioAccessoryHeadphone;
- (BOOL)isCurrentAudioAccessoryHeadphoneWithKey:(id)a3;
- (BOOL)isHAENFeatureEnabled;
- (BOOL)isHAENFeatureMandatory;
- (BOOL)isHAENFeatureOptedIn;
- (BOOL)isHAEOtherDevicesEnabled;
- (BOOL)isHKWriteEnabled;
- (BOOL)isReduceLoudSoundEnabled;
- (HAENDefaults)init;
- (double)getLiveMonitorTimeWindowInSeconds;
- (double)getLiveMonitoringThreshold;
- (double)volumeReductionDelta;
- (id)_generateAccessoryKeyWithManufacture:(id)a3 andSerialNumber:(id)a4;
- (int)getReduceLoudSoundThreshold;
- (int64_t)getAudioAccessoryConnectionInfo;
- (int64_t)getAudioAccessoryConnectionInfoWithKey:(id)a3;
- (void)_registerNotification:(id)a3;
- (void)forceReadDefaults;
- (void)getAudioAccessoryConnectionInfo;
- (void)removeAllAdapters;
- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 withKey:(id)a4 name:(id)a5;
- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 withName:(id)a4;
- (void)setUserVolumeWithValue:(float)a3 mininum:(float)a4;
- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)a3;
- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 WithKey:(id)a4;
- (void)updateRLSSettings;
- (void)updateUserVolumeForVolumeLimit;
- (void)wiredDeviceStatusDidChange;
@end

@implementation HAENDefaults

+ (BOOL)isRunningCITests
{
  if (isRunningCITests_once != -1)
  {
    +[HAENDefaults isRunningCITests];
  }

  return isRunningCITests_ans;
}

+ (BOOL)isCurrentProcessMediaserverd
{
  if (isCurrentProcessMediaserverd_once != -1)
  {
    +[HAENDefaults isCurrentProcessMediaserverd];
  }

  return isCurrentProcessMediaserverd_ans;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_5 != -1)
  {
    +[HAENDefaults sharedInstance];
  }

  v3 = sharedInstance_instance_5;

  return v3;
}

uint64_t __30__HAENDefaults_sharedInstance__block_invoke()
{
  sharedInstance_instance_5 = objc_alloc_init(HAENDefaults);

  return MEMORY[0x2821F96F8]();
}

- (HAENDefaults)init
{
  v8.receiver = self;
  v8.super_class = HAENDefaults;
  v2 = [(HAENDefaults *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    if (+[HAENDefaults isCurrentProcessMediaserverd])
    {
      v4 = objc_alloc_init(MEMORY[0x277CEFB38]);
      [v4 removePreferenceFor:*MEMORY[0x277CEFAB0] notify:0];
    }

    [(HAENDefaults *)v3 forceReadDefaults];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA80]];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA68]];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA88]];
    if (+[HAENDefaults isCurrentProcessMediaserverd])
    {
      [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA70]];
      [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA90]];
    }

    v5 = MGGetStringAnswer();
    if (-[HAENDefaults isHAENFeatureEnabled](v3, "isHAENFeatureEnabled") || ([v5 isEqualToString:@"iPad"] & 1) == 0)
    {
      v3->_EUVolumeLimitFlag = MGGetBoolAnswer();
      v6 = MGGetBoolAnswer();
    }

    else
    {
      v6 = 0;
      v3->_EUVolumeLimitFlag = 0;
    }

    v3->_SKVolumeLimitFlag = v6;
  }

  return v3;
}

- (void)forceReadDefaults
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = HAENotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"re-load";
    if (!self->_domainSettings)
    {
      v4 = @"load";
    }

    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "%@ defaults...", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v6 = *MEMORY[0x277CEFB10];
  v18[0] = *MEMORY[0x277CEFAF0];
  v18[1] = v6;
  v7 = *MEMORY[0x277CEFB00];
  v18[2] = *MEMORY[0x277CEFB30];
  v18[3] = v7;
  v8 = *MEMORY[0x277CEFAE8];
  v18[4] = *MEMORY[0x277CEFAE0];
  v18[5] = v8;
  v9 = *MEMORY[0x277CEFAB0];
  v18[6] = *MEMORY[0x277CEFB08];
  v18[7] = v9;
  v10 = *MEMORY[0x277CEFB28];
  v18[8] = *MEMORY[0x277CEFB20];
  v18[9] = v10;
  v18[10] = *MEMORY[0x277CEFB18];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:11];
  v12 = [v5 getPreferencesFor:v11];
  v13 = [v12 mutableCopy];
  domainSettings = self->_domainSettings;
  self->_domainSettings = v13;

  os_unfair_lock_unlock(&self->_lock);
  v15 = HAENotificationsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_domainSettings;
    *buf = 138412290;
    v20 = v16;
    _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "HAEN Defaults: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateUserVolumeForVolumeLimit
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFB20];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFB20]];
  v6 = HAENotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_domainSettings objectForKey:v4];
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "VolumeLimit: %@ -> %@", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_domainSettings objectForKey:v4];
  if (![v8 BOOLValue])
  {
    goto LABEL_6;
  }

  v9 = [v5 BOOLValue];

  if ((v9 & 1) == 0)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HAENDefaults_updateUserVolumeForVolumeLimit__block_invoke;
    block[3] = &unk_27969F218;
    block[4] = self;
    dispatch_async(v8, block);
LABEL_6:
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HAENDefaults_updateUserVolumeForVolumeLimit__block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = 0.5;
  LODWORD(a3) = 0.5;
  return [*(a1 + 32) setUserVolumeWithValue:a2 mininum:a3];
}

- (void)setUserVolumeWithValue:(float)a3 mininum:(float)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D27060];
  getpid();
  v6 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
  v7 = HAENotificationsLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults setUserVolumeWithValue:mininum:];
    }

LABEL_4:

    goto LABEL_5;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = -1.0;
    _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "[VolumeLimit] current Volume  %f", buf, 0xCu);
  }

  if (a4 < -1.0)
  {
    getpid();
    v10 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
    v11 = HAENotificationsLog();
    v8 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HAENDefaults setUserVolumeWithValue:mininum:];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = -1.0;
      _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "setUserVolumeWithValue success to %f", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
}

- (double)getLiveMonitoringThreshold
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB00]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 100.0;
  }

  return v5;
}

- (BOOL)isHAENFeatureEnabled
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAF0]];
  os_unfair_lock_unlock(&self->_lock);
  v6 = _os_feature_enabled_impl();
  v7 = +[HAENDefaults HAENSupportedForCurrentDeviceClass];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v9 = [v5 BOOLValue];
  }

  v10 = HAENotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v16 = 138413314;
    v17 = v11;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "hean feature status: [%@] mandatory: %@, enabled: %@, feature flag: %@ device supported: %@", &v16, 0x34u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isHAENFeatureOptedIn
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAF0]];
  os_unfair_lock_unlock(&self->_lock);
  if ([v4 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 BOOLValue];
  }

  return v6;
}

- (BOOL)isHAENFeatureMandatory
{
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  os_unfair_lock_unlock(&v2->_lock);
  LOBYTE(v2) = [v4 BOOLValue];

  return v2;
}

- (BOOL)isConnectedUnknownWiredDeviceHeadphone
{
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)v2->_domainSettings objectForKey:*MEMORY[0x277CEFAB0]];
  os_unfair_lock_unlock(&v2->_lock);
  LOBYTE(v2) = [v3 BOOLValue];

  return v2;
}

- (double)getLiveMonitorTimeWindowInSeconds
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB08]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (BOOL)isReduceLoudSoundEnabled
{
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)v2->_domainSettings objectForKey:*MEMORY[0x277CEFB20]];
  os_unfair_lock_unlock(&v2->_lock);
  LOBYTE(v2) = [v3 BOOLValue];

  return v2;
}

- (BOOL)isHKWriteEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAB8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isHAEOtherDevicesEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAC0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)getReduceLoudSoundThreshold
{
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)v2->_domainSettings objectForKey:*MEMORY[0x277CEFB28]];
  os_unfair_lock_unlock(&v2->_lock);
  LODWORD(v2) = [v3 intValue];

  return v2;
}

- (void)updateRLSSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFB20];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFB20]];
  v6 = *MEMORY[0x277CEFB28];
  v7 = [v3 getPreferenceFor:*MEMORY[0x277CEFB28]];
  os_unfair_lock_lock(&self->_lock);
  domainSettings = self->_domainSettings;
  if (v5)
  {
    [(NSMutableDictionary *)domainSettings setObject:v5 forKey:v4];
  }

  else
  {
    [(NSMutableDictionary *)domainSettings removeObjectForKey:v4];
  }

  v9 = self->_domainSettings;
  if (v7)
  {
    [(NSMutableDictionary *)v9 setObject:v7 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = HAENotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "updated RLS status, enabled: (%@), threshold: (%@)", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)volumeReductionDelta
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB30]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    if (v4 > 1.0 || v4 < 0.0)
    {
      v6 = 0.125;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0.125;
  }

  return v6;
}

- (id)_generateAccessoryKeyWithManufacture:(id)a3 andSerialNumber:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@_%@", v7, v6];

  return v8;
}

- (int64_t)getAudioAccessoryConnectionInfoWithKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v11 = -1;
    goto LABEL_25;
  }

  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (!v6)
  {
    v11 = -1;
LABEL_24:

    goto LABEL_25;
  }

  v8 = [v6 objectForKey:@"value"];
  v9 = [v8 intValue];

  if (v9 == 1)
  {
    v11 = 1;
    goto LABEL_24;
  }

  if (v9)
  {
    v10 = HAENotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfoWithKey:];
    }

    v11 = -1;
    goto LABEL_23;
  }

  v10 = MGGetStringAnswer();
  if (![v10 isEqualToString:@"iPad"]|| (MGGetBoolAnswer() & 1) == 0)
  {
    v12 = [v7 objectForKey:@"count"];
    v13 = [v12 intValue];

    if (v13 <= 2 && ([v7 objectForKey:@"date"], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[HAENDefaults _shouldRepromptSinceDate:](self, "_shouldRepromptSinceDate:", v14), v14, v15))
    {
      v16 = HAENotificationsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 67109120;
        v20 = v13;
        _os_log_impl(&dword_25081E000, v16, OS_LOG_TYPE_DEFAULT, "re-surfacing prompt for not headphone. query count: %d", &v19, 8u);
      }

      v11 = -1;
    }

    else
    {
      v16 = HAENotificationsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 67109120;
        v20 = v13;
        _os_log_impl(&dword_25081E000, v16, OS_LOG_TYPE_DEFAULT, "skipped re-surfacing prompt for not headphone. query count: %d", &v19, 8u);
      }

      v11 = 0;
    }

LABEL_23:
    goto LABEL_24;
  }

  v11 = 0;
LABEL_25:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)getAudioAccessoryConnectionInfo
{
  v15 = 0;
  v3 = [HAENAccessoryInfo getAccessoryInfo:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v11 = [v3 manufacturer];
    v12 = [v3 serialNumber];
    v13 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:v11 andSerialNumber:v12];

    v10 = [(HAENDefaults *)self getAudioAccessoryConnectionInfoWithKey:v13];
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = HAENAccessoryInfoErrorDomain;
    v8 = [v4 domain];
    if (([(__CFString *)v7 isEqualToString:v8]& 1) != 0)
    {
      v9 = [v5 code];

      if (v9 == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = HAENotificationsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfo];
    }

    v10 = -2;
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v10 = -2;
LABEL_15:

  return v10;
}

- (BOOL)isCurrentAudioAccessoryHeadphoneWithKey:(id)a3
{
  v4 = a3;
  if (+[HAENDefaults isRunningCITests])
  {
    [(HAENDefaults *)self forceReadDefaults];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    LOBYTE(v9) = 1;
    goto LABEL_12;
  }

  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 objectForKey:@"value"];
  v9 = [v8 intValue];

  if (v9 >= 2)
  {
    v10 = HAENotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfoWithKey:];
    }

LABEL_9:
    LOBYTE(v9) = 1;
  }

LABEL_12:
  return v9;
}

- (BOOL)isCurrentAudioAccessoryHeadphone
{
  v15 = 0;
  v3 = [HAENAccessoryInfo getAccessoryInfo:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v11 = [v3 manufacturer];
    v12 = [v3 serialNumber];
    v13 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:v11 andSerialNumber:v12];

    v10 = [(HAENDefaults *)self isCurrentAudioAccessoryHeadphoneWithKey:v13];
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = HAENAccessoryInfoErrorDomain;
    v8 = [v4 domain];
    if (([(__CFString *)v7 isEqualToString:v8]& 1) != 0)
    {
      v9 = [v5 code];

      if (v9 == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = HAENotificationsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfo];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v10 = 0;
LABEL_15:

  return v10;
}

- (BOOL)_shouldRepromptSinceDate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE8]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v10 = HAENotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = 0;
      _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "invalid expiryDays %@", &v16, 0xCu);
    }

    v9 = &unk_2862C9760;
  }

  [v9 doubleValue];
  v12 = v11 * 24.0 * 60.0 * 60.0;
  if (v8 >= v12)
  {
    v13 = HAENotificationsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "re-surface prompt", &v16, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8 >= v12;
}

- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 withKey:(id)a4 name:(id)a5
{
  v36[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v34 = *MEMORY[0x277CEFAE0];
  v10 = [(NSMutableDictionary *)self->_domainSettings objectForKey:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = v11;
  v13 = [v11 objectForKey:v8];
  v33 = v13;
  if (v13 && (v14 = v13, [v13 objectForKey:@"value"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v16 == a3))
  {
    v17 = [v14 mutableCopy];
    v18 = [v14 objectForKey:@"count"];
    v19 = [v18 intValue];

    v20 = [MEMORY[0x277CCABB0] numberWithInt:(v19 + 1)];
    [v17 setObject:v20 forKey:@"count"];

    v21 = [MEMORY[0x277CBEAA8] now];
    [v17 setObject:v21 forKey:@"date"];

    [v17 setObject:v9 forKey:@"name"];
  }

  else
  {
    v22 = MEMORY[0x277CBEB38];
    v36[0] = &unk_2862C9778;
    v35[0] = @"count";
    v35[1] = @"date";
    v23 = [MEMORY[0x277CBEAA8] now];
    v36[1] = v23;
    v35[2] = @"value";
    [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v24 = a3;
    v25 = v10;
    v26 = v8;
    v28 = v27 = v9;
    v35[3] = @"name";
    v36[2] = v28;
    v36[3] = v27;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v17 = [v22 dictionaryWithDictionary:v29];

    v9 = v27;
    v8 = v26;
    v10 = v25;
    a3 = v24;
  }

  [v12 setValue:v17 forKey:v8];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_domainSettings setObject:v12 forKey:v34];
  os_unfair_lock_unlock(&self->_lock);
  [(HAENDefaults *)self _updateSetting:v34 value:v12 notify:1];
  v30 = *MEMORY[0x277CEFAB0];
  v31 = [MEMORY[0x277CCABB0] numberWithBool:a3 == 1];
  [(HAENDefaults *)self _updateSetting:v30 value:v31 notify:1];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 withName:(id)a4
{
  v6 = a4;
  v14 = 0;
  v7 = [HAENAccessoryInfo getAccessoryInfo:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = [v7 manufacturer];
    v13 = [v7 serialNumber];
    v11 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:v12 andSerialNumber:v13];

    [(HAENDefaults *)self setAudioAccessoryIsConnectedToHeadphones:a3 withKey:v11 name:v6];
  }

  else
  {
    v11 = HAENotificationsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults setAudioAccessoryIsConnectedToHeadphones:withName:];
    }
  }
}

- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)a3 WithKey:(id)a4
{
  v24[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = *MEMORY[0x277CEFAE0];
  v8 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  v11 = [v9 objectForKey:v6];
  v12 = v11;
  if (!v11 || ([v11 objectForKey:@"value"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "intValue"), v13, v14 != a3))
  {
    v15 = HAENotificationsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "reset accessory info...", v22, 2u);
    }

    v16 = MEMORY[0x277CBEB38];
    v24[0] = &unk_2862C9778;
    v23[0] = @"count";
    v23[1] = @"date";
    v17 = [MEMORY[0x277CBEAA8] now];
    v24[1] = v17;
    v23[2] = @"value";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v24[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v20 = [v16 dictionaryWithDictionary:v19];

    [v10 setValue:v20 forKey:v6];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_domainSettings setObject:v10 forKey:v7];
    os_unfair_lock_unlock(&self->_lock);
    [(HAENDefaults *)self _updateSetting:v7 value:v10 notify:1];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a3;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "Update AudioAccessory Is Connected To Headphones %d", buf, 8u);
  }

  if ([(HAENDefaults *)self isHAENFeatureEnabled])
  {
    if (MGGetBoolAnswer())
    {
      v6 = +[HAENUnknownDeviceManager sharedInstance];
      v7 = [v6 getDeviceUID];
    }

    else
    {
      v14 = 0;
      v8 = [HAENAccessoryInfo getAccessoryInfo:&v14];
      v9 = v14;
      v6 = v9;
      if (!v8 || v9)
      {
        v10 = HAENotificationsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [HAENDefaults setAudioAccessoryIsConnectedToHeadphones:withName:];
        }

        v7 = 0;
      }

      else
      {
        v10 = [v8 manufacturer];
        v11 = [v8 serialNumber];
        v7 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:v10 andSerialNumber:v11];
      }
    }

    if (v7)
    {
      [(HAENDefaults *)self updateAudioAccessoryIsConnectedToHeadphones:a3 WithKey:v7];
    }

    else
    {
      v12 = HAENotificationsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [HAENDefaults updateAudioAccessoryIsConnectedToHeadphones:];
      }
    }
  }

  else
  {
    v7 = HAENotificationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "do not update accessory database since HAEN is disabled", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeAllAdapters
{
  v3 = HAENotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "removing all adapters...", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = *MEMORY[0x277CEFAE0];
  [(NSMutableDictionary *)self->_domainSettings removeObjectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  [v5 removePreferenceFor:v4 notify:1];
}

- (void)wiredDeviceStatusDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFAB0];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFAB0]];

  os_unfair_lock_lock(&self->_lock);
  domainSettings = self->_domainSettings;
  if (v5)
  {
    [(NSMutableDictionary *)domainSettings setObject:v5 forKey:v4];
    os_unfair_lock_unlock(&self->_lock);
    -[HAENDefaults updateAudioAccessoryIsConnectedToHeadphones:](self, "updateAudioAccessoryIsConnectedToHeadphones:", [v5 BOOLValue]);
    v7 = +[HAENUnknownDeviceManager sharedInstance];
    v8 = [v5 BOOLValue];
    v9 = v7;
  }

  else
  {
    [(NSMutableDictionary *)domainSettings removeObjectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
    v9 = +[HAENUnknownDeviceManager sharedInstance];
    v7 = v9;
    v8 = 0;
  }

  [v9 unknownWiredConnectionDidChange:v8];

  v10 = HAENotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "wired device is headphone: %@ ", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, settingsChanged, v4, 0, 0);
  v6 = HAENotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "HAENDefaults registered darwin notification: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)HAENSupportedForCurrentDeviceClass
{
  if (HAENSupportedForCurrentDeviceClass_once != -1)
  {
    +[HAENDefaults HAENSupportedForCurrentDeviceClass];
  }

  return HAENSupportedForCurrentDeviceClass_ans;
}

void __50__HAENDefaults_HAENSupportedForCurrentDeviceClass__block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"iPad") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"iPod"))
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:@"Watch"];
  }

  HAENSupportedForCurrentDeviceClass_ans = v0;
}

void __44__HAENDefaults_isCurrentProcessMediaserverd__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  v1 = @"mediaserverd";
  if (v0)
  {
    v1 = @"audiomxd";
  }

  v2 = MEMORY[0x277CCAC38];
  v3 = v1;
  v6 = [v2 processInfo];
  v4 = [v6 processName];
  v5 = [v4 isEqualToString:v3];

  isCurrentProcessMediaserverd_ans = v5;
}

void __32__HAENDefaults_isRunningCITests__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isRunningCITests_ans = [v0 isEqualToString:@"xctest"];
}

- (void)setUserVolumeWithValue:mininum:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUserVolumeWithValue:mininum:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAudioAccessoryConnectionInfoWithKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAudioAccessoryConnectionInfo
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAudioAccessoryIsConnectedToHeadphones:withName:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_25081E000, v0, v1, "failed to fetch current accesorry info %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateSetting:value:notify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_25081E000, v0, v1, "failed to update known accessory settings for key: %@, value: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end