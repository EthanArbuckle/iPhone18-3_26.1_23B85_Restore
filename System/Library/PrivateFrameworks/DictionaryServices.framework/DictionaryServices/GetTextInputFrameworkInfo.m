@interface GetTextInputFrameworkInfo
@end

@implementation GetTextInputFrameworkInfo

void ___GetTextInputFrameworkInfo_block_invoke()
{
  _GetTextInputFrameworkInfo__InfoPtr = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/TextInput.framework", kCFURLPOSIXPathStyle, 1u);
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
        *_GetTextInputFrameworkInfo__InfoPtr = objc_getClass("TILinguisticAssetDownloadClient");
      }
    }
  }

  if (!*_GetTextInputFrameworkInfo__InfoPtr)
  {
    free(_GetTextInputFrameworkInfo__InfoPtr);
    _GetTextInputFrameworkInfo__InfoPtr = 0;
  }
}

@end