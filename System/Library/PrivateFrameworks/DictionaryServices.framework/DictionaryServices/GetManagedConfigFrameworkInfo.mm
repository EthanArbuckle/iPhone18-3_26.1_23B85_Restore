@interface GetManagedConfigFrameworkInfo
@end

@implementation GetManagedConfigFrameworkInfo

void ___GetManagedConfigFrameworkInfo_block_invoke()
{
  _GetManagedConfigFrameworkInfo__InfoPtr = malloc_type_calloc(1uLL, 0x18uLL, 0xE00409BBF8FE8uLL);
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/ManagedConfiguration.framework", kCFURLPOSIXPathStyle, 1u);
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
        *(_GetManagedConfigFrameworkInfo__InfoPtr + 8) = objc_getClass("MCProfileConnection");
        DataPointerForName = CFBundleGetDataPointerForName(v2, @"MCFeatureAssistantProfanityFilterForced");
        if (DataPointerForName)
        {
          *(_GetManagedConfigFrameworkInfo__InfoPtr + 16) = *DataPointerForName;
        }
      }
    }
  }

  if (!*(_GetManagedConfigFrameworkInfo__InfoPtr + 8) || !*(_GetManagedConfigFrameworkInfo__InfoPtr + 16))
  {
    free(_GetManagedConfigFrameworkInfo__InfoPtr);
    _GetManagedConfigFrameworkInfo__InfoPtr = 0;
  }
}

@end