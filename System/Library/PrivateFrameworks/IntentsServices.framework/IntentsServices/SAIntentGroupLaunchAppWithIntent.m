@interface SAIntentGroupLaunchAppWithIntent
@end

@implementation SAIntentGroupLaunchAppWithIntent

void __112__SAIntentGroupLaunchAppWithIntent_INSExtensionService__ins_launchAppWithConnection_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v20 = v5;
    v8 = v6;
    v9 = *MEMORY[0x277CCA7E8];
    do
    {
      v10 = [v8 domain];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v11 = getFBSOpenApplicationErrorDomainSymbolLoc_ptr;
      v25 = getFBSOpenApplicationErrorDomainSymbolLoc_ptr;
      if (!getFBSOpenApplicationErrorDomainSymbolLoc_ptr)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke;
        v21[3] = &unk_2797EA9A0;
        v21[4] = &v22;
        __getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke(v21);
        v11 = v23[3];
      }

      _Block_object_dispose(&v22, 8);
      if (!v11)
      {
        dlerror();
        v19 = abort_report_np();
        _Block_object_dispose(&v22, 8);
        _Unwind_Resume(v19);
      }

      if ([v10 isEqualToString:*v11])
      {
        v12 = [v8 code];

        if (v12 == 7)
        {

          v16 = 1310;
          goto LABEL_14;
        }
      }

      else
      {
      }

      v13 = [v8 userInfo];
      v14 = [v13 objectForKeyedSubscript:v9];

      v8 = v14;
    }

    while (v14);
    v16 = 1305;
LABEL_14:
    v17 = *(a1 + 32);
    v18 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 40), 722470896);
    [v17 ins_invokeErrorCompletionHandler:v18 withErrorCode:v16 underlyingError:0];

    v5 = v20;
  }

  else
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v5, 0);
    }
  }
}

@end