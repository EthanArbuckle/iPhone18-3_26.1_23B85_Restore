@interface SAIntentGroupLaunchAppWithUserActivity
@end

@implementation SAIntentGroupLaunchAppWithUserActivity

void __141__SAIntentGroupLaunchAppWithUserActivity_INSExtensionService__ins_launchAppWithConnection_userActivityIdentifier_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v9 = getFBSOpenApplicationErrorDomainSymbolLoc_ptr_272;
    v20 = getFBSOpenApplicationErrorDomainSymbolLoc_ptr_272;
    if (!getFBSOpenApplicationErrorDomainSymbolLoc_ptr_272)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke_273;
      v16[3] = &unk_2797EA9A0;
      v16[4] = &v17;
      __getFBSOpenApplicationErrorDomainSymbolLoc_block_invoke_273(v16);
      v9 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v9)
    {
      dlerror();
      v15 = abort_report_np();
      _Block_object_dispose(&v17, 8);
      _Unwind_Resume(v15);
    }

    if ([v8 isEqualToString:*v9])
    {
      v10 = [v7 code];

      if (v10 == 7)
      {
        v11 = 1310;
      }

      else
      {
        v11 = 1308;
      }
    }

    else
    {

      v11 = 1308;
    }

    v13 = *(a1 + 32);
    v14 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 40), 722470896);
    [v13 ins_invokeErrorCompletionHandler:v14 withErrorCode:v11 underlyingError:v7];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v5, 0);
    }
  }
}

@end