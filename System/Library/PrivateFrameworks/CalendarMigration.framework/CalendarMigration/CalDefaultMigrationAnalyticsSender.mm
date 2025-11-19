@interface CalDefaultMigrationAnalyticsSender
+ (id)sharedInstance;
@end

@implementation CalDefaultMigrationAnalyticsSender

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CalDefaultMigrationAnalyticsSender sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __52__CalDefaultMigrationAnalyticsSender_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end