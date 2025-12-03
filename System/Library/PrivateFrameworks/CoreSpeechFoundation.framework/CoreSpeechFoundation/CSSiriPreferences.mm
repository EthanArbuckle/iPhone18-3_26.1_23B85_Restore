@interface CSSiriPreferences
+ (id)sharedPreferences;
- (CSSiriPreferences)initWithInstanceContext:(id)context;
- (id)overrideAudioSessionActiveDelay;
- (id)serverAudioSessionActivationDelay;
- (id)serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold;
- (id)serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay;
- (unint64_t)internalUserClassification;
@end

@implementation CSSiriPreferences

- (unint64_t)internalUserClassification
{
  v2 = _AFBackedUpPreferencesValueForKey();
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue >= 3)
  {
    return 0;
  }

  else
  {
    return unsignedIntegerValue;
  }
}

- (id)serverAudioSessionActivationDelay
{
  if (+[CSUtils horsemanDeviceType]== 3)
  {
    v3 = &unk_1F5916C70;
  }

  else
  {
    v3 = 0;
  }

  instanceContext = self->_instanceContext;
  v5 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  v6 = v3;

  return v3;
}

- (id)serverAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold
{
  if (+[CSUtils horsemanDeviceType]== 3)
  {
    v3 = &unk_1F5916C60;
  }

  else
  {
    v3 = 0;
  }

  instanceContext = self->_instanceContext;
  v5 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  v6 = v3;

  return v3;
}

- (id)serverMediaPlaybackVolumeThresholdForAudioSessionActivationDelay
{
  if (+[CSUtils horsemanDeviceType]== 3)
  {
    v3 = &unk_1F5916C50;
  }

  else
  {
    v3 = 0;
  }

  instanceContext = self->_instanceContext;
  v5 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  v6 = v3;

  return v3;
}

- (id)overrideAudioSessionActiveDelay
{
  v2 = _AFPreferencesValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CSSiriPreferences)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CSSiriPreferences;
  v5 = [(CSSiriPreferences *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create(0, 0);
    queue = v5->_queue;
    v5->_queue = v6;

    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x1E698D160] defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = defaultContext;
  }

  return v5;
}

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken_8931 != -1)
  {
    dispatch_once(&sharedPreferences_onceToken_8931, &__block_literal_global_8932);
  }

  v3 = sharedPreferences_sharedPreferences;

  return v3;
}

void __38__CSSiriPreferences_sharedPreferences__block_invoke()
{
  v0 = [CSSiriPreferences alloc];
  v3 = [MEMORY[0x1E698D160] currentContext];
  v1 = [(CSSiriPreferences *)v0 initWithInstanceContext:v3];
  v2 = sharedPreferences_sharedPreferences;
  sharedPreferences_sharedPreferences = v1;
}

@end