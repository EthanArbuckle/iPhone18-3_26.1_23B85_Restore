@interface QueryBuildInformation
@end

@implementation QueryBuildInformation

void ___QueryBuildInformation_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = xmmword_1E81DBE78;
  v12 = @"ReleaseType";
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &v11, 3, MEMORY[0x1E695E9C0]);
  if (v0)
  {
    v1 = v0;
    v2 = MGCopyMultipleAnswers();
    if (v2)
    {
      v3 = v2;
      Value = CFDictionaryGetValue(v2, @"CarrierInstallCapability");
      v5 = *MEMORY[0x1E695E4D0];
      _IsCarrierBuildCached = Value == *MEMORY[0x1E695E4D0];
      v6 = CFDictionaryGetValue(v3, @"InternalBuild");
      _IsInternalBuildCached = v6 == v5;
      if (v6 != v5)
      {
        v7 = CFDictionaryGetValue(v3, @"ReleaseType");
        if (v7)
        {
          v8 = v7;
          v9 = CFGetTypeID(v7);
          if (v9 == CFStringGetTypeID() && CFStringCompare(v8, @"Desense", 0) == kCFCompareEqualTo)
          {
            _IsInternalBuildCached = 1;
          }
        }
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end