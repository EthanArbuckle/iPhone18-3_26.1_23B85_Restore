@interface _MTClientDemarcatedCurrentContainerPathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation _MTClientDemarcatedCurrentContainerPathProvider

- (NSURL)defaultPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [v4 URLByAppendingPathComponent:bundleIdentifier];

  return v7;
}

- (NSURL)libraryPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];
  v5 = [v2 fileURLWithPath:firstObject];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [v5 URLByAppendingPathComponent:bundleIdentifier];

  return v8;
}

- (NSURL)cachesPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];
  v5 = [v2 fileURLWithPath:firstObject];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [v5 URLByAppendingPathComponent:bundleIdentifier];

  return v8;
}

@end