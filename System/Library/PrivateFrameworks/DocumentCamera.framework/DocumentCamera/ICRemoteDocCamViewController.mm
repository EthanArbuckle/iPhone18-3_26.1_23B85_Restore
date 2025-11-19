@interface ICRemoteDocCamViewController
- (ICRemoteDocCamViewController)initWithImageCache:(id)a3;
- (ICRemoteDocCamViewControllerDelegate)delegate;
- (id)makeAlertControllerForError:(id)a3;
- (id)makeDevicesAlertController;
- (id)makeNoDevicesAlertController;
- (id)makeProgressAlertControllerForDevice:(id)a3;
- (id)progressAlertMessageForDevice:(id)a3;
- (uint64_t)viewDidLoad;
- (void)cancelSidecarRequest;
- (void)makeSidecarRequestToDevice:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sidecarRequestDidFinish;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ICRemoteDocCamViewController

- (ICRemoteDocCamViewController)initWithImageCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICRemoteDocCamViewController;
  v6 = [(ICRemoteDocCamViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageCache, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = ICRemoteDocCamViewController;
  [(ICRemoteDocCamViewController *)&v11 viewDidLoad];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getSidecarServiceClass_softClass;
  v20 = getSidecarServiceClass_softClass;
  if (!getSidecarServiceClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getSidecarServiceClass_block_invoke;
    v15 = &unk_278F931A0;
    v16 = &v17;
    __getSidecarServiceClass_block_invoke(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = getSidecarServiceNameScanDocumentSymbolLoc_ptr;
  v20 = getSidecarServiceNameScanDocumentSymbolLoc_ptr;
  if (!getSidecarServiceNameScanDocumentSymbolLoc_ptr)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getSidecarServiceNameScanDocumentSymbolLoc_block_invoke;
    v15 = &unk_278F931A0;
    v16 = &v17;
    v6 = SidecarCoreLibrary();
    v7 = dlsym(v6, "SidecarServiceNameScanDocument");
    *(v16[1] + 24) = v7;
    getSidecarServiceNameScanDocumentSymbolLoc_ptr = *(v16[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v5)
  {
    v10 = [ICRemoteDocCamViewController viewDidLoad];
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v10);
  }

  v8 = *v5;
  v9 = [v3 serviceWithName:v8];
  [(ICRemoteDocCamViewController *)self setSidecarService:v9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICRemoteDocCamViewController viewDidAppear:];
  }

  v7.receiver = self;
  v7.super_class = ICRemoteDocCamViewController;
  [(ICRemoteDocCamViewController *)&v7 viewDidAppear:v3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ICRemoteDocCamViewController_viewDidAppear___block_invoke;
  v6[3] = &unk_278F92C70;
  v6[4] = self;
  dc_dispatchMainAfterDelay(v6, 0.3);
}

void __46__ICRemoteDocCamViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sidecarService];
  v3 = [v2 devices];
  v4 = [v3 count];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 sidecarService];
    v7 = [v6 devices];
    v8 = [v7 count];

    v9 = *(a1 + 32);
    if (v8 == 1)
    {
      v13 = [*(a1 + 32) sidecarService];
      v10 = [v13 devices];
      v11 = [v10 firstObject];
      [v9 makeSidecarRequestToDevice:v11];

      goto LABEL_7;
    }

    v12 = [*(a1 + 32) makeDevicesAlertController];
  }

  else
  {
    v12 = [v5 makeNoDevicesAlertController];
  }

  v13 = v12;
  [*(a1 + 32) presentViewController:? animated:? completion:?];
LABEL_7:
}

- (id)makeNoDevicesAlertController
{
  v3 = [DCLocalization localizedStringForKey:@"Can’t Scan Document" value:@"Can’t Scan Document" table:@"Localizable"];
  v4 = [DCLocalization localizedStringForKey:@"There are no nearby devices signed into the same iCloud account." value:@"There are no nearby devices signed into the same iCloud account." table:@"Localizable"];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.and.iphone"];
  [v5 setImage:v6];

  v7 = MEMORY[0x277D750F8];
  v8 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__ICRemoteDocCamViewController_makeNoDevicesAlertController__block_invoke;
  v11[3] = &unk_278F92E60;
  v11[4] = self;
  v9 = [v7 actionWithTitle:v8 style:1 handler:v11];
  [v5 addAction:v9];

  return v5;
}

void __60__ICRemoteDocCamViewController_makeNoDevicesAlertController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteDocumentCameraControllerDidCancel:*(a1 + 32)];
}

- (id)makeDevicesAlertController
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [DCLocalization localizedStringForKey:@"Scan a Document" value:@"Scan a Document" table:@"Localizable"];
  v22 = [DCLocalization localizedStringForKey:@"Select which device camera to use for scanning a document." value:@"Select which device camera to use for scanning a document." table:@"Localizable"];
  v23 = v3;
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:? preferredStyle:?];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.and.iphone"];
  [v4 setImage:v5];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self;
  v7 = [(ICRemoteDocCamViewController *)self sidecarService];
  v8 = [v7 devices];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v13 = v4;
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = MEMORY[0x277D750F8];
        v16 = [v14 name];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __58__ICRemoteDocCamViewController_makeDevicesAlertController__block_invoke;
        v26[3] = &unk_278F92DC0;
        v26[4] = v6;
        v26[5] = v14;
        v17 = [v15 actionWithTitle:v16 style:0 handler:v26];
        v4 = v13;
        [v13 addAction:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v18 = MEMORY[0x277D750F8];
  v19 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__ICRemoteDocCamViewController_makeDevicesAlertController__block_invoke_2;
  v25[3] = &unk_278F92E60;
  v25[4] = v6;
  v20 = [v18 actionWithTitle:v19 style:1 handler:v25];
  [v4 addAction:v20];

  return v4;
}

- (id)progressAlertMessageForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceType];
  v5 = [MEMORY[0x277CE1CB8] importedTypeWithIdentifier:@"com.apple.iphone"];
  v6 = [v4 conformsToType:v5];

  if (v6)
  {
    v7 = @"Using your iPhone’s camera to scan a document.";
  }

  else
  {
    v8 = [v3 deviceType];
    v9 = [MEMORY[0x277CE1CB8] importedTypeWithIdentifier:@"com.apple.ipad"];
    v10 = [v8 conformsToType:v9];

    if (v10)
    {
      v7 = @"Using your iPad’s camera to scan a document.";
    }

    else
    {
      v11 = [v3 deviceType];
      v12 = [MEMORY[0x277CE1CB8] importedTypeWithIdentifier:@"com.apple.ipod"];
      v13 = [v11 conformsToType:v12];

      if (v13)
      {
        v7 = @"Using your iPod’s camera to scan a document.";
      }

      else
      {
        v7 = @"Using your device’s camera to scan a document.";
      }
    }
  }

  v14 = [DCLocalization localizedStringForKey:v7 value:v7 table:@"Localizable"];

  return v14;
}

- (id)makeProgressAlertControllerForDevice:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [DCLocalization localizedStringForKey:@"Scanning Document with “%@”…" value:@"Scanning Document with “%@”…" table:@"Localizable"];
  v7 = [v5 name];
  v8 = [v4 localizedStringWithFormat:v6, v7];

  v9 = [(ICRemoteDocCamViewController *)self progressAlertMessageForDevice:v5];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.and.iphone"];
  [v10 setImage:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__ICRemoteDocCamViewController_makeProgressAlertControllerForDevice___block_invoke;
  v16[3] = &unk_278F92E60;
  v16[4] = self;
  v14 = [v12 actionWithTitle:v13 style:1 handler:v16];
  [v10 addAction:v14];

  return v10;
}

void __69__ICRemoteDocCamViewController_makeProgressAlertControllerForDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteDocumentCameraControllerDidCancel:*(a1 + 32)];
}

- (id)makeAlertControllerForError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [v4 localizedDescription];
  v7 = [v5 alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v7 setImage:v8];

  v9 = MEMORY[0x277D750F8];
  v10 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __60__ICRemoteDocCamViewController_makeAlertControllerForError___block_invoke;
  v17 = &unk_278F92DC0;
  v18 = self;
  v19 = v4;
  v11 = v4;
  v12 = [v9 actionWithTitle:v10 style:1 handler:&v14];
  [v7 addAction:{v12, v14, v15, v16, v17, v18}];

  return v7;
}

void __60__ICRemoteDocCamViewController_makeAlertControllerForError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteDocumentCameraController:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)makeSidecarRequestToDevice:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICRemoteDocCamViewController makeSidecarRequestToDevice:];
  }

  v6 = [(ICRemoteDocCamViewController *)self makeProgressAlertControllerForDevice:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICRemoteDocCamViewController_makeSidecarRequestToDevice___block_invoke;
  v8[3] = &unk_278F92DE8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(ICRemoteDocCamViewController *)self presentViewController:v6 animated:1 completion:v8];
}

void __59__ICRemoteDocCamViewController_makeSidecarRequestToDevice___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) sidecarService];
  v3 = [v2 makeRequestToDevice:v1[1]];
  [*v1 setSidecarRequest:v3];

  v4 = [*v1 sidecarRequest];
  [v4 addObserver:*v1 forKeyPath:@"finished" options:0 context:&ICRemoteViewControllerKVOContext];

  v5 = [*v1 sidecarRequest];
  [v5 start];

  v6 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __59__ICRemoteDocCamViewController_makeSidecarRequestToDevice___block_invoke_cold_1(v1);
  }
}

- (void)cancelSidecarRequest
{
  v1 = [a1 sidecarRequest];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_249253000, v2, v3, "Canceling sidecar request… {request: %@}", v4, v5, v6, v7, v8);
}

void __52__ICRemoteDocCamViewController_cancelSidecarRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sidecarRequest];
  [v2 cancel];

  [*(a1 + 32) setSidecarRequest:0];
  v3 = [*(a1 + 32) delegate];
  [v3 remoteDocumentCameraControllerDidCancel:*(a1 + 32)];

  v4 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__ICRemoteDocCamViewController_cancelSidecarRequest__block_invoke_cold_1();
  }
}

- (void)sidecarRequestDidFinish
{
  v1 = [a1 sidecarRequest];
  v2 = [v1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_249253000, v3, v4, "Sidecar request finished {error: %@}", v5, v6, v7, v8, v9);
}

uint64_t __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) sidecarRequest];
  v3 = [v2 error];

  if (v3)
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_cold_1(v1, v4);
    }

    v5 = *v1;
    v6 = [*v1 sidecarRequest];
    v7 = [v6 error];
    v8 = [v5 makeAlertControllerForError:v7];

    [*v1 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v9 = [*v1 sidecarRequest];
    v10 = [v9 items];
    v11 = [*v1 imageCache];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_69;
    v13[3] = &unk_278F936C8;
    v13[4] = *v1;
    [ICDocCamDocumentInfoCollection infoCollectionFromSidecarItems:v10 imageCache:v11 completion:v13];
  }

  return [*v1 setSidecarRequest:0];
}

void __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.documentcamera", "");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_69_cold_1();
    }

    v6 = [*(a1 + 32) delegate];
    [v6 remoteDocumentCameraController:*(a1 + 32) didFinishWithInfoCollection:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_69_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.documentcamera" code:2 userInfo:0];
    v7 = [*(a1 + 32) delegate];
    [v7 remoteDocumentCameraController:*(a1 + 32) didFailWithError:v6];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 == &ICRemoteViewControllerKVOContext)
  {
    v12 = a4;
    v13 = [(ICRemoteDocCamViewController *)self sidecarRequest];

    if (v13 == v12)
    {
      v14 = [v10 isEqualToString:@"finished"];

      if (v14)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __79__ICRemoteDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_278F92C70;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICRemoteDocCamViewController;
    v11 = a4;
    [(ICRemoteDocCamViewController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (ICRemoteDocCamViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)viewDidLoad
{
  dlerror();
  v0 = abort_report_np();
  return [ICRemoteDocCamViewController viewDidAppear:v0];
}

- (void)makeSidecarRequestToDevice:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_249253000, v0, OS_LOG_TYPE_DEBUG, "Making sidecar request… {device: %@}", v1, 0xCu);
}

void __59__ICRemoteDocCamViewController_makeSidecarRequestToDevice___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 sidecarRequest];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(&dword_249253000, v2, v3, "Made sidecar request {request: %@}", v4, v5, v6, v7, v8);
}

void __55__ICRemoteDocCamViewController_sidecarRequestDidFinish__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 sidecarRequest];
  v4 = [v3 error];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Finishing remote document scan with error… {error: %@}", v5, 0xCu);
}

@end