@interface UIViewController
@end

@implementation UIViewController

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] presentedViewController];

  if (v4)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2;
    v19 = &unk_27967EEE8;
    v20 = a1[4];
    gk_dispatch_group_do();
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_4;
  v13 = &unk_27967EFB0;
  v5 = a1[5];
  v6 = a1[4];
  v14 = v5;
  v15 = v6;
  gk_dispatch_group_do();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3_29;
  v8[3] = &unk_27967EEC0;
  v7 = a1[5];
  v9 = a1[6];
  dispatch_group_notify(v3, v7, v8);
}

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) presentedViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3;
  v6[3] = &unk_27967EEC0;
  v7 = v3;
  v5 = v3;
  [v4 _gkSetContentsNeedUpdateWithHandler:v6];
}

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5;
  block[3] = &unk_27967EF88;
  v10 = v3;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v6 = v3;
  dispatch_async(v4, block);
}

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5(id *a1)
{
  v2 = (a1 + 4);
  v3 = objc_getAssociatedObject(a1[4], @"_gkContentRecentlyUpdated");
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    v6 = *MEMORY[0x277D0C2C0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C0], OS_LOG_TYPE_DEBUG))
    {
      __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5_cold_2(v2, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v13 = [a1[6] copy];
    v14 = objc_getAssociatedObject(a1[4], @"_gkContentUpdateHandlers");
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0x253041B30](v13);
      [v15 addObject:v16];

      if (!*MEMORY[0x277D0C2A0])
      {
        v17 = GKOSLoggers();
      }

      v18 = *MEMORY[0x277D0C2C0];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C0], OS_LOG_TYPE_DEBUG))
      {
        __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_5_cold_1(v2, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      v25 = MEMORY[0x277CBEB18];
      v26 = MEMORY[0x253041B30](v13);
      v27 = [v25 arrayWithObjects:{v26, 0}];

      objc_setAssociatedObject(a1[4], @"_gkContentUpdateHandlers", v27, 0x301);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_24;
      block[3] = &unk_27967EF60;
      v28 = a1[5];
      block[4] = a1[4];
      v15 = v27;
      v30 = v15;
      v31 = a1[5];
      dispatch_async(v28, block);
    }
  }
}

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_24(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  objc_setAssociatedObject(v3, @"_gkContentRecentlyUpdated", v4, 0x301);

  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2C0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C0], OS_LOG_TYPE_DEBUG))
  {
    __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_24_cold_1(v2, v6, v7, v8, v9, v10, v11, v12);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_26;
  v17[3] = &unk_27967EF10;
  v13 = *(a1 + 32);
  v18 = *(a1 + 40);
  [v13 _gkUpdateContentsWithCompletionHandlerAndError:v17];
  objc_setAssociatedObject(*(a1 + 32), @"_gkContentUpdateHandlers", 0, 0x301);
  v14 = dispatch_time(0, 1000000000);
  v15 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_2_28;
  v16[3] = &unk_27967EF38;
  v16[4] = *(a1 + 32);
  dispatch_after(v14, v15, v16);
}

void __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_26(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t __69__UIViewController_GKAdditions___gkSetContentsNeedUpdateWithHandler___block_invoke_3_29(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __113__UIViewController_GKAdditions___gkPresentActivityViewControllerForActivityItems_fromView_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  if (a3)
  {
    [*(a1 + 32) _gkDismissActivityViewControllerAnimated:1];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v12, a3);
  }
}

uint64_t __120__UIViewController_GKAlerts___gkPresentAlertWithTitle_message_buttonTitle_dismissHandler_presentationCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __103__UIViewController_GKRestrictionAlerts___gkInGameUIUnavailableAlertWithRestrictionMode_dismissHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end