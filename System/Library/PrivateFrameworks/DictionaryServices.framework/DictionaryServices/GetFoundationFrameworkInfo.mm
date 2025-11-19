@interface GetFoundationFrameworkInfo
@end

@implementation GetFoundationFrameworkInfo

void ___GetFoundationFrameworkInfo_block_invoke()
{
  _GetFoundationFrameworkInfo__InfoPtr = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/Foundation.framework", kCFURLPOSIXPathStyle, 1u);
  if (v0)
  {
    v1 = v0;
    v2 = CFBundleCreate(0, v0);
    CFRelease(v1);
    if (v2)
    {
      if (!CFBundleIsExecutableLoaded(v2))
      {
        CFBundleLoadExecutable(v2);
      }

      if (CFBundleIsExecutableLoaded(v2))
      {
        *_GetFoundationFrameworkInfo__InfoPtr = objc_getClass("NSAutoreleasePool");
      }
    }
  }

  if (!*_GetFoundationFrameworkInfo__InfoPtr)
  {
    free(_GetFoundationFrameworkInfo__InfoPtr);
    _GetFoundationFrameworkInfo__InfoPtr = 0;
  }
}

@end