@interface DEDDirectoriesCleanup
+ (BOOL)isDryRun;
+ (BOOL)shouldRun;
+ (void)didRun;
@end

@implementation DEDDirectoriesCleanup

+ (BOOL)isDryRun
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"directoriesCleanupDryRun"];

  return v3;
}

+ (BOOL)shouldRun
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"directoriesCleanupDone"];

  return v3 ^ 1;
}

+ (void)didRun
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"directoriesCleanupDone"];
}

@end