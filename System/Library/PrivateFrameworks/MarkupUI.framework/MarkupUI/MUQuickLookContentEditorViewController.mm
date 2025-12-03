@interface MUQuickLookContentEditorViewController
+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)source;
+ (CGSize)_suggestedContentSizeForPDF:(id)f;
+ (CGSize)suggestedContentSizeForData:(id)data;
+ (CGSize)suggestedContentSizeForURL:(id)l;
- (BOOL)_canShowWhileLocked;
- (BOOL)_hasImageContent;
- (BOOL)_hasPDFContent;
- (BOOL)_imageAnalysisOverlayAcceptSingleTouch:(id)touch;
- (BOOL)acceptSingleTouch:(id)touch;
- (BOOL)allowsEditing;
- (BOOL)canEditContent;
- (BOOL)canEditPDF;
- (BOOL)canEncryptDocument;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
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
- (id)getMenuElementsForPage:(id)page;
- (id)pdfPageOptionsForImageRef:(CGImage *)ref withPreviousPage:(id)page;
- (id)sharedSerialPagesEditionQueue;
- (id)supportedUTTypes;
- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)document toPDFDocument:(id)fDocument atPageIndex:(unint64_t)index;
- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode forPage:(id)page;
- (void)_adjustImageInteractionForScrollEvent:(id)event;
- (void)_convertToPDFAndWrite:(id)write completionHandler:(id)handler;
- (void)_deletePage:(id)page;
- (void)_deletePages:(id)pages inDocument:(id)document;
- (void)_detectedEditEnablingMarkup:(BOOL)markup;
- (void)_flattenImageForAnalysis;
- (void)_handleLoadingWithCompletion:(id)completion;
- (void)_insertBlankPage:(id)page atIndex:(unint64_t)index;
- (void)_insertBlankPageAfterPage:(id)page;
- (void)_insertDeletedPage:(id)page atIndex:(unint64_t)index;
- (void)_insertFileAtURL:(id)l type:(id)type afterPage:(id)page completionHandler:(id)handler;
- (void)_insertImageWithURL:(id)l afterPage:(id)page completionHandler:(id)handler;
- (void)_insertPDFDocumentWithURL:(id)l afterPage:(id)page completionHandler:(id)handler;
- (void)_insertPage:(id)page atIndex:(unint64_t)index;
- (void)_insertPageFromFileAfterPage:(id)page;
- (void)_insertPagesFromFileURLs:(id)ls afterPage:(id)page;
- (void)_loadSourceContentWithCompletion:(id)completion;
- (void)_presentDocumentPicker:(id)picker;
- (void)_presentDocumentScannerAfterPage:(id)page;
- (void)_registerActionNotEnablingMarkup:(id)markup;
- (void)_resetOriginalDelegate;
- (void)_rotatePage:(id)page clockwise:(BOOL)clockwise;
- (void)_setAsPDFViewDelegatePrivateIfNecessary;
- (void)_setPresentationModeForImageContent:(unint64_t)content;
- (void)_setPresentationModeForPDFContent:(unint64_t)content;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)_updateAnalysisButtonsContainerConstraints;
- (void)_updatePeekSize;
- (void)_updateThumbnailViewWithTraitCollection:(id)collection;
- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type;
- (void)contentControllerDidUnlockDocument:(id)document;
- (void)convertToPDFAndWrite:(id)write completionHandler:(id)handler;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)find:(id)find;
- (void)findNext:(id)next;
- (void)findPrevious:(id)previous;
- (void)flattenImageForAnalysis;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)animation;
- (void)infoButtonTapped;
- (void)insertPages:(id)pages atIndexes:(id)indexes inDocument:(id)document;
- (void)loadWithData:(id)data archivedModelData:(id)modelData placeholderImage:(id)image completionHandler:(id)handler;
- (void)loadWithURL:(id)l archivedModelData:(id)data placeholderImage:(id)image completionHandler:(id)handler;
- (void)setAnnotationEditingEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)shouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated;
- (void)stopImageAnalysis;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated;
- (void)updateThumbnailView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MUQuickLookContentEditorViewController

- (MUQuickLookContentEditorViewController)init
{
  v5.receiver = self;
  v5.super_class = MUQuickLookContentEditorViewController;
  v2 = [(MUQuickLookContentEditorViewController *)&v5 init];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MarkupViewController *)v2 setBackgroundColor:clearColor];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 viewWillAppear:?];
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    if (appearCopy)
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
  view = [(MUQuickLookContentEditorViewController *)self view];
  superview = [view superview];

  v4 = superview;
  if (superview)
  {
    [superview frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    presentationMode = [(MUQuickLookContentEditorViewController *)self presentationMode];
    v14 = v6 + -5.0;
    v15 = v8 + -5.0;
    if (presentationMode == 1)
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

    v4 = superview;
    if (!v17)
    {
      view2 = [(MUQuickLookContentEditorViewController *)self view];
      [view2 setFrame:{v6, v8, v10, v12}];

      v4 = superview;
    }
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_find_ == action || sel_findPrevious_ == action || sel_findNext_ == action)
  {
    senderCopy = sender;
    contentViewController = [(MarkupViewController *)self contentViewController];
    v11 = [contentViewController canPerformAction:action withSender:senderCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUQuickLookContentEditorViewController;
    senderCopy2 = sender;
    v11 = [(MarkupViewController *)&v13 canPerformAction:action withSender:senderCopy2];
  }

  return v11;
}

+ (CGSize)suggestedContentSizeForURL:(id)l
{
  lCopy = l;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (lCopy)
  {
    v7 = [MUImageDownsamplingUtilities _sourceContentType:lCopy];
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
      v9 = [objc_alloc(MEMORY[0x277CD93D0]) initWithURL:lCopy];
      [self _suggestedContentSizeForPDF:v9];
      v5 = v10;
      v6 = v11;
    }

    else if ([v8 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v12 = CGImageSourceCreateWithURL(lCopy, 0);
      if (v12)
      {
        v13 = v12;
        [self _suggestedContentSizeForImageSource:v12];
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

+ (CGSize)suggestedContentSizeForData:(id)data
{
  dataCopy = data;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (dataCopy)
  {
    v7 = [MUImageDownsamplingUtilities _sourceContentType:dataCopy];
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
      v9 = [objc_alloc(MEMORY[0x277CD93D0]) initWithData:dataCopy];
      [self _suggestedContentSizeForPDF:v9];
      v5 = v10;
      v6 = v11;
    }

    else if ([v8 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v12 = CGImageSourceCreateWithData(dataCopy, 0);
      if (v12)
      {
        v13 = v12;
        [self _suggestedContentSizeForImageSource:v12];
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

+ (CGSize)_suggestedContentSizeForImageSource:(CGImageSource *)source
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
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

+ (CGSize)_suggestedContentSizeForPDF:(id)f
{
  fCopy = f;
  v4 = fCopy;
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (fCopy && [fCopy pageCount])
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

- (void)loadWithData:(id)data archivedModelData:(id)modelData placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MarkupViewController *)self setData:data withArchivedModelData:modelData placeholderImage:image];
  [(MUQuickLookContentEditorViewController *)self _handleLoadingWithCompletion:handlerCopy];
}

- (void)loadWithURL:(id)l archivedModelData:(id)data placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MarkupViewController *)self setFileURL:l withArchivedModelData:data placeholderImage:image];
  [(MUQuickLookContentEditorViewController *)self _handleLoadingWithCompletion:handlerCopy];
}

- (void)_handleLoadingWithCompletion:(id)completion
{
  v10[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
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
    completionCopy[2](completionCopy, v6);
  }
}

- (BOOL)_canShowWhileLocked
{
  delegate = [(MarkupViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate editorCanShowWhileLocked:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v13 traitCollectionDidChange:changeCopy];
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    traitCollection = [(MUQuickLookContentEditorViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    if (horizontalSizeClass == [changeCopy horizontalSizeClass])
    {
      traitCollection2 = [(MUQuickLookContentEditorViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
      userInterfaceIdiom2 = [changeCopy userInterfaceIdiom];

      if (userInterfaceIdiom == userInterfaceIdiom2)
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
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];
    traitCollection3 = [(MUQuickLookContentEditorViewController *)self traitCollection];
    horizontalSizeClass3 = [traitCollection3 horizontalSizeClass];

    if (horizontalSizeClass2 != horizontalSizeClass3 && -[MarkupViewController thumbnailViewStyle](self, "thumbnailViewStyle") == 1 && ![changeCopy horizontalSizeClass])
    {
      [(MUQuickLookContentEditorViewController *)self updateThumbnailView];
    }
  }

LABEL_12:
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100__MUQuickLookContentEditorViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_27986E2F0;
    v9[4] = self;
    v10 = collectionCopy;
    [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  }

  v8.receiver = self;
  v8.super_class = MUQuickLookContentEditorViewController;
  [(MUQuickLookContentEditorViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (void)PDFView:(id)view allowsFormFillingMode:(BOOL)mode forPage:(id)page
{
  modeCopy = mode;
  if ([(MUQuickLookContentEditorViewController *)self delegateRespondsToDetectedFormInContent:view]&& modeCopy && ![(MUQuickLookContentEditorViewController *)self formDetectedInDocument])
  {
    [(MUQuickLookContentEditorViewController *)self setFormDetectedInDocument:1];
    delegate = [(MarkupViewController *)self delegate];
    [delegate editor:self detectedFormInContent:1];
  }
}

- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type
{
  v5 = type == 0;
  undoManager = [(MarkupViewController *)self undoManager];
  actionsNotEnablingMarkup = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  undoActionName = [undoManager undoActionName];
  v8 = [actionsNotEnablingMarkup containsObject:undoActionName];

  actionsNotEnablingMarkup2 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  redoActionName = [undoManager redoActionName];
  v11 = [actionsNotEnablingMarkup2 containsObject:redoActionName];

  [(MUQuickLookContentEditorViewController *)self _detectedEditEnablingMarkup:v5 & ((v8 | v11) ^ 1u)];
}

- (void)contentControllerDidUnlockDocument:(id)document
{
  delegate = [(MarkupViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 editorDidUnlockDocument:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setAnnotationEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 setAnnotationEditingEnabled:?];
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    if (enabledCopy)
    {
      [(MUQuickLookContentEditorViewController *)self flattenImageForAnalysis];
    }

    imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [imageAnalysisManager enableMarkupMode:enabledCopy];
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
  _hasPDFContent = [(MUQuickLookContentEditorViewController *)self _hasPDFContent];
  if (_hasPDFContent)
  {
    _pdfDocument = [(MarkupViewController *)self _pdfDocument];
    isLocked = [_pdfDocument isLocked];

    LOBYTE(_hasPDFContent) = isLocked;
  }

  return _hasPDFContent;
}

- (BOOL)canEncryptDocument
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    _pdfDocument = [(MarkupViewController *)self _pdfDocument];
    v4 = _pdfDocument;
    if (_pdfDocument)
    {
      v5 = [_pdfDocument isEncrypted] ^ 1;
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

- (void)setPresentationMode:(unint64_t)mode
{
  if (![(MUQuickLookContentEditorViewController *)self didAppearOnce]&& !mode && self->_presentationMode == 1)
  {
    [(MUQuickLookContentEditorViewController *)self setDidAppearOnce:1];
  }

  self->_presentationMode = mode;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {

    [(MUQuickLookContentEditorViewController *)self _setPresentationModeForPDFContent:mode];
  }

  else if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {

    [(MUQuickLookContentEditorViewController *)self _setPresentationModeForImageContent:mode];
  }
}

- (void)flattenImageForAnalysis
{
  objc_initWeak(&location, self);
  _editedImageAnalysisQueue = [(MUQuickLookContentEditorViewController *)self _editedImageAnalysisQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MUQuickLookContentEditorViewController_flattenImageForAnalysis__block_invoke;
  v4[3] = &unk_27986E318;
  objc_copyWeak(&v5, &location);
  dispatch_async(_editedImageAnalysisQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__MUQuickLookContentEditorViewController_flattenImageForAnalysis__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flattenImageForAnalysis];
}

- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated
{
  animatedCopy = animated;
  screenCopy = screen;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [imageAnalysisManager updateForFullScreen:screenCopy animated:animatedCopy];

    [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
  }

  else if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    if (animatedCopy)
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

- (void)shouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated
{
  animatedCopy = animated;
  overlaysCopy = overlays;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
    [imageAnalysisManager shouldHideInteraction:overlaysCopy animated:animatedCopy];
  }
}

- (UIFindInteraction)findInteraction
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    _pdfView = [(MarkupViewController *)self _pdfView];
    findInteraction = [_pdfView findInteraction];
  }

  else
  {
    findInteraction = 0;
  }

  return findInteraction;
}

- (BOOL)acceptSingleTouch:(id)touch
{
  touchCopy = touch;
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    v5 = [(MUQuickLookContentEditorViewController *)self _imageAnalysisOverlayAcceptSingleTouch:touchCopy];
  }

  else
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    v5 = [contentViewController acceptSingleTouch:touchCopy];
  }

  return v5;
}

- (void)updateThumbnailView
{
  traitCollection = [(MUQuickLookContentEditorViewController *)self traitCollection];
  [(MUQuickLookContentEditorViewController *)self _updateThumbnailViewWithTraitCollection:traitCollection];
}

- (BOOL)isInteractionActive
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  isInteractionActive = [imageAnalysisManager isInteractionActive];

  return isInteractionActive;
}

- (BOOL)hasResultsForVisualSearch
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  hasResultsForVisualSearch = [imageAnalysisManager hasResultsForVisualSearch];

  return hasResultsForVisualSearch;
}

- (void)infoButtonTapped
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager infoButtonTapped];
}

- (BOOL)canEditPDF
{
  _hasPDFContent = [(MUQuickLookContentEditorViewController *)self _hasPDFContent];
  if (_hasPDFContent)
  {

    LOBYTE(_hasPDFContent) = [(MUQuickLookContentEditorViewController *)self canEditContent];
  }

  return _hasPDFContent;
}

- (BOOL)canEditContent
{
  if (![(MUQuickLookContentEditorViewController *)self _presentationModeAllowsEditing])
  {
    return 0;
  }

  contentViewController = [(MarkupViewController *)self contentViewController];
  if ([contentViewController canEditContent])
  {
    allowsEditing = [(MUQuickLookContentEditorViewController *)self allowsEditing];
  }

  else
  {
    allowsEditing = 0;
  }

  return allowsEditing;
}

- (BOOL)allowsEditing
{
  delegate = [(MarkupViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate editorShouldAllowEditingContents:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)getMenuElementsForPage:(id)page
{
  pageCopy = page;
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
    v10 = pageCopy;
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

    _pdfDocument = [(MarkupViewController *)self _pdfDocument];
    pageCount = [_pdfDocument pageCount];

    if (pageCount >= 2)
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

- (void)convertToPDFAndWrite:(id)write completionHandler:(id)handler
{
  writeCopy = write;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  sharedSerialPagesEditionQueue = [(MUQuickLookContentEditorViewController *)self sharedSerialPagesEditionQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__MUQuickLookContentEditorViewController_convertToPDFAndWrite_completionHandler___block_invoke;
  v11[3] = &unk_27986E368;
  objc_copyWeak(&v14, &location);
  v12 = writeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = writeCopy;
  dispatch_async(sharedSerialPagesEditionQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __81__MUQuickLookContentEditorViewController_convertToPDFAndWrite_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _convertToPDFAndWrite:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  scanPDFHandler = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];
  if (scanPDFHandler)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController" code:3 userInfo:0];
    (scanPDFHandler)[2](scanPDFHandler, 0, v5);
    [(MUQuickLookContentEditorViewController *)self setScanPDFHandler:0];
  }

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__MUQuickLookContentEditorViewController_documentCameraViewController_didFinishWithScan___block_invoke;
  v9[3] = &unk_27986E3E0;
  objc_copyWeak(&v12, &location);
  v8 = controllerCopy;
  v10 = v8;
  selfCopy = self;
  [(MUQuickLookContentEditorViewController *)self convertToPDFAndWrite:scanCopy completionHandler:v9];

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

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  NSLog(&cfstr_InsertingPdfPa.isa, self, errorCopy);
  scanPDFHandler = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];
  v8 = scanPDFHandler;
  if (scanPDFHandler)
  {
    (*(scanPDFHandler + 16))(scanPDFHandler, 0, errorCopy);
    [(MUQuickLookContentEditorViewController *)self setScanPDFHandler:0];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
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

- (id)pdfPageOptionsForImageRef:(CGImage *)ref withPreviousPage:(id)page
{
  v13[2] = *MEMORY[0x277D85DE8];
  [page boundsForBox:0];
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

- (void)insertPages:(id)pages atIndexes:(id)indexes inDocument:(id)document
{
  pagesCopy = pages;
  indexesCopy = indexes;
  documentCopy = document;
  v10 = [pagesCopy count];
  if (v10 == [indexesCopy count])
  {
    v11 = [indexesCopy count];
    v12 = pagesCopy;
    if (v11)
    {
      for (i = 0; i < v16; ++i)
      {
        v14 = [v12 objectAtIndexedSubscript:i];
        v15 = [indexesCopy objectAtIndexedSubscript:i];
        [documentCopy insertPage:v14 atIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];

        v16 = [indexesCopy count];
        v12 = pagesCopy;
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
    undoManager = [(MarkupViewController *)self undoManager];
    v23 = [undoManager prepareWithInvocationTarget:self];
    [v23 _deletePages:pagesCopy inDocument:documentCopy];

    undoManager2 = [(MarkupViewController *)self undoManager];
    [undoManager2 setActionName:v21];
  }

  else
  {
    NSLog(&cfstr_NumberOfPagesT.isa);
  }
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  lsCopy = ls;
  v5 = [lsCopy description];
  NSLog(&cfstr_Importing.isa, v5);

  importHandler = [(MUQuickLookContentEditorViewController *)self importHandler];
  v7 = importHandler;
  if (importHandler)
  {
    (*(importHandler + 16))(importHandler, lsCopy, 0);
    [(MUQuickLookContentEditorViewController *)self setImportHandler:0];
  }
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v9[1] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DocumentPickin.isa, a2, cancelled);
  importHandler = [(MUQuickLookContentEditorViewController *)self importHandler];
  if (importHandler)
  {
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    v9[0] = @"Document picker was cancelled.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.MarkupUI.MUQuickLookContentEditorViewController" code:2 userInfo:v6];

    (importHandler)[2](importHandler, 0, v7);
    [(MUQuickLookContentEditorViewController *)self setImportHandler:0];
  }
}

- (void)find:(id)find
{
  findCopy = find;
  contentViewController = [(MarkupViewController *)self contentViewController];
  v5 = [contentViewController canPerformAction:sel_find_ withSender:findCopy];

  if (v5)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 find:findCopy];
  }
}

- (void)findPrevious:(id)previous
{
  previousCopy = previous;
  contentViewController = [(MarkupViewController *)self contentViewController];
  v5 = [contentViewController canPerformAction:sel_findPrevious_ withSender:previousCopy];

  if (v5)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 findPrevious:previousCopy];
  }
}

- (void)findNext:(id)next
{
  nextCopy = next;
  contentViewController = [(MarkupViewController *)self contentViewController];
  v5 = [contentViewController canPerformAction:sel_findNext_ withSender:nextCopy];

  if (v5)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 findNext:nextCopy];
  }
}

- (BOOL)isVisualSearchEnabled
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  isVisualSearchEnabled = [imageAnalysisManager isVisualSearchEnabled];

  return isVisualSearchEnabled;
}

- (NSString)filledInfoButtonGlyphName
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  filledInfoButtonGlyphName = [imageAnalysisManager filledInfoButtonGlyphName];

  return filledInfoButtonGlyphName;
}

- (NSString)infoButtonGlyphName
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  infoButtonGlyphName = [imageAnalysisManager infoButtonGlyphName];

  return infoButtonGlyphName;
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
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager stopImageAnalysis];
}

- (BOOL)shouldHighlightTextAndDDAfterNextAnalysis
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  shouldHighlightTextAndDDAfterNextAnalysis = [imageAnalysisManager shouldHighlightTextAndDDAfterNextAnalysis];

  return shouldHighlightTextAndDDAfterNextAnalysis;
}

- (void)setShouldHighlightTextAndDDAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager setShouldHighlightTextAndDDAfterNextAnalysis:analysisCopy];
}

- (BOOL)shouldEnterVisualSearchAfterNextAnalysis
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  shouldEnterVisualSearchAfterNextAnalysis = [imageAnalysisManager shouldEnterVisualSearchAfterNextAnalysis];

  return shouldEnterVisualSearchAfterNextAnalysis;
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager setShouldEnterVisualSearchAfterNextAnalysis:analysisCopy];
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  shouldUpliftSubjectAfterNextAnalysis = [imageAnalysisManager shouldUpliftSubjectAfterNextAnalysis];

  return shouldUpliftSubjectAfterNextAnalysis;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager setShouldUpliftSubjectAfterNextAnalysis:analysisCopy];
}

- (UIImage)imageForAnalysis
{
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent])
  {
    latestImageForAnalysis = [(MUQuickLookContentEditorViewController *)self latestImageForAnalysis];
    v4 = latestImageForAnalysis;
    if (latestImageForAnalysis)
    {
      imageForAnalysis = latestImageForAnalysis;
    }

    else
    {
      contentViewController = [(MarkupViewController *)self contentViewController];
      imageForAnalysis = [contentViewController imageForAnalysis];
    }
  }

  else
  {
    imageForAnalysis = 0;
  }

  return imageForAnalysis;
}

- (NSDictionary)clientPreviewOptions
{
  delegate = [(MarkupViewController *)self delegate];
  clientPreviewOptions = [delegate clientPreviewOptions];

  return clientPreviewOptions;
}

- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(MarkupViewController *)self delegate];
  [delegate editor:self needsToUpdateChromeWithAnimation:animationCopy];
}

- (void)imageAnalysisInteractionWillPresentVisualSearchController
{
  delegate = [(MarkupViewController *)self delegate];
  [delegate editor:self willPresentViewControllerWithAnimation:0];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController
{
  delegate = [(MarkupViewController *)self delegate];
  [delegate editor:self didDismissViewControllerWithAnimation:0];
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

- (void)_adjustImageInteractionForScrollEvent:(id)event
{
  eventCopy = event;
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  [imageAnalysisManager adjustImageInteractionForScrollView:eventCopy];

  [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
}

- (void)_setupAndStartImageAnalysisIfNeeded
{
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  v10 = imageAnalysisManager;
  if (imageAnalysisManager)
  {
    if ([imageAnalysisManager hasAnalysis])
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
  view = [(MUQuickLookContentEditorViewController *)self view];
  v7 = [(MUImageAnalysisManager *)v5 initWithDelegate:self presentingView:view];

  [(MUQuickLookContentEditorViewController *)self setImageAnalysisManager:v7];
  contentViewController = [(MarkupViewController *)self contentViewController];
  v9 = contentViewController;
  if (contentViewController)
  {
    [contentViewController setScrollViewDelegate:self];
  }

  [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];

  v4 = v7;
LABEL_10:
}

- (BOOL)_imageAnalysisOverlayAcceptSingleTouch:(id)touch
{
  touchCopy = touch;
  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  imageAnalysisView = [(MUQuickLookContentEditorViewController *)self imageAnalysisView];
  LOBYTE(v7) = 0;
  if (imageAnalysisView && imageAnalysisManager)
  {
    [touchCopy locationInView:imageAnalysisView];
    v9 = v8;
    v11 = v10;
    if ([touchCopy _isPointerTouch] && objc_msgSend(imageAnalysisManager, "isTextSelectionEnabled") && (objc_msgSend(imageAnalysisManager, "textExistsAtPoint:", v9, v11) & 1) != 0 || (objc_msgSend(imageAnalysisManager, "dataDetectorExistsAtPoint:", v9, v11) & 1) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = [imageAnalysisManager visualSearchExistsAtPoint:{v9, v11}];
    }

    v7 = v12 | [imageAnalysisManager hasActiveTextSelection];
  }

  return v7;
}

- (unint64_t)_insertPagesFromProvidedPDFDocument:(id)document toPDFDocument:(id)fDocument atPageIndex:(unint64_t)index
{
  documentCopy = document;
  fDocumentCopy = fDocument;
  selfCopy = self;
  _pdfView = [(MarkupViewController *)self _pdfView];
  displayBox = [_pdfView displayBox];
  pageCount = [documentCopy pageCount];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:pageCount];
  if (pageCount)
  {
    for (i = 0; i != pageCount; ++i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [documentCopy pageAtIndex:i];
      v16 = [v15 copy];

      [v16 boundsForBox:1];
      [v16 setBounds:displayBox forBox:?];
      [fDocumentCopy insertPage:v16 atIndex:index + i];
      [v12 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"Insert from File" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)selfCopy _registerActionNotEnablingMarkup:v18];

  undoManager = [(MarkupViewController *)selfCopy undoManager];
  v20 = [undoManager prepareWithInvocationTarget:selfCopy];
  [v20 _deletePages:v12 inDocument:fDocumentCopy];

  undoManager2 = [(MarkupViewController *)selfCopy undoManager];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"Insert from File" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [undoManager2 setActionName:v23];

  v24 = [v12 count];
  return v24;
}

- (void)_insertPagesFromFileURLs:(id)ls afterPage:(id)page
{
  lsCopy = ls;
  pageCopy = page;
  document = [pageCopy document];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [document indexForPage:pageCopy];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_CouldNotFindIn.isa);
  }

  else
  {
    sharedSerialPagesEditionQueue = [(MUQuickLookContentEditorViewController *)self sharedSerialPagesEditionQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__MUQuickLookContentEditorViewController__insertPagesFromFileURLs_afterPage___block_invoke;
    v10[3] = &unk_27986E450;
    v11 = lsCopy;
    selfCopy = self;
    v14 = &v15;
    v12 = document;
    dispatch_async(sharedSerialPagesEditionQueue, v10);
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

- (void)_insertFileAtURL:(id)l type:(id)type afterPage:(id)page completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  pageCopy = page;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  supportedUTTypes = [(MUQuickLookContentEditorViewController *)self supportedUTTypes];
  v15 = [supportedUTTypes countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(supportedUTTypes);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([typeCopy conformsToType:v19])
        {
          v21 = [typeCopy description];
          NSLog(&cfstr_InsertingEleme.isa, v21);

          if (v19 == *MEMORY[0x277CE1E08])
          {
            [(MUQuickLookContentEditorViewController *)self _insertPDFDocumentWithURL:lCopy afterPage:pageCopy completionHandler:handlerCopy];
          }

          else if (v19 == *MEMORY[0x277CE1DB0])
          {
            [(MUQuickLookContentEditorViewController *)self _insertImageWithURL:lCopy afterPage:pageCopy completionHandler:handlerCopy];
          }

          else
          {
            handlerCopy[2](handlerCopy, 0);
          }

          goto LABEL_16;
        }
      }

      v16 = [supportedUTTypes countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = [typeCopy description];
  NSLog(&cfstr_CouldNotInsert.isa, v20);

  handlerCopy[2](handlerCopy, 0);
LABEL_16:
}

- (void)_insertPDFDocumentWithURL:(id)l afterPage:(id)page completionHandler:(id)handler
{
  pageCopy = page;
  handlerCopy = handler;
  v10 = MEMORY[0x277CD93D0];
  lCopy = l;
  v12 = [[v10 alloc] initWithURL:lCopy];

  if (v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__MUQuickLookContentEditorViewController__insertPDFDocumentWithURL_afterPage_completionHandler___block_invoke;
    v13[3] = &unk_27986E478;
    v14 = pageCopy;
    v17 = handlerCopy;
    selfCopy = self;
    v16 = v12;
    dispatch_sync(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)_insertImageWithURL:(id)l afterPage:(id)page completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  pageCopy = page;
  document = [pageCopy document];
  v12 = [document indexForPage:pageCopy];

  v13 = CGImageSourceCreateWithURL(lCopy, 0);
  if (v13)
  {
    v14 = v13;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
    CFRelease(v14);
    if (ImageAtIndex)
    {
      v16 = v12 + 1;
      if ([document pageCount] && v16 <= objc_msgSend(document, "pageCount"))
      {
        if (v12 == -1)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12;
        }

        v19 = [document pageAtIndex:v18];
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
        v25 = document;
        v26 = handlerCopy;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      else
      {
        NSLog(&cfstr_PdfDocumentCou.isa, lCopy);
        (*(handlerCopy + 2))(handlerCopy, 0);
      }
    }

    else
    {
      NSLog(&cfstr_ImageToInsertC.isa);
      (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)_convertToPDFAndWrite:(id)write completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x277D85DE8];
  writeCopy = write;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CD93D0]);
  v9 = objc_autoreleasePoolPush();
  if ([writeCopy pageCount])
  {
    v37 = v9;
    v38 = handlerCopy;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v11;
      v14 = v10;
      v11 = [writeCopy imageOfPageAtIndex:v12];

      scanImageToPDFConversionHandler = [(MUQuickLookContentEditorViewController *)self scanImageToPDFConversionHandler];
      v10 = (scanImageToPDFConversionHandler)[2](scanImageToPDFConversionHandler, v11);

      if (v10)
      {
        [v8 insertPage:v10 atIndex:{objc_msgSend(v8, "pageCount")}];
      }

      else
      {
        pageCount = [writeCopy pageCount];
        v17 = [v11 debugDescription];
        NSLog(&cfstr_FailedToCreate.isa, v12, pageCount, v17);
      }

      ++v12;
    }

    while (v12 < [writeCopy pageCount]);

    v9 = v37;
    handlerCopy = v38;
  }

  objc_autoreleasePoolPop(v9);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v22 = [temporaryDirectory URLByAppendingPathComponent:uUIDString];

  path = [v22 path];
  LOBYTE(uUIDString) = [defaultManager fileExistsAtPath:path];

  if (uUIDString)
  {
    path2 = [v22 path];
    v40 = 0;
    [defaultManager removeItemAtPath:path2 error:&v40];
    v25 = v40;

    if (v25)
    {
      path3 = [v22 path];
      NSLog(&cfstr_FailedToRemove.isa, path3, v25);

LABEL_13:
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_18;
    }
  }

  path4 = [v22 path];
  v39 = 0;
  [defaultManager createDirectoryAtPath:path4 withIntermediateDirectories:1 attributes:0 error:&v39];
  v25 = v39;

  if (v25)
  {
    NSLog(&cfstr_FailedToCreate_0.isa, v25);
    goto LABEL_13;
  }

  v28 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  [mainBundle localizedStringForKey:@"Scanned Document" value:&stru_286962590 table:0];
  v31 = v30 = handlerCopy;
  v32 = [v28 stringWithFormat:@"%@.pdf", v31];

  handlerCopy = v30;
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

  (handlerCopy)[2](handlerCopy, v36);

LABEL_18:
}

- (void)_detectedEditEnablingMarkup:(BOOL)markup
{
  markupCopy = markup;
  formFillingEnabled = [(MarkupViewController *)self formFillingEnabled];
  delegate = [(MarkupViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 editorDidChangeContent:self enablingMarkup:markupCopy && !formFillingEnabled];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_loadSourceContentWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MUQuickLookContentEditorViewController *)self setFormDetectedInDocument:0];
  [(MUQuickLookContentEditorViewController *)self _resetOriginalDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__MUQuickLookContentEditorViewController__loadSourceContentWithCompletion___block_invoke;
  v7[3] = &unk_27986E4C8;
  v7[4] = self;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  v5 = completionCopy;
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6.receiver = self;
  v6.super_class = MUQuickLookContentEditorViewController;
  [(MarkupViewController *)&v6 setDelegate:delegateCopy];
  if (delegateCopy)
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

    _pdfView = [(MarkupViewController *)self _pdfView];
    delegate = [_pdfView delegate];
    [(PDFViewDelegatePrivate *)self->_pdfViewDelegateProxy setSecondDelegate:delegate];

    v7 = self->_pdfViewDelegateProxy;
    _pdfView2 = [(MarkupViewController *)self _pdfView];
    [_pdfView2 setDelegate:v7];
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
    secondDelegate = [(PDFViewDelegatePrivate *)pdfViewDelegateProxy secondDelegate];
    _pdfView = [(MarkupViewController *)self _pdfView];
    [_pdfView setDelegate:secondDelegate];
  }
}

- (void)_updateAnalysisButtonsContainerConstraints
{
  imageViewCombinedContentView = [(MarkupViewController *)self imageViewCombinedContentView];
  subviews = [imageViewCombinedContentView subviews];
  firstObject = [subviews firstObject];

  imageAnalysisManager = [(MUQuickLookContentEditorViewController *)self imageAnalysisManager];
  view = [(MUQuickLookContentEditorViewController *)self view];
  [imageAnalysisManager updateBottomRightContainerPositionForImageView:firstObject view:view];
}

- (void)_updateThumbnailViewWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent]&& [(MarkupViewController *)self thumbnailViewStyle]== 1)
  {
    _shouldShowMarkupOverlays = [(MUQuickLookContentEditorViewController *)self _shouldShowMarkupOverlays];
    fixedThumbnailView = [(MarkupViewController *)self fixedThumbnailView];
    v6 = _shouldShowMarkupOverlays && [collectionCopy horizontalSizeClass] == 2;
    [(MarkupViewController *)self setFixedThumbnailView:v6];
    if (fixedThumbnailView && ![(MarkupViewController *)self fixedThumbnailView])
    {
      contentViewController = [(MarkupViewController *)self contentViewController];
      [contentViewController setShouldShowThumbnailView:0];
    }

    if (_shouldShowMarkupOverlays)
    {
      contentViewController2 = [(MarkupViewController *)self contentViewController];
      v9 = ([contentViewController2 shouldShowThumbnailView] & 1) != 0 || -[MarkupViewController fixedThumbnailView](self, "fixedThumbnailView");
    }

    else
    {
      v9 = 0;
    }

    [(MarkupViewController *)self setShowThumbnailViewForMultipage:v9];
    delegate = [(MarkupViewController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) == 0)
    {
      [delegate editor:self needsScreenEdgePanGestureRecognition:{-[MarkupViewController showThumbnailViewForMultipage](self, "showThumbnailViewForMultipage")}];
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

- (void)_setPresentationModeForImageContent:(unint64_t)content
{
  if ([(MUQuickLookContentEditorViewController *)self _hasImageContent]&& _os_feature_enabled_impl())
  {
    if (+[MUImageAnalysisManager shouldStartImageAnalysisForPresentationMode:](MUImageAnalysisManager, "shouldStartImageAnalysisForPresentationMode:", content) && (-[MUQuickLookContentEditorViewController didAppearOnce](self, "didAppearOnce") || (-[MUQuickLookContentEditorViewController imageAnalysisManager](self, "imageAnalysisManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasAnalysis], v5, v6)))
    {

      [(MUQuickLookContentEditorViewController *)self _setupAndStartImageAnalysisIfNeeded];
    }

    else
    {

      [(MUQuickLookContentEditorViewController *)self _updateAnalysisButtonsContainerConstraints];
    }
  }
}

- (void)_setPresentationModeForPDFContent:(unint64_t)content
{
  if ([(MUQuickLookContentEditorViewController *)self _hasPDFContent])
  {
    _pdfView = [(MarkupViewController *)self _pdfView];
    layer = [_pdfView layer];
    [layer setAllowsGroupOpacity:0];

    if (content == 1)
    {
      [_pdfView setFindInteractionEnabled:0];
      [_pdfView usePageViewController:1 withViewOptions:0];
      [_pdfView setDisplayDirection:0];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [_pdfView setBackgroundColor:clearColor];
    }

    else if (!content)
    {
      documentScrollView = [_pdfView documentScrollView];
      [documentScrollView setKeyboardDismissMode:1];

      [(MarkupViewController *)self setForcesPDFViewTopAlignment:1];
      contentViewScrollView = [(MarkupViewController *)self contentViewScrollView];
      [contentViewScrollView setContentInsetAdjustmentBehavior:2];

      contentViewScrollView2 = [(MarkupViewController *)self contentViewScrollView];
      [contentViewScrollView2 _setIndicatorInsetAdjustmentBehavior:1];

      [_pdfView setFindInteractionEnabled:1];
    }

    [(MarkupViewController *)self setAllowsThumbnailViewPageReordering:[(MUQuickLookContentEditorViewController *)self canEditPDF]];
  }
}

- (void)_registerActionNotEnablingMarkup:(id)markup
{
  markupCopy = markup;
  actionsNotEnablingMarkup = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];

  if (!actionsNotEnablingMarkup)
  {
    v6 = objc_opt_new();
    [(MUQuickLookContentEditorViewController *)self setActionsNotEnablingMarkup:v6];
  }

  actionsNotEnablingMarkup2 = [(MUQuickLookContentEditorViewController *)self actionsNotEnablingMarkup];
  [actionsNotEnablingMarkup2 addObject:markupCopy];
}

- (void)_rotatePage:(id)page clockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  pageCopy = page;
  rotation = [pageCopy rotation];
  v7 = 90;
  if (clockwiseCopy)
  {
    v8 = @"Rotate Left";
  }

  else
  {
    v7 = -90;
    v8 = @"Rotate Right";
  }

  [pageCopy setRotation:rotation + v7];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];

  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v10];
  undoManager = [(MarkupViewController *)self undoManager];
  v12 = [undoManager prepareWithInvocationTarget:self];
  [v12 _rotatePage:pageCopy clockwise:!clockwiseCopy];

  undoManager2 = [(MarkupViewController *)self undoManager];
  [undoManager2 setActionName:v10];

  _pdfView = [(MarkupViewController *)self _pdfView];
  [_pdfView setAutoScales:{objc_msgSend(_pdfView, "autoScales")}];
}

- (void)_insertBlankPageAfterPage:(id)page
{
  pageCopy = page;
  document = [pageCopy document];
  v6 = [document indexForPage:pageCopy];
  v7 = objc_alloc_init(MEMORY[0x277CD93E0]);
  [pageCopy boundsForBox:1];
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

- (void)_insertPageFromFileAfterPage:(id)page
{
  pageCopy = page;
  [(MUQuickLookContentEditorViewController *)self setAnnotationEditingEnabled:0];
  delegate = [(MarkupViewController *)self delegate];
  [delegate editor:self willPresentViewControllerWithAnimation:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__MUQuickLookContentEditorViewController__insertPageFromFileAfterPage___block_invoke;
  v7[3] = &unk_27986E518;
  v7[4] = self;
  v8 = pageCopy;
  v6 = pageCopy;
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

- (void)_insertPage:(id)page atIndex:(unint64_t)index
{
  pageCopy = page;
  _pdfDocument = [(MarkupViewController *)self _pdfDocument];
  [_pdfDocument insertPage:pageCopy atIndex:index];
}

- (void)_insertBlankPage:(id)page atIndex:(unint64_t)index
{
  pageCopy = page;
  [(MUQuickLookContentEditorViewController *)self _insertPage:pageCopy atIndex:index];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Insert Blank Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v8];

  undoManager = [(MarkupViewController *)self undoManager];
  v10 = [undoManager prepareWithInvocationTarget:self];
  [v10 _deletePage:pageCopy];

  undoManager2 = [(MarkupViewController *)self undoManager];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Insert Blank Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [undoManager2 setActionName:v12];
}

- (void)_insertDeletedPage:(id)page atIndex:(unint64_t)index
{
  pageCopy = page;
  [(MUQuickLookContentEditorViewController *)self _insertPage:pageCopy atIndex:index];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Insert Deleted Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [(MUQuickLookContentEditorViewController *)self _registerActionNotEnablingMarkup:v8];

  undoManager = [(MarkupViewController *)self undoManager];
  v10 = [undoManager prepareWithInvocationTarget:self];
  [v10 _deletePage:pageCopy];

  undoManager2 = [(MarkupViewController *)self undoManager];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Insert Deleted Page" value:&stru_286962590 table:@"MUQuickLookContentEditorViewController"];
  [undoManager2 setActionName:v12];
}

- (void)_deletePage:(id)page
{
  v9 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v4 = MEMORY[0x277CBEA60];
  pageCopy2 = page;
  v6 = [v4 arrayWithObjects:&pageCopy count:1];

  v7 = [(MarkupViewController *)self _pdfDocument:pageCopy];
  [(MUQuickLookContentEditorViewController *)self _deletePages:v6 inDocument:v7];
}

- (void)_deletePages:(id)pages inDocument:(id)document
{
  pagesCopy = pages;
  documentCopy = document;
  _pdfView = [(MarkupViewController *)self _pdfView];
  currentPage = [_pdfView currentPage];
  v10 = [documentCopy indexForPage:currentPage];

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pagesCopy, "count")}];
  reverseObjectEnumerator = [pagesCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__MUQuickLookContentEditorViewController__deletePages_inDocument___block_invoke;
  v29[3] = &unk_27986E540;
  v14 = documentCopy;
  v30 = v14;
  v15 = v11;
  v31 = v15;
  v28 = allObjects;
  [allObjects enumerateObjectsUsingBlock:v29];
  if (v14 && [v14 pageCount] && v10 >= objc_msgSend(v14, "pageCount"))
  {
    v16 = [v14 pageAtIndex:{objc_msgSend(v14, "pageCount") - 1}];
    [_pdfView goToPage:v16];
  }

  v17 = [pagesCopy count];
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
  undoManager = [(MarkupViewController *)self undoManager];
  v23 = [undoManager prepareWithInvocationTarget:self];
  reverseObjectEnumerator2 = [v15 reverseObjectEnumerator];
  [reverseObjectEnumerator2 allObjects];
  v26 = v25 = _pdfView;
  [v23 insertPages:pagesCopy atIndexes:v26 inDocument:v14];

  undoManager2 = [(MarkupViewController *)self undoManager];
  [undoManager2 setActionName:v21];
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

- (void)_presentDocumentPicker:(id)picker
{
  pickerCopy = picker;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MUQuickLookContentEditorViewController__presentDocumentPicker___block_invoke;
  v6[3] = &unk_27986E4C8;
  v6[4] = self;
  v7 = pickerCopy;
  v5 = pickerCopy;
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

- (void)_presentDocumentScannerAfterPage:(id)page
{
  pageCopy = page;
  scanPDFHandler = [(MUQuickLookContentEditorViewController *)self scanPDFHandler];

  if (scanPDFHandler)
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
    v6 = pageCopy;
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
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasImageContent
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end