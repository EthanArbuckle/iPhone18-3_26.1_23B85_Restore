@interface UIKeyboardArbiterClientHandle
@end

@implementation UIKeyboardArbiterClientHandle

void __48___UIKeyboardArbiterClientHandle_didAttachLayer__block_invoke(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D47008];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 targetWithPid:objc_msgSend(v4 environmentIdentifier:{"processIdentifier"), a1[5]}];
  [v5 setTarget:v6];

  [v5 setInheritingEnvironment:a1[6]];
  v7 = [MEMORY[0x277D46E88] grantWithNamespace:*MEMORY[0x277D77860] sourceEnvironment:a1[6] attributes:0];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 setAdditionalAttributes:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __44___UIKeyboardArbiterClientHandle_invalidate__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    memset(v12, 0, sizeof(v12));
    v3 = _UIArbiterLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    LODWORD(v9) = 12;
    v5 = _os_log_send_and_compose_impl();

    v6 = [_UIKeyboardArbiterDebug sharedInstance:&v10];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    [v6 debugWithMessage:v7];

    if (v5 != v12)
    {
      free(v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61___UIKeyboardArbiterClientHandle_beginAcquiringFocusOnQueue___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    memset(v12, 0, sizeof(v12));
    v3 = _UIArbiterLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    LODWORD(v9) = 12;
    v5 = _os_log_send_and_compose_impl();

    v6 = [_UIKeyboardArbiterDebug sharedInstance:&v10];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    [v6 errorWithMessage:v7];

    if (v5 != v12)
    {
      free(v5);
    }

    [WeakRetained clearAcquiringFocus];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v3 = _UIArbiterLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    LODWORD(v11) = 12;
    v5 = _os_log_send_and_compose_impl();

    v6 = [_UIKeyboardArbiterDebug sharedInstance:&v12];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v14];
    [v6 debugWithMessage:v7];
  }

  else
  {
    v8 = _UIArbiterLog();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = *(a1 + 32);
    v12 = 138412290;
    v13 = v9;
    LODWORD(v11) = 12;
    v5 = _os_log_send_and_compose_impl();

    v6 = [_UIKeyboardArbiterDebug sharedInstance:&v12];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v14];
    [v6 errorWithMessage:v7];
  }

  if (v5 != v14)
  {
    free(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_577(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v4 = a3;
  v5 = _UIArbiterLog();
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  v6 = *(a1 + 32);
  v13 = 138412546;
  v14 = v6;
  v15 = 2112;
  v16 = v4;
  LODWORD(v12) = 22;
  v7 = _os_log_send_and_compose_impl();

  v8 = [_UIKeyboardArbiterDebug sharedInstance:&v13];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);

  v10 = [v9 initWithUTF8String:v17];
  [v8 errorWithMessage:v10];

  if (v7 != v17)
  {
    free(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_582(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 128) - 1;
  *(v1 + 128) = v2;
  if (!v2)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 120))
    {
      if (*(v5 + 24))
      {
        memset(v19, 0, sizeof(v19));
        v6 = _UIArbiterLog();
        os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        v7 = *(a1 + 32);
        v8 = *(v7 + 120);
        v15 = 138412546;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        LODWORD(v14) = 22;
        v9 = _os_log_send_and_compose_impl();

        v10 = [_UIKeyboardArbiterDebug sharedInstance:&v15];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19];
        [v10 errorWithMessage:v11];

        if (v9 != v19)
        {
          free(v9);
        }

        if (TIGetDisableArbiterConnectionTimeoutValue_onceToken != -1)
        {
          dispatch_once(&TIGetDisableArbiterConnectionTimeoutValue_onceToken, &__block_literal_global_788);
        }

        v12 = [MEMORY[0x277D6F470] sharedPreferencesController];
        v13 = [v12 valueForPreferenceKey:@"DisableArbiterConnectionTimeout"];

        LOBYTE(v12) = [v13 BOOLValue];
        if ((v12 & 1) == 0)
        {
          [*(*(a1 + 32) + 176) invalidate];
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __54___UIKeyboardArbiterClientHandle_setAllVisibleFrames___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[3] activeInputDestinationHandle];

  if (v2 == v3)
  {
    v4 = MEMORY[0x277D75830];
    v6 = [*(*(a1 + 32) + 24) activeInputDestinationHandle];
    if (v6)
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = 0;
    }

    [v4 setAllVisibleFrames:v5];
  }
}

void __56___UIKeyboardArbiterClientHandle_userFirstTapOnKeyboard__block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v4 stringWithFormat:@"================ Last detected blank keyboard at %@, firstTapOn: %@ ====================", v5, v6];

  v15 = @"Description";
  v16 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [*(*(a1 + 32) + 24) setBlankKeyboardLogs:v9];

  if (v3)
  {
    v10 = [*(*(a1 + 32) + 24) blankKeyboardLogs];
    v11 = [v3 count];
    v12 = v3;
    if (v11 >= 0x33)
    {
      v12 = [v3 subarrayWithRange:{objc_msgSend(v3, "count") - 50, 50}];
    }

    v13 = [v10 arrayByAddingObjectsFromArray:v12];
    [*(*(a1 + 32) + 24) setBlankKeyboardLogs:v13];

    if (v11 >= 0x33)
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end