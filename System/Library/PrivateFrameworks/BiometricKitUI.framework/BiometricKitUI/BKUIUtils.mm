@interface BKUIUtils
+ (int64_t)activeInterfaceOrientationForView:(id)a3;
+ (void)resetScreenDimming;
+ (void)vibrateForBiometricEvent:(BOOL)a3;
+ (void)vibrateWithIntensity:(float)a3 withPattern:(id)a4;
@end

@implementation BKUIUtils

+ (void)resetScreenDimming
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIUtils resetScreenDimming];
  }

  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

+ (void)vibrateWithIntensity:(float)a3 withPattern:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateWithIntensity:v5 withPattern:a3];
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [v6 setObject:v8 forKey:@"Intensity"];

  [v6 setObject:v5 forKey:@"VibePattern"];
  AudioServicesPlaySystemSoundWithVibration();
}

+ (void)vibrateForBiometricEvent:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateForBiometricEvent:v3];
  }

  if (v3)
  {
    v5 = &unk_2853CC868;
  }

  else
  {
    v5 = &unk_2853CC880;
  }

  LODWORD(v4) = 1.0;
  [BKUIUtils vibrateWithIntensity:v5 withPattern:v4];
}

+ (int64_t)activeInterfaceOrientationForView:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  if ([v4 isFrontBoard])
  {

LABEL_4:
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = [v8 activeInterfaceOrientation];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.springboard"];

  if (v7)
  {
    goto LABEL_4;
  }

  v12 = [v3 window];

  if (!v12)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v13 = [v8 windows];
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    v15 = [v13 filteredArrayUsingPredicate:v14];
    v16 = [v15 firstObject];
    v10 = [v16 interfaceOrientation];

    goto LABEL_6;
  }

  v8 = [v3 window];
  v9 = [v8 interfaceOrientation];
LABEL_5:
  v10 = v9;
LABEL_6:

  return v10;
}

+ (void)vibrateWithIntensity:(uint64_t)a1 withPattern:(float)a2 .cold.1(uint64_t a1, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Vibrate with intensity: %f, and with pattern: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)vibrateForBiometricEvent:(char)a1 .cold.1(char a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Vibrate for good biometric event: %i", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end