@interface ACCPlatformDigitalAudioManager
+ (id)getManager;
+ (int)sampleRateEnumFromValue:(unsigned int)value;
+ (unsigned)sampleRateMaskFromEnum:(int)enum;
+ (unsigned)sampleRateValueFromEnum:(int)enum;
- (ACCPlatformDigitalAudioManager)init;
- (BOOL)newAudioPropertyNotification;
- (id)supportedSampleRatesList;
- (unsigned)currentSampleRate;
- (void)dealloc;
- (void)startAudioPropertyNotifications;
- (void)stopAudioPropertyNotifications;
@end

@implementation ACCPlatformDigitalAudioManager

+ (id)getManager
{
  if (getManager_once != -1)
  {
    +[ACCPlatformDigitalAudioManager getManager];
  }

  v3 = getManager_sharedInstance;

  return v3;
}

void __44__ACCPlatformDigitalAudioManager_getManager__block_invoke(id a1)
{
  getManager_sharedInstance = objc_alloc_init(ACCPlatformDigitalAudioManager);

  _objc_release_x1();
}

+ (unsigned)sampleRateValueFromEnum:(int)enum
{
  if (enum < 9)
  {
    return dword_1001C4060[enum];
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(ACCPlatformDigitalAudioManager *)enum sampleRateValueFromEnum:v7];
  }

  return 0;
}

+ (int)sampleRateEnumFromValue:(unsigned int)value
{
  if (value <= 22049)
  {
    if (value > 11999)
    {
      if (value == 12000)
      {
        return 2;
      }

      if (value == 16000)
      {
        return 3;
      }
    }

    else
    {
      if (value == 8000)
      {
        return 0;
      }

      if (value == 11025)
      {
        return 1;
      }
    }
  }

  else if (value <= 31999)
  {
    if (value == 22050)
    {
      return 4;
    }

    if (value == 24000)
    {
      return 5;
    }
  }

  else
  {
    switch(value)
    {
      case 0x7D00u:
        return 6;
      case 0xAC44u:
        return 7;
      case 0xBB80u:
        return 8;
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v5 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ACCPlatformDigitalAudioManager *)value sampleRateEnumFromValue:v5];
  }

  return 9;
}

+ (unsigned)sampleRateMaskFromEnum:(int)enum
{
  if (enum >= 9)
  {
    return 0;
  }

  else
  {
    return 1 << enum;
  }
}

- (ACCPlatformDigitalAudioManager)init
{
  v6.receiver = self;
  v6.super_class = ACCPlatformDigitalAudioManager;
  v2 = [(ACCPlatformDigitalAudioManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    digAudEndpointUUID = v2->_digAudEndpointUUID;
    v2->_digAudEndpointUUID = 0;

    *&v3->_digAudSampleEnum = xmmword_1001C4050;
    *&v3->_bDigAudSendNewProp = 0;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ACCPlatformDigitalAudioManager;
  [(ACCPlatformDigitalAudioManager *)&v2 dealloc];
}

- (void)startAudioPropertyNotifications
{
  [(ACCPlatformDigitalAudioManager *)self setBDigAudSendNewProp:1];
  [(ACCPlatformDigitalAudioManager *)self setBDigAudIsActive:1];

  [(ACCPlatformDigitalAudioManager *)self sendAudioStateChangedNotification];
}

- (void)stopAudioPropertyNotifications
{
  [(ACCPlatformDigitalAudioManager *)self setBDigAudIsActive:0];
  [(ACCPlatformDigitalAudioManager *)self setBDigAudSendNewProp:0];

  [(ACCPlatformDigitalAudioManager *)self sendAudioStateChangedNotification];
}

- (BOOL)newAudioPropertyNotification
{
  if ([(ACCPlatformDigitalAudioManager *)self bDigAudIsActive])
  {
    v17[0] = @"SampleRate";
    v3 = [NSNumber numberWithUnsignedChar:[(ACCPlatformDigitalAudioManager *)self digAudSampleEnum]];
    v18[0] = v3;
    v17[1] = @"VolumeLevel";
    v4 = [NSNumber numberWithUnsignedInt:[(ACCPlatformDigitalAudioManager *)self digAudVolumeLevel]];
    v18[1] = v4;
    v17[2] = @"SoundCheck";
    v5 = [NSNumber numberWithUnsignedInt:[(ACCPlatformDigitalAudioManager *)self digAudSoundCheck]];
    v18[2] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v7 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      digAudEndpointUUID = [(ACCPlatformDigitalAudioManager *)self digAudEndpointUUID];
      v13 = 138412546;
      v14 = digAudEndpointUUID;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#DigitalAudio] endpointUUID: %@: attributes: %@", &v13, 0x16u);
    }

    digAudEndpointUUID2 = [(ACCPlatformDigitalAudioManager *)self digAudEndpointUUID];
    v8 = accFeatureHandlers_invokeHandler(digAudEndpointUUID2, 23, v6);

    if (v8)
    {
      [(ACCPlatformDigitalAudioManager *)self setBDigAudSendNewProp:0];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unsigned)currentSampleRate
{
  if ([(ACCPlatformDigitalAudioManager *)self bDigAudIsActive])
  {
    v3 = [ACCPlatformDigitalAudioManager sampleRateValueFromEnum:[(ACCPlatformDigitalAudioManager *)self digAudSampleEnum]];
  }

  else
  {
    v3 = 0;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#DigitalAudio] curSampleRate: %d", v8, 8u);
  }

  return v3;
}

- (id)supportedSampleRatesList
{
  if ([(ACCPlatformDigitalAudioManager *)self digAudSampleMask])
  {
    v3 = +[NSMutableArray array];
    v4 = 0;
    v5 = 1;
    do
    {
      if (([(ACCPlatformDigitalAudioManager *)self digAudSampleMask]& v5) != 0)
      {
        v6 = [NSNumber numberWithInt:dword_1001C4060[v4]];
        [v3 addObject:v6];
      }

      v5 *= 2;
      ++v4;
    }

    while (v4 != 9);
  }

  else
  {
    v3 = 0;
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#DigitalAudio] pSuppSampRates: %@", &v11, 0xCu);
  }

  return v3;
}

+ (void)sampleRateValueFromEnum:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#DigitalAudio] Invalid Sample Rate Enum : %d", v2, 8u);
}

+ (void)sampleRateEnumFromValue:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#DigitalAudio] Invalid Sample Rate Value : %d", v2, 8u);
}

@end