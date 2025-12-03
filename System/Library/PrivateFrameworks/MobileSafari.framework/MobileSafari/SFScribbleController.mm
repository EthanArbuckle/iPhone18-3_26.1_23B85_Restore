@interface SFScribbleController
- (BOOL)isPrivateBrowsing;
- (CGImage)_imageForScribbleAnimationWithElementFrame:(CGRect)frame;
- (CGPoint)_offsetForObscuredInsets;
- (CGRect)_frameForElementFrame:(CGRect)frame inCoordinateSpace:(id)space;
- (CGRect)_frameForElementFrame:(CGRect)frame inCoordinateSpace:(id)space withOutset:(double)outset;
- (NSArray)normalBrowsingUserContentControllers;
- (SFScribbleController)initWithWebView:(id)view delegate:(id)delegate;
- (SFScribbleControllerDelegate)delegate;
- (SFURLFieldOverlayConfiguration)urlFieldOverlayConfiguration;
- (SFURLFieldOverlayConfiguration)urlFieldOverlayNarrowConfiguration;
- (WBSScribbleQuirksManager)scribbleQuirksManager;
- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager;
- (WKWebView)webView;
- (id)_cancelActionForURLFieldOverlay;
- (id)_doneAction;
- (id)_urlFieldOverlayText;
- (void)_deselectSelectedElement;
- (void)_endScribblingAndSaveChanges:(BOOL)changes;
- (void)_hideSelectedElement;
- (void)_performPendingSelectionRequestIfNeeded;
- (void)_runScribbleAnimationInFrame:(CGRect)frame;
- (void)_selectionDidMoveToLocation:(CGPoint)location;
- (void)_setCommonPropertiesToConfiguration:(id)configuration;
- (void)_setSelectedElement:(id)element;
- (void)_startScribbling;
- (void)clearEdits;
- (void)invalidate;
- (void)openFeedbackAppForScribbleReportIssueCategory:(int64_t)category;
- (void)reloadData;
- (void)scribbleController:(id)controller didUpdateSelectedElement:(id)element withError:(id)error;
- (void)scribbleControllerDidUpdateHiddenElementCount:(id)count;
- (void)startScribbling;
- (void)updateOverlayInScrollView:(id)view;
- (void)updateUserDefinedContentBlockerWithHost:(id)host;
@end

@implementation SFScribbleController

- (SFScribbleController)initWithWebView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = SFScribbleController;
  v8 = [(SFScribbleController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E69C9820]) initWithWebView:viewCopy];
    elementController = v9->_elementController;
    v9->_elementController = v10;

    [(WBSScribbleController *)v9->_elementController setDelegate:v9];
    v12 = objc_alloc_init(SFScribbleOverlay);
    overlay = v9->_overlay;
    v9->_overlay = v12;

    objc_storeWeak(&v9->_webView, viewCopy);
    objc_initWeak(&location, v9);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__SFScribbleController_initWithWebView_delegate___block_invoke;
    v20[3] = &unk_1E721FD08;
    objc_copyWeak(&v21, &location);
    [(SFScribbleOverlay *)v9->_overlay setSelectionHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__SFScribbleController_initWithWebView_delegate___block_invoke_2;
    v18[3] = &unk_1E721BF08;
    objc_copyWeak(&v19, &location);
    [(SFScribbleOverlay *)v9->_overlay setHideSelectedElementHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__SFScribbleController_initWithWebView_delegate___block_invoke_3;
    v16[3] = &unk_1E721BF08;
    objc_copyWeak(&v17, &location);
    [(SFScribbleOverlay *)v9->_overlay setDeselectionHandler:v16];
    v14 = v9;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __49__SFScribbleController_initWithWebView_delegate___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectionDidMoveToLocation:{a2, a3}];
}

void __49__SFScribbleController_initWithWebView_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideSelectedElement];
}

void __49__SFScribbleController_initWithWebView_delegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deselectSelectedElement];
}

- (CGImage)_imageForScribbleAnimationWithElementFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [(SFScribbleController *)self _frameForElementFrame:WeakRetained inCoordinateSpace:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [WeakRetained safari_snapshotImageFromIOSurfaceInRect:?];
  v18 = MEMORY[0x1E69C9828];
  cGImage = [v17 CGImage];
  [WeakRetained bounds];
  v21 = v20;
  v23 = v22;
  traitCollection = [WeakRetained traitCollection];
  [traitCollection displayScale];
  v26 = [v18 imageForScribbleEffectWithElementSnapshot:cGImage elementFrame:v10 webViewSize:v12 webViewScale:{v14, v16, v21, v23, v25}];

  return v26;
}

- (void)_runScribbleAnimationInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (WeakRetained)
  {
    height = [(SFScribbleController *)self _imageForScribbleAnimationWithElementFrame:x, y, width, height];
    v10 = objc_alloc(MEMORY[0x1E69C9828]);
    [WeakRetained bounds];
    [WeakRetained convertRect:self->_overlay toView:?];
    v11 = [v10 initWithImage:height frame:?];
    CGImageRelease(height);
    window = [(SFScribbleOverlay *)self->_overlay window];

    if (window)
    {
      [(SFScribbleOverlay *)self->_overlay insertSubview:v11 atIndex:0];
    }

    else
    {
      [WeakRetained addSubview:v11];
    }

    objc_initWeak(&location, self);
    [(WBSScribbleController *)self->_elementController setElementSelectionEnabled:0];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __53__SFScribbleController__runScribbleAnimationInFrame___block_invoke;
    v16 = &unk_1E721BF08;
    objc_copyWeak(&v17, &location);
    [v11 startEffectWithCompletion:&v13];
    [MEMORY[0x1E69C9828] prewarm];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __53__SFScribbleController__runScribbleAnimationInFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] setElementSelectionEnabled:1];
    WeakRetained = v2;
  }
}

- (void)_endScribblingAndSaveChanges:(BOOL)changes
{
  changesCopy = changes;
  if ([(WBSScribbleController *)self->_elementController isScribbling])
  {
    if (!self->_userInitiatedScribblingDisabled)
    {
      pendingSelectionLocation = self->_pendingSelectionLocation;
      self->_pendingSelectionLocation = 0;

      overlay = self->_overlay;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__SFScribbleController__endScribblingAndSaveChanges___block_invoke;
      v8[3] = &unk_1E721B360;
      v8[4] = self;
      [(SFScribbleOverlay *)overlay endSelectionWithCompletion:v8];
      [(WBSScribbleController *)self->_elementController endScribblingAndSaveChanges:changesCopy];
      [MEMORY[0x1E69C9828] discardPrewarmedContent];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sfScribbleControllerDidEndScribbling:self];
    }
  }
}

- (void)startScribbling
{
  if (([(WBSScribbleController *)self->_elementController isScribbling]& 1) == 0 && !self->_userInitiatedScribblingDisabled)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [safari_browserDefaults BOOLForKey:@"didShowDistractionControlEducationalAlertKey"];

    if (v4)
    {

      [(SFScribbleController *)self _startScribbling];
    }

    else
    {
      safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [safari_browserDefaults2 setBool:1 forKey:@"didShowDistractionControlEducationalAlertKey"];

      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69DC650];
      v7 = _WBSLocalizedString();
      v8 = _WBSLocalizedString();
      v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

      v10 = MEMORY[0x1E69DC648];
      v11 = _WBSLocalizedString();
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __39__SFScribbleController_startScribbling__block_invoke;
      v18 = &unk_1E721FD30;
      objc_copyWeak(&v19, &location);
      v12 = [v10 actionWithTitle:v11 style:0 handler:&v15];
      [v9 addAction:{v12, v15, v16, v17, v18}];

      view = [v9 view];
      [view setAccessibilityIdentifier:@"DistractionControlEducationalAlert"];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sfScribbleController:self presentAlert:v9];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __39__SFScribbleController_startScribbling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startScribbling];
    WeakRetained = v2;
  }
}

- (void)_startScribbling
{
  if (([(WBSScribbleController *)self->_elementController isScribbling]& 1) == 0 && !self->_userInitiatedScribblingDisabled)
  {
    objc_initWeak(&location, self);
    elementController = self->_elementController;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__SFScribbleController__startScribbling__block_invoke;
    v4[3] = &unk_1E721FD58;
    objc_copyWeak(&v5, &location);
    [(WBSScribbleController *)elementController startScribblingWithCompletionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __40__SFScribbleController__startScribbling__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v3 = objc_loadWeakRetained(WeakRetained + 4);
      v4 = objc_loadWeakRetained(v7 + 6);
      v5 = [v4 scrollView];

      v6 = v7[5];
      [v5 bounds];
      [v5 convertRect:v5 fromView:?];
      [v6 setFrame:?];
      [v6 setAutoresizingMask:18];
      [v5 addSubview:v6];

      [MEMORY[0x1E69C9828] prewarm];
      [v3 sfScribbleControllerDidStartScribbling:v7];

      WeakRetained = v7;
    }
  }
}

- (void)updateOverlayInScrollView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [viewCopy convertRect:viewCopy fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(SFScribbleOverlay *)self->_overlay setFrame:v6, v8, v10, v12];
  overlay = self->_overlay;

  [(SFScribbleOverlay *)overlay endSelection];
}

- (void)reloadData
{
  if ([(WBSScribbleController *)self->_elementController isScribbling])
  {
    [(SFScribbleController *)self _endScribblingAndSaveChanges:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v3 = [WeakRetained URL];
  host = [v3 host];
  [(SFScribbleController *)self updateUserDefinedContentBlockerWithHost:host];
}

- (void)clearEdits
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sfScribbleControllerDidEndScribbling:self];
  if ([(SFScribbleController *)self hiddenElementCount]> 1)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC650];
    v5 = _WBSLocalizedString();
    v6 = [v4 alertControllerWithTitle:0 message:v5 preferredStyle:1];

    v7 = MEMORY[0x1E69DC648];
    v8 = _WBSLocalizedString();
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __34__SFScribbleController_clearEdits__block_invoke;
    v16 = &unk_1E721FD30;
    objc_copyWeak(&v17, &location);
    v9 = [v7 actionWithTitle:v8 style:2 handler:&v13];
    [v6 addAction:{v9, v13, v14, v15, v16}];

    v10 = MEMORY[0x1E69DC648];
    v11 = _WBSLocalizedString();
    v12 = [v10 actionWithTitle:v11 style:1 handler:0];
    [v6 addAction:v12];

    [WeakRetained sfScribbleController:self presentAlert:v6];
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  else
  {
    [(WBSScribbleController *)self->_elementController clearAllEdits];
  }
}

void __34__SFScribbleController_clearEdits__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] clearAllEdits];
    WeakRetained = v2;
  }
}

- (void)_hideSelectedElement
{
  [(SFScribbleOverlay *)self->_overlay endSelection];
  selectedScribbleElement = [(WBSScribbleController *)self->_elementController selectedScribbleElement];

  if (selectedScribbleElement)
  {
    selectedScribbleElement2 = [(WBSScribbleController *)self->_elementController selectedScribbleElement];
    [selectedScribbleElement2 geometry];
    [(SFScribbleController *)self _runScribbleAnimationInFrame:?];

    elementController = self->_elementController;

    [(WBSScribbleController *)elementController hideSelectedElement];
  }
}

- (void)_deselectSelectedElement
{
  pendingSelectionLocation = self->_pendingSelectionLocation;
  self->_pendingSelectionLocation = 0;

  elementController = self->_elementController;

  [(WBSScribbleController *)elementController deselectSelectedElement];
}

- (BOOL)isPrivateBrowsing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isPrivateBrowsing = [WeakRetained isPrivateBrowsing];

  return isPrivateBrowsing;
}

- (NSArray)normalBrowsingUserContentControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  normalBrowsingUserContentControllers = [WeakRetained normalBrowsingUserContentControllers];

  return normalBrowsingUserContentControllers;
}

- (WBSScribbleQuirksManager)scribbleQuirksManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  scribbleQuirksManager = [WeakRetained scribbleQuirksManager];

  return scribbleQuirksManager;
}

- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained isPrivateBrowsing])
  {
    [WeakRetained privateBrowsingUserDefinedContentBlockerManager];
  }

  else
  {
    [WeakRetained normalBrowsingUserDefinedContentBlockerManager];
  }
  v3 = ;

  return v3;
}

- (void)scribbleController:(id)controller didUpdateSelectedElement:(id)element withError:(id)error
{
  [(SFScribbleController *)self _setSelectedElement:element];

  [(SFScribbleController *)self _performPendingSelectionRequestIfNeeded];
}

- (void)scribbleControllerDidUpdateHiddenElementCount:(id)count
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sfScribbleControllerDidUpdateHiddenElementCount:self];
}

- (void)updateUserDefinedContentBlockerWithHost:(id)host
{
  hostCopy = host;
  if ([hostCopy length])
  {
    userDefinedContentBlockerManager = [(SFScribbleController *)self userDefinedContentBlockerManager];
    hasContentBlockerWithActions = [userDefinedContentBlockerManager hasContentBlockerWithActions];

    if (hasContentBlockerWithActions)
    {
      [(WBSScribbleController *)self->_elementController loadContentBlockerForHost:hostCopy];
    }
  }
}

- (CGRect)_frameForElementFrame:(CGRect)frame inCoordinateSpace:(id)space
{
  [(SFScribbleController *)self _frameForElementFrame:space inCoordinateSpace:frame.origin.x withOutset:frame.origin.y, frame.size.width, frame.size.height, 0.0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_frameForElementFrame:(CGRect)frame inCoordinateSpace:(id)space withOutset:(double)outset
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  [WeakRetained _convertPointFromContentsToView:{MinX, CGRectGetMinY(v49)}];
  v15 = v14;
  v17 = v16;
  scrollView = [WeakRetained scrollView];
  [scrollView zoomScale];
  v50.size.width = width * v19;
  v50.size.height = height * v19;
  v50.origin.x = v15;
  v50.origin.y = v17;
  v51 = CGRectInset(v50, -outset, -outset);
  v20 = v51.origin.x;
  v21 = v51.origin.y;
  v22 = v51.size.width;
  v23 = v51.size.height;
  [WeakRetained bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [WeakRetained _obscuredInsets];
  v55.origin.x = v25 + v32;
  v55.origin.y = v27 + v33;
  v55.size.width = v29 - (v32 + v34);
  v55.size.height = v31 - (v33 + v35);
  v52.origin.x = v20;
  v52.origin.y = v21;
  v52.size.width = v22;
  v52.size.height = v23;
  v53 = CGRectIntersection(v52, v55);
  [WeakRetained convertRect:spaceCopy toCoordinateSpace:{v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v37;
  v45 = v39;
  v46 = v41;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (CGPoint)_offsetForObscuredInsets
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained _convertPointFromViewToContents:{0.0, 0.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)_selectionDidMoveToLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [(SFScribbleController *)self _offsetForObscuredInsets];
  v8 = v7;
  v10 = v9;
  [WeakRetained convertPoint:self->_overlay fromView:{x, y}];
  [WeakRetained _convertPointFromViewToContents:?];
  v12 = v11 - v8;
  v14 = v13 - v10;
  scrollView = [WeakRetained scrollView];
  [scrollView zoomScale];
  v17 = v16;

  v18 = v12 * v17;
  v19 = v14 * v17;
  if ([(WBSScribbleController *)self->_elementController hasPendingSelectionRequest])
  {
    *v22 = v18;
    *&v22[1] = v19;
    v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGPoint=dd}"];
    pendingSelectionLocation = self->_pendingSelectionLocation;
    self->_pendingSelectionLocation = v20;
  }

  else
  {
    [(SFScribbleController *)self _updateScribbleControllerForElementAtPoint:v18, v19];
  }
}

- (void)_performPendingSelectionRequestIfNeeded
{
  v6 = self->_pendingSelectionLocation;
  pendingSelectionLocation = self->_pendingSelectionLocation;
  self->_pendingSelectionLocation = 0;

  v4 = v6;
  if (v6)
  {
    isScribbling = [(WBSScribbleController *)self->_elementController isScribbling];
    v4 = v6;
    if (isScribbling)
    {
      [(NSValue *)v6 CGPointValue];
      [(SFScribbleController *)self _updateScribbleControllerForElementAtPoint:?];
      v4 = v6;
    }
  }
}

- (void)_setSelectedElement:(id)element
{
  if (element)
  {
    [element geometry];
    [SFScribbleController _frameForElementFrame:"_frameForElementFrame:inCoordinateSpace:withOutset:" inCoordinateSpace:self->_overlay withOutset:?];
    overlay = self->_overlay;

    [(SFScribbleOverlay *)overlay moveSelectionToFrame:?];
  }

  else
  {
    v5 = self->_overlay;

    [(SFScribbleOverlay *)v5 endSelection];
  }
}

- (id)_cancelActionForURLFieldOverlay
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFScribbleController__cancelActionForURLFieldOverlay__block_invoke;
  v4[3] = &unk_1E721E990;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC628] actionWithHandler:v4];

  return v2;
}

- (id)_doneAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SFScribbleController__doneAction__block_invoke;
  v4[3] = &unk_1E721E990;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC628] actionWithHandler:v4];

  return v2;
}

- (SFURLFieldOverlayConfiguration)urlFieldOverlayConfiguration
{
  v3 = [[SFURLFieldOverlayConfiguration alloc] initWithIdentifier:@"scribble"];
  [(SFScribbleController *)self _setCommonPropertiesToConfiguration:v3];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash.fill"];
  [(SFURLFieldOverlayConfiguration *)v3 setIcon:v4];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [(SFURLFieldOverlayConfiguration *)v3 setPlaceFirstButtonInLeadingEdge:1];
    [(SFURLFieldOverlayConfiguration *)v3 setIcon:0];
  }

  return v3;
}

- (SFURLFieldOverlayConfiguration)urlFieldOverlayNarrowConfiguration
{
  v3 = [[SFURLFieldOverlayConfiguration alloc] initWithIdentifier:@"scribbleNarrow"];
  [(SFScribbleController *)self _setCommonPropertiesToConfiguration:v3];
  [(SFURLFieldOverlayConfiguration *)v3 setPlaceFirstButtonInLeadingEdge:1];
  [(SFURLFieldOverlayConfiguration *)v3 setShouldTextShrinkToFit:1];
  [(SFURLFieldOverlayConfiguration *)v3 setNumberOfLines:2];

  return v3;
}

- (void)_setCommonPropertiesToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(SFURLFieldOverlayButtonItem);
  _cancelActionForURLFieldOverlay = [(SFScribbleController *)self _cancelActionForURLFieldOverlay];
  [(SFURLFieldOverlayButtonItem *)v6 setAction:_cancelActionForURLFieldOverlay];

  [(SFURLFieldOverlayButtonItem *)v6 setTheme:0];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [(SFURLFieldOverlayButtonItem *)v6 setTheme:1];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [(SFURLFieldOverlayButtonItem *)v6 setIcon:v8];
  }

  _cancelButtonTitle = [(SFScribbleController *)self _cancelButtonTitle];
  [(SFURLFieldOverlayButtonItem *)v6 setTitle:_cancelButtonTitle];

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60__SFScribbleController__setCommonPropertiesToConfiguration___block_invoke;
  v25[3] = &unk_1E721BF08;
  objc_copyWeak(&v26, &location);
  [(SFURLFieldOverlayButtonItem *)v6 setActionHandler:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  [array addObject:v6];

  v10 = objc_alloc_init(SFURLFieldOverlayButtonItem);
  _doneAction = [(SFScribbleController *)self _doneAction];
  [(SFURLFieldOverlayButtonItem *)v10 setAction:_doneAction];

  if ([(WBSScribbleController *)self->_elementController numberOfChangesFromCurrentSession])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [(SFURLFieldOverlayButtonItem *)v10 setTheme:v12];
  _doneButtonTitle = [(SFScribbleController *)self _doneButtonTitle];
  [(SFURLFieldOverlayButtonItem *)v10 setTitle:_doneButtonTitle];

  [(SFURLFieldOverlayButtonItem *)v10 setAccessibilityIdentifier:@"DoneButton"];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__SFScribbleController__setCommonPropertiesToConfiguration___block_invoke_2;
  v23[3] = &unk_1E721BF08;
  objc_copyWeak(&v24, &location);
  [(SFURLFieldOverlayButtonItem *)v10 setActionHandler:v23];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  [(SFURLFieldOverlayButtonItem *)v10 setIcon:v14];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  [array addObject:v10];

  v15 = [array copy];
  [configurationCopy setButtonItems:v15];

  _urlFieldOverlayText = [(SFScribbleController *)self _urlFieldOverlayText];
  [configurationCopy setText:_urlFieldOverlayText];

  safari_scribbleThemeColor = [MEMORY[0x1E69DC888] safari_scribbleThemeColor];
  [configurationCopy setThemeColor:safari_scribbleThemeColor];

  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  [configurationCopy setBackgroundColor:tertiarySystemFillColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [configurationCopy setPrimaryTextColor:labelColor];

  v20 = [MEMORY[0x1E69DC888] sf_colorNamed:@"ScribbleDoneButtonColor"];
  [configurationCopy setProminentButtonBackgroundColor:v20];

  v21 = [MEMORY[0x1E69DC888] sf_colorNamed:@"ScribbleTextColor"];
  [configurationCopy setProminentButtonTextColor:v21];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    [configurationCopy setProminentButtonTextColor:tintColor];
  }
}

void __60__SFScribbleController__setCommonPropertiesToConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endScribblingAndSaveChanges:0];
    WeakRetained = v2;
  }
}

void __60__SFScribbleController__setCommonPropertiesToConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endScribblingAndSaveChanges:1];
    WeakRetained = v2;
  }
}

- (id)_urlFieldOverlayText
{
  if ([(WBSScribbleController *)self->_elementController numberOfChangesFromCurrentSession])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v5 = [v3 localizedStringWithFormat:v4, -[WBSScribbleController numberOfChangesFromCurrentSession](self->_elementController, "numberOfChangesFromCurrentSession")];
  }

  else
  {
    v5 = _WBSLocalizedString();
  }

  return v5;
}

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  [(SFScribbleOverlay *)self->_overlay removeFromSuperview];
  elementController = self->_elementController;

  [(WBSScribbleController *)elementController invalidate];
}

- (void)openFeedbackAppForScribbleReportIssueCategory:(int64_t)category
{
  if ([MEMORY[0x1E69C8880] shouldShowInternalUI])
  {
    elementController = self->_elementController;
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    [WBSScribbleController getTapToRadarURLForScribbleIssueForWebView:"getTapToRadarURLForScribbleIssueForWebView:category:completionHandler:" category:? completionHandler:?];
  }

  else
  {
    WeakRetained = [MEMORY[0x1E6963608] defaultWorkspace];
    v5 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69C92D8]];
    [WeakRetained openURL:v5 withOptions:0];
  }
}

void __70__SFScribbleController_openFeedbackAppForScribbleReportIssueCategory___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6963608];
  v3 = a2;
  v4 = [v2 defaultWorkspace];
  [v4 openURL:v3 withOptions:0];
}

- (SFScribbleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end