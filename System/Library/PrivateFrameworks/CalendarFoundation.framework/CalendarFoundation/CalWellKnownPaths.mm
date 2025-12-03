@interface CalWellKnownPaths
+ (BOOL)checkOrCreatePath:(id)path;
+ (id)realHomeDirectoryPath;
@end

@implementation CalWellKnownPaths

+ (id)realHomeDirectoryPath
{
  v2 = getuid();
  v3 = getpwuid(v2);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3->pw_dir];
  }

  else
  {
    v4 = @"~/";
  }

  return v4;
}

+ (BOOL)checkOrCreatePath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  stringByExpandingTildeToNonSandboxHome = [pathCopy stringByExpandingTildeToNonSandboxHome];

  v13 = 0;
  if ([defaultManager fileExistsAtPath:stringByExpandingTildeToNonSandboxHome isDirectory:&v13] && (v13 & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v12 = 0;
    v7 = [defaultManager createDirectoryAtPath:stringByExpandingTildeToNonSandboxHome withIntermediateDirectories:1 attributes:0 error:&v12];
    v8 = v12;
    v9 = v8;
    if (v8)
    {
      localizedDescription = [v8 localizedDescription];
      NSLog(&cfstr_UnableToCreate_0.isa, stringByExpandingTildeToNonSandboxHome, localizedDescription);
    }
  }

  return v7;
}

@end