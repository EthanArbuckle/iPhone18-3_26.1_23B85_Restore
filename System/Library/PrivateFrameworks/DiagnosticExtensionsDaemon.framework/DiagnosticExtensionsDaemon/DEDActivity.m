@interface DEDActivity
+ (id)sharedInstance;
- (id)currentCleanupActivity;
- (id)newCleanupActivity;
@end

@implementation DEDActivity

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[DEDActivity sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __29__DEDActivity_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)newCleanupActivity
{
  v3 = _os_activity_create(&dword_248AD7000, "Old Sessions Cleanup", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  [(DEDActivity *)self setCleanup:v3];

  [(DEDActivity *)self cleanup];
  return objc_claimAutoreleasedReturnValue();
}

- (id)currentCleanupActivity
{
  v3 = [(DEDActivity *)self cleanup];
  if (v3)
  {
    v4 = [(DEDActivity *)self cleanup];
  }

  else
  {
    v4 = [(DEDActivity *)self newCleanupActivity];
  }

  v5 = v4;

  return v5;
}

@end