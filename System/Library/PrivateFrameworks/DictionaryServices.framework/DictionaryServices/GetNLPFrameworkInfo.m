@interface GetNLPFrameworkInfo
@end

@implementation GetNLPFrameworkInfo

void ___GetNLPFrameworkInfo_block_invoke()
{
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/NLP.framework", kCFURLPOSIXPathStyle, 1u);
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
        _GetNLPFrameworkInfo__InfoPtr = malloc_type_calloc(1uLL, 0x18uLL, 0xE00409BBF8FE8uLL);
        DataPointerForName = CFBundleGetDataPointerForName(v2, @"kNLMorphologicalAnalyzerLocaleKey");
        if (DataPointerForName)
        {
          *(_GetNLPFrameworkInfo__InfoPtr + 16) = *DataPointerForName;
        }

        *_GetNLPFrameworkInfo__InfoPtr = CFBundleGetFunctionPointerForName(v2, @"NLMorphologicalAnalyzerCreate");
        FunctionPointerForName = CFBundleGetFunctionPointerForName(v2, @"NLMorphologicalAnalyzerEnumerateLemmasForToken");
        v5 = _GetNLPFrameworkInfo__InfoPtr;
        *(_GetNLPFrameworkInfo__InfoPtr + 8) = FunctionPointerForName;
        if (!v5[2] || !*v5 || !FunctionPointerForName)
        {
          free(v5);
          _GetNLPFrameworkInfo__InfoPtr = 0;
        }
      }
    }
  }
}

@end