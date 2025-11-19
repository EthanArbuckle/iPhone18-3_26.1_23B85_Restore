@interface GetMobileAssetObjectInfo
@end

@implementation GetMobileAssetObjectInfo

void ___GetMobileAssetObjectInfo_block_invoke()
{
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/Foundation.framework", kCFURLPOSIXPathStyle, 1u);
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  FunctionPointerForName = CFBundleCreate(0, v0);
  CFRelease(v1);
  if (!FunctionPointerForName)
  {
    goto LABEL_9;
  }

  if (!CFBundleIsExecutableLoaded(FunctionPointerForName))
  {
    CFBundleLoadExecutable(FunctionPointerForName);
  }

  if (!CFBundleIsExecutableLoaded(FunctionPointerForName))
  {
LABEL_8:
    FunctionPointerForName = 0;
    goto LABEL_9;
  }

  _GetMobileAssetObjectInfo__ObjectInfoPtr = malloc_type_calloc(1uLL, 0x78uLL, 0xE0040AF3BDA01uLL);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(FunctionPointerForName, @"NSClassFromString");
  if (FunctionPointerForName)
  {
    *_GetMobileAssetObjectInfo__ObjectInfoPtr = (FunctionPointerForName)(@"NSAutoreleasePool");
    *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 8) = (FunctionPointerForName)(@"NSFileManager");
    *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 56) = (FunctionPointerForName)(@"NSProcessInfo");
    *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 64) = (FunctionPointerForName)(@"NSLocale");
  }

LABEL_9:
  v3 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/MobileAsset.framework", kCFURLPOSIXPathStyle, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = CFBundleCreate(0, v3);
    CFRelease(v4);
    if (v5)
    {
      if (!CFBundleIsExecutableLoaded(v5))
      {
        CFBundleLoadExecutable(v5);
      }

      if (_GetMobileAssetObjectInfo__ObjectInfoPtr && CFBundleIsExecutableLoaded(v5))
      {
        if (FunctionPointerForName)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 16) = (FunctionPointerForName)(@"ASAssetQuery");
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 24) = (FunctionPointerForName)(@"ASAsset");
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 32) = (FunctionPointerForName)(@"MAAssetQuery");
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 40) = (FunctionPointerForName)(@"MAAsset");
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 48) = (FunctionPointerForName)(@"MADownloadOptions");
        }

        *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 72) = CFBundleGetFunctionPointerForName(v5, @"ASServerURLForAssetType");
        DataPointerForName = CFBundleGetDataPointerForName(v5, @"ASAttributeCompatibilityVersion");
        if (DataPointerForName)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 80) = *DataPointerForName;
        }

        v7 = CFBundleGetDataPointerForName(v5, @"ASAttributeContentVersion");
        if (v7)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 88) = *v7;
        }

        v8 = CFBundleGetDataPointerForName(v5, @"ASStateOperation");
        if (v8)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 96) = *v8;
        }

        v9 = CFBundleGetDataPointerForName(v5, @"ASOperationCompleted");
        if (v9)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 104) = *v9;
        }

        v10 = CFBundleGetDataPointerForName(v5, @"ASErrorDomain");
        if (v10)
        {
          *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 112) = *v10;
        }
      }
    }
  }

  v11 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/InternationalSupport.framework", kCFURLPOSIXPathStyle, 1u);
  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = v11;
  v13 = CFBundleCreate(0, v11);
  CFRelease(v12);
  if (!v13)
  {
    goto LABEL_35;
  }

  if (!CFBundleIsExecutableLoaded(v13))
  {
    CFBundleLoadExecutable(v13);
  }

  if (_GetMobileAssetObjectInfo__ObjectInfoPtr)
  {
    IsExecutableLoaded = CFBundleIsExecutableLoaded(v13);
    if (FunctionPointerForName && IsExecutableLoaded)
    {
      v15 = (FunctionPointerForName)(@"NSLocale");
      v16 = _GetMobileAssetObjectInfo__ObjectInfoPtr;
      *(_GetMobileAssetObjectInfo__ObjectInfoPtr + 64) = v15;
LABEL_36:
      if (!*v16 || !v16[1] || !v16[2] || !v16[3] || !v16[4] || !v16[5] || !v16[6] || !v16[10] || !v16[11] || !v16[12] || !v16[13] || !v16[14])
      {
        free(v16);
        _GetMobileAssetObjectInfo__ObjectInfoPtr = 0;
      }

      return;
    }

LABEL_35:
    v16 = _GetMobileAssetObjectInfo__ObjectInfoPtr;
    if (!_GetMobileAssetObjectInfo__ObjectInfoPtr)
    {
      return;
    }

    goto LABEL_36;
  }
}

@end