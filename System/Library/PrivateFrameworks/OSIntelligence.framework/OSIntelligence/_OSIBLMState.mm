@interface _OSIBLMState
+ (BOOL)isIBLMDefaultOn;
+ (BOOL)isIBLMSupported;
+ (id)loadCurrentIBLMNotificationsState;
+ (id)loadCurrentIBLMState;
+ (id)loadNumberForPreferenceKey:(id)a3;
+ (id)sharedInstance;
+ (id)sharedLog;
+ (void)saveCurrentIBLMNotificationsState:(int64_t)a3;
+ (void)saveCurrentIBLMState:(int64_t)a3;
+ (void)saveNumber:(id)a3 forKey:(id)a4;
- (BOOL)isIBLMCurrentlyEnabled;
- (BOOL)isIBLMNotificationsCurrentlyEnabled;
- (BOOL)willEnableAutoLPM;
- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4;
- (void)client:(id)a3 setIBLMState:(int64_t)a4;
- (void)monitorForAutoLPM;
@end

@implementation _OSIBLMState

+ (id)sharedLog
{
  v2 = os_log_create("com.apple.osintelligence", "OSIBLMState");

  return v2;
}

+ (BOOL)isIBLMSupported
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = 1;
  v3 = MGGetProductType();
  if (v3 <= 1781728946)
  {
    if (v3 <= 574536382)
    {
      if (v3 == 133314240)
      {
        return v2;
      }

      v4 = 330877086;
    }

    else
    {
      if (v3 == 574536383 || v3 == 851437781)
      {
        return v2;
      }

      v4 = 1260109173;
    }
  }

  else if (v3 > 2941181570)
  {
    if (v3 == 2941181571 || v3 == 3048527336)
    {
      return v2;
    }

    v4 = 3591055299;
  }

  else
  {
    if (v3 == 1781728947 || v3 == 1872992317)
    {
      return v2;
    }

    v4 = 2795618603;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

+ (BOOL)isIBLMDefaultOn
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = vdupq_n_s64(MGGetProductType());
    LOBYTE(v2) = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v3, xmmword_25D18DC00), vceqq_s64(v3, xmmword_25D18DC10)))) & 1;
  }

  return v2;
}

- (BOOL)isIBLMCurrentlyEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[_OSIBLMState loadCurrentIBLMState];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)isIBLMNotificationsCurrentlyEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[_OSIBLMState loadCurrentIBLMNotificationsState];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (id)loadCurrentIBLMState
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [_OSIBLMState loadNumberForPreferenceKey:@"lastIBLMFeatureState"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = v4 != 0;
    v6 = +[_OSIBLMState sharedLog];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 134217984;
    v12 = v4 != 0;
    v7 = "IBLM state from defaults is %lu";
  }

  else
  {
    v5 = +[_OSIBLMState isIBLMDefaultOn];
    v6 = +[_OSIBLMState sharedLog];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 134217984;
    v12 = v5;
    v7 = "IBLM falling back to default state %lu";
  }

  _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
LABEL_7:

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)saveCurrentIBLMState:(int64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [_OSIBLMState saveNumber:v3 forKey:@"lastIBLMFeatureState"];
}

+ (id)loadCurrentIBLMNotificationsState
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [_OSIBLMState loadNumberForPreferenceKey:@"lastIBLMNotificationsState"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = v4 != 0;
    v6 = +[_OSIBLMState sharedLog];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 134217984;
    v12 = v4 != 0;
    v7 = "IBLM notifications state from defaults is %lu";
  }

  else
  {
    v5 = +[_OSIBLMState isIBLMNotificationsDefaultOn];
    v6 = +[_OSIBLMState sharedLog];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 134217984;
    v12 = v5;
    v7 = "IBLM falling back to default notifications state %lu";
  }

  _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
LABEL_7:

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)saveCurrentIBLMNotificationsState:(int64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [_OSIBLMState saveNumber:v3 forKey:@"lastIBLMNotificationsState"];
}

+ (id)loadNumberForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.osintelligence.iblm.state", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v3;
}

+ (void)saveNumber:(id)a3 forKey:(id)a4
{
  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a4, a3, @"com.apple.osintelligence.iblm.state", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  CFPreferencesSynchronize(@"com.apple.osintelligence.iblm.state", v4, v5);
}

- (void)client:(id)a3 setIBLMState:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[_OSIBLMState sharedLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, "Set IBLM state to %lu from %@", &v9, 0x16u);
  }

  v7 = +[_OSBatteryPredictor predictor];
  [v7 client:v5 setIBLMState:a4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[_OSIBLMState sharedLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEFAULT, "Set IBLM Notifications State to %lu from %@", &v9, 0x16u);
  }

  v7 = +[_OSBatteryPredictor predictor];
  [v7 client:v5 setIBLMNotificationsState:a4];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[_OSIBLMState sharedInstance];
  }

  v3 = sharedInstance_instance_5;

  return v3;
}

- (void)monitorForAutoLPM
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33___OSIBLMState_monitorForAutoLPM__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  if (monitorForAutoLPM_onceToken != -1)
  {
    dispatch_once(&monitorForAutoLPM_onceToken, block);
  }
}

- (BOOL)willEnableAutoLPM
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___OSIBLMState_willEnableAutoLPM__block_invoke;
  v5[3] = &unk_2799C1810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end