@interface WBSPageTestController
@end

@implementation WBSPageTestController

void __89__WBSPageTestController_MobileSafari__pageTestControllerInitializeApp_completionHandler___block_invoke(id *a1)
{
  v2 = +[Application sharedApplication];
  v3 = [v2 primaryBrowserController];

  v4 = [v3 tabController];
  [v4 closeAllOpenTabsAnimated:0];

  v5 = [v3 tabController];
  v6 = -[TabDocumentForPageTest initWithBrowserController:allowsNetworkAccess:allowsContentJavaScript:allowsMetaRefresh:]([TabDocumentForPageTest alloc], "initWithBrowserController:allowsNetworkAccess:allowsContentJavaScript:allowsMetaRefresh:", v3, [a1[4] allowsNetworkAccess], objc_msgSend(a1[4], "allowsContentJavaScript"), objc_msgSend(a1[4], "allowsMetaRefresh"));
  v7 = [v5 activeTabDocument];
  [v5 insertNewTabDocument:v6 forcingOrderAfterTabDocument:v7 inBackground:0 animated:0];

  objc_setAssociatedObject(a1[5], sel_tabDocument, v6, 1);
  v8 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__WBSPageTestController_MobileSafari__pageTestControllerInitializeApp_completionHandler___block_invoke_2;
  block[3] = &unk_2781D4D90;
  v10 = a1[6];
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

void __114__WBSPageTestController_MobileSafari__pageTestController_navigateAndCaptureFormsMetadataForURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabDocument];
  v3 = [v2 autoFillController];
  [v3 setPageTestType:{objc_msgSend(*(a1 + 32), "pageTestType")}];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __114__WBSPageTestController_MobileSafari__pageTestController_navigateAndCaptureFormsMetadataForURL_completionHandler___block_invoke_2;
  v7[3] = &unk_2781D7E00;
  v8 = *(a1 + 48);
  v4 = [*(a1 + 32) tabDocument];
  [v4 setMetadataHandler:v7];

  v5 = [*(a1 + 32) tabDocument];
  v6 = [v5 loadURL:*(a1 + 40) userDriven:1];
}

void __91__WBSPageTestController_MobileSafari__pageTestController_resizeViewport_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabDocument];
  [v2 setFixedWebViewSize:*(a1 + 40) completionHandler:{*(a1 + 48), *(a1 + 56)}];
}

@end