@interface CSVoiceProfileSELFLogger
+ (id)sharedLogger;
+ (void)initialize;
@end

@implementation CSVoiceProfileSELFLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_14042 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_14042, &__block_literal_global_14043);
  }

  v3 = sharedLogger_shared_14044;

  return v3;
}

uint64_t __40__CSVoiceProfileSELFLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceProfileSELFLogger);
  v1 = sharedLogger_shared_14044;
  sharedLogger_shared_14044 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v3 = _voiceProfileiCloudSyncIsolatedStreamID;
    _voiceProfileiCloudSyncIsolatedStreamID = uUID;

    MEMORY[0x1EEE66BB8](uUID, v3);
  }
}

@end