id INSJSONEncodedIntent(void *a1)
{
  v1 = [a1 _JSONDictionaryRepresentation];
  v2 = [v1 if_JSONStringRepresentation];

  return v2;
}

id INSJSONEncodedIntentResponse(void *a1)
{
  v1 = [a1 _JSONDictionaryRepresentation];
  v2 = [v1 if_JSONStringRepresentation];

  return v2;
}

id INSJSONEncodedSlotResolutionResult(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v6 _intentInstanceDescription];
  v9 = [v8 slotByName:v5];

  v10 = [objc_msgSend(v9 "resolutionResultClass")];

  v11 = [v9 facadePropertyName];
  v12 = [v10 _JSONDictionaryRepresentationForIntent:v6 parameterName:v11];

  v13 = [v12 if_JSONStringRepresentation];

  return v13;
}

id INSExtensionServiceTraceCompletionHandlerWithCode(void *a1, int a2)
{
  v3 = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __INSExtensionServiceTraceCompletionHandlerWithCode_block_invoke;
  v7[3] = &unk_2797EA798;
  v8 = v3;
  v9 = a2;
  v4 = v3;
  v5 = MEMORY[0x259C379F0](v7);

  return v5;
}

uint64_t __INSExtensionServiceTraceCompletionHandlerWithCode_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return kdebug_trace();
}

float INSGetAceVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    [v2 floatValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

void *__getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2797EA890;
    v8 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = FrontBoardServicesLibraryCore_frameworkLibrary;
    if (FrontBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
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

  v2 = FrontBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "FBSOpenApplicationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke_273(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary_275)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FrontBoardServicesLibraryCore_block_invoke_276;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2797EA9C0;
    v8 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary_275 = _sl_dlopen();
    v3 = v6[0];
    v2 = FrontBoardServicesLibraryCore_frameworkLibrary_275;
    if (FrontBoardServicesLibraryCore_frameworkLibrary_275)
    {
      if (!v6[0])
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

  v2 = FrontBoardServicesLibraryCore_frameworkLibrary_275;
LABEL_5:
  result = dlsym(v2, "FBSOpenApplicationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationErrorDomainSymbolLoc_ptr_272 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke_276(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary_275 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25554562C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}