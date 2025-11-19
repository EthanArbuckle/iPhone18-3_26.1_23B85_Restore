@interface _CDPaths
+ (id)bundleBuiltInPlugInsPath;
+ (id)bundlePathForResource:(id)a3 ofType:(id)a4;
+ (id)defaultDirectoryPathForDataCollection;
+ (id)simulatorHomePathFor:(id)a3;
+ (id)simulatorSharedPathFor:(id)a3;
+ (id)simulatorSystemPathFor:(id)a3 withEnvVar:(id)a4;
@end

@implementation _CDPaths

+ (id)bundlePathForResource:(id)a3 ofType:(id)a4
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:a1];
  v10 = [v9 pathForResource:v8 ofType:v7];

  return v10;
}

+ (id)bundleBuiltInPlugInsPath
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v3 = [v2 builtInPlugInsPath];

  return v3;
}

+ (id)simulatorSystemPathFor:(id)a3 withEnvVar:(id)a4
{
  v5 = MEMORY[0x1E696AE30];
  v6 = a4;
  v7 = a3;
  v8 = [v5 processInfo];
  v9 = [v8 environment];
  v10 = [v9 objectForKey:v6];

  v11 = [v10 stringByAppendingString:v7];

  return v11;
}

+ (id)simulatorHomePathFor:(id)a3
{
  v3 = a3;
  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

+ (id)simulatorSharedPathFor:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:@"/tmp"];
  [v4 addObject:@"Developer/CoreSimulator/Shared/data"];
  if (v3 && [v3 length])
  {
    [v4 addObject:v3];
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