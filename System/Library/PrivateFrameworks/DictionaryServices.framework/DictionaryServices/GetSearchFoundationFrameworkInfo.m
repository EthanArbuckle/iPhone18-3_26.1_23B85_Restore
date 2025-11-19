@interface GetSearchFoundationFrameworkInfo
@end

@implementation GetSearchFoundationFrameworkInfo

void ___GetSearchFoundationFrameworkInfo_block_invoke()
{
  v0 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/SearchFoundation.framework", kCFURLPOSIXPathStyle, 1u);
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
        _GetSearchFoundationFrameworkInfo__InfoPtr = malloc_type_calloc(1uLL, 0x30uLL, 0x800407D3415B1uLL);
        *_GetSearchFoundationFrameworkInfo__InfoPtr = objc_getClass("SFSearchResult");
        *(_GetSearchFoundationFrameworkInfo__InfoPtr + 8) = objc_getClass("SFFormattedText");
        *(_GetSearchFoundationFrameworkInfo__InfoPtr + 16) = objc_getClass("SFRichText");
        *(_GetSearchFoundationFrameworkInfo__InfoPtr + 24) = objc_getClass("SFText");
        Class = objc_getClass("SFWebCardSection");
        *(_GetSearchFoundationFrameworkInfo__InfoPtr + 40) = Class;
        v4 = objc_getClass("SFCard");
        ClassPair = objc_allocateClassPair(v4, "DCSDictionaryCard", 0);
        if (class_addIvar(ClassPair, "_dictionaryID", 8uLL, 3u, "@") && class_addIvar(ClassPair, "_searchString", 8uLL, 3u, "@"))
        {
          objc_registerClassPair(ClassPair);
          v6 = imp_implementationWithBlock(&__block_literal_global_72);
          class_addMethod(ClassPair, sel_setDictionaryID_, v6, "v@:@");
          v7 = imp_implementationWithBlock(&__block_literal_global_75);
          class_addMethod(ClassPair, sel_setSearchString_, v7, "v@:@");
          v8 = imp_implementationWithBlock(&__block_literal_global_78);
          class_addMethod(ClassPair, sel_dealloc, v8, "v@:");
          v9 = imp_implementationWithBlock(&__block_literal_global_84);
          v10 = object_getClass(ClassPair);
          class_addMethod(v10, sel_supportsSecureCoding, v9, "B@:");
          v11 = imp_implementationWithBlock(&__block_literal_global_95);
          class_addMethod(ClassPair, sel_encodeWithCoder_, v11, "v@:@");
          v12 = imp_implementationWithBlock(&__block_literal_global_102);
          class_addMethod(ClassPair, sel_initWithCoder_, v12, "@@:@");
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___CreateDCSDictionaryCardClass_block_invoke_7;
          block[3] = &unk_27835AA68;
          block[4] = Class;
          v13 = imp_implementationWithBlock(block);
          class_addMethod(ClassPair, sel_loadCardSectionsWithCompletionHandler_, v13, "v@:@");
        }

        else if (ClassPair)
        {
          objc_disposeClassPair(ClassPair);
          ClassPair = 0;
        }

        _GetSearchFoundationFrameworkInfo__DCSDictionaryCardClass = ClassPair;
        v14 = _GetSearchFoundationFrameworkInfo__InfoPtr;
        *(_GetSearchFoundationFrameworkInfo__InfoPtr + 32) = ClassPair;
        if (!*v14 || !v14[1] || !v14[2] || !ClassPair || !v14[3] || !v14[5])
        {
          free(v14);
          _GetSearchFoundationFrameworkInfo__InfoPtr = 0;
        }
      }
    }
  }
}

@end