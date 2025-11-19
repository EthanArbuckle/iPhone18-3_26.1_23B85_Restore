@interface HCUtilities
+ (BOOL)currentProcessIsAXUIServer;
+ (BOOL)currentProcessIsCarousel;
+ (BOOL)currentProcessIsHealth;
+ (BOOL)currentProcessIsHeard;
+ (BOOL)currentProcessIsInCallService;
+ (BOOL)currentProcessIsPreferences;
+ (BOOL)currentProcessIsRTTExternsion;
+ (BOOL)currentProcessIsSpringBoard;
+ (BOOL)currentProcessIsSystemApp;
+ (BOOL)deviceHasHomeButton;
+ (BOOL)deviceIsBigPhone;
+ (BOOL)deviceIsMultiUser;
+ (BOOL)deviceIsPad;
+ (BOOL)deviceIsPhone;
+ (BOOL)deviceIsPod;
+ (BOOL)deviceIsSmallPhone;
+ (BOOL)deviceIsWatch;
+ (BOOL)isBTLEAudioEnabled;
+ (BOOL)isDeviceInDeveloperMode;
+ (BOOL)isInternalInstall;
+ (BOOL)isLEAudioEnabled;
+ (BOOL)supportsAlwaysListening;
+ (BOOL)supportsLEA2;
+ (double)roundToPercentageValue:(double)a3;
+ (id)bluetoothManagerQueue;
+ (id)comfortSoundsAudioQueue;
+ (id)messagePayloadFromDictionary:(id)a3 andIdentifier:(unint64_t)a4;
+ (int64_t)systemBootTime;
+ (void)deviceIsMultiUser;
@end

@implementation HCUtilities

+ (BOOL)deviceIsPad
{
  if (HCDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    HCDeviceGetType_cold_1();
  }

  return HCDeviceGetType__HCDeviceType == 3;
}

+ (BOOL)deviceIsPod
{
  if (HCDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    HCDeviceGetType_cold_1();
  }

  return HCDeviceGetType__HCDeviceType == 2;
}

+ (BOOL)deviceIsPhone
{
  if (HCDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    HCDeviceGetType_cold_1();
  }

  return HCDeviceGetType__HCDeviceType == 1;
}

+ (BOOL)currentProcessIsHeard
{
  if (currentProcessIsHeard_token != -1)
  {
    +[HCUtilities currentProcessIsHeard];
  }

  return currentProcessIsHeard__AXIsProcess;
}

+ (BOOL)currentProcessIsSystemApp
{
  if (currentProcessIsSystemApp_token != -1)
  {
    +[HCUtilities currentProcessIsSystemApp];
  }

  return currentProcessIsSystemApp__AXIsProcess;
}

BOOL __40__HCUtilities_currentProcessIsSystemApp__block_invoke()
{
  result = +[HCUtilities currentProcessIsSpringBoard](HCUtilities, "currentProcessIsSpringBoard") || +[HCUtilities currentProcessIsCarousel];
  currentProcessIsSystemApp__AXIsProcess = result;
  return result;
}

+ (BOOL)currentProcessIsSpringBoard
{
  if (currentProcessIsSpringBoard_token != -1)
  {
    +[HCUtilities currentProcessIsSpringBoard];
  }

  return currentProcessIsSpringBoard__AXIsProcess;
}

void __42__HCUtilities_currentProcessIsSpringBoard__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.springboard"];

  if (v1)
  {
    currentProcessIsSpringBoard__AXIsProcess = 1;
  }
}

+ (id)bluetoothManagerQueue
{
  if (bluetoothManagerQueue_token != -1)
  {
    +[HCUtilities bluetoothManagerQueue];
  }

  v3 = bluetoothManagerQueue_BluetoothQueue;

  return v3;
}

void __36__HCUtilities_bluetoothManagerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("hearing_bluetooth_manager_queue", v2);
  v1 = bluetoothManagerQueue_BluetoothQueue;
  bluetoothManagerQueue_BluetoothQueue = v0;
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    +[HCUtilities isInternalInstall];
  }

  return isInternalInstall__AXIsInternalInstall;
}

+ (BOOL)currentProcessIsCarousel
{
  if (currentProcessIsCarousel_token != -1)
  {
    +[HCUtilities currentProcessIsCarousel];
  }

  return currentProcessIsCarousel__AXIsProcess;
}

void __39__HCUtilities_currentProcessIsCarousel__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Carousel"];

  if (v1)
  {
    currentProcessIsCarousel__AXIsProcess = 1;
  }
}

void __42__HCUtilities_currentProcessIsPreferences__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Preferences"];

  if (v1)
  {
    currentProcessIsPreferences__AXIsProcess = 1;
  }
}

+ (BOOL)currentProcessIsPreferences
{
  if (currentProcessIsPreferences_token != -1)
  {
    +[HCUtilities currentProcessIsPreferences];
  }

  return currentProcessIsPreferences__AXIsProcess;
}

+ (BOOL)deviceIsWatch
{
  if (HCDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    HCDeviceGetType_cold_1();
  }

  return HCDeviceGetType__HCDeviceType == 5;
}

+ (int64_t)systemBootTime
{
  v8 = *MEMORY[0x1E69E9840];
  result = systemBootTime___boottime;
  if (!systemBootTime___boottime)
  {
    v7 = 0;
    v5[1] = 0;
    *v6 = 0x1500000001;
    v4 = 16;
    v5[0] = 0;
    if (sysctl(v6, 2u, v5, &v4, 0, 0) == -1)
    {
      result = 0;
    }

    else
    {
      result = v5[0];
    }

    systemBootTime___boottime = result;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)messagePayloadFromDictionary:(id)a3 andIdentifier:(unint64_t)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v11[0] = @"axha_messageID";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    v11[1] = @"axha_payload";
    v12[0] = v7;
    v12[1] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __32__HCUtilities_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isInternalInstall__AXIsInternalInstall = result;
  return result;
}

+ (id)comfortSoundsAudioQueue
{
  if (comfortSoundsAudioQueue_token != -1)
  {
    +[HCUtilities comfortSoundsAudioQueue];
  }

  v3 = comfortSoundsAudioQueue_ComfortSoundsQueue;

  return v3;
}

void __38__HCUtilities_comfortSoundsAudioQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("comfort_sounds_audio", v2);
  v1 = comfortSoundsAudioQueue_ComfortSoundsQueue;
  comfortSoundsAudioQueue_ComfortSoundsQueue = v0;
}

+ (BOOL)isLEAudioEnabled
{
  if (isLEAudioEnabled_token != -1)
  {
    +[HCUtilities isLEAudioEnabled];
  }

  return isLEAudioEnabled__IsLEAudioEnabled;
}

void __31__HCUtilities_isLEAudioEnabled__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    isLEAudioEnabled__IsLEAudioEnabled = 1;
LABEL_3:
    v0 = HCLogHearingAids();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1D952C000, v0, OS_LOG_TYPE_DEFAULT, "LEA 3 feature is enabled: yes", v1, 2u);
    }

    return;
  }

  if (!+[HCUtilities isDeviceInDeveloperMode])
  {
    isLEAudioEnabled__IsLEAudioEnabled = 0;
    return;
  }

  isLEAudioEnabled__IsLEAudioEnabled = +[HCUtilities isBTLEAudioEnabled];
  if (isLEAudioEnabled__IsLEAudioEnabled)
  {
    goto LABEL_3;
  }
}

+ (BOOL)isDeviceInDeveloperMode
{
  if (isDeviceInDeveloperMode_token != -1)
  {
    +[HCUtilities isDeviceInDeveloperMode];
  }

  return isDeviceInDeveloperMode__isDeviceInDeveloperMode;
}

void __38__HCUtilities_isDeviceInDeveloperMode__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = 8;
  v6 = 0;
  v0 = sysctlbyname("security.mac.amfi.developer_mode_status", &v6, &v5, 0, 0);
  if (v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = v6 == 1;
  }

  v2 = v1;
  isDeviceInDeveloperMode__isDeviceInDeveloperMode = v2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v8 = isDeviceInDeveloperMode__isDeviceInDeveloperMode;
    v9 = 2048;
    v10 = v6;
    v11 = 1024;
    v12 = v0;
    _os_log_impl(&dword_1D952C000, v3, OS_LOG_TYPE_DEFAULT, "Device is in Developer Mode: %d (%llu/1, %d/0)", buf, 0x18u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isBTLEAudioEnabled
{
  if (isBTLEAudioEnabled_token != -1)
  {
    +[HCUtilities isBTLEAudioEnabled];
  }

  return 0;
}

void __33__HCUtilities_isBTLEAudioEnabled__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"enableHALEAudio", @"com.apple.bluetooth", &keyExistsAndHasValidFormat))
  {
    v0 = HCLogHearingAids();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1D952C000, v0, OS_LOG_TYPE_DEFAULT, "BT LEA 3 Enabled: yes", v1, 2u);
    }
  }
}

void __36__HCUtilities_currentProcessIsHeard__block_invoke()
{
  v0 = HCProcessGetName();
  v1 = [v0 isEqualToString:@"heard"];

  if (v1)
  {
    currentProcessIsHeard__AXIsProcess = 1;
  }
}

+ (BOOL)currentProcessIsAXUIServer
{
  if (currentProcessIsAXUIServer_token != -1)
  {
    +[HCUtilities currentProcessIsAXUIServer];
  }

  return currentProcessIsAXUIServer__AXIsProcess;
}

void __41__HCUtilities_currentProcessIsAXUIServer__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  if (([v0 isEqualToString:@"com.apple.accessibility.AccessibilityUIServer"] & 1) != 0 || objc_msgSend(v0, "isEqualToString:", @"com.apple.AccessibilityUIServer"))
  {
    currentProcessIsAXUIServer__AXIsProcess = 1;
  }
}

+ (BOOL)currentProcessIsRTTExternsion
{
  if (currentProcessIsRTTExternsion_onceToken != -1)
  {
    +[HCUtilities currentProcessIsRTTExternsion];
  }

  return currentProcessIsRTTExternsion_AXIsRTTNotificationContentExtension;
}

void __44__HCUtilities_currentProcessIsRTTExternsion__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  currentProcessIsRTTExternsion_AXIsRTTNotificationContentExtension = [v0 isEqualToString:@"com.apple.accessibility.RTTUI.RTTNotifications"];
}

+ (BOOL)currentProcessIsInCallService
{
  if (currentProcessIsInCallService_onceToken != -1)
  {
    +[HCUtilities currentProcessIsInCallService];
  }

  return currentProcessIsInCallService_AXIsInCallService;
}

void __44__HCUtilities_currentProcessIsInCallService__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  currentProcessIsInCallService_AXIsInCallService = [v0 isEqualToString:@"com.apple.InCallService"];
}

+ (BOOL)currentProcessIsHealth
{
  if (currentProcessIsHealth_token != -1)
  {
    +[HCUtilities currentProcessIsHealth];
  }

  return currentProcessIsHealth__AXIsProcess;
}

void __37__HCUtilities_currentProcessIsHealth__block_invoke()
{
  v0 = HCApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.Health"];

  if (v1)
  {
    currentProcessIsHealth__AXIsProcess = 1;
  }
}

+ (BOOL)deviceIsMultiUser
{
  cf = 0;
  v2 = MKBUserTypeDeviceMode();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69B1A18]];

  return v4;
}

+ (BOOL)deviceIsSmallPhone
{
  if (deviceIsSmallPhone_onceToken != -1)
  {
    +[HCUtilities deviceIsSmallPhone];
  }

  return deviceIsSmallPhone_deviceIsSmallPhone;
}

uint64_t __33__HCUtilities_deviceIsSmallPhone__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsSmallPhone_deviceIsSmallPhone = ((result + 1) < 7) & (0x4Du >> (result + 1));
  return result;
}

+ (BOOL)deviceIsBigPhone
{
  if (deviceIsBigPhone_onceToken != -1)
  {
    +[HCUtilities deviceIsBigPhone];
  }

  return deviceIsBigPhone_deviceIsBigPhone;
}

uint64_t __31__HCUtilities_deviceIsBigPhone__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsBigPhone_deviceIsBigPhone = ((result + 1) < 0x11) & (0x10401u >> (result + 1));
  return result;
}

+ (BOOL)supportsAlwaysListening
{
  if (supportsAlwaysListening_onceToken != -1)
  {
    +[HCUtilities supportsAlwaysListening];
  }

  return supportsAlwaysListening_supportsAlwaysListening;
}

uint64_t __38__HCUtilities_supportsAlwaysListening__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsAlwaysListening_supportsAlwaysListening = result;
  return result;
}

+ (BOOL)supportsLEA2
{
  v6 = *MEMORY[0x1E69E9840];
  if (supportsLEA2_onceToken != -1)
  {
    +[HCUtilities supportsLEA2];
  }

  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = supportsLEA2_SupportsLEA2;
    _os_log_impl(&dword_1D952C000, v2, OS_LOG_TYPE_DEFAULT, "This device support LEA 2.0 hearing aids: %hhd", v5, 8u);
  }

  result = supportsLEA2_SupportsLEA2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __27__HCUtilities_supportsLEA2__block_invoke()
{
  v0 = [MEMORY[0x1E695D268] controllerInfoAndReturnError:0];
  supportsLEA2_SupportsLEA2 = [v0 leaVersion] == 2;
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[HCUtilities deviceHasHomeButton];
  }

  return deviceHasHomeButton_hasHomeButton;
}

uint64_t __34__HCUtilities_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_hasHomeButton = result != 2;
  return result;
}

+ (double)roundToPercentageValue:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  return llround(fmin(a3, 1.0) * 100.0) / 100.0;
}

+ (void)deviceIsMultiUser
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1D952C000, a2, OS_LOG_TYPE_ERROR, "could not ascertain whether device is multi-user: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end