@interface VSCopyLanguageIdentifierForLocaleSymbolLoc
@end

@implementation VSCopyLanguageIdentifierForLocaleSymbolLoc

void *__get_VSCopyLanguageIdentifierForLocaleSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!VoiceServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __VoiceServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D23B10;
    v7 = 0;
    VoiceServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = VoiceServicesLibraryCore_frameworkLibrary;
    if (VoiceServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = VoiceServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "_VSCopyLanguageIdentifierForLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_VSCopyLanguageIdentifierForLocaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end