@interface CalWellKnownPaths
+ (BOOL)checkOrCreatePath:(id)a3;
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

+ (BOOL)checkOrCreatePath:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 stringByExpandingTildeToNonSandboxHome];

  v13 = 0;
  if ([v5 fileExistsAtPath:v6 isDirectory:&v13] && (v13 & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v12 = 0;
    v7 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
    v8 = v12;
    v9 = v8;
    if (v8)
    {
      v10 = [v8 localizedDescription];
      NSLog(&cfstr_UnableToCreate_0.isa, v6, v10);
    }
  }

  return v7;
}

@end