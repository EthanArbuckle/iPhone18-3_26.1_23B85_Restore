@interface WBSPageTestController(MobileSafari)
- (void)pageTestController:()MobileSafari navigateAndCaptureFormsMetadataForURL:completionHandler:;
- (void)pageTestController:()MobileSafari resizeViewport:completionHandler:;
- (void)pageTestControllerInitializeApp:()MobileSafari completionHandler:;
@end

@implementation WBSPageTestController(MobileSafari)

- (void)pageTestControllerInitializeApp:()MobileSafari completionHandler:
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__WBSPageTestController_MobileSafari__pageTestControllerInitializeApp_completionHandler___block_invoke;
  block[3] = &unk_2781D53E0;
  v11 = v6;
  v12 = a1;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)pageTestController:()MobileSafari navigateAndCaptureFormsMetadataForURL:completionHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__WBSPageTestController_MobileSafari__pageTestController_navigateAndCaptureFormsMetadataForURL_completionHandler___block_invoke;
  block[3] = &unk_2781D7E28;
  v15 = v8;
  v16 = v9;
  v14 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)pageTestController:()MobileSafari resizeViewport:completionHandler:
{
  v9 = a5;
  v10 = a6;
  if (a1 <= 0.0 || a2 <= 0.0)
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      a2 = 816.0;
      a1 = 938.0;
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v13 userInterfaceIdiom] == 1;

      a2 = dbl_215A95C80[v14];
      a1 = dbl_215A95C90[v14];
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__WBSPageTestController_MobileSafari__pageTestController_resizeViewport_completionHandler___block_invoke;
  v17[3] = &unk_2781D7E50;
  v20 = a1;
  v21 = a2;
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

@end