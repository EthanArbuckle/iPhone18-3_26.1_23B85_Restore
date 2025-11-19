@interface CalCalendarLocalAccountInfo
+ (id)sharedInstance;
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
@end

@implementation CalCalendarLocalAccountInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CalCalendarLocalAccountInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __45__CalCalendarLocalAccountInfo_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v3 = [a3 stringRemovingMailto];
  v4 = [MEMORY[0x1E6992F50] defaultProvider];
  v5 = [v4 matchesOneOfMyEmails:v3];

  return v5;
}

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v4 = [a3 absoluteString];
  LOBYTE(self) = [(CalCalendarLocalAccountInfo *)self addressIsAccountOwner:v4];

  return self;
}

@end