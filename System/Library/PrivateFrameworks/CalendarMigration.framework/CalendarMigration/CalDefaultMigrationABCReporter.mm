@interface CalDefaultMigrationABCReporter
+ (id)sharedInstance;
- (void)reportIssueWithType:(id)a3 subtype:(id)a4 context:(id)a5 events:(id)a6;
@end

@implementation CalDefaultMigrationABCReporter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CalDefaultMigrationABCReporter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __48__CalDefaultMigrationABCReporter_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)reportIssueWithType:(id)a3 subtype:(id)a4 context:(id)a5 events:(id)a6
{
  v9 = MEMORY[0x277CF7758];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v9 alloc] initWithType:v13 subtype:v12 context:v11];

  [v14 setEvents:v10];
  [v14 setIgnoreRateLimiting:1];
  [v14 report];
}

@end