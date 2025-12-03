@interface _CDPaths
+ (id)bundleBuiltInPlugInsPath;
+ (id)bundlePathForResource:(id)resource ofType:(id)type;
+ (id)defaultDirectoryPathForDataCollection;
+ (id)simulatorHomePathFor:(id)for;
+ (id)simulatorSharedPathFor:(id)for;
+ (id)simulatorSystemPathFor:(id)for withEnvVar:(id)var;
@end

@implementation _CDPaths

+ (id)bundlePathForResource:(id)resource ofType:(id)type
{
  v6 = MEMORY[0x1E696AAE8];
  typeCopy = type;
  resourceCopy = resource;
  v9 = [v6 bundleForClass:self];
  v10 = [v9 pathForResource:resourceCopy ofType:typeCopy];

  return v10;
}

+ (id)bundleBuiltInPlugInsPath
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  builtInPlugInsPath = [v2 builtInPlugInsPath];

  return builtInPlugInsPath;
}

+ (id)simulatorSystemPathFor:(id)for withEnvVar:(id)var
{
  v5 = MEMORY[0x1E696AE30];
  varCopy = var;
  forCopy = for;
  processInfo = [v5 processInfo];
  environment = [processInfo environment];
  v10 = [environment objectForKey:varCopy];

  v11 = [v10 stringByAppendingString:forCopy];

  return v11;
}

+ (id)simulatorHomePathFor:(id)for
{
  forCopy = for;
  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingString:forCopy];

  return v5;
}

+ (id)simulatorSharedPathFor:(id)for
{
  forCopy = for;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:@"/tmp"];
  [v4 addObject:@"Developer/CoreSimulator/Shared/data"];
  if (forCopy && [forCopy length])
  {
    [v4 addObject:forCopy];
  }

  v5 = [MEMORY[0x1E696AEC0] pathWithComponents:v4];

  return v5;
}

+ (id)defaultDirectoryPathForDataCollection
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"CoreDuet/DataCollection"];

  return v3;
}

@end