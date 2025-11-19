@interface MUQuickLookContentEditorViewController
+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)a3;
+ (CGSize)_suggestedContentSizeForPDF:(id)a3;
+ (CGSize)suggestedContentSizeForData:(id)a3;
+ (CGSize)suggestedContentSizeForURL:(id)a3;
- (BOOL)_canShowWhileLocked;
- (BOOL)_hasImageContent;
- (BOOL)_hasPDFContent;
- (BOOL)_imageAnalysisOverlayAcceptSingleTouch:(id)a3;
- (BOOL)acceptSingleTouch:(id)a3;
- (BOOL)allowsEditing;
- (BOOL)canEditContent;
- (BOOL)canEditPDF;
- (BOOL)canEncryptDocument;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)documentIsLocked;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)isInteractionActive;
- (BOOL)isVisualSearchEnabled;
- (BOOL)shouldEnterVisualSearchAfterNextAnalysis;
- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis;
- (BOOL)shouldUpliftSubjectAfterNextAnalysis;
- (MUQuickLookContentEditorViewController)init;
- (NSDictionary)clientPreviewOptions;
- (NSString)filledInfoButtonGlyphName;
- (NSString)infoButtonGlyphName;
- (UIFindInteraction)findInteraction;
- (UIImage)imageForAnalysis;
- (UIView)transitioningView;
- (id)_editedImageAnalysisQueue;
- (id)getMenuElementsForPage:(id)a3;
- (id)pdfPageOptionsForImageRef:(CGImage *)a3 withPreviousPage:(id)a4;
- (id)sharedSerialPagesEditionQueue;
- (id)supportedUTTypes;
- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)a3 toPDFDocument:(id)a4 atPageIndex:(unint64_t)a5;
- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 forPage:(id)a5;
- (void)_adjustImageInteractionForScrollEvent:(id)a3;
- (void)_convertToPDFAndWrite:(id)a3 completionHandler:(id)a4;
- (void)_deletePage:(id)a3;
- (void)_deletePages:(id)a3 inDocument:(id)a4;
- (void)_detectedEditEnablingMarkup:(BOOL)a3;
- (void)_flattenImageForAnalysis;
- (void)_handleLoadingWithCompletion:(id)a3;
- (void)_insertBlankPage:(id)a3 atIndex:(unint64_t)a4;
- (void)_insertBlankPageAfterPage:(id)a3;
- (void)_insertDeletedPage:(id)a3 atIndex:(unint64_t)a4;
- (void)_insertFileAtURL:(id)a3 type:(id)a4 afterPage:(id)a5 completionHandler:(id)a6;
- (void)_insertImageWithURL:(id)a3 afterPage:(id)a4 completionHandler:(id)a5;
- (void)_insertPDFDocumentWithURL:(id)a3 afterPage:(id)a4 completionHandler:(id)a5;
- (void)_insertPage:(id)a3 atIndex:(unint64_t)a4;
- (void)_insertPageFromFileAfterPage:(id)a3;
- (void)_insertPagesFromFileURLs:(id)a3 afterPage:(id)a4;
- (void)_loadSourceContentWithCompletion:(id)a3;
- (void)_presentDocumentPicker:(id)a3;
- (void)_presentDocumentScannerAfterPage:(id)a3;
- (void)_registerActionNotEnablingMarkup:(id)a3;
- (void)_resetOriginalDelegate;
- (void)_rotatePage:(id)a3 clockwise:(BOOL)a4;
- (void)_setAsPDFViewDelegatePrivateIfNecessary;
- (void)_setPresentationModeForImageContent:(unint64_t)a3;
- (void)_setPresentationModeForPDFContent:(unint64_t)a3;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)_updateAnalysisButtonsContainerConstraints;
- (void)_updatePeekSize;
- (void)_updateThumbnailViewWithTraitCollection:(id)a3;
- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4;
- (void)contentControllerDidUnlockDocument:(id)a3;
- (void)convertToPDFAndWrite:(id)a3 completionHandler:(id)a4;
- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)find:(id)a3;
- (void)findNext:(id)a3;
- (void)findPrevious:(id)a3;
- (void)flattenImageForAnalysis;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)a3;
- (void)infoButtonTapped;
- (void)insertPages:(id)a3 atIndexes:(id)a4 inDocument:(id)a5;
- (void)loadWithData:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)loadWithURL:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)setAnnotationEditingEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setPresentationMode:(unint64_t)a3;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3;
- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)a3;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)shouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4;
- (void)stopImageAnalysis;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4;
- (void)updateThumbnailView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MUQuickLookContentEditorViewController

- (MUQuickLookContentEditorViewController)init
{
  v5.receiver = self;
  v5.super_class = MUQuickLookContentEditorViewController;
  v2 = [(MUQuickLookContentEditorViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    [(MarkupViewController *)v2 setBackgroundColor:v3];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 viewWillAppear:?];
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    if (v3)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __57__MUQuickLookContentEditorViewController_viewWillAppear___block_invoke;
      v5[3] = &unk_27986E2C8;
      v5[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
    }

    else
    {
      [(MUQuickLookContentEditorViewController *)self updateThumbnailView];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v3 viewDidLayoutSubviews];
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    [(MUQuickLookContentEditorViewController *)self _updatePeekSize];
  }
}

- (void)_updatePeekSize
{
  v3 = [(MUQuickLookContentEditorViewController *)self view];
  v19 = [v3 superview];

  v4 = v19;
  if (v19)
  {
    [v19 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(MUQuickLookContentEditorViewController *)self presentationMode];
    v14 = v6 + -5.0;
    v15 = v8 + -5.0;
    if (v13 == 1)
    {
      v12 = v12 + 10.0;
      v10 = v10 + 10.0;
      v8 = v8 + -5.0;
      v6 = v6 + -5.0;
    }

    v16 = [(MUQuickLookContentEditorViewController *)self view:v15];
    [v16 frame];
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v17 = CGRectEqualToRect(v21, v22);

    v4 = v19;
    if (!v17)
    {
      v18 = [(MUQuickLookContentEditorViewController *)self view];
      [v18 setFrame:{v6, v8, v10, v12}];

      v4 = v19;
    }
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_find_ == a3 || sel_findPrevious_ == a3 || sel_findNext_ == a3)
  {
    v8 = a4;
    v9 = [(MarkupViewController *)self contentViewController];
    v11 = [v9 canPerformAction:a3 withSender:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUQuickLookContentEditorViewController;
    v10 = a4;
    v11 = [(MarkupViewController *)&v13 canPerformAction:a3 withSender:v10];
  }

  return v11;
}

+ (CGSize)suggestedContentSizeForURL:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (v4)
  {
    v7 = [MUImageDownsamplingUtilities _sourceContentType:v4];
    if (v7)
    {
      v8 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v7];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 conformsToType:*MEMORY[0x277CE1E08]])
    {
      v9 = [objc_alloc(MEMORY[0x277CD93D0]) initWithURL:v4];
      [a1 _suggestedContentSizeForPDF:v9];
      v5 = v10;
      v6 = v11;
    }

    else if ([v8 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v12 = CGImageSourceCreateWithURL(v4, 0);
      if (v12)
      {
        v13 = v12;
        [a1 _suggestedContentSizeForImageSource:v12];
        v5 = v14;
        v6 = v15;
        CFRelease(v13);
      }
    }
  }

  v16 = v5;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)suggestedContentSizeForData:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (v4)
  {
    v7 = [MUImageDownsamplingUtilities _sourceContentType:v4];
    if (v7)
    {
      v8 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v7];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 conformsToType:*MEMORY[0x277CE1E08]])
    {
      v9 = [objc_alloc(MEMORY[0x277CD93D0]) initWithData:v4];
      [a1 _suggestedContentSizeForPDF:v9];
      v5 = v10;
      v6 = v11;
    }

    else if ([v8 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v12 = CGImageSourceCreateWithData(v4, 0);
      if (v12)
      {
        v13 = v12;
        [a1 _suggestedContentSizeForImageSource:v12];
        v5 = v14;
        v6 = v15;
        CFRelease(v13);
      }
    }
  }

  v16 = v5;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)a3
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
  if (ImageAtIndex)
  {
    v4 = ImageAtIndex;
    CGImageGetSizeAfterOrientation();
    v6 = v5;
    v8 = v7;
    CFRelease(v4);
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)_suggestedContentSizeForPDF:(id)a3
{
  v3 = a3;
  v4 = v3;
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (v3 && [v3 pageCount])
  {
    v7 = [v4 pageAtIndex:0];
    BoxRect = CGPDFPageGetBoxRect([v7 pageRef], kCGPDFMediaBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)loadWithData:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  [(MarkupViewController *)self setData:a3 withArchivedModelData:a4 placeholderImage:a5];
  [(MUQuickLookContentEditorViewController *)self _handleLoadingWithCompletion:v10];
}

- (void)loadWithURL:(id)a3 archivedModelData:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  [(MarkupViewController *)self setFileURL:a3 withArchivedModelData:a4 placeholderImage:a5];
  [(MUQuickLookContentEditorViewController *)self _handleLoadingWithCompletion:v10];
}

- (void)_handleLoadingWithCompletion:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& ([(MarkupViewController *)self _pdfView], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (![(MUQuickLookContentEditorViewController *)self _hasImageContent])
    {
      v7 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA068];
      v10[0] = @"MUQuickLookContentEditorViewController failed to load content";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v6 = [v7 errorWithDomain:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController" code:1 userInfo:v8];

      goto LABEL_8;
    }

    v6 = 0;
LABEL_8:
    v4[2](v4, v6);
  }
}

- (BOOL)_canShowWhileLocked
{
  v3 = [(MarkupViewController *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 editorCanShowWhileLocked:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v13 traitCollectionDidChange:v4];
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v5 = [(MUQuickLookContentEditorViewController *)self traitCollection];
    v6 = [v5 horizontalSizeClass];
    if (v6 == [v4 horizontalSizeClass])
    {
      v7 = [(MUQuickLookContentEditorViewController *)self traitCollection];
      v8 = [v7 userInterfaceIdiom];
      v9 = [v4 userInterfaceIdiom];

      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
  }

  else if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    v10 = [v4 horizontalSizeClass];
    v11 = [(MUQuickLookContentEditorViewController *)self traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v10 != v12 && -[MarkupViewController thumbnailViewStyle](self, "thumbnailViewStyle") == 1 && ![v4 horizontalSizeClass])
    {
      [(MUQuickLookContentEditorViewController *)self updateThumbnailView];
    }
  }

LABEL_12:
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100__MUQuickLookContentEditorViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_27986E2F0;
    v9[4] = self;
    v10 = v6;
    [v7 animateAlongsideTransition:v9 completion:0];
  }

  v8.receiver = self;
  v8.super_class = MUQuickLookContentEditorViewController;
  [(MUQuickLookContentEditorViewController *)&v8 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
}

- (void)PDFView:(id)a3 allowsFormFillingMode:(BOOL)a4 forPage:(id)a5
{
  v5 = a4;
  if ([(MUQuickLookContentEditorViewController *)self delegateRespondsToDetectedFormInContent:a3]&& v5 && ![(MUQuickLookContentEditorViewController *)self formDetectedInDocument])
  {
    [(MUQuickLookContentEditorViewController *)self setFormDetectedInDocument:1];
    v7 = [(MarkupViewController *)self delegate];
    [v7 editor:self detectedFormInContent:1];
  }
}

- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4
{
  v5 = a4 == 0;
  v12 = [(MarkupViewController *)self undoManager];
  v6 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  v7 = [v12 undoActionName];
  v8 = [v6 containsObject:v7];

  v9 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  v10 = [v12 redoActionName];
  v11 = [v9 containsObject:v10];

  [(MUQuickLookContentEditorViewController *)self _detectedEditEnablingMarkup:v5 & ((v8 | v11) ^ 1u)];
}

- (void)contentControllerDidUnlockDocument:(id)a3
{
  v4 = [(MarkupViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 editorDidUnlockDocument:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setAnnotationEditingEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 setAnnotationEditingEnabled:?];
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    if (v3)
    {
      [(MUQuickLookContentEditorViewController *)self flattenImageForAnalysis];
    }

    v5 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [v5 enableMarkupMode:v3];
  }
}

- (UIView)transitioningView
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    [(MarkupViewController *)self _pdfView];
  }

  else
  {
    [(MUQuickLookContentEditorViewController *)self view];
  }
  v3 = ;

  return v3;
}

- (BOOL)documentIsLocked
{
  v3 = [(MUQuickLookContentEditorViewController *)self _hasPDFContent];
  if (v3)
  {
    v4 = [(MarkupViewController *)self _pdfDocument];
    v5 = [v4 isLocked];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)canEncryptDocument
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    v3 = [(MarkupViewController *)self _pdfDocument];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 isEncrypted] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setPresentationMode:(unint64_t)a3
{
  if (![(MUQuickLookContentEditorViewController *)self didAppearOnce]&& !a3 && self->_presentationMode == 1)
  {
    [(MUQuickLookContentEditorViewController *)self setDidAppearOnce:1];
  }

  self->_presentationMode = a3;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {

    [(MUQuickLookContentEditorViewController *)self _setPresentationModeForPDFContent:a3];
  }

  else if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {

    [(MUQuickLookContentEditorViewController *)self _setPresentationModeForImageContent:a3];
  }
}

- (void)flattenImageForAnalysis
{
  objc_initWeak(&location, self);
  v3 = [(MUQuickLookContentEditorViewController *)self _editedImageAnalysisQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MUQuickLookContentEditorViewController_flattenImageForAnalysis__block_invoke;
  v4[3] = &unk_27986E318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__MUQuickLookContentEditorViewController_flattenImageForAnalysis__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flattenImageForAnalysis];
}

- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v7 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [v7 updateForFullScreen:v5 animated:v4];

    [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
  }

  else if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    if (v4)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__MUQuickLookContentEditorViewController_updateForFullScreen_animated___block_invoke;
      v8[3] = &unk_27986E2C8;
      v8[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.2];
    }

    else
    {

      [(MUQuickLookContentEditorViewController *)self updateThumbnailView];
    }
  }
}

- (void)shouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v7 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [v7 shouldHideInteraction:v5 animated:v4];
  }
}

- (UIFindInteraction)findInteraction
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    v3 = [(MarkupViewController *)self _pdfView];
    v4 = [v3 findInteraction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)acceptSingleTouch:(id)a3
{
  v4 = a3;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v5 = [(MUQuickLookContentEditorViewController *)self _imageAnalysisOverlayAcceptSingleTouch:v4];
  }

  else
  {
    v6 = [(MarkupViewController *)self contentViewController];
    v5 = [v6 acceptSingleTouch:v4];
  }

  return v5;
}

- (void)updateThumbnailView
{
  v3 = [(MUQuickLookContentEditorViewController *)self traitCollection];
  [(MUQuickLookContentEditorViewController *)self _updateThumbnailViewWithTraitCollection:v3];
}

- (BOOL)isInteractionActive
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 isInteractionActive];

  return v3;
}

- (BOOL)hasResultsForVisualSearch
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 hasResultsForVisualSearch];

  return v3;
}

- (void)infoButtonTapped
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v2 infoButtonTapped];
}

- (BOOL)canEditPDF
{
  v3 = [(MUQuickLookContentEditorViewController *)self _hasPDFContent];
  if (v3)
  {

    LOBYTE(v3) = [(MUQuickLookContentEditorViewController *)self canEditContent];
  }

  return v3;
}

- (BOOL)canEditContent
{
  if (![(MUQuickLookContentEditorViewController *)self _presentationModeAllowsEditing])
  {
    return 0;
  }

  v3 = [(MarkupViewController *)self contentViewController];
  if ([v3 canEditContent])
  {
    v4 = [(MUQuickLookContentEditorViewController *)self allowsEditing];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allowsEditing
{
  v3 = [(MarkupViewController *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 editorShouldAllowEditingContents:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)getMenuElementsForPage:(id)a3
{
  v4 = a3;
  if ([(MUQuickLookContentEditorViewController *)self canEditPDF])
  {
    objc_initWeak(location, self);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D750C8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Rotate Left" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"rotate.left"];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke;
    v62[3] = &unk_27986E340;
    objc_copyWeak(&v64, location);
    v10 = v4;
    v63 = v10;
    v11 = [v6 actionWithTitle:v8 image:v9 identifier:@"rotate_left" handler:v62];

    v46 = v11;
    [v5 addObject:v11];
    v12 = MEMORY[0x277D750C8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"Rotate Right" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"rotate.right"];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_2;
    v59[3] = &unk_27986E340;
    objc_copyWeak(&v61, location);
    v16 = v10;
    v60 = v16;
    v17 = [v12 actionWithTitle:v14 image:v15 identifier:@"rotate_right" handler:v59];

    [v5 addObject:v17];
    v18 = MEMORY[0x277D750C8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"Insert Blank Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.badge.plus"];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_3;
    v56[3] = &unk_27986E340;
    objc_copyWeak(&v58, location);
    v22 = v16;
    v57 = v22;
    v23 = [v18 actionWithTitle:v20 image:v21 identifier:@"insert_blank_page" handler:v56];
    v24 = v17;

    [v5 addObject:v23];
    v45 = v23;
    v25 = MEMORY[0x277D750C8];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"Insert from File" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
    v28 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_4;
    v53[3] = &unk_27986E340;
    objc_copyWeak(&v55, location);
    v29 = v22;
    v54 = v29;
    v30 = [v25 actionWithTitle:v27 image:v28 identifier:@"insert_page_from_file" handler:v53];

    [v5 addObject:v30];
    v31 = v24;
    if ([MEMORY[0x277D05D68] isSupported])
    {
      v32 = MEMORY[0x277D750C8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"Scan Pages" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
      v35 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.text.viewfinder"];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_5;
      v50[3] = &unk_27986E340;
      objc_copyWeak(&v52, location);
      v51 = v29;
      v36 = [v32 actionWithTitle:v34 image:v35 identifier:@"insert_pages_from_scanner" handler:v50];

      [v5 addObject:v36];
      objc_destroyWeak(&v52);
      v31 = v24;
    }

    v37 = [(MarkupViewController *)self _pdfDocument];
    v38 = [v37 pageCount];

    if (v38 >= 2)
    {
      v39 = MEMORY[0x277D750C8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"Delete" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
      v42 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_6;
      v47[3] = &unk_27986E340;
      objc_copyWeak(&v49, location);
      v48 = v29;
      v43 = [v39 actionWithTitle:v41 image:v42 identifier:@"delete_page" handler:v47];

      [v43 setAttributes:2];
      [v5 addObject:v43];

      objc_destroyWeak(&v49);
      v31 = v24;
    }

    objc_destroyWeak(&v55);
    objc_destroyWeak(&v58);

    objc_destroyWeak(&v61);
    objc_destroyWeak(&v64);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _rotatePage:*(a1 + 32) clockwise:0];
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _rotatePage:*(a1 + 32) clockwise:1];
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _insertBlankPageAfterPage:*(a1 + 32)];
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _insertPageFromFileAfterPage:*(a1 + 32)];
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _insertPagesFromScannerAfterPage:*(a1 + 32)];
}

void __65__MUQuickLookContentEditorViewController_getMenuElementsForPage___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deletePage:*(a1 + 32)];
}

- (void)convertToPDFAndWrite:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MUQuickLookContentEditorViewController *)self sharedSerialPagesEditionQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__MUQuickLookContentEditorViewController_convertToPDFAndWrite_completionHandler___block_invoke;
  v11[3] = &unk_27986E368;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__MUQuickLookContentEditorViewController_convertToPDFAndWrite_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _convertToPDFAndWrite:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v6 = a3;
  v4 = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController" code:3 userInfo:0];
    (v4)[2](v4, 0, v5);
    [(MUQuickLookContentEditorViewController *)self setScanPDFHandler:0];
  }

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke;
  v9[3] = &unk_27986E3E0;
  objc_copyWeak(&v12, &location);
  v8 = v6;
  v10 = v8;
  v11 = self;
  [(MUQuickLookContentEditorViewController *)self convertToPDFAndWrite:v7 completionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke_2;
    v5[3] = &unk_27986E3B8;
    v6 = *(a1 + 32);
    objc_copyWeak(&v9, (a1 + 48));
    v7 = *(a1 + 40);
    v8 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);

    objc_destroyWeak(&v9);
  }
}

void __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke_3;
  v4[3] = &unk_27986E390;
  objc_copyWeak(&v6, (a1 + 56));
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  [v2 dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v6);
}

void __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) scanPDFHandler];
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 40), 0);
      [v5 setScanPDFHandler:0];
    }

    WeakRetained = v5;
  }
}

- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  NSLog(&cfstr_InsertingPdfPa.isa, self, v6);
  v7 = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
    [(MUQuickLookContentEditorViewController *)self setScanPDFHandler:0];
  }

  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (id)sharedSerialPagesEditionQueue
{
  if (sharedSerialPagesEditionQueue_onceToken != -1)
  {
    [MUQuickLookContentEditorViewController sharedSerialPagesEditionQueue];
  }

  v3 = sharedSerialPagesEditionQueue__sharedSerialPagesEditionQueue;

  return v3;
}

void __71__MUQuickLookContentEditorViewController_sharedSerialPagesEditionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.markup.pdf-pages-edition.serial-queue", attr);
  v2 = sharedSerialPagesEditionQueue__sharedSerialPagesEditionQueue;
  sharedSerialPagesEditionQueue__sharedSerialPagesEditionQueue = v1;
}

- (id)pdfPageOptionsForImageRef:(CGImage *)a3 withPreviousPage:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  [a4 boundsForBox:0];
  v5 = v4;
  CGImageGetSizeAfterOrientation();
  v8 = [MEMORY[0x277CCAE60] valueWithCGRect:{0.0, 0.0, v5, v5 * v6 / v7}];
  v9 = *MEMORY[0x277CD9430];
  v12[0] = *MEMORY[0x277CD9428];
  v12[1] = v9;
  v13[0] = v8;
  v13[1] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (void)insertPages:(id)a3 atIndexes:(id)a4 inDocument:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v25 count];
  if (v10 == [v8 count])
  {
    v11 = [v8 count];
    v12 = v25;
    if (v11)
    {
      for (i = 0; i < v16; ++i)
      {
        v14 = [v12 objectAtIndexedSubscript:i];
        v15 = [v8 objectAtIndexedSubscript:i];
        [v9 insertPage:v14 atIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];

        v16 = [v8 count];
        v12 = v25;
      }
    }

    v17 = [v12 count];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v18;
    if (v17 >= 2)
    {
      v20 = @"Insert pages";
    }

    else
    {
      v20 = @"Insert page";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];

    [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v21];
    v22 = [(MarkupViewController *)self undoManager];
    v23 = [v22 prepareWithInvocationTarget:self];
    [v23 _deletePages:v25 inDocument:v9];

    v24 = [(MarkupViewController *)self undoManager];
    [v24 setActionName:v21];
  }

  else
  {
    NSLog(&cfstr_NumberOfPagesT.isa);
  }
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v8 = a4;
  v5 = [v8 description];
  NSLog(&cfstr_Importing.isa, v5);

  v6 = [(MUQuickLookContentEditorViewController *)self importHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, 0);
    [(MUQuickLookContentEditorViewController *)self setImportHandler:0];
  }
}

- (void)documentPickerWasCancelled:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DocumentPickin.isa, a2, a3);
  v4 = [(MUQuickLookContentEditorViewController *)self importHandler];
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    v9[0] = @"Document picker was cancelled.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController" code:2 userInfo:v6];

    (v4)[2](v4, 0, v7);
    [(MUQuickLookContentEditorViewController *)self setImportHandler:0];
  }
}

- (void)find:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  v5 = [v4 canPerformAction:sel_find_ withSender:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self contentViewController];
    [v6 find:v7];
  }
}

- (void)findPrevious:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  v5 = [v4 canPerformAction:sel_findPrevious_ withSender:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self contentViewController];
    [v6 findPrevious:v7];
  }
}

- (void)findNext:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  v5 = [v4 canPerformAction:sel_findNext_ withSender:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self contentViewController];
    [v6 findNext:v7];
  }
}

- (BOOL)isVisualSearchEnabled
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 isVisualSearchEnabled];

  return v3;
}

- (NSString)filledInfoButtonGlyphName
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 filledInfoButtonGlyphName];

  return v3;
}

- (NSString)infoButtonGlyphName
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 infoButtonGlyphName];

  return v3;
}

- (void)setupAndStartImageAnalysisIfNeeded
{
  if (_os_feature_enabled_impl() && [MUImageAnalysisManager shouldStartImageAnalysisForPresentationMode:[(MUQuickLookContentEditorViewController *)self presentationMode]])
  {

    [(MUQuickLookContentEditorViewController *)self _setupAndStartImageAnalysisIfNeeded];
  }
}

- (void)stopImageAnalysis
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v2 stopImageAnalysis];
}

- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 shouldHighlightTextAndDDAfterNextAnalysis];

  return v3;
}

- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v4 setShouldHighlightTextAndDDAfterNextAnalysis:v3];
}

- (BOOL)shouldEnterVisualSearchAfterNextAnalysis
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 shouldEnterVisualSearchAfterNextAnalysis];

  return v3;
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v4 setShouldEnterVisualSearchAfterNextAnalysis:v3];
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  v2 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v3 = [v2 shouldUpliftSubjectAfterNextAnalysis];

  return v3;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v4 setShouldUpliftSubjectAfterNextAnalysis:v3];
}

- (UIImage)imageForAnalysis
{
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v3 = [(MUQuickLookContentEditorViewController *)self latestImageForAnalysis];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = [(MarkupViewController *)self contentViewController];
      v5 = [v6 imageForAnalysis];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)clientPreviewOptions
{
  v2 = [(MarkupViewController *)self delegate];
  v3 = [v2 clientPreviewOptions];

  return v3;
}

- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(MarkupViewController *)self delegate];
  [v5 editor:self needsToUpdateChromeWithAnimation:v3];
}

- (void)imageAnalysisInteractionWillPresentVisualSearchController
{
  v3 = [(MarkupViewController *)self delegate];
  [v3 editor:self willPresentViewControllerWithAnimation:0];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController
{
  v3 = [(MarkupViewController *)self delegate];
  [v3 editor:self didDismissViewControllerWithAnimation:0];
}

- (id)_editedImageAnalysisQueue
{
  if (_editedImageAnalysisQueue_onceToken != -1)
  {
    [MUQuickLookContentEditorViewController _editedImageAnalysisQueue];
  }

  v3 = _editedImageAnalysisQueue_queue;

  return v3;
}

void __67__MUQuickLookContentEditorViewController__editedImageAnalysisQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.markup.edited-image-analysis.serial-queue", attr);
  v2 = _editedImageAnalysisQueue_queue;
  _editedImageAnalysisQueue_queue = v1;
}

- (void)_adjustImageInteractionForScrollEvent:(id)a3
{
  v4 = a3;
  v5 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [v5 adjustImageInteractionForScrollView:v4];

  [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
}

- (void)_setupAndStartImageAnalysisIfNeeded
{
  v3 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v10 = v3;
  if (v3)
  {
    if ([v3 hasAnalysis])
    {
      [v10 addInteractionIfNeeded];
      [v10 setupAnalysisButtonsContainer];
      [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
LABEL_5:
      v4 = v10;
      goto LABEL_10;
    }

    if ([v10 isAnalysisOngoing])
    {
      goto LABEL_5;
    }

    [v10 stopImageAnalysis];
  }

  v5 = [MUImageAnalysisManager alloc];
  v6 = [(MUQuickLookContentEditorViewController *)self view];
  v7 = [(MUImageAnalysisManager *)v5 initWithDelegate:self presentingView:v6];

  [(MUQuickLookContentEditorViewController *)self setImageAnalysisManager:v7];
  v8 = [(MarkupViewController *)self contentViewController];
  v9 = v8;
  if (v8)
  {
    [v8 setScrollViewDelegate:self];
  }

  [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];

  v4 = v7;
LABEL_10:
}

- (BOOL)_imageAnalysisOverlayAcceptSingleTouch:(id)a3
{
  v4 = a3;
  v5 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v6 = [(MUQuickLookContentEditorViewController *)self imageAnalysisView];
  LOBYTE(v7) = 0;
  if (v6 && v5)
  {
    [v4 locationInView:v6];
    v9 = v8;
    v11 = v10;
    if ([v4 _isPointerTouch] && objc_msgSend(v5, "isTextSelectionEnabled") && (objc_msgSend(v5, "textExistsAtPoint:", v9, v11) & 1) != 0 || (objc_msgSend(v5, "dataDetectorExistsAtPoint:", v9, v11) & 1) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = [v5 visualSearchExistsAtPoint:{v9, v11}];
    }

    v7 = v12 | [v5 hasActiveTextSelection];
  }

  return v7;
}

- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)a3 toPDFDocument:(id)a4 atPageIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v26 = self;
  v27 = [(MarkupViewController *)self _pdfView];
  v10 = [v27 displayBox];
  v11 = [v8 pageCount];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v8 pageAtIndex:i];
      v16 = [v15 copy];

      [v16 boundsForBox:1];
      [v16 setBounds:v10 forBox:?];
      [v9 insertPage:v16 atIndex:a5 + i];
      [v12 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"Insert from File" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)v26 _registerActionNotEnablingMarkup:v18];

  v19 = [(MarkupViewController *)v26 undoManager];
  v20 = [v19 prepareWithInvocationTarget:v26];
  [v20 _deletePages:v12 inDocument:v9];

  v21 = [(MarkupViewController *)v26 undoManager];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"Insert from File" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [v21 setActionName:v23];

  v24 = [v12 count];
  return v24;
}

- (void)_insertPagesFromFileURLs:(id)a3 afterPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 document];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [v8 indexForPage:v7];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_CouldNotFindIn.isa);
  }

  else
  {
    v9 = [(MUQuickLookContentEditorViewController *)self sharedSerialPagesEditionQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__MUQuickLookContentEditorViewController__insertPagesFromFileURLs_afterPage___block_invoke;
    v10[3] = &unk_27986E450;
    v11 = v6;
    v13 = self;
    v14 = &v15;
    v12 = v8;
    dispatch_async(v9, v10);
  }

  _Block_object_dispose(&v15, 8);
}

void __77__MUQuickLookContentEditorViewController__insertPagesFromFileURLs_afterPage___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v6 = *MEMORY[0x277CBE7B8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v16 = 0;
        v17 = 0;
        v9 = [v8 getResourceValue:&v17 forKey:v6 error:&v16];
        v10 = v17;
        v11 = v16;
        v12 = v11;
        if (v9)
        {
          v13 = [*(a1 + 40) pageAtIndex:*(*(*(a1 + 56) + 8) + 24)];
          if (v13)
          {
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __77__MUQuickLookContentEditorViewController__insertPagesFromFileURLs_afterPage___block_invoke_2;
            v15[3] = &unk_27986E428;
            v14 = *(a1 + 48);
            v15[4] = *(a1 + 56);
            [v14 _insertFileAtURL:v8 type:v10 afterPage:v13 completionHandler:v15];
          }

          else
          {
            NSLog(&cfstr_OriginalPageTo.isa);
          }
        }

        else
        {
          NSLog(&cfstr_TheContentType.isa, v11);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

- (void)_insertFileAtURL:(id)a3 type:(id)a4 afterPage:(id)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(MUQuickLookContentEditorViewController *)self supportedUTTypes];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([v11 conformsToType:v19])
        {
          v21 = [v11 description];
          NSLog(&cfstr_InsertingEleme.isa, v21);

          if (v19 == *MEMORY[0x277CE1E08])
          {
            [(MUQuickLookContentEditorViewController *)self _insertPDFDocumentWithURL:v10 afterPage:v12 completionHandler:v13];
          }

          else if (v19 == *MEMORY[0x277CE1DB0])
          {
            [(MUQuickLookContentEditorViewController *)self _insertImageWithURL:v10 afterPage:v12 completionHandler:v13];
          }

          else
          {
            v13[2](v13, 0);
          }

          goto LABEL_16;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = [v11 description];
  NSLog(&cfstr_CouldNotInsert.isa, v20);

  v13[2](v13, 0);
LABEL_16:
}

- (void)_insertPDFDocumentWithURL:(id)a3 afterPage:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CD93D0];
  v11 = a3;
  v12 = [[v10 alloc] initWithURL:v11];

  if (v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__MUQuickLookContentEditorViewController__insertPDFDocumentWithURL_afterPage_completionHandler___block_invoke;
    v13[3] = &unk_27986E478;
    v14 = v8;
    v17 = v9;
    v15 = self;
    v16 = v12;
    dispatch_sync(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __96__MUQuickLookContentEditorViewController__insertPDFDocumentWithURL_afterPage_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) document];
  v2 = [v3 indexForPage:*(a1 + 32)];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_CouldNotFindIn_0.isa);
  }

  else
  {
    [*(a1 + 40) _insertPagesFromProvidedPDFDocument:*(a1 + 48) toPDFDocument:v3 atPageIndex:v2 + 1];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_insertImageWithURL:(id)a3 afterPage:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 document];
  v12 = [v11 indexForPage:v10];

  v13 = CGImageSourceCreateWithURL(v8, 0);
  if (v13)
  {
    v14 = v13;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
    CFRelease(v14);
    if (ImageAtIndex)
    {
      v16 = v12 + 1;
      if ([v11 pageCount] && v16 <= objc_msgSend(v11, "pageCount"))
      {
        if (v12 == -1)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12;
        }

        v19 = [v11 pageAtIndex:v18];
        v17 = [(MUQuickLookContentEditorViewController *)self pdfPageOptionsForImageRef:ImageAtIndex withPreviousPage:v19];
      }

      else
      {
        v17 = MEMORY[0x277CBEC10];
      }

      v20 = objc_alloc(MEMORY[0x277CD93E0]);
      v21 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex];
      v22 = [v20 initWithImage:v21 options:v17];

      CGImageRelease(ImageAtIndex);
      if (v22)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__MUQuickLookContentEditorViewController__insertImageWithURL_afterPage_completionHandler___block_invoke;
        block[3] = &unk_27986E4A0;
        block[4] = self;
        v24 = v22;
        v27 = v16;
        v25 = v11;
        v26 = v9;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      else
      {
        NSLog(&cfstr_PdfDocumentCou.isa, v8);
        (*(v9 + 2))(v9, 0);
      }
    }

    else
    {
      NSLog(&cfstr_ImageToInsertC.isa);
      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    NSLog(&cfstr_CannotCreateIm.isa);
  }
}

uint64_t __90__MUQuickLookContentEditorViewController__insertImageWithURL_afterPage_completionHandler___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v8[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  v7 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v2 insertPages:v3 atIndexes:v5 inDocument:a1[6]];

  return (*(a1[7] + 16))();
}

- (void)_convertToPDFAndWrite:(id)a3 completionHandler:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CD93D0]);
  v9 = objc_autoreleasePoolPush();
  if ([v6 pageCount])
  {
    v37 = v9;
    v38 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v11;
      v14 = v10;
      v11 = [v6 imageOfPageAtIndex:v12];

      v15 = [(MUQuickLookContentEditorViewController *)self scanImageToPDFConversionHandler];
      v10 = (v15)[2](v15, v11);

      if (v10)
      {
        [v8 insertPage:v10 atIndex:{objc_msgSend(v8, "pageCount")}];
      }

      else
      {
        v16 = [v6 pageCount];
        v17 = [v11 debugDescription];
        NSLog(&cfstr_FailedToCreate.isa, v12, v16, v17);
      }

      ++v12;
    }

    while (v12 < [v6 pageCount]);

    v9 = v37;
    v7 = v38;
  }

  objc_autoreleasePoolPop(v9);
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 temporaryDirectory];
  v20 = [MEMORY[0x277CCAD78] UUID];
  v21 = [v20 UUIDString];
  v22 = [v19 URLByAppendingPathComponent:v21];

  v23 = [v22 path];
  LOBYTE(v21) = [v18 fileExistsAtPath:v23];

  if (v21)
  {
    v24 = [v22 path];
    v40 = 0;
    [v18 removeItemAtPath:v24 error:&v40];
    v25 = v40;

    if (v25)
    {
      v26 = [v22 path];
      NSLog(&cfstr_FailedToRemove.isa, v26, v25);

LABEL_13:
      v7[2](v7, 0);
      goto LABEL_18;
    }
  }

  v27 = [v22 path];
  v39 = 0;
  [v18 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v39];
  v25 = v39;

  if (v25)
  {
    NSLog(&cfstr_FailedToCreate_0.isa, v25);
    goto LABEL_13;
  }

  v28 = MEMORY[0x277CCACA8];
  v29 = [MEMORY[0x277CCA8D8] mainBundle];
  [v29 localizedStringForKey:@"Scanned Document" value:&stru_286962590 table:0];
  v31 = v30 = v7;
  v32 = [v28 stringWithFormat:@"%@.pdf", v31];

  v7 = v30;
  v33 = v32;
  v34 = [v22 URLByAppendingPathComponent:v32];
  v41 = *MEMORY[0x277CBF5D0];
  v42[0] = MEMORY[0x277CBEC38];
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  if ([v8 writeToURL:v34 withOptions:v35])
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  (v7)[2](v7, v36);

LABEL_18:
}

- (void)_detectedEditEnablingMarkup:(BOOL)a3
{
  v3 = a3;
  v5 = [(MarkupViewController *)self formFillingEnabled];
  v6 = [(MarkupViewController *)self delegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 editorDidChangeContent:self enablingMarkup:v3 && !v5];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_loadSourceContentWithCompletion:(id)a3
{
  v4 = a3;
  [(MUQuickLookContentEditorViewController *)self setFormDetectedInDocument:0];
  [(MUQuickLookContentEditorViewController *)self _resetOriginalDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__MUQuickLookContentEditorViewController__loadSourceContentWithCompletion___block_invoke;
  v7[3] = &unk_27986E4C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  v5 = v4;
  [(MarkupViewController *)&v6 _loadSourceContentWithCompletion:v7];
}

uint64_t __75__MUQuickLookContentEditorViewController__loadSourceContentWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _hasPDFContent])
  {
    v2 = [*(a1 + 32) contentViewController];
    [v2 setThumbnailViewStyle:1];
  }

  [*(a1 + 32) _setAsPDFViewDelegatePrivateIfNecessary];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 setDelegate:v4];
  if (v4)
  {
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  [(MUQuickLookContentEditorViewController *)self setDelegateRespondsToDetectedFormInContent:v5 & 1];
  [(MUQuickLookContentEditorViewController *)self _setAsPDFViewDelegatePrivateIfNecessary];
}

- (void)_setAsPDFViewDelegatePrivateIfNecessary
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MUQuickLookContentEditorViewController *)self delegateRespondsToDetectedFormInContent])
  {
    if (!self->_pdfViewDelegateProxy)
    {
      v3 = [MUDelegateProxy alloc];
      pdfViewDelegateProxy = self->_pdfViewDelegateProxy;
      self->_pdfViewDelegateProxy = v3;

      [(PDFViewDelegatePrivate *)self->_pdfViewDelegateProxy setFirstDelegate:self];
    }

    v5 = [(MarkupViewController *)self _pdfView];
    v6 = [v5 delegate];
    [(PDFViewDelegatePrivate *)self->_pdfViewDelegateProxy setSecondDelegate:v6];

    v7 = self->_pdfViewDelegateProxy;
    v8 = [(MarkupViewController *)self _pdfView];
    [v8 setDelegate:v7];
  }

  else
  {

    [(MUQuickLookContentEditorViewController *)self _resetOriginalDelegate];
  }
}

- (void)_resetOriginalDelegate
{
  pdfViewDelegateProxy = self->_pdfViewDelegateProxy;
  if (pdfViewDelegateProxy)
  {
    v5 = [(PDFViewDelegatePrivate *)pdfViewDelegateProxy secondDelegate];
    v4 = [(MarkupViewController *)self _pdfView];
    [v4 setDelegate:v5];
  }
}

- (void)_updateAnalysisButtonsContainerConstraints
{
  v3 = [(MarkupViewController *)self imageViewCombinedContentView];
  v4 = [v3 subviews];
  v7 = [v4 firstObject];

  v5 = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v6 = [(MUQuickLookContentEditorViewController *)self view];
  [v5 updateBottomRightContainerPositionForImageView:v7 view:v6];
}

- (void)_updateThumbnailViewWithTraitCollection:(id)a3
{
  v11 = a3;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    v4 = [(MUQuickLookContentEditorViewController *)self _shouldShowMarkupOverlays];
    v5 = [(MarkupViewController *)self fixedThumbnailView];
    v6 = v4 && [v11 horizontalSizeClass] == 2;
    [(MarkupViewController *)self setFixedThumbnailView:v6];
    if (v5 && ![(MarkupViewController *)self fixedThumbnailView])
    {
      v7 = [(MarkupViewController *)self contentViewController];
      [v7 setShouldShowThumbnailView:0];
    }

    if (v4)
    {
      v8 = [(MarkupViewController *)self contentViewController];
      v9 = ([v8 shouldShowThumbnailView] & 1) != 0 || -[MarkupViewController fixedThumbnailView](self, "fixedThumbnailView");
    }

    else
    {
      v9 = 0;
    }

    [(MarkupViewController *)self setShowThumbnailViewForMultipage:v9];
    v10 = [(MarkupViewController *)self delegate];
    if (v10 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      [v10 editor:self needsScreenEdgePanGestureRecognition:{-[MarkupViewController showThumbnailViewForMultipage](self, "showThumbnailViewForMultipage")}];
    }
  }
}

- (void)_flattenImageForAnalysis
{
  v8 = 0;
  v3 = [(MarkupViewController *)self dataRepresentationWithError:&v8];
  v4 = v8;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_GettingDataRep.isa, v4, self);
    [(MUQuickLookContentEditorViewController *)self setLatestImageForAnalysis:0];
  }

  else
  {
    v6 = [MEMORY[0x277D755B8] imageWithData:v3];
    [(MUQuickLookContentEditorViewController *)self setLatestImageForAnalysis:v6];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MUQuickLookContentEditorViewController__flattenImageForAnalysis__block_invoke;
  block[3] = &unk_27986E2C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__MUQuickLookContentEditorViewController__flattenImageForAnalysis__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageAnalysisManager];
  [v1 startImageAnalysis];
}

- (void)_setPresentationModeForImageContent:(unint64_t)a3
{
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent]&& _os_feature_enabled_impl())
  {
    if (+[MUImageAnalysisManager shouldStartImageAnalysisForPresentationMode:](MUImageAnalysisManager, "shouldStartImageAnalysisForPresentationMode:", a3) && (-[MUQuickLookContentEditorViewController didAppearOnce](self, "didAppearOnce") || (-[MUQuickLookContentEditorViewController imageAnalysisManager](self, "imageAnalysisManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasAnalysis], v5, v6)))
    {

      [(MUQuickLookContentEditorViewController *)self _setupAndStartImageAnalysisIfNeeded];
    }

    else
    {

      [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
    }
  }
}

- (void)_setPresentationModeForPDFContent:(unint64_t)a3
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    v10 = [(MarkupViewController *)self _pdfView];
    v5 = [v10 layer];
    [v5 setAllowsGroupOpacity:0];

    if (a3 == 1)
    {
      [v10 setFindInteractionEnabled:0];
      [v10 usePageViewController:1 withViewOptions:0];
      [v10 setDisplayDirection:0];
      v9 = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:v9];
    }

    else if (!a3)
    {
      v6 = [v10 documentScrollView];
      [v6 setKeyboardDismissMode:1];

      [(MarkupViewController *)self setForcesPDFViewTopAlignment:1];
      v7 = [(MarkupViewController *)self contentViewScrollView];
      [v7 setContentInsetAdjustmentBehavior:2];

      v8 = [(MarkupViewController *)self contentViewScrollView];
      [v8 _setIndicatorInsetAdjustmentBehavior:1];

      [v10 setFindInteractionEnabled:1];
    }

    [(MarkupViewController *)self setAllowsThumbnailViewPageReordering:[(MUQuickLookContentEditorViewController *)self canEditPDF]];
  }
}

- (void)_registerActionNotEnablingMarkup:(id)a3
{
  v4 = a3;
  v5 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(MUQuickLookContentEditorViewController *)self setActionsNotEnablingMarkup:v6];
  }

  v7 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  [v7 addObject:v4];
}

- (void)_rotatePage:(id)a3 clockwise:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [v15 rotation];
  v7 = 90;
  if (v4)
  {
    v8 = @"Rotate Left";
  }

  else
  {
    v7 = -90;
    v8 = @"Rotate Right";
  }

  [v15 setRotation:v6 + v7];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];

  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v10];
  v11 = [(MarkupViewController *)self undoManager];
  v12 = [v11 prepareWithInvocationTarget:self];
  [v12 _rotatePage:v15 clockwise:!v4];

  v13 = [(MarkupViewController *)self undoManager];
  [v13 setActionName:v10];

  v14 = [(MarkupViewController *)self _pdfView];
  [v14 setAutoScales:{objc_msgSend(v14, "autoScales")}];
}

- (void)_insertBlankPageAfterPage:(id)a3
{
  v4 = a3;
  v5 = [v4 document];
  v6 = [v5 indexForPage:v4];
  v7 = objc_alloc_init(MEMORY[0x277CD93E0]);
  [v4 boundsForBox:1];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v7 setBounds:0 forBox:{v9, v11, v13, v15}];
  [(MUQuickLookContentEditorViewController *)self _insertBlankPage:v7 atIndex:v6 + 1];
  objc_initWeak(&location, self);
  v16 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MUQuickLookContentEditorViewController__insertBlankPageAfterPage___block_invoke;
  block[3] = &unk_27986E4F0;
  objc_copyWeak(&v20, &location);
  v19 = v7;
  v17 = v7;
  dispatch_after(v16, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __68__MUQuickLookContentEditorViewController__insertBlankPageAfterPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _pdfView];
  [v2 goToPage:*(a1 + 32)];
}

- (void)_insertPageFromFileAfterPage:(id)a3
{
  v4 = a3;
  [(MUQuickLookContentEditorViewController *)self setAnnotationEditingEnabled:0];
  v5 = [(MarkupViewController *)self delegate];
  [v5 editor:self willPresentViewControllerWithAnimation:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__MUQuickLookContentEditorViewController__insertPageFromFileAfterPage___block_invoke;
  v7[3] = &unk_27986E518;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MUQuickLookContentEditorViewController *)self _presentDocumentPicker:v7];
}

void __71__MUQuickLookContentEditorViewController__insertPageFromFileAfterPage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController"])
    {
      v8 = [v6 code];

      if (v8 == 2)
      {
        NSLog(&cfstr_DocumentPicker_0.isa);
        goto LABEL_10;
      }
    }

    else
    {
    }

    NSLog(&cfstr_PresentingDocu.isa, *(a1 + 32));
  }

  else if ([v10 count])
  {
    [*(a1 + 32) _insertPagesFromFileURLs:v10 afterPage:*(a1 + 40)];
    v9 = [*(a1 + 32) delegate];
    [v9 editor:*(a1 + 32) didDismissViewControllerWithAnimation:1];
  }

  else
  {
    NSLog(&cfstr_PresentingDocu_0.isa);
  }

LABEL_10:
}

- (void)_insertPage:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MarkupViewController *)self _pdfDocument];
  [v7 insertPage:v6 atIndex:a4];
}

- (void)_insertBlankPage:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [(MUQuickLookContentEditorViewController *)self _insertPage:v6 atIndex:a4];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Insert Blank Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v8];

  v9 = [(MarkupViewController *)self undoManager];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 _deletePage:v6];

  v13 = [(MarkupViewController *)self undoManager];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Insert Blank Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [v13 setActionName:v12];
}

- (void)_insertDeletedPage:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [(MUQuickLookContentEditorViewController *)self _insertPage:v6 atIndex:a4];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Insert Deleted Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v8];

  v9 = [(MarkupViewController *)self undoManager];
  v10 = [v9 prepareWithInvocationTarget:self];
  [v10 _deletePage:v6];

  v13 = [(MarkupViewController *)self undoManager];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Insert Deleted Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [v13 setActionName:v12];
}

- (void)_deletePage:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  v7 = [(MarkupViewController *)self _pdfDocument:v8];
  [(MUQuickLookContentEditorViewController *)self _deletePages:v6 inDocument:v7];
}

- (void)_deletePages:(id)a3 inDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MarkupViewController *)self _pdfView];
  v9 = [v8 currentPage];
  v10 = [v7 indexForPage:v9];

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v12 = [v6 reverseObjectEnumerator];
  v13 = [v12 allObjects];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__MUQuickLookContentEditorViewController__deletePages_inDocument___block_invoke;
  v29[3] = &unk_27986E540;
  v14 = v7;
  v30 = v14;
  v15 = v11;
  v31 = v15;
  v28 = v13;
  [v13 enumerateObjectsUsingBlock:v29];
  if (v14 && [v14 pageCount] && v10 >= objc_msgSend(v14, "pageCount"))
  {
    v16 = [v14 pageAtIndex:{objc_msgSend(v14, "pageCount") - 1}];
    [v8 goToPage:v16];
  }

  v17 = [v6 count];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = v18;
  if (v17 >= 2)
  {
    v20 = @"Remove pages";
  }

  else
  {
    v20 = @"Remove page";
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];

  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v21];
  v22 = [(MarkupViewController *)self undoManager];
  v23 = [v22 prepareWithInvocationTarget:self];
  v24 = [v15 reverseObjectEnumerator];
  [v24 allObjects];
  v26 = v25 = v8;
  [v23 insertPages:v6 atIndexes:v26 inDocument:v14];

  v27 = [(MarkupViewController *)self undoManager];
  [v27 setActionName:v21];
}

void __66__MUQuickLookContentEditorViewController__deletePages_inDocument___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexForPage:a2];
  [*(a1 + 32) removePageAtIndex:v3];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];
}

- (id)supportedUTTypes
{
  if (supportedUTTypes_onceToken != -1)
  {
    [MUQuickLookContentEditorViewController supportedUTTypes];
  }

  v3 = supportedUTTypes_supportedTypes;

  return v3;
}

void __58__MUQuickLookContentEditorViewController_supportedUTTypes__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE1DB0];
  v3[0] = *MEMORY[0x277CE1E08];
  v3[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v2 = supportedUTTypes_supportedTypes;
  supportedUTTypes_supportedTypes = v1;
}

- (void)_presentDocumentPicker:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MUQuickLookContentEditorViewController__presentDocumentPicker___block_invoke;
  v6[3] = &unk_27986E4C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __65__MUQuickLookContentEditorViewController__presentDocumentPicker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setImportHandler:v2];

  v3 = [MUDocumentPickerViewController alloc];
  v4 = [*(a1 + 32) supportedUTTypes];
  v6 = [(UIDocumentPickerViewController *)v3 initForOpeningContentTypes:v4 asCopy:1];

  [v6 setAllowsMultipleSelection:1];
  [v6 setDelegate:*(a1 + 32)];
  [v6 setModalPresentationStyle:2];
  v5 = [v6 presentationController];
  [v5 setDelegate:v6];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (void)_presentDocumentScannerAfterPage:(id)a3
{
  v4 = a3;
  v5 = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];

  if (v5)
  {
    NSLog(&cfstr_TryingToScanNe.isa, self);
  }

  else
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke;
    v12[3] = &unk_27986E568;
    objc_copyWeak(&v14, &location);
    v6 = v4;
    v13 = v6;
    [(MUQuickLookContentEditorViewController *)self setScanPDFHandler:v12];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke_2;
    v9[3] = &unk_27986E590;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [(MUQuickLookContentEditorViewController *)self setScanImageToPDFConversionHandler:v9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke_3;
    block[3] = &unk_27986E318;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained delegate];
    [v8 editor:v7 willPresentViewControllerWithAnimation:1];

    if (v28)
    {
      v9 = [v7 _pdfView];
      v10 = [v7 _pdfDocument];
      v11 = v10;
      if (v9 && v10)
      {
        v27 = v5;
        v12 = [v9 displayBox];
        v13 = [objc_alloc(MEMORY[0x277CD93D0]) initWithURL:v28];
        v26 = v11;
        v14 = [v11 indexForPage:*(a1 + 32)];
        if ([v13 pageCount])
        {
          v15 = 0;
          v29 = v13;
          v30 = v14 + 1;
          do
          {
            context = objc_autoreleasePoolPush();
            v16 = [v13 pageAtIndex:v15];
            v17 = [v16 copy];

            [v17 boundsForBox:1];
            [v17 setBounds:v12 forBox:?];
            [v7 _insertPage:v17 atIndex:v30 + v15];
            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"Scan Pages" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
            [v7 _registerActionNotEnablingMarkup:v19];

            v20 = [v7 undoManager];
            v21 = [v20 prepareWithInvocationTarget:v7];
            [v21 _deletePage:v17];

            v22 = [v7 undoManager];
            v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            [v23 localizedStringForKey:@"Scan Pages" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
            v25 = v24 = v12;
            [v22 setActionName:v25];

            v12 = v24;
            v13 = v29;

            objc_autoreleasePoolPop(context);
            ++v15;
          }

          while (v15 < [v29 pageCount]);
        }

        v5 = v27;
        v11 = v26;
      }
    }
  }
}

id __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [WeakRetained pdfPageOptionsForImageRef:objc_msgSend(v3 withPreviousPage:{"CGImage"), *(a1 + 32)}];
    v6 = [objc_alloc(MEMORY[0x277CD93E0]) initWithImage:v3 options:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __75__MUQuickLookContentEditorViewController__presentDocumentScannerAfterPage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([WeakRetained annotationEditingEnabled])
    {
      [WeakRetained setAnnotationEditingEnabled:0];
    }

    v1 = [WeakRetained delegate];
    [v1 editor:WeakRetained willPresentViewControllerWithAnimation:1];

    v2 = objc_alloc_init(MEMORY[0x277D05D68]);
    [v2 setDelegate:WeakRetained];
    v3 = [WeakRetained view];
    v4 = [v3 tintColor];
    v5 = [v2 view];
    [v5 setTintColor:v4];

    [v2 setModalPresentationStyle:5];
    [WeakRetained presentViewController:v2 animated:1 completion:0];
  }
}

- (BOOL)_hasPDFContent
{
  v2 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasImageContent
{
  v2 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end