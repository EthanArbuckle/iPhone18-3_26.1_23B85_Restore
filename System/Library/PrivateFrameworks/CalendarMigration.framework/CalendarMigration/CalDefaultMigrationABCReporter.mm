@interface CalDefaultMigrationABCReporter
+ (id)sharedInstance;
- (void)reportIssueWithType:(id)type subtype:(id)subtype context:(id)context events:(id)events;
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

- (void)reportIssueWithType:(id)type subtype:(id)subtype context:(id)context events:(id)events
{
  v9 = MEMORY[0x277CF7758];
  eventsCopy = events;
  contextCopy = context;
  subtypeCopy = subtype;
  typeCopy = type;
  v14 = [[v9 alloc] initWithType:typeCopy subtype:subtypeCopy context:contextCopy];

  [v14 setEvents:eventsCopy];
  [v14 setIgnoreRateLimiting:1];
  [v14 report];
}

@end