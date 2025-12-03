@interface _CLKAnalogHandFactoryCachePathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation _CLKAnalogHandFactoryCachePathProvider

- (NSURL)defaultPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = BSCurrentUserDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (NSURL)libraryPath
{
  defaultPath = [(_CLKAnalogHandFactoryCachePathProvider *)self defaultPath];
  v3 = [defaultPath URLByAppendingPathComponent:@"Library"];

  return v3;
}

- (NSURL)cachesPath
{
  libraryPath = [(_CLKAnalogHandFactoryCachePathProvider *)self libraryPath];
  v3 = [libraryPath URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end