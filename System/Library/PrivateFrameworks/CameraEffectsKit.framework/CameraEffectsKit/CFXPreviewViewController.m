@interface CFXPreviewViewController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)CFX_previewPlayerCurrentTime;
- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumHitTestArea;
- (BOOL)CFX_canApplyFaceTracking;
- (BOOL)CFX_saveImageToURL:(id)a3 image:(id)a4 compressionQuality:(double)a5 asHEIF:(BOOL)a6 metadata:(CGImageMetadata *)a7;
- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5;
- (BOOL)effectEditorView:(id)a3 isFaceTrackingDataAvailableForEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 presentCustomTextEditingUI:(id)a4;
- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4;
- (BOOL)isEditingEffect;
- (BOOL)presentFullScreenTextEditorForEffect:(id)a3 insertingEffect:(BOOL)a4;
- (BOOL)shouldExportOnly;
- (BOOL)shouldKeepPlayButtonHidden;
- (BOOL)shouldUseFaceTracking;
- (CFXClip)previewClip;
- (CFXControlsViewController)previewControls;
- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController;
- (CFXPlayButtonView)playButton;
- (CFXPreviewViewControllerDelegate)delegate;
- (CGPoint)bottomControlsCenter;
- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6;
- (CGRect)bottomControlsBounds;
- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6;
- (CGRect)playerContentFrame;
- (UIButton)exportButton;
- (UIView)appStripAndPreviewControlsContainer;
- (UIView)effectsPickerDrawer;
- (UIView)playerContainerView;
- (UIView)previewControlsContainerView;
- (double)animationDurationForCompositionTransition:(id)a3 shouldScale:(BOOL *)a4;
- (id)CFX_AVAssetExportPresetWithColorSpace:(id)a3;
- (id)CFX_fetchAssetWithLocalIdentifier:(id)a3;
- (id)bottomControlsSnapshot;
- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4;
- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textForEffect:(id)a4;
- (int64_t)faceTrackingInterfaceOrientationForfullScreenTextEditViewController:(id)a3;
- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4;
- (void)CFX_addAssetAtURL:(id)a3 resourceType:(int64_t)a4 completionHandler:(id)a5;
- (void)CFX_addAssetWithIdentifier:(id)a3 intoAlbum:(id)a4 completionHandler:(id)a5;
- (void)CFX_addEffect:(id)a3;
- (void)CFX_addURLToCameraRoll:(id)a3 isStill:(BOOL)a4 completionHandler:(id)a5;
- (void)CFX_createAlbumWithCompletionHandler:(id)a3;
- (void)CFX_exportPhotoWithEffects;
- (void)CFX_layoutPlayerContainerView;
- (void)CFX_notifyDelegateExportMediaItemFinishedWithError:(id)a3;
- (void)CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion:(id)a3;
- (void)CFX_setEffectAnimationsEnabledIfPossible:(BOOL)a3 updatePlayer:(BOOL)a4;
- (void)CFX_setFrameAndRenderSizes;
- (void)CFX_setIsExporting:(BOOL)a3;
- (void)CFX_togglePreviewUI;
- (void)addEffect:(id)a3 completion:(id)a4;
- (void)addOverlayEffect:(id)a3 atScreenLocation:(CGPoint)a4 atScreenSize:(CGSize)a5 rotationAngle:(double)a6 completion:(id)a7;
- (void)configureBottomControlsForOrientation;
- (void)configureUIForOrientation;
- (void)didFinishExport:(int64_t)a3;
- (void)dispatchWhenPlayerReadyForDisplayEffectUpdate:(id)a3;
- (void)displayEffectEditorForEffect:(id)a3 forMode:(unint64_t)a4;
- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4;
- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5;
- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5;
- (void)effectEditorView:(id)a3 didMoveEffect:(id)a4 withTouchPoint:(CGPoint)a5;
- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4;
- (void)effectEditorView:(id)a3 didTransformEffect:(id)a4 transform:(CGAffineTransform *)a5 relativeToBounds:(CGRect)a6;
- (void)effectEditorViewDidBeginEditing:(id)a3;
- (void)effectEditorViewDidEndEditing:(id)a3;
- (void)exportMediaItemToFileURL:(id)a3;
- (void)exportProgressedTo:(float)a3;
- (void)filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)a3 completion:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didBeginAnimationBeforeEditingEffect:(id)a4 completion:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 didBeginEditingEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishAnimationAfterEditingEffect:(id)a4 completion:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingEffect:(id)a4 withUpdatedText:(id)a5;
- (void)fullScreenTextEditViewController:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4 updatedText:(id)a5;
- (void)hideBottomControls;
- (void)playButtonViewDidTapPause:(id)a3;
- (void)playButtonViewDidTapPlay:(id)a3;
- (void)playbackAreaPanned:(id)a3 gesture:(id)a4 normalizedClipPoint:(CGPoint)a5 normalizedMinimumSize:(id)a6 translationDelta:(CGPoint)a7 atTime:(int)a8 timeScale:(int)a9;
- (void)playbackAreaPinched:(id)a3 gesture:(id)a4 normalizedClipPoints:(id)a5 normalizedCenterPoint:(CGPoint)a6 normalizedMinimumSize:(id)a7 scaleDelta:(double)a8 atTime:(int)a9 timeScale:(int)a10;
- (void)playbackAreaRotated:(id)a3 gesture:(id)a4 normalizedClipPoints:(id)a5 normalizedCenterPoint:(CGPoint)a6 normalizedMinimumSize:(id)a7 rotateDelta:(double)a8 atTime:(int)a9;
- (void)playbackAreaTapped:(id)a3 normalizedClipPoint:(CGPoint)a4 normalizedMinimumSize:(id)a5 atTime:(int)a6;
- (void)playbackDidStart:(id)a3;
- (void)playbackDidStop:(id)a3 currentTime:(int)a4;
- (void)playbackSliderValueChanged:(id)a3;
- (void)playbackTimeDidChange:(id)a3 currentTime:(int)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)removeEffectEditor;
- (void)setEffectsPickerDrawer:(id)a3;
- (void)setPlayButtonHiddenIfPossible:(BOOL)a3;
- (void)setPresentingFilterPicker:(BOOL)a3;
- (void)setUserInterfaceHidden:(BOOL)a3;
- (void)showBottomControls;
- (void)updateEffectEditorLayout;
- (void)updateFullScreenTextEditorLayout;
- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CFXPreviewViewController

- (void)viewDidLoad
{
  v81[4] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = CFXPreviewViewController;
  [(CFXPreviewViewController *)&v79 viewDidLoad];
  v3 = [(CFXPreviewViewController *)self shouldExportOnly];
  v4 = [(CFXPreviewViewController *)self exportButton];
  [v4 setHidden:!v3];

  v5 = [(CFXPreviewViewController *)self playButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v70 = MEMORY[0x277CCAAD0];
  v77 = [(CFXPreviewViewController *)self playButton];
  v76 = [v77 widthAnchor];
  v75 = [v76 constraintEqualToConstant:70.0];
  v81[0] = v75;
  v74 = [(CFXPreviewViewController *)self playButton];
  v73 = [v74 heightAnchor];
  v72 = [v73 constraintEqualToConstant:70.0];
  v81[1] = v72;
  v71 = [(CFXPreviewViewController *)self playButton];
  v69 = [v71 centerXAnchor];
  v6 = [(CFXPreviewViewController *)self playerContainerView];
  v7 = [v6 centerXAnchor];
  v8 = [v69 constraintEqualToAnchor:v7];
  v81[2] = v8;
  v9 = [(CFXPreviewViewController *)self playButton];
  v10 = [v9 centerYAnchor];
  v11 = [(CFXPreviewViewController *)self playerContainerView];
  v12 = [v11 centerYAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v81[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
  [v70 activateConstraints:v14];

  v15 = [(CFXPreviewViewController *)self previewClip];
  v16 = [(CFXPreviewViewController *)self mediaItem];
  v17 = [v16 metadataURL];
  [v15 setMetadataURL:v17];

  v18 = [(CFXPreviewViewController *)self delegate];
  [v15 setMediaInterfaceOrientationForDisplay:{objc_msgSend(v18, "calculateMediaInterfaceOrientationForDisplay")}];

  v19 = MEMORY[0x277CBEB98];
  v80[0] = objc_opt_class();
  v80[1] = objc_opt_class();
  v80[2] = objc_opt_class();
  v80[3] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
  v21 = [v19 setWithArray:v20];

  v22 = MEMORY[0x277CCAAC8];
  v23 = [(CFXPreviewViewController *)self delegate];
  v24 = [v23 animojiMetadata];
  v78 = 0;
  v25 = [v22 unarchivedObjectOfClasses:v21 fromData:v24 error:&v78];
  v26 = v78;

  v27 = [v25 objectForKey:@"JFXAnimojiEffectDataRepresentationKey"];
  [v15 setOriginalAnimojiDataRepresentation:v27];

  v28 = [v25 objectForKey:@"JFXAnimojiEffectAvatarVersionNumberKey"];
  [v15 setOriginalAnimojiVersionNumber:{objc_msgSend(v28, "unsignedIntegerValue")}];

  [(CFXPreviewViewController *)self CFX_setFrameAndRenderSizes];
  v29 = [(CFXPreviewViewController *)self previewPlayer];
  [v29 setClip:v15];

  [(CFXPreviewViewController *)self setPlayButtonHiddenIfPossible:0];
  [(CFXPreviewViewController *)self setEffectAnimationsEnabledIfPossible:0];
  v30 = +[JFXOrientationMonitor keyWindow];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v32, v34, v36, v38}];
  v40 = v39;
  v41 = [(CFXPreviewViewController *)self previewControlsContainerHeightConstraint];
  [v41 setConstant:v40];

  [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:0];
  if (s_LiveCaptureSnapshotView)
  {
    v42 = objc_alloc(MEMORY[0x277D75D18]);
    v43 = [(CFXPreviewViewController *)self playerContainerView];
    [v43 frame];
    Width = CGRectGetWidth(v82);
    v45 = [(CFXPreviewViewController *)self playerContainerView];
    [v45 frame];
    v46 = [v42 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v83)}];

    [v46 addSubview:s_LiveCaptureSnapshotView];
    v47 = [(CFXPreviewViewController *)self previewPlayer];
    [v47 dispatchBlockWhenDone:&__block_literal_global_26];

    v48 = [(CFXPreviewViewController *)self previewPlayer];
    [v48 displayCompositionUpdateLoadingView:v46];
  }

  v49 = [(CFXPreviewViewController *)self effectBrowserContentPresenterViewController];
  [(UIViewController *)self jfxAddChildViewController:v49];

  v50 = [MEMORY[0x277D75418] currentDevice];
  v51 = [v50 userInterfaceIdiom];

  if (!v51)
  {
    v52 = [(CFXPreviewViewController *)self previewControls];
    v53 = [v52 controlsContainerViewWidthConstraint];
    LODWORD(v54) = 1132068864;
    [v53 setPriority:v54];

    v55 = [(CFXPreviewViewController *)self previewControls];
    v56 = [v55 controlsContainerViewHeightConstraint];
    LODWORD(v57) = 1132068864;
    [v56 setPriority:v57];

    v58 = [(CFXPreviewViewController *)self previewControls];
    v59 = [v58 controlsContainerViewLeadingConstraint];
    LODWORD(v60) = 1144750080;
    [v59 setPriority:v60];

    v61 = [(CFXPreviewViewController *)self previewControls];
    v62 = [v61 controlsContainerViewTrailingConstraint];
    LODWORD(v63) = 1144750080;
    [v62 setPriority:v63];

    v64 = [(CFXPreviewViewController *)self previewControls];
    v65 = [v64 controlsContainerViewTopConstraint];
    LODWORD(v66) = 1144750080;
    [v65 setPriority:v66];
  }

  v67 = isShowPlayerScrubbingControlsEnabled();
  v68 = [(CFXPreviewViewController *)self playbackSlider];
  [v68 setHidden:v67 ^ 1u];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXPreviewViewController;
  [(CFXPreviewViewController *)&v3 viewDidLayoutSubviews];
  [(CFXPreviewViewController *)self configureUIForOrientation];
}

- (void)configureBottomControlsForOrientation
{
  v3 = +[JFXOrientationMonitor keyWindow];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = +[JFXOrientationMonitor interfaceOrientation];
  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (!v14)
  {
    v22 = v12 - 3;
    [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v5, v7, v9, v11}];
    v24 = v23;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    [MEMORY[0x277D3D080] reviewScreenControlBarGeometryForReferenceBounds:v12 withOrientation:{v5, v7, v9, v11}];
    if ([(CFXPreviewViewController *)self dockIsMagnified])
    {
      [(CFXPreviewViewController *)self dockMagnifiedHeightDelta];
      *(&v80 + 1) = v25 + *(&v80 + 1);
    }

    v26 = [(CFXPreviewViewController *)self previewControlsContainerTopConstraint];
    v28 = v26;
    v29 = 750.0;
    if (v22 >= 2)
    {
      v30 = 250.0;
    }

    else
    {
      v30 = 750.0;
    }

    if (v22 >= 2)
    {
      v31 = 750.0;
    }

    else
    {
      v31 = 250.0;
    }

    *&v27 = v30;
    [v26 setPriority:v27];

    v32 = [(CFXPreviewViewController *)self previewControlsContainerWidthConstraint];
    *&v33 = v30;
    [v32 setPriority:v33];

    v34 = [(CFXPreviewViewController *)self previewControlsContainerHeightConstraint];
    *&v35 = v31;
    [v34 setPriority:v35];

    v36 = [(CFXPreviewViewController *)self view];
    [v36 bounds];
    if (v22 > 1)
    {
      v46 = CGRectGetHeight(*&v37) - v24;

      if ([(CFXPreviewViewController *)self dockIsMagnified])
      {
        [(CFXPreviewViewController *)self dockMagnifiedHeightDelta];
        v46 = v46 + v47;
      }

      v48 = [(CFXPreviewViewController *)self previewControlsContainerHeightConstraint];
      [v48 setConstant:v46];

      v49 = [(CFXPreviewViewController *)self previewControlsContainerLeadingConstraint];
      LODWORD(v50) = 1144750080;
      [v49 setPriority:v50];
    }

    else
    {
      v41 = CGRectGetWidth(*&v37) - v24;

      v42 = [(CFXPreviewViewController *)self previewControlsContainerWidthConstraint];
      [v42 setConstant:v41];

      v43 = [(CFXPreviewViewController *)self previewControlsContainerLeadingConstraint];
      v45 = v43;
      if (v12 == 4)
      {
        LODWORD(v44) = 1144750080;
      }

      else
      {
        *&v44 = 250.0;
      }

      if (v12 == 4)
      {
        v29 = 250.0;
      }

      else
      {
        v29 = 750.0;
      }

      [v43 setPriority:v44];
    }

    v51 = [(CFXPreviewViewController *)self previewControlsContainerTrailingConstraint];
    *&v52 = v29;
    [v51 setPriority:v52];

    v53 = *(&v81 + 1);
    v54 = *&v81;
    if (![(CFXPreviewViewController *)self dockIsMagnified])
    {
      goto LABEL_32;
    }

    [(CFXPreviewViewController *)self dockMagnifiedHeightDelta];
    v56 = ceil(v55 * 0.5);
    v57 = [MEMORY[0x277D75418] currentDevice];
    if (![v57 userInterfaceIdiom])
    {
      v58 = [MEMORY[0x277D759A0] mainScreen];
      [v58 bounds];
      if (v59 < 812)
      {
        v60 = [MEMORY[0x277D759A0] mainScreen];
        [v60 bounds];
        v62 = v61;

        if (v62 < 812)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      v57 = [(CFXPreviewViewController *)self view];
      [v57 safeAreaInsets];
      v64 = v63;
      [(CFXPreviewViewController *)self dockMagnifiedHeightDelta];
      v56 = v56 - (v64 - v65);
    }

LABEL_29:
    if (v22 < 2)
    {
      v54 = *&v81 - v56;
    }

    else
    {
      v53 = *(&v81 + 1) - v56;
    }

LABEL_32:
    v66 = [(CFXPreviewViewController *)self bottomControlsDrawer];
    [v66 setCenter:{v54, v53}];

    v67 = v79;
    v68 = v80;
    v69 = [(CFXPreviewViewController *)self bottomControlsDrawer];
    [v69 setBounds:{v67, v68}];

    v76 = v82;
    v77 = v83;
    v78 = v84;
    v21 = [(CFXPreviewViewController *)self bottomControlsDrawer];
    v73 = v76;
    v74 = v77;
    v75 = v78;
    [v21 setTransform:&v73];
    goto LABEL_33;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  [MEMORY[0x277D3D080] reviewScreenControlBarGeometryForReferenceBounds:v12 withOrientation:{v5, v7, v9, v11}];
  v15 = v79;
  v16 = v80;
  v17 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v17 setBounds:{v15, v16}];

  v18 = v81;
  v19 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v19 setCenter:v18];

  v70 = v82;
  v71 = v83;
  v72 = v84;
  v20 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  v73 = v70;
  v74 = v71;
  v75 = v72;
  [v20 setTransform:&v73];

  v21 = [(CFXPreviewViewController *)self previewControlsContainerHeightConstraint];
  [v21 setActive:0];
LABEL_33:
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = CFXPreviewViewController;
  [(CFXPreviewViewController *)&v13 viewWillAppear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_JFX_orientationMonitorInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = [(CFXPreviewViewController *)self bottomControlsDrawer];
    v8 = [v7 constraints];

    if (v8)
    {
      v9 = [(CFXPreviewViewController *)self bottomControlsDrawer];
      v10 = [(CFXPreviewViewController *)self bottomControlsDrawer];
      v11 = [v10 constraints];
      [v9 removeConstraints:v11];

      v12 = [(CFXPreviewViewController *)self bottomControlsDrawer];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CFXPreviewViewController;
  [(CFXPreviewViewController *)&v6 viewDidAppear:a3];
  v4 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v4 frame];
  v5 = CGRectEqualToRect(v7, *MEMORY[0x277CBF3A0]);

  if (v5)
  {
    [(CFXPreviewViewController *)self configureBottomControlsForOrientation];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CFXPreviewViewController;
  [(CFXPreviewViewController *)&v6 viewDidDisappear:a3];
  v4 = [(CFXPreviewViewController *)self previewPlayer];
  [v4 pause];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v14 = a3;
  v5 = [v14 destinationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v14 destinationViewController];
    [(CFXPreviewViewController *)self setPreviewPlayer:v7];

    v8 = [(CFXPreviewViewController *)self previewPlayer];
    [v8 setDisplayName:@"CFXPreviewPlayer"];

    v9 = [(CFXPreviewViewController *)self previewPlayer];
    [v9 setParentCode:301];

    v10 = [(CFXPreviewViewController *)self previewPlayer];
    [v10 setDelegate:self];
  }

  v11 = [v14 destinationViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v14 destinationViewController];
    [(CFXPreviewViewController *)self setPreviewControls:v13];
  }
}

- (UIView)effectsPickerDrawer
{
  [(CFXPreviewViewController *)self loadViewIfNeeded];
  v3 = [(CFXPreviewViewController *)self previewControls];
  v4 = [v3 effectsPickerDrawer];

  return v4;
}

- (void)setEffectsPickerDrawer:(id)a3
{
  v13 = a3;
  [(CFXPreviewViewController *)self loadViewIfNeeded];
  [(CFXPreviewViewController *)self setBottomControlsDrawer:v13];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = [(CFXPreviewViewController *)self view];
    [v6 addSubview:v13];
  }

  else
  {
    v7 = [(CFXPreviewViewController *)self mediaItem];
    v8 = [v7 clip];
    v9 = [v8 isStill];

    if (v9)
    {
      v10 = [MEMORY[0x277D75348] blackColor];
      v11 = [(CFXPreviewViewController *)self bottomControlsDrawer];
      [v11 setBackgroundColor:v10];
    }

    v6 = [(CFXPreviewViewController *)self appStripAndPreviewControlsContainer];
    v12 = [(CFXPreviewViewController *)self previewControlsContainerView];
    [v6 insertSubview:v13 belowSubview:v12];
  }
}

- (void)setPresentingFilterPicker:(BOOL)a3
{
  if (self->_presentingFilterPicker != a3)
  {
    v4 = a3;
    self->_presentingFilterPicker = a3;
    if (a3)
    {
      v6 = [(CFXPreviewViewController *)self previewPlayer];
      [v6 pause];
    }

    [(CFXPreviewViewController *)self setPlayButtonHiddenIfPossible:v4];
  }
}

- (CFXClip)previewClip
{
  v2 = [(CFXPreviewViewController *)self mediaItem];
  v3 = [v2 clip];

  return v3;
}

- (BOOL)shouldExportOnly
{
  if (shouldExportOnly_onceToken != -1)
  {
    [CFXPreviewViewController shouldExportOnly];
  }

  return shouldExportOnly_shouldExportOnly;
}

void __44__CFXPreviewViewController_shouldExportOnly__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  shouldExportOnly_shouldExportOnly = [v0 BOOLForKey:@"funCameraShouldExportOnly"];
}

- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController
{
  effectBrowserContentPresenterViewController = self->_effectBrowserContentPresenterViewController;
  if (!effectBrowserContentPresenterViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_effectBrowserContentPresenterViewController;
    self->_effectBrowserContentPresenterViewController = v4;

    effectBrowserContentPresenterViewController = self->_effectBrowserContentPresenterViewController;
  }

  return effectBrowserContentPresenterViewController;
}

- (void)playbackSliderValueChanged:(id)a3
{
  v4 = a3;
  v5 = [(CFXPreviewViewController *)self previewPlayer];
  v6 = [v5 duration];
  [v4 value];
  v8 = v7;

  v9 = [(CFXPreviewViewController *)self previewPlayer];
  [v9 seekToTime:(v8 * v6)];
}

- (void)CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[JFXVideoCameraController sharedInstance];
  v6 = [v5 mostRecentARMetadata];
  v7 = [v6 faceAnchor];
  if (v7)
  {
    v8 = v7;
    v9 = +[JFXVideoCameraController sharedInstance];
    v10 = [v9 hasValidFaceData];

    if (v10)
    {
      v4[2](v4);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = [(CFXPreviewViewController *)self previewClip];
  v12 = [(CFXPreviewViewController *)self previewPlayer];
  v13 = v12;
  if (v12)
  {
    [v12 currentCMTime];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__CFXPreviewViewController_CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion___block_invoke;
  v14[3] = &unk_278D7B018;
  v15 = v4;
  [JFXFaceTrackingPlaybackUtilities arDataForPlaybackElement:v11 atPlaybackTime:v16 completion:v14];

LABEL_9:
}

void __89__CFXPreviewViewController_CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JFXVideoCameraController sharedInstance];
  [v4 setMostRecentARMetadata:v3];

  v5 = [v3 faceAnchor];

  v6 = +[JFXVideoCameraController sharedInstance];
  [v6 setHasValidFaceData:v5 != 0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CFXPreviewViewController_CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion___block_invoke_2;
  block[3] = &unk_278D7A168;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)addEffect:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = JFXLog_effects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 jtEffect];
    v10 = NSStringFromJFXEffectType([v9 type]);
    v11 = [v6 localizedTitle];
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@", buf, 0x16u);
  }

  v12 = [v6 jtEffect];
  v13 = [v12 type];

  if (v13 == 2)
  {
    v14 = [v6 jtEffect];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__CFXPreviewViewController_addEffect_completion___block_invoke;
    v23[3] = &unk_278D7B068;
    v23[4] = self;
    v24 = v14;
    v25 = v6;
    v26 = v7;
    v15 = v7;
    v16 = v6;
    v17 = v14;
    [(CFXPreviewViewController *)self CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion:v23];
  }

  else
  {
    v18 = [(CFXPreviewViewController *)self previewPlayer];
    [v18 pause];

    v19 = [v6 jtEffect];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__CFXPreviewViewController_addEffect_completion___block_invoke_3;
    v20[3] = &unk_278D7B090;
    v20[4] = self;
    v21 = v6;
    v22 = v7;
    v16 = v7;
    v17 = v6;
    [v19 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v20];
  }
}

void __49__CFXPreviewViewController_addEffect_completion___block_invoke(uint64_t a1)
{
  v2 = 0x3FD6666666666666;
  if (![*(a1 + 32) CFX_canApplyFaceTracking])
  {
    goto LABEL_5;
  }

  v3 = +[JFXVideoCameraController sharedInstance];
  v4 = [v3 mostRecentARMetadata];

  v5 = [v4 faceAnchor];

  if (!v5)
  {

LABEL_5:
    v6 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v6 = 1;
  v2 = 0x3FE399999999999ALL;
LABEL_6:
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CFXPreviewViewController_addEffect_completion___block_invoke_2;
  v9[3] = &unk_278D7B040;
  v15 = v2;
  v16 = v6;
  v10 = v7;
  v11 = v4;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v8 = v4;
  [v10 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v9];
}

uint64_t __49__CFXPreviewViewController_addEffect_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) previewClip];
  v7 = [v6 playableMediaContentMode];
  v8 = [*(a1 + 48) previewClip];
  v9 = [v8 mediaInterfaceOrientationForDisplay];
  v30 = *MEMORY[0x277CC08F0];
  v27 = v30;
  *&v31 = *(MEMORY[0x277CC08F0] + 16);
  v10 = v31;
  [JFXEffectEditingUtilities nextNormalizedInsertionPointForOverlay:v4 scaleRelativeToCenterSquare:&v30 atTime:v3 applyTracking:v5 withARMetadata:0 transformAnimation:v7 playableMediaContentMode:v2 playableInterfaceOrientation:v9];
  v12 = v11;
  v14 = v13;

  v15 = *(a1 + 72);
  v29 = *(a1 + 80);
  v16 = *(a1 + 40);
  v28 = *(a1 + 32);
  v17 = [*(a1 + 48) previewClip];
  LODWORD(v8) = [v17 playableMediaContentMode];
  v18 = [*(a1 + 48) previewClip];
  v19 = [v18 mediaInterfaceOrientationForDisplay];
  v20 = [*(a1 + 48) previewClip];
  v21 = [v20 playableAspectRatio];
  v22 = [*(a1 + 48) previewClip];
  v23 = [v22 playableAspectRatioPreservationMode];
  v33 = v27;
  v34 = v10;
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  v30 = *MEMORY[0x277CBF2C0];
  v31 = v24;
  v32 = *(MEMORY[0x277CBF2C0] + 32);
  LODWORD(v26) = v8;
  [JFXEffectEditingUtilities configureOverlayForInsertion:v28 atNormalizedPoint:&v33 atTime:1 isPositionRelativeToCenterSquare:1 isPositionRelativeToFace:v29 scaleRelativeToCenterSquare:0 rotationAngle:v12 applyTracking:v14 autoDetectTrackingType:v15 withARMetadata:0.0 previewViewCorrectionTransform:v16 transformAnimation:&v30 playableMediaContentMode:0 playableInterfaceOrientation:v26 playableAspectRatio:v19 playableAspectRatioPreservationMode:v21, v23];

  [*(a1 + 48) CFX_addEffect:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__CFXPreviewViewController_addEffect_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) CFX_addEffect:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumHitTestArea
{
  v2 = [(CFXPreviewViewController *)self playerContainerView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = 44.0 / v4;
  v8 = 44.0 / v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)addOverlayEffect:(id)a3 atScreenLocation:(CGPoint)a4 atScreenSize:(CGSize)a5 rotationAngle:(double)a6 completion:(id)a7
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v63 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  v16 = JFXLog_effects();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v14 jtEffect];
    v18 = NSStringFromJFXEffectType([v17 type]);
    v19 = [v14 localizedTitle];
    v64.x = x;
    v64.y = y;
    v20 = NSStringFromCGPoint(v64);
    v65.width = width;
    v65.height = height;
    v21 = NSStringFromCGSize(v65);
    *buf = 138544386;
    v54 = v18;
    v55 = 2114;
    v56 = v19;
    v57 = 2114;
    v58 = v20;
    v59 = 2114;
    v60 = v21;
    v61 = 2048;
    v62 = a6;
    _os_log_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEFAULT, "Adding effect - type: %{public}@, name: %{public}@, screenLocation: %{public}@, screenSize: %{public}@, rotationAngle: %f", buf, 0x34u);
  }

  v22 = [(CFXPreviewViewController *)self previewPlayer];
  [v22 pause];

  v23 = [(CFXPreviewViewController *)self playerContainerView];
  [v23 convertPoint:0 fromView:{x, y}];
  v25 = v24;
  [v23 frame];
  v27 = v25 / v26;
  [v23 convertSize:0 fromView:{width, height}];
  v29 = v28;
  v31 = v30;
  +[JFXMediaSettings renderSize];
  v33 = v32;
  v35 = v34;
  [v23 frame];
  v37 = v33 * (v29 / v36);
  [v23 frame];
  v39 = CGRectMakeWithSizeAndCenterPoint(v37, v35 * (v31 / v38), v27 * v33);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __100__CFXPreviewViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle_completion___block_invoke;
  v45[3] = &unk_278D7B0E0;
  v45[4] = self;
  v46 = v14;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v52 = a6;
  v47 = v15;
  v43 = v15;
  v44 = v14;
  [(CFXPreviewViewController *)self CFX_prepareFaceTrackingDataForOverlayInsertionWithCompletion:v45];
}

void __100__CFXPreviewViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) CFX_canApplyFaceTracking])
  {
    v2 = +[JFXVideoCameraController sharedInstance];
    v3 = [v2 mostRecentARMetadata];

    v4 = [v3 faceAnchor];
    v5 = v4 != 0;

    if (v4)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = [*(a1 + 40) jtEffect];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__CFXPreviewViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle_completion___block_invoke_2;
  v11[3] = &unk_278D7B0B8;
  v7 = *(a1 + 72);
  v17 = *(a1 + 56);
  v18 = v7;
  v19 = *(a1 + 88);
  v20 = v5;
  v12 = v6;
  v13 = v4;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  [v10 loadRenderEffectInBackgroundWithCompletionOnMainQueue:v11];
}

uint64_t __100__CFXPreviewViewController_addOverlayEffect_atScreenLocation_atScreenSize_rotationAngle_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 104);
  v20 = *(a1 + 112);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) previewClip];
  v6 = [v5 playableMediaContentMode];
  v7 = [*(a1 + 48) previewClip];
  v8 = [v7 mediaInterfaceOrientationForDisplay];
  v9 = [*(a1 + 48) previewClip];
  v10 = [v9 playableAspectRatio];
  v11 = [*(a1 + 48) previewClip];
  v12 = [v11 playableAspectRatioPreservationMode];
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v22 = *MEMORY[0x277CC08F0];
  v23 = *(MEMORY[0x277CC08F0] + 16);
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v21[0] = *MEMORY[0x277CBF2C0];
  v21[1] = v17;
  v21[2] = *(MEMORY[0x277CBF2C0] + 32);
  LODWORD(v19) = v6;
  [JFXEffectEditingUtilities configureOverlayForInsertion:v4 inRect:&v22 atTime:v20 rotationAngle:1 applyTracking:v3 autoDetectTrackingType:v21 withARMetadata:v13 previewViewCorrectionTransform:v14 transformAnimation:v15 playableMediaContentMode:v16 playableInterfaceOrientation:v2 playableAspectRatio:0 playableAspectRatioPreservationMode:v19, v8, v10, v12];

  [*(a1 + 48) CFX_addEffect:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)CFX_addEffect:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CFXPreviewViewController *)self removeEffectEditor];
  v5 = [v4 jtEffect];
  v6 = [v5 type];
  if (v6 == 7 || v6 == 1)
  {
    v8 = v6;
    v9 = [(CFXPreviewViewController *)self previewClip];
    [v9 removeAllEffectsOfType:v8];
  }

  if ([JFXEffectEditingUtilities canEditTextForEffect:v5])
  {
    v10 = [v4 jtEffect];
    [v10 setHidden:1];
  }

  if (([v5 isNone] & 1) == 0)
  {
    v11 = [(CFXPreviewViewController *)self previewClip];
    [v11 addEffect:v5];

    v12 = JFXLog_effects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromJFXEffectType([v5 type]);
      v14 = [v4 localizedTitle];
      *v27 = 138543618;
      *&v27[4] = v13;
      *&v27[12] = 2114;
      *&v27[14] = v14;
      _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "Added effect - type: %{public}@, name: %{public}@", v27, 0x16u);
    }
  }

  v15 = [(CFXPreviewViewController *)self previewPlayer];
  [v15 updateCompositionForEffectChange];

  v16 = [v4 localizedTitle];
  v17 = [v5 type];
  switch(v17)
  {
    case 1:
      v20 = JFXLog_automation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 138412290;
        *&v27[4] = v16;
        v21 = "Element Added: Filter - %@";
        goto LABEL_27;
      }

      break;
    case 7:
      v20 = JFXLog_automation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 138412290;
        *&v27[4] = v16;
        v21 = "Element Added: Animoji - %@";
        goto LABEL_27;
      }

      break;
    case 2:
      if ([JFXEffectEditingUtilities canEditTextForEffect:v5]&& ![(CFXPreviewViewController *)self presentFullScreenTextEditorForEffect:v5 insertingEffect:1])
      {
        v18 = JFXLog_DebugViewerUI();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController CFX_addEffect:];
        }

        v19 = [(CFXPreviewViewController *)self previewClip];
        [v19 removeEffect:v5];
      }

      v20 = JFXLog_automation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 138412290;
        *&v27[4] = v16;
        v21 = "Element Added: Overlay - %@";
LABEL_27:
        _os_log_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEFAULT, v21, v27, 0xCu);
      }

      break;
    default:
      goto LABEL_29;
  }

LABEL_29:
  v22 = +[CFXAnalyticsManager sharedInstance];
  [v22 trackEffect:v4];

  v23 = CFXLog_action();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(CFXPreviewViewController *)self previewClip];
    v25 = [v24 effectStack];
    v26 = [CFXActionLogging actionLogAsJSONForEvent:@"effect added" atLocation:@"post-capture" withEffectStack:v25];
    *v27 = 138543362;
    *&v27[4] = v26;
    _os_log_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@", v27, 0xCu);
  }
}

- (void)filterPickerPreviewBackgroundImageAtSizeInPixels:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  memset(&v18, 0, sizeof(v18));
  v8 = [(CFXPreviewViewController *)self previewPlayer];
  v9 = [v8 currentTime];
  v10 = [(CFXPreviewViewController *)self previewPlayer];
  CMTimeMake(&v18, v9, [v10 frameRate]);

  v11 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke;
  v13[3] = &unk_278D7B130;
  v17 = v18;
  v15 = width;
  v16 = height;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(v11, v13);
}

void __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewClip];
  v3 = [v2 copy];

  [v3 removeAllEffects];
  v4 = [*(a1 + 32) previewClip];
  v5 = [v4 effectsOfType:7];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 copy];
    [v3 addEffect:v7];
  }

  v8 = [[CFXExportClipDataSource alloc] initWithClip:v3];
  v9 = [[JFXComposition alloc] initWithClipsDataSource:v8];
  [(JFXComposition *)v9 setParentCode:303];
  [(CFXExportClipDataSource *)v8 renderSize];
  [(JFXComposition *)v9 setViewSize:?];
  v10 = [(JFXComposition *)v9 playerItem];
  [(JFXComposition *)v9 applyPlayerItemProperties];
  v11 = [v10 asset];
  v12 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:v11];
  v13 = [v10 videoComposition];
  [v12 setVideoComposition:v13];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  v15 = [MEMORY[0x277CCAE60] valueWithCMTime:&v22];
  [v14 addObject:v15];
  [v12 setMaximumSize:{*(a1 + 48), *(a1 + 56)}];
  [v12 setAppliesPreferredTrackTransform:1];
  v22 = *MEMORY[0x277CC08F0];
  v18 = v22;
  v19 = v3;
  v16 = v6;
  v23 = *(MEMORY[0x277CC08F0] + 16);
  v17 = v23;
  [v12 setRequestedTimeToleranceBefore:&v22];
  v22 = v18;
  v23 = v17;
  [v12 setRequestedTimeToleranceAfter:&v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke_2;
  v20[3] = &unk_278D7B108;
  v21 = *(a1 + 40);
  [v12 generateCGImagesAsynchronouslyForTimes:v14 completionHandler:v20];
}

void __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (a3)
  {
    v9 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke_4;
    v12[3] = &unk_278D7ACB0;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v11 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__CFXPreviewViewController_filterPickerPreviewBackgroundImageAtSizeInPixels_completion___block_invoke_3;
    block[3] = &unk_278D7ACB0;
    v17 = *(a1 + 32);
    v16 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v11 = v17;
  }
}

- (void)CFX_exportPhotoWithEffects
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(CFXPreviewViewController *)self mediaItem];
  v4 = [v3 originalAssetURL];

  v5 = [(CFXPreviewViewController *)self previewClip];
  v6 = [v5 effectStack];

  v7 = [JFXEffectsPreviewGenerator alloc];
  v17 = *MEMORY[0x277D41AC8];
  v18[0] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [(JFXEffectsPreviewGenerator *)v7 initWithRendererOptions:v8];

  [(CFXPreviewViewController *)self setStillImagePreviewGenerator:v9];
  v10 = dispatch_get_global_queue(21, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke;
  v13[3] = &unk_278D7A600;
  v14 = v4;
  v15 = v6;
  v16 = self;
  v11 = v6;
  v12 = v4;
  dispatch_async(v10, v13);
}

void __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke(id *a1)
{
  v83[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D755B8];
  v3 = [a1[4] path];
  v4 = [v2 imageWithContentsOfFile:v3];

  v5 = [v4 jfx_renderedImageWithUpOrientation];

  v6 = [MEMORY[0x277D41618] imageWithUIImage:v5];
  v7 = [a1[5] mutableDeepCopy];
  [v6 size];
  v9 = v8;
  v11 = v10;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  PVTransformAnimationInfoIdentity();
  v12 = [a1[6] delegate];
  v13 = [v12 cameraModeUsedForCapture];

  v14 = JFXIsCTMCroppedCameraMode(v13);
  if (v14)
  {
    v15 = 1.77777778;
    if (v9 <= v11)
    {
      v15 = 0.5625;
    }

    if (v13 == 9)
    {
      v15 = 1.0;
    }

    if (v9 / v15 <= v11)
    {
      v16 = v9 / v15;
    }

    else
    {
      v16 = v11;
    }

    v17 = v15 * v16;
    PVTransformAnimationInfoForLiveCapture();
    v78 = v74;
    v79 = v75;
    v80 = v76;
    v81 = v77;
  }

  else
  {
    v17 = v9;
    v16 = v11;
  }

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_2;
  v73[3] = &__block_descriptor_48_e26_v32__0__JFXEffect_8Q16_B24l;
  *&v73[4] = v17;
  *&v73[5] = v16;
  [v7 enumerateObjectsUsingBlock:v73];
  v18 = [JFXEffectsPreviewGenerationRequest alloc];
  v74 = kDefaultEffectPreviewRenderTime;
  *&v75 = 0;
  v19 = [(JFXEffectsPreviewGenerationRequest *)v18 initWithInput:v6 effectStack:v7 outputSize:&v74 renderTime:v17, v16];
  v20 = v19;
  if (v14)
  {
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
    [(JFXEffectsPreviewGenerationRequest *)v19 setTransformAnimationInfo:&v74 scaleToOutput:0];
  }

  v21 = [MEMORY[0x277CBEB38] dictionary];
  v22 = [a1[6] previewClip];
  v23 = [v22 effectsOfType:7];
  v24 = [v23 count];

  v25 = 0x277CBE000;
  if (v24)
  {
    v66 = v21;
    v67 = v7;
    v68 = v6;
    v69 = v5;
    v26 = MEMORY[0x277CCACA8];
    v27 = [a1[6] previewClip];
    v28 = [v27 uuid];
    v29 = [v26 stringWithFormat:@"%@_%@", @"exportPhotoWithEffects_arMetadataMediaReader", v28];

    v30 = +[JFXMediaDataReaderFactory sharedInstance];
    v31 = [a1[6] previewClip];
    v65 = v29;
    v32 = [v30 createARMetadataReaderWithCreationAttributesProvider:v31 name:v29];

    [v32 beginReading];
    v74 = *MEMORY[0x277CC08F0];
    v62 = v74;
    *&v75 = *(MEMORY[0x277CC08F0] + 16);
    v33 = v75;
    v64 = v32;
    v34 = [v32 arMetadataItemForTime:&v74];
    v35 = [v34 arMetadata];

    v36 = MEMORY[0x277CCACA8];
    v37 = [a1[6] previewClip];
    v38 = [v37 uuid];
    v39 = [v36 stringWithFormat:@"%@_%@", @"exportPhotoWithEffects_depthMediaReader", v38];

    v40 = +[JFXMediaDataReaderFactory sharedInstance];
    v41 = [a1[6] previewClip];
    v61 = v39;
    v42 = [v40 createDepthDataReaderWithCreationAttributesProvider:v41 name:v39];

    [v42 beginReading];
    v74 = v62;
    *&v75 = v33;
    v60 = [v42 depthDataForTime:&v74];
    v43 = [v60 avDepthData];
    v44 = objc_alloc_init(JFXAnimojiEffectRenderer);
    [(JFXAnimojiEffectRenderer *)v44 setAllowAntialiasing:0];
    v45 = v44;
    v46 = [a1[6] delegate];
    v47 = [v46 calculateMediaInterfaceOrientationForDisplay];

    [JFXAnimojiEffectRenderer animojiBufferSizeWithImageSize:v47 interfaceOrientation:v9, v11];
    v63 = v35;
    v83[0] = v35;
    v82[0] = @"JFXAnimojiRendererMetadata_JFXARMetadata";
    v82[1] = @"JFXAnimojiRendererMetadata_RenderSize";
    v72[0] = v48;
    v72[1] = v49;
    v50 = [MEMORY[0x277CCAE60] valueWithBytes:v72 objCType:"{CGSize=dd}"];
    v83[1] = v50;
    v82[2] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
    v51 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
    v83[2] = v51;
    v82[3] = @"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation";
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    v83[3] = v52;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];
    v54 = [v53 mutableCopy];

    if (v43)
    {
      [v54 setObject:v43 forKeyedSubscript:@"JFXAnimojiRendererMetadata_DepthData"];
    }

    v55 = [a1[6] previewClip];
    v56 = [v55 originalAnimojiDataRepresentation];

    if (v56)
    {
      [v54 setObject:v56 forKeyedSubscript:@"JFXAnimojiRendererMetadata_DataRepresentation"];
    }

    v57 = [JFXCustomRenderProperties newCustomRenderProperties:v45 metadata:v54];
    [v66 setObject:v57 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];

    v21 = v66;
    v6 = v68;
    v5 = v69;
    v7 = v67;
    v25 = 0x277CBE000uLL;
  }

  v58 = [*(v25 + 2752) dictionaryWithDictionary:v21];
  [(JFXEffectsPreviewGenerationRequest *)v20 setCustomRenderingProperties:v58];

  [(JFXEffectsPreviewGenerationRequest *)v20 setHighQuality:1];
  v59 = [a1[6] stillImagePreviewGenerator];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_3;
  v70[3] = &unk_278D7B178;
  v70[4] = a1[6];
  v71 = a1[4];
  [v59 generatePreviewRequest:v20 completionHandler:v70];
}

void __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setRenderSize:{v2, v3}];
  v5 = [v4 renderEffect];

  v6[0] = kDefaultEffectPreviewAnimationRange;
  v6[1] = *algn_242B5CE28;
  v6[2] = xmmword_242B5CE38;
  [v5 setEffectRange:v6];
}

void __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectEnumerator];
  v4 = [v3 nextObject];

  v5 = [v4 uiImage];
  v6 = [*(a1 + 32) mediaItem];
  v7 = [v6 adjustedAssetURL];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v24 = 0;
    v9 = [JFXMediaURLManager photoExportURL:&v24 isHEIF:0];
    v8 = v24;
    v10 = [*(a1 + 32) mediaItem];
    [v10 setAdjustedAssetURL:v9];
  }

  v11 = [*(a1 + 32) mediaItem];
  v12 = [v11 adjustedAssetURL];

  if (v12)
  {
    v13 = [v12 pathExtension];
    v14 = ![v13 caseInsensitiveCompare:@"heic"]|| ![v13 caseInsensitiveCompare:@"heif"];
    v15 = CGImageSourceCreateWithURL(*(a1 + 40), 0);
    v16 = CGImageSourceCopyMetadataAtIndex(v15, 0, 0);
    MutableCopy = CGImageMetadataCreateMutableCopy(v16);
    CGImageMetadataRemoveTagWithPath(MutableCopy, 0, @"tiff:Orientation");
    if (v16)
    {
      CFRelease(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v18 = [*(a1 + 32) CFX_saveImageToURL:v12 image:v5 compressionQuality:v14 asHEIF:MutableCopy metadata:1.0];
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if ((v18 & 1) == 0)
    {
      v19 = JFXLog_export();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_3_cold_1();
      }
    }
  }

  else
  {
    v13 = JFXLog_export();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_3_cold_2();
    }
  }

  v20 = +[JFXVideoCameraController sharedInstance];
  [v20 clear];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_79;
  block[3] = &unk_278D79C88;
  block[4] = *(a1 + 32);
  v23 = v8;
  v21 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__CFXPreviewViewController_CFX_exportPhotoWithEffects__block_invoke_79(uint64_t a1)
{
  [*(a1 + 32) CFX_notifyDelegateExportMediaItemFinishedWithError:*(a1 + 40)];
  v2 = [*(a1 + 32) mediaItem];
  v3 = [v2 clip];
  [v3 removeAllEffects];

  v4 = *(a1 + 32);

  return [v4 setStillImagePreviewGenerator:0];
}

- (BOOL)CFX_saveImageToURL:(id)a3 image:(id)a4 compressionQuality:(double)a5 asHEIF:(BOOL)a6 metadata:(CGImageMetadata *)a7
{
  v8 = a6;
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = MEMORY[0x277CE5D80];
  if (!v8)
  {
    v12 = MEMORY[0x277CE5D90];
  }

  v13 = CGImageDestinationCreateWithURL(a3, *v12, 1uLL, 0);
  if (v13)
  {
    v14 = v13;
    v20 = *MEMORY[0x277CD2D48];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v21[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    v17 = [v11 CGImage];
    if (a7)
    {
      CGImageDestinationAddImageAndMetadata(v14, v17, a7, v16);
    }

    else
    {
      CGImageDestinationAddImage(v14, v17, v16);
    }

    v18 = CGImageDestinationFinalize(v14);
    CFRelease(v14);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)exportMediaItemToFileURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke;
  v6[3] = &unk_278D79C88;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:0];

  v3 = [*(a1 + 32) previewPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke_2;
  v5[3] = &unk_278D79C88;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 pauseWithCompletionBlock:v5];
}

void __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke_3;
  v2[3] = &unk_278D79C88;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __53__CFXPreviewViewController_exportMediaItemToFileURL___block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) previewPlayer];
  [v3 didReceiveMemoryWarning];

  objc_autoreleasePoolPop(v2);
  v4 = [*(a1 + 32) previewClip];
  v5 = [v4 isStill];
  [*(a1 + 32) setSaveMediaItemToFunCamPhotosAlbumUponExport:*(a1 + 40) == 0];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mediaItem];
  [v7 setAdjustedAssetURL:v6];

  [*(a1 + 32) CFX_setIsExporting:1];
  [*(a1 + 32) setPlayButtonHiddenIfPossible:1];
  [*(a1 + 32) CFX_setEffectAnimationsEnabledIfPossible:1 updatePlayer:0];
  if (([*(a1 + 32) shouldExportOnly] & 1) == 0)
  {
    v8 = [*(a1 + 32) delegate];
    v9 = *(a1 + 32);
    v10 = [v9 mediaItem];
    [v8 previewViewController:v9 didStartExportingMediaItem:v10];
  }

  if (v5)
  {
    [*(a1 + 32) CFX_exportPhotoWithEffects];
    v11 = CFXLog_action();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 effectStack];
      v13 = [CFXActionLogging actionLogAsJSONForEvent:@"exported still" atLocation:@"post-capture" withEffectStack:v12];
      *buf = 138543362;
      v37 = v13;
      _os_log_impl(&dword_242A3B000, &v11->super, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [[CFXExportClipDataSource alloc] initWithClip:v4];
    v14 = [[JFXCompositionExporter alloc] initWithClipsDataSource:v11];
    [*(a1 + 32) setExporter:v14];

    v15 = *(a1 + 32);
    v16 = [v15 exporter];
    [v16 setDelegate:v15];

    v17 = [*(a1 + 32) mediaItem];
    v18 = [v17 adjustedAssetURL];

    if (!v18)
    {
      v34 = 0;
      v19 = [JFXMediaURLManager videoExportURL:&v34];
      v20 = v34;
      v21 = [*(a1 + 32) mediaItem];
      [v21 setAdjustedAssetURL:v19];
    }

    v22 = [v4 mediaItem];
    v23 = [v22 colorSpace];
    v24 = [*(a1 + 32) CFX_AVAssetExportPresetWithColorSpace:v23];
    v25 = [*(a1 + 32) mediaItem];
    v26 = [v25 adjustedAssetURL];
    v27 = [v26 path];

    v28 = [*(a1 + 32) exporter];
    v35 = v24;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [v28 startWithPresets:v29 toFilePath:v27 poster:0];

    v30 = CFXLog_action();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      [v4 effectStack];
      v31 = v33 = v22;
      v32 = [CFXActionLogging actionLogAsJSONForEvent:@"exported video" atLocation:@"post-capture" withEffectStack:v31];
      *buf = 138543362;
      v37 = v32;
      _os_log_impl(&dword_242A3B000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);

      v22 = v33;
    }
  }
}

- (id)CFX_AVAssetExportPresetWithColorSpace:(id)a3
{
  v3 = a3;
  v4 = +[CFXMediaSettings sharedInstance];
  [v4 frameSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = [MEMORY[0x277CF7EC0] preferences];
  v11 = [v10 usingMostCompatibleEncoding];

  v12 = [v3 isHDRSpace];
  v13 = [v3 isWideGamutSpace];

  v14 = [MEMORY[0x277CF7E78] capabilities];
  v15 = [v14 isHEVCEncodingSupported];

  v16 = JFXAssetExportPresetHEVC1920x1080HDR;
  v17 = JFXAssetExportPresetHEVC1920x1080;
  if (((v12 | ~v11 | v13) & v15 & 1) == 0)
  {
    v17 = *MEMORY[0x277CE5BB0];
  }

  v18 = JFXAssetExportPresetHEVC1280x720;
  if (((v12 | ~v11 | v13) & v15 & 1) == 0)
  {
    v18 = *MEMORY[0x277CE5BA8];
  }

  if (v12)
  {
    v18 = JFXAssetExportPresetHEVC1280x720HDR;
  }

  else
  {
    v16 = v17;
  }

  if ((v9 | (v8 << 32)) <= 0x500FFFFFFFFLL && v9 <= 1280)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  return v20;
}

- (void)playbackDidStart:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CFXPreviewViewController_playbackDidStart___block_invoke;
  v6[3] = &unk_278D79D20;
  v6[4] = self;
  v4 = *MEMORY[0x277D76DA0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CFXPreviewViewController_playbackDidStart___block_invoke_2;
  v5[3] = &unk_278D7B1A0;
  v5[4] = self;
  [JTAnimation performAnimation:v6 duration:v5 completion:v4];
  [(CFXPreviewViewController *)self CFX_hidePreviewUI];
}

void __45__CFXPreviewViewController_playbackDidStart___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playButton];
  [v1 setAlpha:0.0];
}

void __45__CFXPreviewViewController_playbackDidStart___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) playButton];
  [v1 notifyPlaybackDidStart];
}

- (void)playbackTimeDidChange:(id)a3 currentTime:(int)a4
{
  v5 = a4 / [a3 duration];
  v7 = [(CFXPreviewViewController *)self playbackSlider];
  *&v6 = v5;
  [v7 setValue:v6];
}

- (void)playbackDidStop:(id)a3 currentTime:(int)a4
{
  v6 = a3;
  v7 = [(CFXPreviewViewController *)self previewPlayer];
  v8 = [v7 clip];
  v9 = [v8 duration];

  if (v9 <= a4)
  {
    [v6 seekToTime:0];
  }

  [(CFXPreviewViewController *)self setEffectAnimationsEnabledIfPossible:0];
  v10 = [(CFXPreviewViewController *)self playButton];
  [v10 notifyPlaybackDidStop];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CFXPreviewViewController_playbackDidStop_currentTime___block_invoke;
  v11[3] = &unk_278D79D20;
  v11[4] = self;
  [JTAnimation performAnimation:v11 duration:0 completion:*MEMORY[0x277D76DA0]];
  [(CFXPreviewViewController *)self CFX_showPreviewUI];
}

void __56__CFXPreviewViewController_playbackDidStop_currentTime___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playButton];
  [v1 setAlpha:1.0];
}

- (void)playbackAreaTapped:(id)a3 normalizedClipPoint:(CGPoint)a4 normalizedMinimumSize:(id)a5 atTime:(int)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  y = a4.y;
  x = a4.x;
  v11 = [(CFXPreviewViewController *)self previewClip:a3];
  v12 = [v11 effectsOfType:2];

  v13 = [(CFXPreviewViewController *)self previewPlayer];
  v14 = [v13 isPlaying];

  if ((v14 & 1) != 0 || (v19 = *MEMORY[0x277CC08F0], v20 = *(MEMORY[0x277CC08F0] + 16), [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v12 atNormalizedPoint:&v19 atTime:1 adjustForMinimumSize:x normalizedMinimumSize:y, var0, var1], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = [(CFXPreviewViewController *)self delegate];
    v18 = [v17 selectedAppIdentifierForPreviewViewController:self];

    if (!v18)
    {
      [(CFXPreviewViewController *)self CFX_togglePreviewUI];
    }
  }

  else
  {
    v16 = v15;
    [(CFXPreviewViewController *)self displayEffectEditorForEffect:v15 forMode:0];
  }
}

- (void)playbackAreaPanned:(id)a3 gesture:(id)a4 normalizedClipPoint:(CGPoint)a5 normalizedMinimumSize:(id)a6 translationDelta:(CGPoint)a7 atTime:(int)a8 timeScale:(int)a9
{
  var1 = a6.var1;
  var0 = a6.var0;
  y = a5.y;
  x = a5.x;
  v14 = a4;
  v15 = [(CFXPreviewViewController *)self previewClip];
  if (!v15)
  {
    goto LABEL_43;
  }

  if ([v14 state] == 1)
  {
    v16 = [(CFXPreviewViewController *)self previewPlayer];
    v17 = [v16 isPlaying];

    if (v17)
    {
      goto LABEL_43;
    }
  }

  v18 = [v14 state];
  if ((v18 - 3) < 2)
  {
    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 1) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v31 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
      }

      v32 = [(CFXPreviewViewController *)self effectEditor];
      [v32 handlePanGesture:v14];

      v33 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v33 & 0xFFFFFFFFFFFFFFFELL];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v33 & 0xFFFFFFFFFFFFFFFELL];
      if (![(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v34 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
        }

        [(CFXPreviewViewController *)self removeEffectEditor];
      }
    }
  }

  else
  {
    if (v18 != 2)
    {
      if (v18 != 1)
      {
        goto LABEL_43;
      }

      v19 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
      }

      if ([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v20 = [(CFXPreviewViewController *)self effectEditor];
        v21 = [v20 editEffect];

        v22 = [v21 jtEffect];
        v23 = CFXLog_DebugEffectEditingUI();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

        if (v24)
        {
          v25 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
          }
        }

        if (v22)
        {
          goto LABEL_36;
        }
      }

      v26 = [(CFXPreviewViewController *)self previewClip];
      v27 = [v26 effectsOfType:2];

      v40 = *MEMORY[0x277CC08F0];
      v41 = *(MEMORY[0x277CC08F0] + 16);
      v22 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v27 atNormalizedPoint:&v40 atTime:1 adjustForMinimumSize:x normalizedMinimumSize:y, var0, var1];
      v28 = CFXLog_DebugEffectEditingUI();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      v30 = v29;
      if (v22)
      {

        if (!v30)
        {
LABEL_35:

LABEL_36:
          if ([v22 type] == 2)
          {
            v37 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v37 | 1];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v37 | 1];
            if (![(CFXPreviewViewController *)self isEditingEffect])
            {
              [(CFXPreviewViewController *)self displayEffectEditorForEffect:v22 forMode:1];
            }

            v38 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
            }

            v39 = [(CFXPreviewViewController *)self effectEditor];
            [v39 handlePanGesture:v14];
          }

          goto LABEL_43;
        }

        v28 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
        }
      }

      else if (v29)
      {
        [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
      }

      goto LABEL_35;
    }

    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 1) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v35 = [(CFXPreviewViewController *)self effectEditor];
      [v35 handlePanGesture:v14];

      v36 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:];
      }
    }
  }

LABEL_43:
}

- (void)playbackAreaPinched:(id)a3 gesture:(id)a4 normalizedClipPoints:(id)a5 normalizedCenterPoint:(CGPoint)a6 normalizedMinimumSize:(id)a7 scaleDelta:(double)a8 atTime:(int)a9 timeScale:(int)a10
{
  var1 = a7.var1;
  var0 = a7.var0;
  y = a6.y;
  x = a6.x;
  v15 = a4;
  v16 = [(CFXPreviewViewController *)self previewClip];
  if (!v16)
  {
    goto LABEL_43;
  }

  if ([v15 state] == 1)
  {
    v17 = [(CFXPreviewViewController *)self previewPlayer];
    v18 = [v17 isPlaying];

    if (v18)
    {
      goto LABEL_43;
    }
  }

  v19 = [v15 state];
  if ((v19 - 3) < 2)
  {
    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 2) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v32 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
      }

      v33 = [(CFXPreviewViewController *)self effectEditor];
      [v33 handlePinchGesture:v15];

      v34 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v34 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v34 & 0xFFFFFFFFFFFFFFFDLL];
      if (![(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v35 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
        }

        [(CFXPreviewViewController *)self removeEffectEditor];
      }
    }
  }

  else
  {
    if (v19 != 2)
    {
      if (v19 != 1)
      {
        goto LABEL_43;
      }

      v20 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
      }

      if ([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v21 = [(CFXPreviewViewController *)self effectEditor];
        v22 = [v21 editEffect];

        v23 = [v22 jtEffect];
        v24 = CFXLog_DebugEffectEditingUI();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

        if (v25)
        {
          v26 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
          }
        }

        if (v23)
        {
          goto LABEL_36;
        }
      }

      v27 = [(CFXPreviewViewController *)self previewClip];
      v28 = [v27 effectsOfType:2];

      v41 = *MEMORY[0x277CC08F0];
      v42 = *(MEMORY[0x277CC08F0] + 16);
      v23 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v28 atNormalizedPoint:&v41 atTime:1 adjustForMinimumSize:x normalizedMinimumSize:y, var0, var1];
      v29 = CFXLog_DebugEffectEditingUI();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      v31 = v30;
      if (v23)
      {

        if (!v31)
        {
LABEL_35:

LABEL_36:
          if ([v23 type] == 2)
          {
            v38 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v38 | 2];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v38 | 2];
            if (![(CFXPreviewViewController *)self isEditingEffect])
            {
              [(CFXPreviewViewController *)self displayEffectEditorForEffect:v23 forMode:1];
            }

            v39 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
            }

            v40 = [(CFXPreviewViewController *)self effectEditor];
            [v40 handlePinchGesture:v15];
          }

          goto LABEL_43;
        }

        v29 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
        }
      }

      else if (v30)
      {
        [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
      }

      goto LABEL_35;
    }

    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 2) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v36 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:];
      }

      v37 = [(CFXPreviewViewController *)self effectEditor];
      [v37 handlePinchGesture:v15];
    }
  }

LABEL_43:
}

- (void)playbackAreaRotated:(id)a3 gesture:(id)a4 normalizedClipPoints:(id)a5 normalizedCenterPoint:(CGPoint)a6 normalizedMinimumSize:(id)a7 rotateDelta:(double)a8 atTime:(int)a9
{
  var1 = a7.var1;
  var0 = a7.var0;
  y = a6.y;
  x = a6.x;
  v14 = a4;
  v15 = [(CFXPreviewViewController *)self previewClip];
  if (!v15)
  {
    goto LABEL_43;
  }

  if ([v14 state] == 1)
  {
    v16 = [(CFXPreviewViewController *)self previewPlayer];
    v17 = [v16 isPlaying];

    if (v17)
    {
      goto LABEL_43;
    }
  }

  v18 = [v14 state];
  if ((v18 - 3) < 2)
  {
    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 4) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v31 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
      }

      v32 = [(CFXPreviewViewController *)self effectEditor];
      [v32 handleRotateGesture:v14];

      v33 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v33 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v33 & 0xFFFFFFFFFFFFFFFBLL];
      if (![(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v34 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
        }

        [(CFXPreviewViewController *)self removeEffectEditor];
      }
    }
  }

  else
  {
    if (v18 != 2)
    {
      if (v18 != 1)
      {
        goto LABEL_43;
      }

      v19 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
      }

      if ([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures])
      {
        v20 = [(CFXPreviewViewController *)self effectEditor];
        v21 = [v20 editEffect];

        v22 = [v21 jtEffect];
        v23 = CFXLog_DebugEffectEditingUI();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

        if (v24)
        {
          v25 = CFXLog_DebugEffectEditingUI();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
          }
        }

        if (v22)
        {
          goto LABEL_36;
        }
      }

      v26 = [(CFXPreviewViewController *)self previewClip];
      v27 = [v26 effectsOfType:2];

      v40 = *MEMORY[0x277CC08F0];
      v41 = *(MEMORY[0x277CC08F0] + 16);
      v22 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v27 atNormalizedPoint:&v40 atTime:1 adjustForMinimumSize:x normalizedMinimumSize:y, var0, var1];
      v28 = CFXLog_DebugEffectEditingUI();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      v30 = v29;
      if (v22)
      {

        if (!v30)
        {
LABEL_35:

LABEL_36:
          if ([v22 type] == 2)
          {
            v37 = [(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v37 | 4];
            [(CFXPreviewViewController *)self setAppliedDirectOverlayEditingGestures:v37 | 4];
            if (![(CFXPreviewViewController *)self isEditingEffect])
            {
              [(CFXPreviewViewController *)self displayEffectEditorForEffect:v22 forMode:1];
            }

            v38 = CFXLog_DebugEffectEditingUI();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
            }

            v39 = [(CFXPreviewViewController *)self effectEditor];
            [v39 handleRotateGesture:v14];
          }

          goto LABEL_43;
        }

        v28 = CFXLog_DebugEffectEditingUI();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
        }
      }

      else if (v29)
      {
        [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
      }

      goto LABEL_35;
    }

    if (([(CFXPreviewViewController *)self appliedDirectOverlayEditingGestures]& 4) != 0 && [(CFXPreviewViewController *)self isEditingEffect])
    {
      v35 = CFXLog_DebugEffectEditingUI();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:];
      }

      v36 = [(CFXPreviewViewController *)self effectEditor];
      [v36 handleRotateGesture:v14];
    }
  }

LABEL_43:
}

- (double)animationDurationForCompositionTransition:(id)a3 shouldScale:(BOOL *)a4
{
  v5 = +[CFXPreviewViewController liveCaptureSnapshotView];
  if (v5)
  {
    v6 = 0.25;
  }

  else
  {
    v6 = 0.0;
  }

  *a4 = 0;
  return v6;
}

- (void)displayEffectEditorForEffect:(id)a3 forMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CFXPreviewViewController *)self previewPlayer];
  v8 = [v7 isPlaying];

  if ((v8 & 1) == 0)
  {
    v9 = [(CFXPreviewViewController *)self effectEditor];

    if (v9)
    {
      v10 = [(CFXPreviewViewController *)self effectEditor];
      if ([v10 mode] == a4)
      {
        v11 = [(CFXPreviewViewController *)self effectEditor];
        v12 = [v11 editEffect];
        v13 = [v12 isEqual:v6];

        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      [(CFXPreviewViewController *)self removeEffectEditor];
    }

    if (a4 || ![JFXEffectEditingUtilities canEditTextForEffect:v6])
    {
      v15 = [CFXEffect effectWithJTEffect:v6];
      v16 = [[CFXEffectEditorView alloc] initWithMode:a4 delegate:self];
      [(CFXPreviewViewController *)self setEffectEditor:v16];

      v17 = [(CFXPreviewViewController *)self view];
      v18 = [(CFXPreviewViewController *)self effectEditor];
      v19 = [(CFXPreviewViewController *)self previewPlayer];
      v20 = [v19 view];
      [v17 insertSubview:v18 aboveSubview:v20];

      v21 = [(CFXPreviewViewController *)self playerContainerView];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [(CFXPreviewViewController *)self effectEditor];
      [v30 setFrame:{v23, v25, v27, v29}];

      v31 = [(CFXPreviewViewController *)self effectEditor];
      [v31 beginEditingEffect:v15];

      [(CFXPreviewViewController *)self setPlayButtonHiddenIfPossible:1];
    }

    else if (![(CFXPreviewViewController *)self presentFullScreenTextEditorForEffect:v6 insertingEffect:0])
    {
      v14 = JFXLog_DebugViewerUI();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [CFXPreviewViewController displayEffectEditorForEffect:forMode:];
      }
    }
  }

LABEL_15:
}

- (BOOL)isEditingEffect
{
  v2 = [(CFXPreviewViewController *)self effectEditor];
  v3 = v2 != 0;

  return v3;
}

- (CGRect)playerContentFrame
{
  v3 = +[CFXMediaSettings sharedInstance];
  [v3 renderSize];
  v5 = v4;
  v7 = v6;

  v8 = [(CFXPreviewViewController *)self playerContainerView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25.width = v5;
  v25.height = v7;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v26 = AVMakeRectWithAspectRatioInsideRect(v25, v28);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)updateEffectEditorLayout
{
  v3 = [(CFXPreviewViewController *)self effectEditor];

  if (v3)
  {
    [(CFXPreviewViewController *)self playerContentFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(CFXPreviewViewController *)self effectEditor];
    [v12 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)removeEffectEditor
{
  v3 = [(CFXPreviewViewController *)self effectEditor];

  if (v3)
  {
    v4 = [(CFXPreviewViewController *)self effectEditor];
    objc_initWeak(&location, v4);

    [(CFXPreviewViewController *)self setEffectEditor:0];
    v5 = objc_loadWeakRetained(&location);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __46__CFXPreviewViewController_removeEffectEditor__block_invoke;
    v9 = &unk_278D7B1C8;
    objc_copyWeak(&v10, &location);
    [v5 endEditingAnimated:1 withCompletionBlock:&v6];

    [(CFXPreviewViewController *)self setPlayButtonHiddenIfPossible:0, v6, v7, v8, v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__CFXPreviewViewController_removeEffectEditor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeFromSuperview];
}

- (BOOL)presentFullScreenTextEditorForEffect:(id)a3 insertingEffect:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CFXPreviewViewController *)self view];
  v8 = [(CFXPreviewViewController *)self playerContainerView];
  [v8 frame];
  [v7 convertRect:0 toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [CFXEffect effectWithJTEffect:v6];

  v18 = [(CFXPreviewViewController *)self delegate];
  [v18 previewViewControllerDidStartEditingText:self];

  v19 = [CFXFullScreenTextEditViewController displayFullScreenTextEditorForEffect:v17 inViewController:self delegate:self cameraViewWindowFrame:v4 insertingEffect:v10, v12, v14, v16];
  v20 = [(CFXPreviewViewController *)self effectBrowserContentPresenterViewController];

  if (v20)
  {
    v21 = [(CFXPreviewViewController *)self view];
    v22 = [(CFXPreviewViewController *)self effectBrowserContentPresenterViewController];
    v23 = [v22 view];
    [v21 bringSubviewToFront:v23];
  }

  return v19;
}

- (void)updateFullScreenTextEditorLayout
{
  if (+[CFXFullScreenTextEditViewController isFullScreenTextEditorPresented])
  {
    [(CFXPreviewViewController *)self playerContentFrame];

    [CFXFullScreenTextEditViewController notifyCameraViewWindowFrameChanged:?];
  }
}

- (void)exportProgressedTo:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CFXPreviewViewController_exportProgressedTo___block_invoke;
  v3[3] = &unk_278D7B1F0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __47__CFXPreviewViewController_exportProgressedTo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldExportOnly])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) * 100.0)];
    v7 = [v2 stringWithFormat:@"-EXPORTING- %@%%", v3];

    v4 = [*(a1 + 32) exportButton];
    [v4 setTitle:v7 forState:0];
  }

  else
  {
    v7 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v4 = [v5 mediaItem];
    [v7 previewViewController:v5 didProgress:v4 exportingMediaItem:v6];
  }
}

- (void)didFinishExport:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__CFXPreviewViewController_didFinishExport___block_invoke;
  v3[3] = &unk_278D7A118;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __44__CFXPreviewViewController_didFinishExport___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExporter:0];
  v2 = *(a1 + 40);
  if (v2 == 3)
  {
    v3 = 1000;
  }

  else
  {
    v8 = 0;
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = 1001;
  }

  v4 = MEMORY[0x277CCA9B8];
  v5 = [MEMORY[0x277CCA8D8] jfxBundle];
  v6 = [v5 bundleIdentifier];
  v8 = [v4 errorWithDomain:v6 code:v3 userInfo:0];

LABEL_6:
  v7 = [*(a1 + 32) view];
  [v7 setUserInteractionEnabled:1];

  [*(a1 + 32) CFX_setEffectAnimationsEnabledIfPossible:0 updatePlayer:0];
  [*(a1 + 32) CFX_notifyDelegateExportMediaItemFinishedWithError:v8];
}

- (void)playButtonViewDidTapPlay:(id)a3
{
  v4 = [(CFXPreviewViewController *)self exporter];

  if (!v4)
  {
    [(CFXPreviewViewController *)self removeEffectEditor];
    v5 = [(CFXPreviewViewController *)self previewPlayer];
    [v5 play];

    [(CFXPreviewViewController *)self setEffectAnimationsEnabledIfPossible:1];
  }
}

- (void)playButtonViewDidTapPause:(id)a3
{
  v3 = [(CFXPreviewViewController *)self previewPlayer];
  [v3 pause];
}

- (BOOL)shouldKeepPlayButtonHidden
{
  v3 = [(CFXPreviewViewController *)self previewClip];
  if ([v3 isVideo] && !-[CFXPreviewViewController isPresentingFilterPicker](self, "isPresentingFilterPicker"))
  {
    v5 = [(CFXPreviewViewController *)self exporter];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPlayButtonHiddenIfPossible:(BOOL)a3
{
  if ([(CFXPreviewViewController *)self shouldKeepPlayButtonHidden])
  {
    v5 = 1;
  }

  else
  {
    v5 = 1;
    if (![(CFXPreviewViewController *)self userInterfaceIsHidden]&& !a3)
    {
      v6 = [(CFXPreviewViewController *)self playButton];
      [v6 setAlpha:1.0];

      v5 = 0;
    }
  }

  v7 = [(CFXPreviewViewController *)self playButton];
  [v7 setHidden:v5];
}

- (void)setUserInterfaceHidden:(BOOL)a3
{
  if (self->_userInterfaceHidden != a3)
  {
    v11[10] = v3;
    v11[11] = v4;
    v5 = a3;
    self->_userInterfaceHidden = a3;
    v7 = [(CFXPreviewViewController *)self shouldKeepPlayButtonHidden];
    v8 = [(CFXPreviewViewController *)self playButton];
    [v8 setHidden:v7 | v5];

    LOBYTE(v7) = !v5;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__CFXPreviewViewController_setUserInterfaceHidden___block_invoke;
    v11[3] = &unk_278D7A118;
    v11[4] = self;
    *&v11[5] = !v5;
    [JTAnimation performAnimation:v11 duration:0 completion:*MEMORY[0x277D76DA0]];
    v9 = [(CFXPreviewViewController *)self delegate];
    v10 = v9;
    if (v7)
    {
      [v9 previewViewControllerDidShowUserInterface:self];
    }

    else
    {
      [v9 previewViewControllerDidHideUserInterface:self];
    }
  }
}

void __51__CFXPreviewViewController_setUserInterfaceHidden___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) previewControls];
  v4 = [v3 view];
  [v4 setAlpha:v2];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) playButton];
  [v6 setAlpha:v5];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) bottomControlsDrawer];
  [v8 setAlpha:v7];
}

- (void)CFX_togglePreviewUI
{
  v3 = [(CFXPreviewViewController *)self userInterfaceIsHidden]^ 1;

  [(CFXPreviewViewController *)self setUserInterfaceHidden:v3];
}

- (void)configureUIForOrientation
{
  [(CFXPreviewViewController *)self CFX_layoutPlayerContainerView];
  [(CFXPreviewViewController *)self configureBottomControlsForOrientation];
  v3 = [(CFXPreviewViewController *)self effectBrowserContentPresenterViewController];
  [v3 configureEffectBrowserContentPresentationForOrientation:{+[JFXOrientationMonitor interfaceOrientation](JFXOrientationMonitor, "interfaceOrientation")}];

  [(CFXPreviewViewController *)self updateEffectEditorLayout];

  [(CFXPreviewViewController *)self updateFullScreenTextEditorLayout];
}

- (void)CFX_layoutPlayerContainerView
{
  v3 = [(CFXPreviewViewController *)self delegate];
  v4 = [v3 cameraModeUsedForCapture];

  v5 = +[CFXMediaSettings sharedInstance];
  [v5 renderSize];
  v7 = v6;
  v9 = v8;

  v10 = +[JFXOrientationMonitor interfaceOrientation];
  v11 = +[JFXOrientationMonitor keyWindow];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  Width = v18;

  if (v4 == 9)
  {
    if ((v10 - 3) <= 1)
    {
      v38.origin.x = v13;
      v38.origin.y = v15;
      v38.size.width = v17;
      v38.size.height = Width;
      Height = CGRectGetHeight(v38);
      v39.origin.x = v13;
      v39.origin.y = v15;
      v39.size.width = v17;
      v39.size.height = Width;
      Width = CGRectGetWidth(v39);
      v17 = Height;
    }

    v36 = [objc_alloc(MEMORY[0x277CF7EB0]) initWithReferenceBounds:v13 shutterIntrinsicSize:{v15, v17, Width, 72.0, 72.0}];
    [v36 viewportFrameForAspectRatio:3 usingAppDrawer:1 accessoryAreaExpanded:0];
    v23 = v22;
    v24 = v21;
    v26 = v25;
    v28 = v27;
    if ((v10 - 3) <= 1)
    {
      if (v10 == 3)
      {
        v29 = v21;
      }

      else
      {
        v32 = [(CFXPreviewViewController *)self view];
        [v32 frame];
        v33 = CGRectGetWidth(v40);
        v41.origin.x = v23;
        v41.origin.y = v24;
        v41.size.width = v26;
        v41.size.height = v28;
        v29 = v33 - (v24 + CGRectGetWidth(v41));
      }

      v42.origin.x = v23;
      v42.origin.y = v24;
      v42.size.width = v26;
      v42.size.height = v28;
      v34 = CGRectGetWidth(v42);
      v43.origin.x = v23;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      v28 = CGRectGetHeight(v43);
      v26 = v34;
      v24 = v23;
      v23 = v29;
    }

    v35 = [(CFXPreviewViewController *)self playerContainerView];
    [v35 setFrame:{v23, v24, v26, v28}];
  }

  else
  {
    [MEMORY[0x277D3D080] reviewScreenContentGeometryForReferenceBounds:v10 forContentSize:v13 withOrientation:{v15, v17, Width, v7, v9}];
    v30 = [(CFXPreviewViewController *)self playerContainerView];
    [v30 setBounds:{0.0, 0.0, 0.0, 0.0}];

    v31 = [(CFXPreviewViewController *)self playerContainerView];
    [v31 setCenter:{0.0, 0.0}];
  }
}

- (void)CFX_notifyDelegateExportMediaItemFinishedWithError:(id)a3
{
  v11 = a3;
  if ([(CFXPreviewViewController *)self saveMediaItemToFunCamPhotosAlbumUponExport])
  {
    v4 = [(CFXPreviewViewController *)self mediaItem];
    v5 = [v4 adjustedAssetURL];

    v6 = [(CFXPreviewViewController *)self mediaItem];
    v7 = [v6 clip];
    v8 = [v7 isStill];

    [(CFXPreviewViewController *)self CFX_addURLToCameraRoll:v5 isStill:v8 completionHandler:&__block_literal_global_100];
  }

  [(CFXPreviewViewController *)self CFX_setIsExporting:0];
  if (![(CFXPreviewViewController *)self shouldExportOnly])
  {
    v9 = [(CFXPreviewViewController *)self delegate];
    v10 = [(CFXPreviewViewController *)self mediaItem];
    [v9 previewViewController:self didFinishExportingMediaItem:v10 withError:v11];
  }
}

- (void)CFX_setIsExporting:(BOOL)a3
{
  if ([(CFXPreviewViewController *)self shouldExportOnly])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__CFXPreviewViewController_CFX_setIsExporting___block_invoke;
    v5[3] = &unk_278D79E38;
    v5[4] = self;
    v6 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __47__CFXPreviewViewController_CFX_setIsExporting___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) exportButton];
  [v3 setEnabled:(v2 & 1) == 0];

  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x277D75348] redColor];
  }

  else
  {
    [MEMORY[0x277D75348] blueColor];
  }
  v4 = ;
  v5 = [*(a1 + 32) exportButton];
  [v5 setBackgroundColor:v4];

  v6 = [*(a1 + 32) exportButton];
  v8 = v6;
  if (*(a1 + 40))
  {
    v7 = @"-EXPORTING-";
  }

  else
  {
    v7 = @"EXPORT";
  }

  [v6 setTitle:v7 forState:0];
}

- (void)CFX_setEffectAnimationsEnabledIfPossible:(BOOL)a3 updatePlayer:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v7 = [(CFXPreviewViewController *)self previewClip];
  v8 = [v7 isStill];

  v9 = [(CFXPreviewViewController *)self previewClip];
  v10 = [v9 effectsOfType:2];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v13 = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = v12;
  v15 = 0;
  v16 = *v20;
  v17 = !v5;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v15 |= [*(*(&v19 + 1) + 8 * i) enablePresentationState:{v8 | v17, v19}];
    }

    v14 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v14);

  if ((v4 & v15) == 1)
  {
    v13 = [(CFXPreviewViewController *)self previewPlayer];
    [v13 updateCompositionForEffectChange];
LABEL_10:
  }
}

- (void)CFX_setFrameAndRenderSizes
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(CFXPreviewViewController *)self delegate];
  v4 = [v3 cameraModeUsedForCapture];

  v5 = [(CFXPreviewViewController *)self previewClip];
  [v5 mediaSize];
  v7 = v6;
  v9 = v8;

  v10 = v9;
  v11 = v7;
  if (v4)
  {
    if (v7 <= v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    v11 = JFXCroppedFrameSizeForCameraModeAndOrientation(v4, v12);
    v10 = v13;
  }

  v14 = JFXIsCTMCameraMode(v4);
  v15 = CGSizeCouldContainSize(v11, v10, v7, v9);
  if (v15)
  {
    v16 = v9;
  }

  else
  {
    v16 = v10;
  }

  if (v15)
  {
    v17 = v7;
  }

  else
  {
    v17 = v11;
  }

  v18 = +[CFXMediaSettings sharedInstance];
  [v18 setFrameSize:{v7, v9}];

  v19 = +[CFXMediaSettings sharedInstance];
  [v19 setRenderSize:{v17, v16}];

  v20 = JFXLog_playback();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v11 != v7;
    if (v10 != v9)
    {
      v21 = 1;
    }

    v22 = v14 && v21;
    v37.width = v7;
    v37.height = v9;
    v23 = NSStringFromCGSize(v37);
    if (v7 > v9)
    {
      v24 = @"UIInterfaceOrientationLandscapeLeft";
    }

    else
    {
      v24 = @"UIInterfaceOrientationPortrait";
    }

    v38.width = v17;
    v38.height = v16;
    v25 = NSStringFromCGSize(v38);
    v26 = 134219010;
    v27 = v4;
    v28 = 2114;
    v29 = v23;
    v30 = 2114;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    v34 = 1024;
    v35 = v22;
    _os_log_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEFAULT, "cameraModeUsedForCapture: %ld, mediaSize: %{public}@, mediaOrientation: %{public}@, renderSize: %{public}@, mediaIsCropped: %d", &v26, 0x30u);
  }
}

- (BOOL)shouldUseFaceTracking
{
  v3 = [(CFXPreviewViewController *)self delegate];
  v4 = [v3 mediaCapturedInFunCam];

  v5 = ![(CFXPreviewViewController *)self capturedWithBackCamera];
  if ((v5 & 1) != 0 || (v4 & 1) == 0)
  {
    return v5 & v4;
  }

  return isFaceTrackingEnabledOnBackCamera();
}

- (BOOL)CFX_canApplyFaceTracking
{
  v2 = [(CFXPreviewViewController *)self shouldUseFaceTracking];
  if (v2)
  {

    LOBYTE(v2) = +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
  }

  return v2;
}

- (void)CFX_addURLToCameraRoll:(id)a3 isStill:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__CFXPreviewViewController_CFX_addURLToCameraRoll_isStill_completionHandler___block_invoke;
  v12[3] = &unk_278D7B288;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v12[4] = self;
  v10 = v8;
  v11 = v9;
  [(CFXPreviewViewController *)self CFX_createAlbumWithCompletionHandler:v12];
}

void __77__CFXPreviewViewController_CFX_addURLToCameraRoll_isStill_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 56))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__CFXPreviewViewController_CFX_addURLToCameraRoll_isStill_completionHandler___block_invoke_2;
    v9[3] = &unk_278D7B260;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v11 = v7;
    v9[4] = v8;
    v10 = v3;
    [v5 CFX_addAssetAtURL:v6 resourceType:v4 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __77__CFXPreviewViewController_CFX_addURLToCameraRoll_isStill_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__CFXPreviewViewController_CFX_addURLToCameraRoll_isStill_completionHandler___block_invoke_3;
    v8[3] = &unk_278D7B238;
    v9 = *(a1 + 48);
    [v5 CFX_addAssetWithIdentifier:a2 intoAlbum:v6 completionHandler:v8];
  }
}

- (void)CFX_createAlbumWithCompletionHandler:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 stringForKey:@"saveClipAlbumPrefKey"];

  if (v5 && (v6 = MEMORY[0x277CD97B8], v39[0] = v5, [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "fetchAssetCollectionsWithLocalIdentifiers:options:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), v7, objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke;
    block[3] = &unk_278D7ACB0;
    v37 = v3;
    v10 = v9;
    v36 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v11 = v37;
  }

  else
  {
    [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:0];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v11 = v32 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v12)
    {
      v13 = *v32;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = [v15 localizedTitle];
        v17 = [v16 isEqual:@"FunCam"];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v18 = v15;

      if (!v18)
      {
        goto LABEL_15;
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_2;
      v28[3] = &unk_278D7ACB0;
      v30 = v3;
      v10 = v18;
      v29 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v28);
    }

    else
    {
LABEL_12:

LABEL_15:
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__9;
      v26[4] = __Block_byref_object_dispose__9;
      v27 = 0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_129;
      v25[3] = &unk_278D7B2B0;
      v25[4] = v26;
      v19 = MEMORY[0x245D22230](v25);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_2_131;
      v22[3] = &unk_278D7B300;
      v24 = v26;
      v23 = v3;
      v20 = MEMORY[0x245D22230](v22);
      v21 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
      [v21 performChanges:v19 completionHandler:v20];

      _Block_object_dispose(v26, 8);
      v10 = 0;
    }
  }
}

void __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_129(uint64_t a1)
{
  v7 = [MEMORY[0x277CD97C0] creationRequestForAssetCollectionWithTitle:@"FunCam"];
  v2 = [v7 placeholderForCreatedAssetCollection];
  v3 = [v2 localIdentifier];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_2_131(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_3;
  block[3] = &unk_278D7B2D8;
  v12 = a2;
  v10 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:@"saveClipAlbumPrefKey"];

    v3 = MEMORY[0x277CD97B8];
    v13[0] = *(*(*(a1 + 48) + 8) + 40);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v5 = [v3 fetchAssetCollectionsWithLocalIdentifiers:v4 options:0];

    v6 = [v5 firstObject];
  }

  else
  {
    v5 = JFXLog_core();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__CFXPreviewViewController_CFX_createAlbumWithCompletionHandler___block_invoke_3_cold_1(a1, v5, v7, v8, v9, v10, v11, v12);
    }

    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)CFX_addAssetAtURL:(id)a3 resourceType:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__9;
  v22[4] = __Block_byref_object_dispose__9;
  v23 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke;
  v18[3] = &unk_278D7B328;
  v20 = v22;
  v21 = a4;
  v9 = v7;
  v19 = v9;
  v10 = MEMORY[0x245D22230](v18);
  v11 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke_2;
  v14[3] = &unk_278D7B378;
  v17 = v22;
  v12 = v9;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  [v11 performChanges:v10 completionHandler:v14];

  _Block_object_dispose(v22, 8);
}

void __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke(void *a1)
{
  v8 = [MEMORY[0x277CD97D0] creationRequestForAsset];
  v2 = [v8 placeholderForCreatedAsset];
  v3 = [v2 localIdentifier];
  v4 = [v3 copy];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = objc_alloc_init(MEMORY[0x277CD97F8]);
  [v7 setShouldMoveFile:0];
  [v8 addResourceWithType:a1[6] fileURL:a1[4] options:v7];
}

void __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v8 = JFXLog_core();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke_2_cold_1(a1, v5, v8);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke_136;
  block[3] = &unk_278D7B350;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v13 = v5;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)CFX_addAssetWithIdentifier:(id)a3 intoAlbum:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CFXPreviewViewController *)self CFX_fetchAssetWithLocalIdentifier:a3];
  if (!v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke;
    block[3] = &unk_278D7A168;
    v24 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_2;
  v20[3] = &unk_278D79C88;
  v21 = v8;
  v11 = v10;
  v22 = v11;
  v12 = v8;
  v13 = MEMORY[0x245D22230](v20);
  v14 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_3;
  v17[3] = &unk_278D7B3C8;
  v18 = v11;
  v19 = v9;
  v15 = v9;
  v16 = v11;
  [v14 performChanges:v13 completionHandler:v17];
}

void __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD97C0] changeRequestForAssetCollection:*(a1 + 32)];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 addAssets:v3];
}

void __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_4;
  v8[3] = &unk_278D7B3A0;
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (*(a1 + 56) != 1 || *(a1 + 40))
  {

    v4 = JFXLog_core();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__CFXPreviewViewController_CFX_addAssetWithIdentifier_intoAlbum_completionHandler___block_invoke_4_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
    }

    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)CFX_fetchAssetWithLocalIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CD9880]);
  [v4 setWantsIncrementalChangeDetails:0];
  v5 = MEMORY[0x277CD97A8];
  v15[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v5 fetchAssetsWithLocalIdentifiers:v6 options:v4];

  if (![v7 count])
  {
    v8 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:200 options:0];
    if ([v8 count])
    {
      v9 = [v8 firstObject];
      v10 = objc_alloc_init(MEMORY[0x277CD9880]);

      [v10 setWantsIncrementalChangeDetails:0];
      [v10 setIncludeHiddenAssets:1];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier = %@", v3];
      [v10 setPredicate:v11];

      v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v9 options:v10];

      v7 = v12;
      v4 = v10;
    }
  }

  v13 = [v7 firstObject];

  return v13;
}

- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4
{
  [(CFXPreviewViewController *)self setDockIsMagnified:a3];
  [(CFXPreviewViewController *)self setDockMagnifiedHeightDelta:a4];
  [(CFXPreviewViewController *)self configureBottomControlsForOrientation];
  v6 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v6 layoutIfNeeded];
}

- (id)bottomControlsSnapshot
{
  v3 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CFXPreviewViewController *)self appStripAndPreviewControlsContainer];
  v13 = [v12 resizableSnapshotViewFromRect:0 afterScreenUpdates:v5 withCapInsets:{v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v13;
}

- (void)hideBottomControls
{
  v3 = [(CFXPreviewViewController *)self previewControls];
  v4 = [v3 view];
  [v4 setHidden:1];

  v5 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v5 setHidden:1];
}

- (void)showBottomControls
{
  v3 = [(CFXPreviewViewController *)self previewControls];
  v4 = [v3 view];
  [v4 setHidden:0];

  v5 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v5 setHidden:0];
}

- (CGRect)bottomControlsBounds
{
  v2 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)bottomControlsCenter
{
  v2 = [(CFXPreviewViewController *)self bottomControlsDrawer];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CFXPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CFXControlsViewController)previewControls
{
  WeakRetained = objc_loadWeakRetained(&self->_previewControls);

  return WeakRetained;
}

- (UIView)playerContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerContainerView);

  return WeakRetained;
}

- (UIView)appStripAndPreviewControlsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripAndPreviewControlsContainer);

  return WeakRetained;
}

- (UIButton)exportButton
{
  WeakRetained = objc_loadWeakRetained(&self->_exportButton);

  return WeakRetained;
}

- (UIView)previewControlsContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_previewControlsContainerView);

  return WeakRetained;
}

- (CFXPlayButtonView)playButton
{
  WeakRetained = objc_loadWeakRetained(&self->_playButton);

  return WeakRetained;
}

- (void)effectEditorViewDidBeginEditing:(id)a3
{
  v4 = [(CFXPreviewViewController *)self previewPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__CFXPreviewViewController_EffectEditingAdditions__effectEditorViewDidBeginEditing___block_invoke;
  v5[3] = &unk_278D79D20;
  v5[4] = self;
  [v4 pauseWithCompletionBlock:v5];
}

- (void)effectEditorViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(CFXPreviewViewController *)self effectEditor];

  if (v5 == v4)
  {
    [(CFXPreviewViewController *)self removeEffectEditor];
  }

  [(CFXPreviewViewController *)self setEffectAnimationsEnabledIfPossible:0];
}

- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CFXPreviewViewController *)self previewClip];
  v9 = [v8 effectsOfType:2];

  if ([v9 count])
  {
    [v7 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
    [(CFXPreviewViewController *)self normalizedMinimumHitTestArea];
    v20 = [JFXEffectEditingUtilities hitTestOverlays:v9 atPoint:v23 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v11, v13, v15, v17, v18, v19];
    if (v20)
    {
      v21 = [CFXEffect effectWithJTEffect:v20];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5
{
  y = a4.y;
  x = a4.x;
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v10 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v10 jtEffect];
    v30[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v9 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(CFXPreviewViewController *)self normalizedMinimumHitTestArea];
    v28 = *MEMORY[0x277CC08F0];
    v29 = *(MEMORY[0x277CC08F0] + 16);
    v25 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v14 atPoint:&v28 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v16, v18, v20, v22, v23, v24];

    v26 = v25 != 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [v10 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v10 jtEffect];
    [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
    [v13 imageFrameAtTime:v26 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6
{
  v6 = a5;
  v8 = a4;
  v9 = [v8 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 jtEffect];
    [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
    [(CFXPreviewViewController *)self normalizedMinimumHitTestArea];
    [v11 hitAreaBoundingFrameAtTime:v24 forcePosterFrame:1 includeDropShadow:1 adjustForMinimumSize:v6 normalizedMinimumSize:1 relativeTo:? basisOrigin:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v8 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
    v10 = [JFXOverlayEffectFrame frameWithEffect:v9 relativeToSize:1 origin:v12 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = [a4 jtEffect];
  [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v18[0] = *MEMORY[0x277CBF2C0];
  v18[1] = v11;
  v18[2] = *(MEMORY[0x277CBF2C0] + 32);
  [JFXEffectEditingUtilities removeButtonPositionForEffect:v10 atTime:v19 atPosterFrameRelativeToBounds:v18 viewCorrectionTransform:x, y, width, height];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.y;
  v11 = a5.x;
  v13 = [a4 jtEffect];
  [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
  [JFXEffectEditingUtilities spacingBetweenCenterPointOfEffect:v13 point:v20 relativeToBounds:v11 atTime:v10, x, y, width, height];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)effectEditorView:(id)a3 didTransformEffect:(id)a4 transform:(CGAffineTransform *)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = [a4 jtEffect];
  [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
  v13 = *&a5->c;
  v15[0] = *&a5->a;
  v15[1] = v13;
  v15[2] = *&a5->tx;
  [JFXEffectEditingUtilities addTransformToEffect:v12 transform:v15 relativeToBounds:v16 time:1 restrictToBounds:x, y, width, height];

  v14 = [(CFXPreviewViewController *)self previewPlayer];
  [v14 updateCompositionForEffectChange];
}

- (void)effectEditorView:(id)a3 didMoveEffect:(id)a4 withTouchPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [v10 jtEffect];
  if ([v11 type] == 2)
  {
    v12 = [(CFXPreviewViewController *)self shouldUseFaceTracking];

    if (v12)
    {
      v13 = [v10 jtEffect];
      v14 = +[JFXVideoCameraController sharedInstance];
      v37 = [v14 mostRecentARMetadata];

      v15 = [v13 trackingProps];
      v36 = [v15 trackingType];

      [v9 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [v37 faceAnchor];
      v25 = [(CFXPreviewViewController *)self previewClip];
      v34 = [v25 playableMediaContentMode];
      v26 = [(CFXPreviewViewController *)self previewClip];
      v27 = [v26 mediaInterfaceOrientationForDisplay];
      v28 = [v13 playableAspectRatio];
      v29 = [v13 playableAspectRatioPreservationMode];
      v41 = *MEMORY[0x277CC08F0];
      v35 = v41;
      v42 = *(MEMORY[0x277CC08F0] + 16);
      v30 = v42;
      v31 = [JFXEffectEditingUtilities trackingTypeForOverlayPointIntersectionWithFaceRect:&v41 atTime:v36 relativeTo:v24 defaultTrackingType:0 faceAnchor:v34 transformAnimation:v27 playableMediaContentMode:x playableInterfaceOrientation:y playableAspectRatio:v17 playableAspectRatioPreservationMode:v19, v21, v23, v28, v29];

      v32 = [(CFXPreviewViewController *)self previewClip];
      v33 = [v32 mediaInterfaceOrientationForDisplay];
      v41 = v35;
      v42 = v30;
      LODWORD(v26) = [JFXEffectEditingUtilities makeOverlayTrackedMaintainingAppearance:v13 atTime:&v41 newTrackingType:v31 arMetadata:v37 playableInterfaceOrientation:v33];

      if (v26)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__CFXPreviewViewController_EffectEditingAdditions__effectEditorView_didMoveEffect_withTouchPoint___block_invoke;
        block[3] = &unk_278D79C88;
        v39 = v9;
        v40 = v13;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
  }
}

void __98__CFXPreviewViewController_EffectEditingAdditions__effectEditorView_didMoveEffect_withTouchPoint___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) trackingProps];
  [v1 notifyEffectTrackingDidChangeToType:{objc_msgSend(v2, "trackingType")}];
}

- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = [a4 jtEffect];
  [(CFXPreviewViewController *)self CFX_previewPlayerCurrentTime];
  v11 = [JFXEffectEditingUtilities newTextEditingPropertiesForEffect:v10 relativeTo:v13 atTime:0 withNewText:x, y, width, height];

  return v11;
}

- (id)effectEditorView:(id)a3 textForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities textForEffect:v4];

  return v5;
}

- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4
{
  v5 = [a4 jtEffect];
  [JFXEffectEditingUtilities beginTextEditingForEffect:v5];

  v6 = [(CFXPreviewViewController *)self previewPlayer];
  [v6 updateCompositionForEffectChange];
}

- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5
{
  v7 = a5;
  v8 = [a4 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v8 newText:v7];

  v9 = [(CFXPreviewViewController *)self previewPlayer];
  [v9 updateCompositionForEffectChange];
}

- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5
{
  v6 = a4;
  v7 = [v6 jtEffect];
  [JFXEffectEditingUtilities updateEffectToDefaultTextIfEmpty:v7];

  v8 = [v6 jtEffect];

  [JFXEffectEditingUtilities endTextEditingForEffect:v8];
  v9 = [(CFXPreviewViewController *)self previewPlayer];
  [v9 updateCompositionForEffectChange];
}

- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities canEditTextForEffect:v4];

  return v5;
}

- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities maximumTextLengthForEffect:v4];

  return v5;
}

- (BOOL)effectEditorView:(id)a3 presentCustomTextEditingUI:(id)a4
{
  v5 = [a4 jtEffect];
  [(CFXPreviewViewController *)self presentFullScreenTextEditorForEffect:v5 insertingEffect:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CFXPreviewViewController_EffectEditingAdditions__effectEditorView_presentCustomTextEditingUI___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  return 1;
}

- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CFXPreviewViewController *)self previewClip];
  v7 = [v5 jtEffect];

  [v6 removeEffect:v7];
  v8 = [(CFXPreviewViewController *)self previewPlayer];
  [v8 updateCompositionForEffectChange];

  v9 = CFXLog_action();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CFXPreviewViewController *)self previewClip];
    v11 = [v10 effectStack];
    v12 = [CFXActionLogging actionLogAsJSONForEvent:@"effect removed" atLocation:@"post-capture" withEffectStack:v11];
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v13, 0xCu);
  }
}

- (BOOL)effectEditorView:(id)a3 isFaceTrackingDataAvailableForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [v4 type];

  if (v5 != 2)
  {
    return 0;
  }

  return +[JFXEffectEditingUtilities isFaceTrackingDataAvailable];
}

- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4
{
  v4 = a4;
  v5 = [v4 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 jtEffect];
    v8 = [v7 isCurrentlyTracking];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)CFX_previewPlayerCurrentTime
{
  v8 = [(CFXPreviewViewController *)self previewPlayer];
  v5 = [v8 currentTime];
  v6 = [(CFXPreviewViewController *)self previewPlayer];
  CMTimeMake(retstr, v5, [v6 frameRate]);

  return result;
}

- (void)fullScreenTextEditViewController:(id)a3 didBeginAnimationBeforeEditingEffect:(id)a4 completion:(id)a5
{
  v9 = a5;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setHidden:1];
    v8 = [(CFXPreviewViewController *)self previewPlayer];
    [v8 updateCompositionForEffectChange];

    [(CFXPreviewViewController *)self dispatchWhenPlayerReadyForDisplayEffectUpdate:v9];
  }
}

- (void)fullScreenTextEditViewController:(id)a3 didBeginEditingEffect:(id)a4
{
  v6 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setHidden:1];
    v5 = [(CFXPreviewViewController *)self previewPlayer];
    [v5 updateCompositionForEffectChange];
  }
}

- (void)fullScreenTextEditViewController:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4 updatedText:(id)a5
{
  v7 = a5;
  v8 = [a4 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v8 newText:v7];

  v9 = [(CFXPreviewViewController *)self previewPlayer];
  [v9 updateCompositionForEffectChange];
}

- (void)dispatchWhenPlayerReadyForDisplayEffectUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CFXPreviewViewController *)self previewPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__CFXPreviewViewController_EffectEditingAdditions__dispatchWhenPlayerReadyForDisplayEffectUpdate___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchBlockWhenDone:v7];
}

void __98__CFXPreviewViewController_EffectEditingAdditions__dispatchWhenPlayerReadyForDisplayEffectUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewPlayer];
  [v2 updateCompositionForEffectChange];

  v3 = [*(a1 + 32) previewPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__CFXPreviewViewController_EffectEditingAdditions__dispatchWhenPlayerReadyForDisplayEffectUpdate___block_invoke_2;
  v5[3] = &unk_278D7A140;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 dispatchBlockWhenDone:v5];
}

void __98__CFXPreviewViewController_EffectEditingAdditions__dispatchWhenPlayerReadyForDisplayEffectUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) previewPlayer];
  [v2 updateCompositionForEffectChange];

  v3 = [*(a1 + 32) previewPlayer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__CFXPreviewViewController_EffectEditingAdditions__dispatchWhenPlayerReadyForDisplayEffectUpdate___block_invoke_3;
  v4[3] = &unk_278D7A168;
  v5 = *(a1 + 40);
  [v3 dispatchBlockWhenDone:v4];
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishAnimationAfterEditingEffect:(id)a4 completion:(id)a5
{
  v9 = a5;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setHidden:0];
    v8 = [(CFXPreviewViewController *)self previewPlayer];
    [v8 updateCompositionForEffectChange];

    [(CFXPreviewViewController *)self dispatchWhenPlayerReadyForDisplayEffectUpdate:v9];
  }
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingEffect:(id)a4 withUpdatedText:(id)a5
{
  v11 = a5;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [JFXEffectEditingUtilities updateEffectText:v8 newText:v11];
    [v8 setHidden:0];

    v9 = [(CFXPreviewViewController *)self previewPlayer];
    [v9 updateCompositionForEffectChange];

    v10 = [(CFXPreviewViewController *)self delegate];
    [v10 previewViewControllerDidStopEditingText:self];
  }
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CFXPreviewViewController *)self previewClip];
  v7 = [v5 jtEffect];

  [v6 removeEffect:v7];
  v8 = [(CFXPreviewViewController *)self previewPlayer];
  [v8 updateCompositionForEffectChange];

  v9 = [(CFXPreviewViewController *)self delegate];
  [v9 previewViewControllerDidStopEditingText:self];

  v10 = CFXLog_action();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CFXPreviewViewController *)self previewClip];
    v12 = [v11 effectStack];
    v13 = [CFXActionLogging actionLogAsJSONForEvent:@"effect removed" atLocation:@"post-capture" withEffectStack:v12];
    v14 = 138543362;
    v15 = v13;
    _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", &v14, 0xCu);
  }
}

- (int64_t)faceTrackingInterfaceOrientationForfullScreenTextEditViewController:(id)a3
{
  v3 = [(CFXPreviewViewController *)self previewClip];
  v4 = [v3 mediaInterfaceOrientationForDisplay];

  return v4;
}

- (void)playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playbackAreaPanned:gesture:normalizedClipPoint:normalizedMinimumSize:translationDelta:atTime:timeScale:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playbackAreaPinched:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:scaleDelta:atTime:timeScale:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playbackAreaRotated:gesture:normalizedClipPoints:normalizedCenterPoint:normalizedMinimumSize:rotateDelta:atTime:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__CFXPreviewViewController_CFX_addAssetAtURL_resourceType_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "ERROR: failed to move asset (%@) to the album (%@)", &v4, 0x16u);
}

@end