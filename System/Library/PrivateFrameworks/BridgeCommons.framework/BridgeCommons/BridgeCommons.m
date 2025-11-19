void *__getHLPHelpViewControllerVersionLatestSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HelpKitLibrary();
  result = dlsym(v2, "HLPHelpViewControllerVersionLatest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHLPHelpViewControllerVersionLatestSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HelpKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HelpKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HelpKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D224D0;
    v6 = 0;
    HelpKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HelpKitLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!HelpKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __HelpKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HelpKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHLPHelpViewControllerClass_block_invoke(uint64_t a1)
{
  HelpKitLibrary();
  result = objc_getClass("HLPHelpViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHLPHelpViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHLPHelpViewControllerClass_block_invoke_cold_1();
    return BCViewContollerForModallyPresentingTheUrl(v3);
  }

  return result;
}

id BCViewContollerForModallyPresentingTheUrl(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getSFSafariViewControllerClass_softClass;
  v11 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getSFSafariViewControllerClass_block_invoke;
    v7[3] = &unk_278D224B0;
    v7[4] = &v8;
    __getSFSafariViewControllerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [[v2 alloc] initWithURL:v1];
  v5 = BPSBridgeTintColor();
  [v4 setPreferredControlTintColor:v5];

  [v4 setModalPresentationStyle:1];

  return v4;
}

void sub_241E56604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SafariServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D22508;
    v7 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id BCDiscoverPluginDescriptionWithSymbol(void *a1)
{
  v1 = MEMORY[0x277D74270];
  v2 = a1;
  v3 = [[v1 alloc] initWithData:0 ofType:0];
  v4 = MEMORY[0x277D755B8];
  v5 = *MEMORY[0x277D76938];
  v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938] scale:2];
  v7 = [v4 systemImageNamed:@"arrow.up.forward.app.fill" withConfiguration:v6];
  v8 = [MEMORY[0x277D75348] systemGrayColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:0];
  [v3 setImage:v9];

  v10 = [v3 image];
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];
  [v15 capHeight];
  [v3 setBounds:{0.0, (v16 - v14) * 0.5, v12, v14}];

  v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v2];
  v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v17 appendAttributedString:v18];

  v19 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v3];
  [v17 appendAttributedString:v19];

  return v17;
}