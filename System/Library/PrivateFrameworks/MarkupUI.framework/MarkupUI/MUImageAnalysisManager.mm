@interface MUImageAnalysisManager
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3;
- (BOOL)addInteractionIfNeeded;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3;
- (BOOL)hasActiveTextSelection;
- (BOOL)hasAnalysis;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3;
- (BOOL)isImageSubjectHighlightingEnabled;
- (BOOL)isInteractionActive;
- (BOOL)isTextSelectionEnabled;
- (BOOL)isVisualSearchEnabled;
- (BOOL)textExistsAtPoint:(CGPoint)a3;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3;
- (MUImageAnalysisManager)initWithDelegate:(id)a3 presentingView:(id)a4;
- (MUImageAnalysisManagerDelegate)delegate;
- (NSString)filledInfoButtonGlyphName;
- (NSString)infoButtonGlyphName;
- (UIView)presentingView;
- (VKCImageAnalyzer)imageAnalyzer;
- (id)image;
- (id)imageAnalysisQueue;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (unint64_t)_defaultInteractionTypes;
- (void)_activateInteractionTypes:(unint64_t)a3;
- (void)_handleImageAnalysis:(id)a3 error:(id)a4;
- (void)_setupAnalysisButtonsContainerInView:(id)a3;
- (void)_setupImageAnalysis;
- (void)_setupNotificationsObservation;
- (void)_startImageAnalysisWithRequest:(id)a3;
- (void)_updateAnalysisButtonContainerWithAnimation:(BOOL)a3;
- (void)_updateAnalysisButtonWithAnimation:(BOOL)a3;
- (void)_updateInfoButtonWithAnimation:(BOOL)a3;
- (void)adjustImageInteractionForScrollView:(id)a3;
- (void)cancelAllRequests;
- (void)dealloc;
- (void)enableMarkupMode:(BOOL)a3;
- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5;
- (void)imageAnalysisPopoverDidDisappear;
- (void)imageAnalysisPopoverWillAppear;
- (void)infoButtonTapped;
- (void)setupAnalysisButtonsContainer;
- (void)shouldHideInteraction:(BOOL)a3 animated:(BOOL)a4;
- (void)startImageAnalysis;
- (void)stopImageAnalysis;
- (void)updateBottomRightContainerPositionForImageView:(id)a3 view:(id)a4;
- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MUImageAnalysisManager

- (MUImageAnalysisManager)initWithDelegate:(id)a3 presentingView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MUImageAnalysisManager;
  v8 = [(MUImageAnalysisManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MUImageAnalysisManager *)v8 setDelegate:v6];
    [(MUImageAnalysisManager *)v9 setPresentingView:v7];
  }

  [(MUImageAnalysisManager *)v9 _setupImageAnalysis];
  [(MUImageAnalysisManager *)v9 _setupNotificationsObservation];
  [(MUImageAnalysisManager *)v9 startImageAnalysis];
  [(MUImageAnalysisManager *)v9 setupAnalysisButtonsContainer];

  return v9;
}

- (void)_setupImageAnalysis
{
  v3 = objc_alloc_init(MEMORY[0x277D78510]);
  [(MUImageAnalysisManager *)self setImageInteraction:v3];

  v4 = [(MUImageAnalysisManager *)self _defaultInteractionTypes];
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  [v5 setActiveInteractionTypes:v4];

  v6 = [(MUImageAnalysisManager *)self imageInteraction];
  [v6 setDelegate:self];

  v7 = [(MUImageAnalysisManager *)self imageInteraction];
  [v7 setAutomaticallyShowVisualSearchResults:1];

  v8 = [(MUImageAnalysisManager *)self delegate];
  v9 = [v8 imageAnalysisView];
  v10 = [(MUImageAnalysisManager *)self imageInteraction];
  [v9 addInteraction:v10];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
}

- (void)_setupNotificationsObservation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v3 = getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr;
  v16 = getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr;
  if (!getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr)
  {
    v4 = DataDetectorsUILibrary();
    v14[3] = dlsym(v4, "DDDetectionControllerWillPresentActionNotification");
    getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr = v14[3];
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    +[MUImageReader imageDescriptionFromSourceContent:];
    goto LABEL_13;
  }

  v5 = *v3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_dataDetectorDetectionControllerWillPresentAction_ name:v5 object:0];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr;
  v16 = getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr;
  if (!getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr)
  {
    v8 = DataDetectorsUILibrary();
    v14[3] = dlsym(v8, "DDDetectionControllerDidDismissActionNotification");
    getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
LABEL_13:
    v12 = +[MUImageReader imageDescriptionFromSourceContent:];
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  if (*v7)
  {
    v9 = MEMORY[0x277CCAB98];
    v10 = *v7;
    v11 = [v9 defaultCenter];
    [v11 addObserver:self selector:sel_dataDetectorDetectionControllerDidDismissAction_ name:v10 object:0];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUImageAnalysisManager;
  [(MUImageAnalysisManager *)&v4 dealloc];
}

- (void)_setupAnalysisButtonsContainerInView:(id)a3
{
  v96[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(MUImageAnalysisManager *)self bottomRightButtonsContainer];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(MUImageAnalysisManager *)self setBottomRightButtonsContainer:v6];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v4 addSubview:v6];
      [v4 rightAnchor];
      v7 = v90 = self;
      v8 = [v6 rightAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];

      [(MUImageAnalysisManager *)v90 setBottomRightButtonsContainerRightConstraint:v9];
      LODWORD(v10) = 1148829696;
      [(NSLayoutConstraint *)v90->_bottomRightButtonsContainerRightConstraint setPriority:v10];
      v11 = [v4 bottomAnchor];
      v12 = [v6 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      [(MUImageAnalysisManager *)v90 setBottomRightButtonsContainerBottomConstraint:v13];
      LODWORD(v14) = 1148829696;
      [v13 setPriority:v14];
      v83 = MEMORY[0x277CCAAD0];
      v15 = [v4 rightAnchor];
      v16 = [v6 rightAnchor];
      v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:16.0];
      v96[0] = v17;
      v88 = v4;
      v18 = [v4 safeAreaLayoutGuide];
      v19 = [v18 bottomAnchor];
      v89 = v6;
      v20 = [v6 bottomAnchor];
      v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 constant:12.0];
      v96[1] = v21;
      v96[2] = v9;
      v86 = v13;
      v87 = v9;
      v96[3] = v13;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
      [v83 activateConstraints:v22];

      v23 = v90;
      v24 = [(MUImageAnalysisManager *)v90 imageInteraction];
      v25 = [v24 visualSearchCornerView];

      v26 = [v25 superview];

      if (!v26)
      {
        v27 = objc_opt_new();
        [(MUImageAnalysisManager *)v90 setVisualSearchViewContainer:v27];
        [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v89 addSubview:v27];
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v27 addSubview:v25];
        v63 = MEMORY[0x277CCAAD0];
        v84 = [v25 topAnchor];
        v81 = [v27 topAnchor];
        v79 = [v84 constraintEqualToAnchor:v81];
        v95[0] = v79;
        v77 = [v25 bottomAnchor];
        v75 = [v27 bottomAnchor];
        v73 = [v77 constraintEqualToAnchor:v75];
        v95[1] = v73;
        v71 = [v25 trailingAnchor];
        v69 = [v27 trailingAnchor];
        v67 = [v71 constraintEqualToAnchor:v69];
        v95[2] = v67;
        v65 = [v25 leadingAnchor];
        v61 = [v27 leadingAnchor];
        v59 = [v65 constraintEqualToAnchor:v61];
        v95[3] = v59;
        v57 = [v27 trailingAnchor];
        v55 = [v89 trailingAnchor];
        v53 = [v57 constraintEqualToAnchor:v55];
        v95[4] = v53;
        v51 = [v27 bottomAnchor];
        v49 = [v89 bottomAnchor];
        v28 = [v51 constraintEqualToAnchor:v49];
        v95[5] = v28;
        v29 = [v27 widthAnchor];
        v30 = [v89 widthAnchor];
        v31 = [v29 constraintLessThanOrEqualToAnchor:v30];
        v95[6] = v31;
        v32 = [v27 heightAnchor];
        v33 = [v89 heightAnchor];
        v34 = [v32 constraintLessThanOrEqualToAnchor:v33];
        v95[7] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:8];
        [v63 activateConstraints:v35];

        v23 = v90;
      }

      v36 = [(MUImageAnalysisManager *)v23 imageInteraction];
      v37 = [v36 analysisButton];

      v38 = [v37 superview];

      if (!v38)
      {
        v39 = objc_opt_new();
        [(MUImageAnalysisManager *)v23 setAnalysisButtonContainer:v39];
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v89 addSubview:v39];
        [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v39 addSubview:v37];
        v66 = MEMORY[0x277CCAAD0];
        v91 = [v37 topAnchor];
        v85 = [v39 topAnchor];
        v82 = [v91 constraintEqualToAnchor:v85];
        v94[0] = v82;
        v80 = [v37 bottomAnchor];
        v78 = [v39 bottomAnchor];
        v76 = [v80 constraintEqualToAnchor:v78];
        v94[1] = v76;
        v74 = [v37 trailingAnchor];
        v72 = [v39 trailingAnchor];
        v70 = [v74 constraintEqualToAnchor:v72];
        v94[2] = v70;
        v68 = [v37 leadingAnchor];
        v64 = [v39 leadingAnchor];
        v62 = [v68 constraintEqualToAnchor:v64];
        v94[3] = v62;
        v60 = [v39 trailingAnchor];
        v58 = [v89 trailingAnchor];
        v56 = [v60 constraintEqualToAnchor:v58];
        v94[4] = v56;
        v54 = [v39 bottomAnchor];
        v52 = [v89 bottomAnchor];
        v50 = [v54 constraintEqualToAnchor:v52];
        v94[5] = v50;
        v40 = [v39 widthAnchor];
        v41 = [v89 widthAnchor];
        v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
        v94[6] = v42;
        v43 = [v39 heightAnchor];
        v44 = [v89 heightAnchor];
        v45 = [v43 constraintLessThanOrEqualToAnchor:v44];
        v94[7] = v45;
        [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:8];
        v47 = v46 = v25;
        [v66 activateConstraints:v47];

        v25 = v46;
      }

      v48 = MEMORY[0x277D75D18];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __63__MUImageAnalysisManager__setupAnalysisButtonsContainerInView___block_invoke;
      v92[3] = &unk_27986E2C8;
      v4 = v88;
      v93 = v88;
      [v48 performWithoutAnimation:v92];
    }
  }
}

- (unint64_t)_defaultInteractionTypes
{
  if (_os_feature_enabled_impl())
  {
    return 9;
  }

  else
  {
    return 1;
  }
}

- (id)image
{
  v2 = [(MUImageAnalysisManager *)self delegate];
  v3 = [v2 imageForAnalysis];

  return v3;
}

- (VKCImageAnalyzer)imageAnalyzer
{
  imageAnalyzer = self->_imageAnalyzer;
  if (!imageAnalyzer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D78518]);
    [(MUImageAnalysisManager *)self setImageAnalyzer:v4];

    v5 = [(MUImageAnalysisManager *)self imageAnalysisQueue];
    v6 = [(MUImageAnalysisManager *)self imageAnalyzer];
    [v6 setCallbackQueue:v5];

    imageAnalyzer = self->_imageAnalyzer;
  }

  return imageAnalyzer;
}

- (void)_updateAnalysisButtonWithAnimation:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(MUImageAnalysisManager *)self imageInteraction];
    v11 = [v5 analysis];

    v6 = v11;
    if (v11)
    {
      v7 = [v11 hasResultsForAnalysisTypes:29];
      if ([(MUImageAnalysisManager *)self isFullScreen])
      {
        if ([(MUImageAnalysisManager *)self isVisualSearchEnabled])
        {
          v8 = ![(MUImageAnalysisManager *)self isImageAnalysisPopoverPresented];
        }

        else
        {
          LOBYTE(v8) = 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      v9 = v8 | ~v7;
      v10 = [(MUImageAnalysisManager *)self imageInteraction];
      [v10 setActionInfoViewHidden:v9 & 1 animated:v3];

      v6 = v11;
    }
  }

  else
  {

    [(MUImageAnalysisManager *)self _updateAnalysisButtonContainerWithAnimation:v3];
  }
}

- (void)_updateAnalysisButtonContainerWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 analysis];

  if (v6)
  {
    v7 = [v6 hasResultsForAnalysisTypes:13];
  }

  else
  {
    v7 = 0;
  }

  v8 = ![(MUImageAnalysisManager *)self isVisualSearchEnabled]& v7;
  if ([(MUImageAnalysisManager *)self isFullScreen])
  {
    v9 = [(MUImageAnalysisManager *)self imageInteraction];
    v10 = [v9 analysisButton];
    if ([v10 state] != 4)
    {
      LOBYTE(v8) = 0;
    }
  }

  if (v8)
  {
    v11 = [(MUImageAnalysisManager *)self analysisButtonContainer];
    [v11 setHidden:0];

    v12 = [(MUImageAnalysisManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 imageAnalyzerWantsUpdateOverlayViews];
    }

    v13 = 1;
  }

  else
  {
    v12 = [(MUImageAnalysisManager *)self delegate];
    v13 = 0;
  }

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__MUImageAnalysisManager__updateAnalysisButtonContainerWithAnimation___block_invoke;
  v16[3] = &unk_27986E918;
  objc_copyWeak(&v17, &location);
  v18 = v13;
  v14 = MEMORY[0x259C7BE00](v16);
  v15 = v14;
  if (v3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:5242880 delay:v14 options:0 animations:0.4 completion:0.0];
  }

  else
  {
    (*(v14 + 16))(v14);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __70__MUImageAnalysisManager__updateAnalysisButtonContainerWithAnimation___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained analysisButtonContainer];
  [v2 setAlpha:v1];
}

- (void)_activateInteractionTypes:(unint64_t)a3
{
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  [v5 setActiveInteractionTypes:a3];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];

  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
}

- (void)setupAnalysisButtonsContainer
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = [(MUImageAnalysisManager *)self presentingView];
    if (v3)
    {
      [(MUImageAnalysisManager *)self _setupAnalysisButtonsContainerInView:v3];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (id)imageAnalysisQueue
{
  if (imageAnalysisQueue_once != -1)
  {
    [MUImageAnalysisManager imageAnalysisQueue];
  }

  v3 = imageAnalysisQueue_queue;

  return v3;
}

void __44__MUImageAnalysisManager_imageAnalysisQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.markup.image-analysis", attr);
  v2 = imageAnalysisQueue_queue;
  imageAnalysisQueue_queue = v1;
}

- (void)startImageAnalysis
{
  v3 = [(MUImageAnalysisManager *)self image];
  v9 = v3;
  if (v3)
  {
    NSLog(&cfstr_CreatingImageA.isa, v3);
    v4 = [objc_alloc(MEMORY[0x277D78520]) initWithImage:v9 requestType:-65];
    v5 = [(MUImageAnalysisManager *)self delegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v5 clientPreviewOptions];
      v7 = [v6 objectForKeyedSubscript:@"imageURL"];
      [v4 setImageURL:v7];

      v8 = [v6 objectForKeyedSubscript:@"pageURL"];
      [v4 setPageURL:v8];
    }

    [(MUImageAnalysisManager *)self _startImageAnalysisWithRequest:v4];
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }
}

- (void)_startImageAnalysisWithRequest:(id)a3
{
  v4 = a3;
  [(MUImageAnalysisManager *)self cancelAllRequests];
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  [v5 setAnalysis:0];

  objc_initWeak(&location, self);
  v6 = [(MUImageAnalysisManager *)self imageAnalysisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke;
  block[3] = &unk_27986E4F0;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  dispatch_async(v6, block);

  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    NSLog(&cfstr_ProcessingImag.isa, *(a1 + 32));
    v3 = [WeakRetained imageAnalyzer];
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_2;
    v5[3] = &unk_27986E940;
    objc_copyWeak(&v6, (a1 + 40));
    [WeakRetained setImageAnalysisRequestId:{objc_msgSend(v3, "processRequest:progressHandler:completionHandler:", v4, 0, v5)}];

    objc_destroyWeak(&v6);
  }
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == -2 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"com.apple.VisionKit.ImageAnalyzer"), v8, (v9 & 1) != 0))
    {
      NSLog(&cfstr_ImageAnalysisC.isa, v7);
    }

    else
    {
      NSLog(&cfstr_ImageAnalysisF.isa, v7);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImageAnalysisRequestId:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_3;
  block[3] = &unk_27986E390;
  objc_copyWeak(&v16, (a1 + 32));
  v14 = v5;
  v15 = v7;
  v11 = v7;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v16);
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleImageAnalysis:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_handleImageAnalysis:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUImageAnalysisManager *)self imageInteraction];
  v9 = v8;
  if (!v6 || v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  [v8 setAnalysis:v10];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  if (self->_shouldEnterVisualSearchAfterNextAnalysis)
  {
    self->_shouldEnterVisualSearchAfterNextAnalysis = 0;
    [(MUImageAnalysisManager *)self activateVisualSearchInteraction];
  }

  else if (self->_shouldHighlightTextAndDDAfterNextAnalysis)
  {
    self->_shouldHighlightTextAndDDAfterNextAnalysis = 0;
    v11 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MUImageAnalysisManager__handleImageAnalysis_error___block_invoke;
    block[3] = &unk_27986E2C8;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else if (self->_shouldUpliftSubjectAfterNextAnalysis)
  {
    self->_shouldUpliftSubjectAfterNextAnalysis = 0;
    v12 = [(MUImageAnalysisManager *)self imageInteraction];
    [v12 setSubjectHighlightActive:1];
  }
}

void __53__MUImageAnalysisManager__handleImageAnalysis_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageInteraction];
  [v1 setHighlightSelectableItems:1];
}

- (void)_updateInfoButtonWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(MUImageAnalysisManager *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 imageAnalyzerWantsUpdateInfoButtonWithAnimation:v3];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateBottomRightContainerPositionForImageView:(id)a3 view:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    [v7 bounds];
    MaxX = CGRectGetMaxX(v26);
    [v7 bounds];
    [v7 convertPoint:v6 toView:{MaxX, CGRectGetMaxY(v27)}];
    v10 = v9;
    v12 = v11;

    [v6 frame];
    v13 = CGRectGetMaxX(v28) - v10 + 16.0;
    [v6 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    v22 = CGRectGetMaxY(v29) - v12 + 12.0;
    v23 = [(MUImageAnalysisManager *)self bottomRightButtonsContainerRightConstraint];
    [v23 setConstant:v13];

    v24 = [(MUImageAnalysisManager *)self bottomRightButtonsContainerBottomConstraint];
    [v24 setConstant:v22];
  }
}

- (void)updateForFullScreen:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(MUImageAnalysisManager *)self setIsFullScreen:a3];
  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:v4];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [(MUImageAnalysisManager *)self imageInteraction];
    if (v6 && (![(MUImageAnalysisManager *)self isVisualSearchEnabled]? (v7 = 0) : (v7 = [(MUImageAnalysisManager *)self hasResultsForVisualSearch]), ![(MUImageAnalysisManager *)self isFullScreen]? (v8 = 1) : (v8 = [(MUImageAnalysisManager *)self isImageAnalysisPopoverPresented]), v7 && v8))
    {
      v9 = [(MUImageAnalysisManager *)self visualSearchViewContainer];
      [v9 setHidden:0];

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__MUImageAnalysisManager_updateForFullScreen_animated___block_invoke;
    v12[3] = &unk_27986E918;
    objc_copyWeak(&v13, &location);
    v14 = v10;
    v11 = MEMORY[0x259C7BE00](v12);
    [MEMORY[0x277D75D18] animateWithDuration:5242880 delay:v11 options:0 animations:0.4 completion:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __55__MUImageAnalysisManager_updateForFullScreen_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained visualSearchViewContainer];
  [v2 setAlpha:v1];
}

- (void)stopImageAnalysis
{
  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  [(MUImageAnalysisManager *)self cancelAllRequests];
  v3 = [(MUImageAnalysisManager *)self delegate];
  v4 = [v3 imageAnalysisView];
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  [v4 removeInteraction:v5];

  v6 = [(MUImageAnalysisManager *)self bottomRightButtonsContainer];
  [v6 removeFromSuperview];

  [(MUImageAnalysisManager *)self setBottomRightButtonsContainer:0];
}

- (void)cancelAllRequests
{
  NSLog(&cfstr_CancelAllImage.isa, a2);
  v3 = [(MUImageAnalysisManager *)self imageAnalyzer];
  [v3 cancelAllRequests];
}

- (BOOL)hasAnalysis
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = [v2 analysis];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)addInteractionIfNeeded
{
  v3 = [(MUImageAnalysisManager *)self delegate];
  v4 = [v3 imageAnalysisView];

  if (v4)
  {
    v5 = [(MUImageAnalysisManager *)self imageInteraction];
    if (v5 && ([v4 interactions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, (v7 & 1) == 0))
    {
      [v4 addInteraction:v5];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enableMarkupMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(MUImageAnalysisManager *)self delegate];
  v10 = [v5 imageAnalysisView];

  if (v10)
  {
    v6 = [(MUImageAnalysisManager *)self imageInteraction];
    v7 = v6;
    if (v3 || !v6)
    {
      if (v3)
      {
        v8 = [v10 interactions];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          if (([v7 activeInteractionTypes] & 4) != 0)
          {
            [(MUImageAnalysisManager *)self _activateInteractionTypes:[(MUImageAnalysisManager *)self _defaultInteractionTypes]];
          }

          [(MUImageAnalysisManager *)self cancelAllRequests];
          [v7 setAnalysis:0];
          [v10 removeInteraction:v7];
        }
      }
    }

    else
    {
      [v10 addInteraction:v6];
    }
  }
}

- (BOOL)isInteractionActive
{
  v3 = [(MUImageAnalysisManager *)self delegate];
  v4 = [v3 imageAnalysisView];

  if (v4)
  {
    v5 = [(MUImageAnalysisManager *)self imageInteraction];
    if (v5)
    {
      v6 = [v4 interactions];
      v7 = [v6 containsObject:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasResultsForVisualSearch
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = [v2 analysis];

  if (v3)
  {
    v4 = [v3 hasResultsForAnalysisTypes:16];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isVisualSearchEnabled
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = v2;
  if (v2)
  {
    v4 = ([v2 activeInteractionTypes] >> 2) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)infoButtonGlyphName
{
  v3 = [(MUImageAnalysisManager *)self imageInteraction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUImageAnalysisManager *)self imageInteraction];
    v6 = [v5 visualSearchResultItems];
    v7 = [v6 firstObject];

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 infoButtonGlyphName];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)filledInfoButtonGlyphName
{
  v3 = [(MUImageAnalysisManager *)self imageInteraction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUImageAnalysisManager *)self imageInteraction];
    v6 = [v5 visualSearchResultItems];
    v7 = [v6 firstObject];

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 filledInfoButtonGlyphName];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isTextSelectionEnabled
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = v2;
  if (v2 && ([v2 activeInteractionTypes] & 1) != 0)
  {
    v4 = [v3 highlightSelectableItems];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isImageSubjectHighlightingEnabled
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = v2;
  if (v2)
  {
    v4 = ([v2 activeInteractionTypes] >> 3) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)infoButtonTapped
{
  if ([(MUImageAnalysisManager *)self isVisualSearchEnabled])
  {
    v3 = [(MUImageAnalysisManager *)self _defaultInteractionTypes];
  }

  else
  {
    v3 = 4;
  }

  [(MUImageAnalysisManager *)self _activateInteractionTypes:v3];
}

- (void)shouldHideInteraction:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12 = [(MUImageAnalysisManager *)self delegate];
  v7 = [v12 imageAnalysisView];
  if (v7)
  {
    v8 = [(MUImageAnalysisManager *)self imageInteraction];
    if (v8)
    {
      v9 = [v7 interactions];
      v10 = [v9 containsObject:v8];

      if (v5 && v10)
      {
        v11 = [v12 imageAnalysisView];
        [v11 removeInteraction:v8];
LABEL_8:

        [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:v4];
        [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:v4];
        goto LABEL_9;
      }

      if (((v5 | v10) & 1) == 0)
      {
        v11 = [v12 imageAnalysisView];
        [v11 addInteraction:v8];
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 dataDetectorExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)textExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 textExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 imageSubjectExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 visualSearchExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [v5 actionInfoItemExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)hasActiveTextSelection
{
  v2 = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = [v2 hasActiveTextSelection];

  return v3;
}

- (void)adjustImageInteractionForScrollView:(id)a3
{
  v23 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [(MUImageAnalysisManager *)self delegate];
    v5 = [v4 imageAnalysisView];

    if (v23 && v5)
    {
      [v23 bounds];
      [v23 convertRect:v5 toView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 bounds];
      v15 = v7 / v14;
      [v5 bounds];
      v17 = v9 / v16;
      [v5 bounds];
      v19 = v11 / v18;
      [v5 bounds];
      v21 = v13 / v20;
      v22 = [(MUImageAnalysisManager *)self imageInteraction];
      [v22 scrollViewDidZoomToUnitRect:{v15, v17, v19, v21}];
    }
  }
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 textExistsAtPoint:{x, y}];
  v9 = [v7 imageSubjectExistsAtPoint:{x, y}];
  v10 = [v7 dataDetectorExistsAtPoint:{x, y}];
  v11 = [v7 visualSearchExistsAtPoint:{x, y}];
  v12 = 1;
  if ((v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = [v7 hasActiveTextSelection];
  }

  return v12;
}

- (void)imageAnalysisPopoverWillAppear
{
  [(MUImageAnalysisManager *)self setIsImageAnalysisPopoverPresented:1];
  v3 = [(MUImageAnalysisManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 imageAnalysisInteractionWillPresentVisualSearchController];
  }
}

- (void)imageAnalysisPopoverDidDisappear
{
  [(MUImageAnalysisManager *)self setIsImageAnalysisPopoverPresented:0];
  v3 = [(MUImageAnalysisManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 imageAnalysisInteractionDidDismissVisualSearchController];
  }
}

- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5
{
  v9 = a5;
  v7 = NSStringFromSelector(a4);
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"_define:", @"_translate:", @"_share:", @"_addShortcut:", 0}];
  if ([v8 containsObject:v7])
  {
    [(MUImageAnalysisManager *)self imageAnalysisPopoverWillAppear];
  }

  v9[2]();
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = [(MUImageAnalysisManager *)self delegate];
  v6 = [v5 presentingViewControllerForImageAnalysisInteraction:v4];

  return v6;
}

- (MUImageAnalysisManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)presentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);

  return WeakRetained;
}

@end