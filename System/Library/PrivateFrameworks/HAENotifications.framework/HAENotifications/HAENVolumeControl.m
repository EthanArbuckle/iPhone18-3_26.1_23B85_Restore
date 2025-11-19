@interface HAENVolumeControl
+ (id)sharedInstance;
- ($C4267C7EEAC0F1C362AD94E813CFAD30)getStats;
- (BOOL)PME_enabled;
- (BOOL)_RLSAllowsMXVolumeLimit;
- (HAENVolumeControl)init;
- (float)computeLimitedVolume:(float)a3 event:(id)a4 action:(unsigned int *)a5;
- (float)getCurrentVolumeForCategory:(__CFString *)a3 route:(id *)a4;
- (unsigned)limitVolume:(id)a3;
- (void)_fetchCategory:(__CFString *)a3 routeInfo:(id *)a4;
- (void)_updateFlags;
- (void)_updateMXVolumeLimit;
- (void)applyVolumeLoweringAtNextSession;
- (void)limitVolumeTo:(float)a3 category:(__CFString *)a4 route:(id *)a5 actionResult:(unsigned int *)a6;
- (void)setDeviceInfo:(id)a3;
- (void)updateMXVolumeLimitStatus;
- (void)wiredHeadphoneConnected:(BOOL)a3;
@end

@implementation HAENVolumeControl

+ (id)sharedInstance
{
  if (+[HAENDefaults isCurrentProcessMediaserverd]&& sharedInstance_once_2 != -1)
  {
    +[HAENVolumeControl sharedInstance];
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

uint64_t __35__HAENVolumeControl_sharedInstance__block_invoke()
{
  sharedInstance_instance_2 = objc_alloc_init(HAENVolumeControl);

  return MEMORY[0x2821F96F8]();
}

- (HAENVolumeControl)init
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HAENVolumeControl;
  v2 = [(HAENVolumeControl *)&v18 init];
  if (v2)
  {
    *(v2 + 2) = getpid();
    *(v2 + 10) = 0;
    v3 = +[HAENDefaults sharedInstance];
    v2[12] = [v3 isEUVolumeLimitOn];

    v4 = +[HAENDefaults sharedInstance];
    v2[13] = [v4 isSKVolumeLimitOn];

    v5 = HAENotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v2[12]];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v2[13]];
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "HAENVolumeControl: EU VLT [%@], South Korea VLT [%@]", buf, 0x16u);
    }

    v8 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v9 = [v8 getPreferenceFor:*MEMORY[0x277CEFB18]];
    v2[15] = [v9 BOOLValue];

    v2[16] = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v2 + 20) = _D0;
    v2[44] = 0;
    [v2 _updateFlags];
    if (v2[12])
    {
      v15 = 1;
    }

    else
    {
      v15 = v2[13];
    }

    [v2 _setMXVolumeLimit:v15 & 1];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

- (float)computeLimitedVolume:(float)a3 event:(id)a4 action:(unsigned int *)a5
{
  v8 = 1986817143;
  if ([a4 eventType] == 1818850917)
  {
    v9 = +[HAENDefaults sharedInstance];
    [v9 volumeReductionDelta];
    v11 = v10;

    v12 = a3 - v11;
  }

  else
  {
    if ([(HAENVolumeControl *)self PME_enabled])
    {
      targetVolume80dB = 0.5;
      targetVolume74dB = 0.38;
    }

    else
    {
      targetVolume80dB = self->_targetVolume80dB;
      if (targetVolume80dB <= 0.0 || (targetVolume74dB = self->_targetVolume74dB, targetVolume74dB <= 0.0))
      {
        v15 = +[HAENUnknownDeviceManager sharedInstance];
        v16 = [v15 unknownWiredHeadsetConnectedThroughB204];

        targetVolume74dB = 0.5;
        if (!v16)
        {
          targetVolume74dB = 0.56;
        }

        targetVolume80dB = 0.63;
        if (v16)
        {
          targetVolume80dB = 0.59;
        }
      }
    }

    if (targetVolume74dB > a3)
    {
      targetVolume74dB = a3;
    }

    if (a3 + -0.001 <= targetVolume80dB)
    {
      targetVolume80dB = targetVolume74dB;
    }

    v12 = targetVolume80dB;
    if (v12 + 0.001 >= a3)
    {
      v8 = 1986814576;
    }

    else
    {
      v8 = 1986817143;
    }
  }

  *a5 = v8;
  return fmin(fmax(v12, 0.0), 1.0);
}

- (float)getCurrentVolumeForCategory:(__CFString *)a3 route:(id *)a4
{
  [HAENVolumeControl _fetchCategory:"_fetchCategory:routeInfo:" routeInfo:?];
  var0 = a4->var0;
  var1 = a4->var1;
  var2 = a4->var2;
  pid = self->_pid;
  if (!CMSessionManagerPerformVolumeOperationWithSequenceNumber())
  {
    return -1.0;
  }

  v10 = HAENotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [HAENVolumeControl getCurrentVolumeForCategory:route:];
  }

  return -1.0;
}

- (void)applyVolumeLoweringAtNextSession
{
  if (self->_lowerHeadphoneVolumeAtNextSession)
  {
    self->_lowerHeadphoneVolumeAtNextSession = 0;
    v3 = dispatch_get_global_queue(25, 0);
    dispatch_async(v3, &__block_literal_global_6);
  }
}

void __53__HAENVolumeControl_applyVolumeLoweringAtNextSession__block_invoke(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(a1) = 1057618919;
  [MEMORY[0x277D26E70] applyVolumeReductionToHeadphoneRoutes:a1];
  v1 = HAENotificationsLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = 0x3FE13F7CED916873;
    _os_log_impl(&dword_25081E000, v1, OS_LOG_TYPE_DEFAULT, "headphone volume will be lowered to %.2f at the next session", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (unsigned)limitVolume:(id)a3
{
  v4 = HAENotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "headphone volume lowering will be delayed", v6, 2u);
  }

  self->_lowerHeadphoneVolumeAtNextSession = 1;
  return 1986814576;
}

- (void)limitVolumeTo:(float)a3 category:(__CFString *)a4 route:(id *)a5 actionResult:(unsigned int *)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = HAENotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = *&a4;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, ">>> limiting volume to %.2f for category %@, ", buf, 0x16u);
  }

  var0 = a5->var0;
  var2 = a5->var2;
  pid = self->_pid;
  v15 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
  v16 = HAENotificationsLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [HAENVolumeControl limitVolumeTo:category:route:actionResult:];
    }

    *a6 = 561409132;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = *&a4;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_25081E000, v17, OS_LOG_TYPE_DEFAULT, "========> SET %@ volume to: %.2f", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCategory:(__CFString *)a3 routeInfo:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  CMSessionMgrCopyDeviceRouteForRouteConfiguration();
  v6 = HAENotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a4->var0;
    var1 = a4->var1;
    var2 = a4->var2;
    v11 = 138413058;
    v12 = a3;
    v13 = 2112;
    v14 = var0;
    v15 = 2112;
    v16 = var1;
    v17 = 2112;
    v18 = var2;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, ">>> category '%@', route: '%@', device: '%@', route subtype: '%@'", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateFlags
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[HAENDefaults sharedInstance];
  self->_haenFeatureEnabled = [v3 isHAENFeatureEnabled];

  v4 = HAENotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_haenFeatureEnabled];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wiredHeadphoneConnected];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAENVolumeControl: HAEN Feature [%@], wired headphone connected[%@]", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_RLSAllowsMXVolumeLimit
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[HAENDefaults sharedInstance];
  v3 = [v2 isReduceLoudSoundEnabled];

  v4 = +[HAENDefaults sharedInstance];
  v5 = [v4 getReduceLoudSoundThreshold];

  v6 = HAENotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v10 = 138412546;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "RLS volume limit %@, threshold %d", &v10, 0x12u);
  }

  if (v5 > 99)
  {
    result = 1;
  }

  else
  {
    result = v3 ^ 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateMXVolumeLimitStatus
{
  os_unfair_lock_lock(&self->_lock);
  [(HAENVolumeControl *)self _updateFlags];
  [(HAENVolumeControl *)self _updateMXVolumeLimit];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateMXVolumeLimit
{
  if (self->_wiredHeadphoneConnected && (self->_haenFeatureEnabled || self->_EUVolumeLimitFlagOn || self->_SKVolumeLimitFlagOn) && [(HAENVolumeControl *)self _RLSAllowsMXVolumeLimit])
  {
    if (self->_mxVolumeLimitOn)
    {
      v3 = HAENotificationsLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v4 = "mx volume limit is already on";
        v5 = &v9;
LABEL_13:
        _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v6 = self;
    v7 = 1;
  }

  else
  {
    if (!self->_mxVolumeLimitOn)
    {
      v3 = HAENotificationsLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v4 = "mx volume limit is already off";
        v5 = &v8;
        goto LABEL_13;
      }

LABEL_14:

      return;
    }

    v6 = self;
    v7 = 0;
  }

  [(HAENVolumeControl *)v6 _setMXVolumeLimit:v7];
}

- (void)wiredHeadphoneConnected:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wiredHeadphoneConnected = a3;
  [(HAENVolumeControl *)self _updateFlags];
  [(HAENVolumeControl *)self _updateMXVolumeLimit];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)PME_enabled
{
  v11 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x277D3A1D8] sharedInstance];
    if ([v2 personalMediaEnabled])
    {
      v3 = [MEMORY[0x277D3A1D8] sharedInstance];
      v4 = ([v3 personalAudioAccommodationTypes] >> 2) & 1;
    }

    else
    {
      LODWORD(v4) = 0;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "OFF";
    if (v4)
    {
      v6 = "ON";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "PME status: %s", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setDeviceInfo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->_targetVolume80dB = _D0;
  if (v4)
  {
    v9 = [v4 objectForKey:@"_HAENMITSV80DB"];
    v10 = [v4 objectForKey:@"_HAENMITSV74DB"];
    v11 = v10;
    if (v10)
    {
      _ZF = v9 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      [v10 floatValue];
      self->_targetVolume74dB = v13;
      [v9 floatValue];
      self->_targetVolume80dB = v14;
      v15 = HAENotificationsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        targetVolume80dB = self->_targetVolume80dB;
        targetVolume74dB = self->_targetVolume74dB;
        v19 = 134218240;
        v20 = targetVolume80dB;
        v21 = 2048;
        v22 = targetVolume74dB;
        _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "setting target scalar 80dB volume: %.2f, scalar 74dB volume: %.2f", &v19, 0x16u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- ($C4267C7EEAC0F1C362AD94E813CFAD30)getStats
{
  os_unfair_lock_lock(&self->_lock);
  v3 = *&self->_stats.currVolume;
  volumeAction = self->_stats.volumeAction;
  os_unfair_lock_unlock(&self->_lock);
  v5 = v3;
  v6 = volumeAction;
  result.var0 = *&v5;
  result.var1 = *(&v5 + 1);
  result.var2 = v6;
  return result;
}

- (void)getCurrentVolumeForCategory:route:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25081E000, v0, v1, "failed to get %@ volume %lld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)limitVolumeTo:category:route:actionResult:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25081E000, v0, v1, "failed to SET %@ volume %lld");
  v2 = *MEMORY[0x277D85DE8];
}

@end