@interface UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc
@end

@implementation UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc

void *__get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27834A0B8;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFNSExtensionItemContentItem.m" lineNumber:26 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "_UINSExtensionItemUserInfoIsContentManagedKey");
  *(*(a1[4] + 8) + 24) = result;
  get_UINSExtensionItemUserInfoIsContentManagedKeySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

@end