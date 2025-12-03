@interface DEDDirectoriesCleanup
+ (BOOL)isDryRun;
+ (BOOL)shouldRun;
+ (void)didRun;
@end

@implementation DEDDirectoriesCleanup

+ (BOOL)isDryRun
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"directoriesCleanupDryRun"];

  return v3;
}

+ (BOOL)shouldRun
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"directoriesCleanupDone"];

  return v3 ^ 1;
}

+ (void)didRun
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"directoriesCleanupDone"];
}

@end