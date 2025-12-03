@interface BKUIUtils
+ (int64_t)activeInterfaceOrientationForView:(id)view;
+ (void)resetScreenDimming;
+ (void)vibrateForBiometricEvent:(BOOL)event;
+ (void)vibrateWithIntensity:(float)intensity withPattern:(id)pattern;
@end

@implementation BKUIUtils

+ (void)resetScreenDimming
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIUtils resetScreenDimming];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:1];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setIdleTimerDisabled:0];
}

+ (void)vibrateWithIntensity:(float)intensity withPattern:(id)pattern
{
  patternCopy = pattern;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateWithIntensity:patternCopy withPattern:intensity];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *&v7 = intensity;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [dictionary setObject:v8 forKey:@"Intensity"];

  [dictionary setObject:patternCopy forKey:@"VibePattern"];
  AudioServicesPlaySystemSoundWithVibration();
}

+ (void)vibrateForBiometricEvent:(BOOL)event
{
  eventCopy = event;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateForBiometricEvent:eventCopy];
  }

  if (eventCopy)
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

+ (int64_t)activeInterfaceOrientationForView:(id)view
{
  viewCopy = view;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] isFrontBoard])
  {

LABEL_4:
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    activeInterfaceOrientation = [mEMORY[0x277D75128]2 activeInterfaceOrientation];
    goto LABEL_5;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  if (v7)
  {
    goto LABEL_4;
  }

  window = [viewCopy window];

  if (!window)
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    windows = [mEMORY[0x277D75128]2 windows];
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    v15 = [windows filteredArrayUsingPredicate:v14];
    firstObject = [v15 firstObject];
    interfaceOrientation = [firstObject interfaceOrientation];

    goto LABEL_6;
  }

  mEMORY[0x277D75128]2 = [viewCopy window];
  activeInterfaceOrientation = [mEMORY[0x277D75128]2 interfaceOrientation];
LABEL_5:
  interfaceOrientation = activeInterfaceOrientation;
LABEL_6:

  return interfaceOrientation;
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