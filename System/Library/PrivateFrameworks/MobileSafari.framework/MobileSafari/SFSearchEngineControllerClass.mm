@interface SFSearchEngineControllerClass
@end

@implementation SFSearchEngineControllerClass

Class __get_SFSearchEngineControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E721ED28;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SFSearchEngineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SFSearchEngineControllerClass_block_invoke_cold_1();
  }

  get_SFSearchEngineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end