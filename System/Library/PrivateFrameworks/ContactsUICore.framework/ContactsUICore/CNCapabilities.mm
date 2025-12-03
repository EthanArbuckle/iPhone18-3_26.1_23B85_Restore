@interface CNCapabilities
+ (BOOL)hasVibratorCapability;
+ (BOOL)shouldUseLegacyMessages;
- (BOOL)areTelephonyCallsSupported;
- (BOOL)isFaceTimeAudioSupported;
- (BOOL)isFaceTimeVideoSupported;
- (BOOL)isiMessageSupported;
@end

@implementation CNCapabilities

- (BOOL)areTelephonyCallsSupported
{
  kdebug_trace();
  if (MGGetBoolAnswer())
  {
    supportsTelephonyCalls = 1;
  }

  else
  {
    supportsTelephonyCalls = [getTUCallCapabilitiesClass() supportsTelephonyCalls];
  }

  kdebug_trace();
  return supportsTelephonyCalls;
}

- (BOOL)isiMessageSupported
{
  kdebug_trace();
  iMessageSupported = 1;
  if ((_mergedCarrierBundleValue(@"AllowiMessage", 1) & 1) == 0)
  {
    sharedInstance = [(objc_class *)getFTiMessageStatusClass() sharedInstance];
    iMessageSupported = [sharedInstance iMessageSupported];
  }

  kdebug_trace();
  return iMessageSupported;
}

- (BOOL)isFaceTimeVideoSupported
{
  kdebug_trace();
  if (MGGetBoolAnswer())
  {
    supportsDisplayingFaceTimeVideoCalls = 1;
  }

  else
  {
    supportsDisplayingFaceTimeVideoCalls = [getTUCallCapabilitiesClass() supportsDisplayingFaceTimeVideoCalls];
  }

  kdebug_trace();
  return supportsDisplayingFaceTimeVideoCalls;
}

- (BOOL)isFaceTimeAudioSupported
{
  kdebug_trace();
  v2 = _mergedCarrierBundleValue(@"AllowsFaceTimeAudio", 0);
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  supportsDisplayingFaceTimeAudioCalls = 0;
  if ((v3 & 1) == 0)
  {
    if (v4 & v2)
    {
      supportsDisplayingFaceTimeAudioCalls = 1;
    }

    else
    {
      supportsDisplayingFaceTimeAudioCalls = [getTUCallCapabilitiesClass() supportsDisplayingFaceTimeAudioCalls];
    }

    kdebug_trace();
  }

  return supportsDisplayingFaceTimeAudioCalls;
}

+ (BOOL)shouldUseLegacyMessages
{
  if (shouldUseLegacyMessages_cn_once_token_2 != -1)
  {
    +[CNCapabilities shouldUseLegacyMessages];
  }

  v3 = shouldUseLegacyMessages_cn_once_object_2;

  return [v3 BOOLValue];
}

uint64_t __41__CNCapabilities_shouldUseLegacyMessages__block_invoke()
{
  shouldUseLegacyMessages_cn_once_object_2 = [MEMORY[0x1E696AD98] numberWithBool:{CFPreferencesGetAppBooleanValue(@"ABUseLegacyMessages", @"com.apple.AddressBook", 0) != 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)hasVibratorCapability
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

@end