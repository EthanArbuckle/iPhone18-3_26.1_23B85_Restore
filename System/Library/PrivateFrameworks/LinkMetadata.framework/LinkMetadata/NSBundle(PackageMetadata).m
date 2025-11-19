@interface NSBundle(PackageMetadata)
- (id)executablePathWithError:()PackageMetadata;
@end

@implementation NSBundle(PackageMetadata)

- (id)executablePathWithError:()PackageMetadata
{
  v5 = [a1 executablePath];
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [a1 bundlePath];
    *a3 = [v7 errorWithErrno:79 forFilePath:v8];
  }

  return v6;
}

@end