@interface CSLanguageCodeUpdateMonitor
+ (id)sharedInstance;
@end

@implementation CSLanguageCodeUpdateMonitor

uint64_t __45__CSLanguageCodeUpdateMonitor_sharedInstance__block_invoke()
{
  v0 = +[CSUtils isDarwinOS];
  v1 = off_1E8659938;
  if (!v0)
  {
    v1 = off_1E8659930;
  }

  sharedInstance__sharedInstance_6425 = objc_alloc_init(*v1);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6423 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6423, &__block_literal_global_6424);
  }

  v3 = sharedInstance__sharedInstance_6425;

  return v3;
}

@end