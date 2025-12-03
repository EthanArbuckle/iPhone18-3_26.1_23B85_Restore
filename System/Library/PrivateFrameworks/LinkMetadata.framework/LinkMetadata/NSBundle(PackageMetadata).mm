@interface NSBundle(PackageMetadata)
- (id)executablePathWithError:()PackageMetadata;
@end

@implementation NSBundle(PackageMetadata)

- (id)executablePathWithError:()PackageMetadata
{
  executablePath = [self executablePath];
  v6 = executablePath;
  if (a3 && !executablePath)
  {
    v7 = MEMORY[0x1E696ABC0];
    bundlePath = [self bundlePath];
    *a3 = [v7 errorWithErrno:79 forFilePath:bundlePath];
  }

  return v6;
}

@end