@interface CSVTRePromptSELFLogger
+ (id)sharedLogger;
+ (void)initialize;
@end

@implementation CSVTRePromptSELFLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_6638 != -1)
  {
    dispatch_once(&sharedLogger_onceToken_6638, &__block_literal_global_6639);
  }

  v3 = sharedLogger_shared;

  return v3;
}

uint64_t __38__CSVTRePromptSELFLogger_sharedLogger__block_invoke()
{
  sharedLogger_shared = objc_alloc_init(CSVTRePromptSELFLogger);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _voiceTriggerRePromptIsolatedStreamID = [MEMORY[0x1E696AFB0] UUID];

    MEMORY[0x1EEE66BB8]();
  }
}

@end