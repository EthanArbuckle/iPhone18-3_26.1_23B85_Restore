@interface CAMDocumentScanFlowController
+ (id)nameForDocumentWithDate:(id)date;
- (CAMDocumentScanFlowController)init;
- (CAMDocumentScanFlowControllerDelegate)documentFlowDelegate;
- (id)_pdfConversionQueue;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)_asyncConvertToPDFAndWrite:(id)write completionHandler:(id)handler;
- (void)_handlePDFResults:(id)results;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
@end

@implementation CAMDocumentScanFlowController

- (CAMDocumentScanFlowController)init
{
  v3 = objc_alloc_init(MEMORY[0x1E699A340]);
  v7.receiver = self;
  v7.super_class = CAMDocumentScanFlowController;
  v4 = [(CAMDocumentScanFlowController *)&v7 initWithRootViewController:v3];
  if (v4)
  {
    [v3 setDelegate:v4];
    [(CAMDocumentScanFlowController *)v4 setModalPresentationStyle:5];
    [(CAMDocumentScanFlowController *)v4 setModalTransitionStyle:2];
    [(CAMDocumentScanFlowController *)v4 setNavigationBarHidden:1];
    v5 = v4;
  }

  return v4;
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CAMDocumentScanFlowController_documentCameraViewController_didFinishWithScan___block_invoke;
  v8[3] = &unk_1E76FAB28;
  objc_copyWeak(&v9, &location);
  [(CAMDocumentScanFlowController *)self _asyncConvertToPDFAndWrite:scanCopy completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __80__CAMDocumentScanFlowController_documentCameraViewController_didFinishWithScan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePDFResults:v3];
}

- (void)_handlePDFResults:(id)results
{
  v38[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (resultsCopy)
  {
    [(CAMDocumentScanFlowController *)self set_url:resultsCopy];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v5 = getQLPreviewControllerClass_softClass;
    v35 = getQLPreviewControllerClass_softClass;
    if (!getQLPreviewControllerClass_softClass)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __getQLPreviewControllerClass_block_invoke;
      v31[3] = &unk_1E76F8100;
      v31[4] = &v32;
      __getQLPreviewControllerClass_block_invoke(v31);
      v5 = v33[3];
    }

    v6 = v5;
    _Block_object_dispose(&v32, 8);
    documentFlowDelegate = objc_alloc_init(v5);
    [documentFlowDelegate setModalPresentationStyle:0];
    [documentFlowDelegate setModalTransitionStyle:2];
    [documentFlowDelegate setDataSource:self];
    [documentFlowDelegate setDelegate:self];
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
    v8 = MEMORY[0x1E69DC628];
    v9 = CAMLocalizedFrameworkString(@"DOCUMENT_SCANNING_SAVE_TO_FILES", 0);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__CAMDocumentScanFlowController__handlePDFResults___block_invoke;
    v30[3] = &unk_1E76FAB50;
    v30[4] = self;
    v26 = [v8 actionWithTitle:v9 image:v28 identifier:@"save" handler:v30];

    v10 = MEMORY[0x1E69DC628];
    v11 = CAMLocalizedFrameworkString(@"DOCUMENT_SCANNING_DELETE", 0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __51__CAMDocumentScanFlowController__handlePDFResults___block_invoke_2;
    v29[3] = &unk_1E76FAB50;
    v29[4] = self;
    v12 = [v10 actionWithTitle:v11 image:v27 identifier:@"delete" handler:v29];

    [v12 setAttributes:2];
    v13 = MEMORY[0x1E69DCC60];
    v38[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v15 = [v13 menuWithTitle:&stru_1F1660A30 image:0 identifier:@"destructive.options" options:1 children:v14];

    v16 = MEMORY[0x1E69DCC60];
    v37[0] = v26;
    v37[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v18 = [v16 menuWithChildren:v17];

    navigationItem = [documentFlowDelegate navigationItem];
    [navigationItem setHidesBackButton:1];

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = CAMLocalizedFrameworkString(@"DOCUMENT_SCANNING_DONE", 0);
    v22 = [v20 initWithTitle:v21 menu:v18];
    navigationItem2 = [documentFlowDelegate navigationItem];
    [navigationItem2 setLeftBarButtonItem:v22];

    v36 = documentFlowDelegate;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    [(CAMDocumentScanFlowController *)self setViewControllers:v24 animated:1];
  }

  else
  {
    v25 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CAMDocumentScanFlowController _handlePDFResults:v25];
    }

    documentFlowDelegate = [(CAMDocumentScanFlowController *)self documentFlowDelegate];
    [documentFlowDelegate documentScanFlowControllerDidFail:self withError:0];
  }
}

void __51__CAMDocumentScanFlowController__handlePDFResults___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69DC968]);
  v3 = [*(a1 + 32) _url];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [v2 initForExportingURLs:v4 asCopy:1];

  [v5 setDelegate:*(a1 + 32)];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

void __51__CAMDocumentScanFlowController__handlePDFResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) documentFlowDelegate];
  [v2 documentScanFlowControllerDidFinish:*(a1 + 32)];
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  documentFlowDelegate = [(CAMDocumentScanFlowController *)self documentFlowDelegate];
  [documentFlowDelegate documentScanFlowControllerDidCancel:self];
}

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  documentFlowDelegate = [(CAMDocumentScanFlowController *)self documentFlowDelegate];
  [documentFlowDelegate documentScanFlowControllerDidFail:self withError:errorCopy];
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  _url = [(CAMDocumentScanFlowController *)self _url];
  v4 = _url != 0;

  return v4;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v5 = [(CAMDocumentScanFlowController *)self documentFlowDelegate:picker];
  [v5 documentScanFlowControllerDidFinish:self];
}

- (id)_pdfConversionQueue
{
  if (_pdfConversionQueue_onceToken != -1)
  {
    [CAMDocumentScanFlowController _pdfConversionQueue];
  }

  v3 = _pdfConversionQueue__conversionQueue;

  return v3;
}

void __52__CAMDocumentScanFlowController__pdfConversionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.camera.pdf-conversion-queue", attr);
  v2 = _pdfConversionQueue__conversionQueue;
  _pdfConversionQueue__conversionQueue = v1;
}

- (void)_asyncConvertToPDFAndWrite:(id)write completionHandler:(id)handler
{
  writeCopy = write;
  handlerCopy = handler;
  v8 = objc_opt_class();
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [v8 nameForDocumentWithDate:v9];

  _pdfConversionQueue = [(CAMDocumentScanFlowController *)self _pdfConversionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CAMDocumentScanFlowController__asyncConvertToPDFAndWrite_completionHandler___block_invoke;
  block[3] = &unk_1E76FABA0;
  v16 = writeCopy;
  v17 = v10;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = v10;
  v14 = writeCopy;
  dispatch_async(_pdfConversionQueue, block);
}

void __78__CAMDocumentScanFlowController__asyncConvertToPDFAndWrite_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CAMDocumentScanFlowController__asyncConvertToPDFAndWrite_completionHandler___block_invoke_2;
  v3[3] = &unk_1E76FAB78;
  v4 = *(a1 + 48);
  [CAMPDFConverter convertToPDFAndWrite:v1 documentName:v2 completionHandler:v3];
}

void __78__CAMDocumentScanFlowController__asyncConvertToPDFAndWrite_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__CAMDocumentScanFlowController__asyncConvertToPDFAndWrite_completionHandler___block_invoke_3;
  v6[3] = &unk_1E76F83B0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (id)nameForDocumentWithDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateStyle:1];
  [v5 setTimeStyle:0];
  v6 = [v5 stringFromDate:dateCopy];
  v7 = [MEMORY[0x1E696AB78] localizedStringFromDate:dateCopy dateStyle:0 timeStyle:2];

  v8 = CAMLocalizedFrameworkString(@"DOCUMENT_SCANNING_FILENAME", @"Document Scanning component of the file name");
  v9 = CAMLocalizedFrameworkString(@"DOCUMENT_SCANNING_FILENAME_FORMAT_STRING", @"General format string for the file name. English format is DOCUMENT_SCANNING_FILENAME DATE at TIME");
  v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@%@" error:0, v8, v6, v7];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  v12 = [v11 stringByReplacingOccurrencesOfString:@":" withString:@"."];

  return v12;
}

- (CAMDocumentScanFlowControllerDelegate)documentFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_documentFlowDelegate);

  return WeakRetained;
}

@end