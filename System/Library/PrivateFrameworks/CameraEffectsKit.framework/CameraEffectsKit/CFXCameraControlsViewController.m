@interface CFXCameraControlsViewController
- (CFXCameraControlsViewController)init;
- (CFXCameraControlsViewController)initWithDelegate:(id)a3 captureMode:(int64_t)a4;
- (CFXCameraControlsViewControllerDelegate)delegate;
- (NSLayoutConstraint)appStripBackgroundContainerViewBottomConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewHeightConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewLeadingConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewTopConstraint;
- (NSLayoutConstraint)appStripBackgroundContainerViewTrailingConstraint;
- (NSLayoutConstraint)backgroundViewHeightConstraint;
- (NSLayoutConstraint)bottomBlackViewHeightConstraint;
- (NSLayoutConstraint)bottomBlackViewTopConstraint;
- (NSLayoutConstraint)bottomBlackViewTrailingConstraint;
- (NSLayoutConstraint)bottomBlackViewWidthConstraint;
- (UIColor)backgroundColor;
- (UIView)appStripBackgroundContainerView;
- (UIView)backgroundView;
- (UIView)bottomBlackView;
- (UIView)effectButtonContainerPad;
- (UIView)flipButtonContainerPad;
- (UIView)shutterButtonContainerPad;
- (double)CFX_smallPhoneDockHeightAdjustment;
- (void)configureUIForOrientation;
- (void)effectsButtonTapped:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setShutterButtonAlpha:(double)a3;
- (void)setShutterButtonEnabled:(BOOL)a3;
- (void)shutterButtonTapped:(id)a3;
- (void)switchCameraButtonTapped:(id)a3;
- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4;
- (void)updateUIForVideoRecording:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CFXCameraControlsViewController

- (CFXCameraControlsViewController)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MEMORY[0x277D75AC8];
  v6 = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [v5 storyboardWithName:v4 bundle:v6];

  v8 = [v7 instantiateViewControllerWithIdentifier:v4];

  return v8;
}

- (CFXCameraControlsViewController)initWithDelegate:(id)a3 captureMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(CFXCameraControlsViewController *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_captureMode = a4;
  }

  return v8;
}

- (void)viewDidLoad
{
  v51.receiver = self;
  v51.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v51 viewDidLoad];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 cam_initialLayoutStyle];

  LODWORD(v5) = CFXCaptureCapabilitiesIsCTMSupported();
  v7 = objc_alloc(MEMORY[0x277CF7E88]);
  if (v5)
  {
    v8 = [v7 initForOverContent];
    [(CFXCameraControlsViewController *)self setEffectButton:v8];
  }

  else
  {
    v9 = [v7 initWithLayoutStyle:v6];
    [(CFXCameraControlsViewController *)self setEffectButton:v9];

    v10 = [(CFXCameraControlsViewController *)self effectButton];
    [v10 setTappableEdgeInsets:{20.0, 20.0, 20.0, 20.0}];

    v8 = [(CFXCameraControlsViewController *)self effectButton];
    [v8 setFrame:{0.0, 0.0, 60.0, 60.0}];
  }

  v11 = [(CFXCameraControlsViewController *)self effectButton];
  [v11 setActive:1];

  v12 = [(CFXCameraControlsViewController *)self effectButton];
  [v12 addTarget:self action:sel_effectsButtonTapped_ forControlEvents:64];

  v13 = [(CFXCameraControlsViewController *)self effectButton];
  [v13 setExclusiveTouch:1];

  v14 = [MEMORY[0x277CF7EF0] shutterButton];
  [(CFXCameraControlsViewController *)self setShutterButton:v14];

  v15 = [(CFXCameraControlsViewController *)self shutterButton];
  [v15 setFrame:{0.0, 0.0, 80.0, 80.0}];

  v16 = [(CFXCameraControlsViewController *)self shutterButton];
  [v16 addTarget:self action:sel_shutterButtonTapped_ forControlEvents:64];

  v17 = [(CFXCameraControlsViewController *)self shutterButton];
  [v17 setExclusiveTouch:1];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "userInterfaceIdiom"), v18, v19 == 1))
  {
    v20 = [MEMORY[0x277CF7EA8] flipButtonOverContent];
    [(CFXCameraControlsViewController *)self setFlipButton:v20];
  }

  else
  {
    v21 = [MEMORY[0x277CF7EA8] flipButtonWithLayoutStyle:v6];
    [(CFXCameraControlsViewController *)self setFlipButton:v21];

    v20 = [(CFXCameraControlsViewController *)self flipButton];
    [v20 setFrame:{0.0, 0.0, 60.0, 60.0}];
  }

  v22 = [(CFXCameraControlsViewController *)self flipButton];
  [v22 addTarget:self action:sel_switchCameraButtonTapped_ forControlEvents:64];

  v23 = [(CFXCameraControlsViewController *)self flipButton];
  v24 = 1;
  [v23 setExclusiveTouch:1];

  v25 = [MEMORY[0x277D75418] currentDevice];
  v26 = [v25 userInterfaceIdiom];
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 bounds];
    if (v28 <= 811)
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 bounds];
      v24 = v29 < 812;
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v24 = 0;
    }
  }

  v30 = [(CFXCameraControlsViewController *)self bottomBlackView];
  [v30 setHidden:v24];

  if (v27)
  {
  }

  if (!v26)
  {
  }

  v31 = objc_alloc_init(MEMORY[0x277CF7E68]);
  [(CFXCameraControlsViewController *)self setBottomBar:v31];

  v32 = [MEMORY[0x277D75418] currentDevice];
  v33 = [v32 userInterfaceIdiom];

  if (v33)
  {
    v34 = [(CFXCameraControlsViewController *)self view];
    v35 = [(CFXCameraControlsViewController *)self bottomBar];
    [v34 addSubview:v35];

    v36 = [(CFXCameraControlsViewController *)self delegate];
    v37 = [v36 doneButtonForCameraControlsViewController:self];
    v38 = [(CFXCameraControlsViewController *)self bottomBar];
    [v38 setDoneButton:v37];

    v39 = [(CFXCameraControlsViewController *)self delegate];
    v40 = [v39 flashButtonForCameraControlsViewController:self];
    v41 = [(CFXCameraControlsViewController *)self bottomBar];
    [v41 setFlashButton:v40];

    v42 = [(CFXCameraControlsViewController *)self bottomBar];
    [v42 setBackgroundStyle:1];
  }

  else
  {
    if (isStreamingMode([(CFXCameraControlsViewController *)self captureMode]))
    {
      v42 = [(CFXCameraControlsViewController *)self backgroundView];
      v43 = [(CFXCameraControlsViewController *)self bottomBar];
      [v42 addSubview:v43];
    }

    else
    {
      if (CFXCaptureCapabilitiesIsCTMSupported())
      {
        goto LABEL_25;
      }

      v42 = [(CFXCameraControlsViewController *)self delegate];
      v43 = [(CFXCameraControlsViewController *)self bottomBar];
      [v42 insertCamBottomBar:v43];
    }
  }

LABEL_25:
  v44 = [(CFXCameraControlsViewController *)self bottomBar];
  [v44 setLayoutStyle:v6];

  if ((CFXCaptureCapabilitiesIsCTMSupported() & 1) == 0)
  {
    v45 = [(CFXCameraControlsViewController *)self effectButton];
    v46 = [(CFXCameraControlsViewController *)self bottomBar];
    [v46 setCreativeCameraButton:v45];

    v47 = [(CFXCameraControlsViewController *)self shutterButton];
    v48 = [(CFXCameraControlsViewController *)self bottomBar];
    [v48 setShutterButton:v47];

    v49 = [(CFXCameraControlsViewController *)self flipButton];
    v50 = [(CFXCameraControlsViewController *)self bottomBar];
    [v50 setFlipButton:v49];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v10 viewWillAppear:a3];
  v4 = [(CFXCameraControlsViewController *)self captureMode]== 2;
  v5 = [(CFXCameraControlsViewController *)self shutterButton];
  [v5 setMode:v4 animated:0];

  v6 = [CFXFeedbackController alloc];
  v7 = [(CFXCameraControlsViewController *)self shutterButton];
  v8 = [(CFXFeedbackController *)v6 initWithShutterButton:v7];
  [(CFXCameraControlsViewController *)self setFeedbackController:v8];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_JFX_orientationMonitorInterfaceOrientationNotification_ name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v16 viewDidAppear:a3];
  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 userInterfaceIdiom])
  {
  }

  else
  {
    v6 = [(CFXCameraControlsViewController *)self appStripBackgroundView];

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(CFXCameraControlsViewController *)self setAppStripBackgroundView:v7];

      v8 = [(CFXCameraControlsViewController *)self captureMode];
      if (v8)
      {
        v6 = [(CFXCameraControlsViewController *)self bottomBar];
        v3 = [v6 backgroundView];
        [v3 backgroundColor];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v9 = ;
      v10 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [v10 setBackgroundColor:v9];

      if (v8)
      {

        v9 = v6;
      }

      if (CFXCaptureCapabilitiesIsCTMSupported())
      {
        v11 = [(CFXCameraControlsViewController *)self delegate];
        if ([v11 needsBlackBackgroundForCTMControls])
        {
          [MEMORY[0x277D75348] blackColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v12 = ;
        v13 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
        [v13 setBackgroundColor:v12];
      }

      v14 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerView];
      v15 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [v14 addSubview:v15];

      [(CFXCameraControlsViewController *)self configureUIForOrientation];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v5 viewDidDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXCameraControlsViewController;
  [(CFXCameraControlsViewController *)&v3 viewWillLayoutSubviews];
  [(CFXCameraControlsViewController *)self configureUIForOrientation];
}

- (void)configureUIForOrientation
{
  if ([(CFXCameraControlsViewController *)self captureMode]!= 1)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (!v4)
    {
      v5 = +[JFXOrientationMonitor keyWindow];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = +[JFXOrientationMonitor interfaceOrientation];
      [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v7, v9, v11, v13}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if (CFXCaptureCapabilitiesIsCTMSupported())
      {
        v23 = [(CFXCameraControlsViewController *)self delegate];
        [v23 bottomBarCTMControlsFrameForWindowOrientation:v14 bounds:{v7, v9, v11, v13}];
        v16 = v24;
        v18 = v25;
        v20 = v26;
        v22 = v27;
      }

      [(CFXCameraControlsViewController *)self CFX_smallPhoneDockHeightAdjustment];
      v29 = v28;
      v30 = [(CFXCameraControlsViewController *)self bottomBar];
      [v30 frame];
      Width = CGRectGetWidth(v66);

      v32 = [MEMORY[0x277D75418] currentDevice];
      v33 = 0.0;
      if (![v32 userInterfaceIdiom])
      {
        v34 = [MEMORY[0x277D759A0] mainScreen];
        [v34 bounds];
        v33 = v29;
        if (v35 != 568)
        {
          v36 = [MEMORY[0x277D759A0] mainScreen];
          [v36 bounds];
          if (v37 == 568)
          {
            v33 = v29;
          }

          else
          {
            v33 = 0.0;
          }
        }
      }

      v38 = v14 - 3;

      v67.origin.x = v16;
      v67.origin.y = v18;
      v67.size.width = v20;
      v67.size.height = v22;
      Height = CGRectGetHeight(v67);
      v40 = [MEMORY[0x277D75418] currentDevice];
      if (![v40 userInterfaceIdiom])
      {
        v41 = [MEMORY[0x277D759A0] mainScreen];
        [v41 bounds];
        if (v42 == 568)
        {
          Height = Height - v29;
        }

        else
        {
          v43 = [MEMORY[0x277D759A0] mainScreen];
          [v43 bounds];
          if (v44 == 568)
          {
            Height = Height - v29;
          }
        }
      }

      v45 = 0.0;
      if ([(CFXCameraControlsViewController *)self dockIsMagnified])
      {
        v46 = -31.0;
      }

      else
      {
        v46 = 0.0;
      }

      v47 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTopConstraint];
      v49 = v47;
      if (v38 >= 2)
      {
        *&v48 = 250.0;
      }

      else
      {
        *&v48 = 750.0;
      }

      if (v38 >= 2)
      {
        v50 = 750.0;
      }

      else
      {
        v50 = 250.0;
      }

      [v47 setPriority:v48];

      v51 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewHeightConstraint];
      *&v52 = v50;
      [v51 setPriority:v52];

      if (v14 == 1)
      {
        v45 = -Height;
      }

      v53 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewBottomConstraint];
      [v53 setConstant:v45];

      v54 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
      [v54 setConstant:0.0];

      v55 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
      [v55 setConstant:0.0];

      if (CFXCaptureCapabilitiesIsCTMSupported())
      {
        v56 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
        [v56 setActive:0];

        v57 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
        [v57 setActive:0];
      }

      if (v38 > 1)
      {
        v62 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewHeightConstraint];
        [v62 setConstant:v33];

        if ([(CFXCameraControlsViewController *)self dockIsMagnified])
        {
          v33 = v33 + 31.0;
        }

        v63 = 0.0;
        v29 = Width;
      }

      else
      {
        v58 = [(CFXCameraControlsViewController *)self bottomBar];
        [v58 frame];
        v33 = CGRectGetWidth(v68);

        if (v14 == 4)
        {
          v59 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewLeadingConstraint];
          v60 = v59;
          v61 = Height;
        }

        else
        {
          v59 = [(CFXCameraControlsViewController *)self appStripBackgroundContainerViewTrailingConstraint];
          v60 = v59;
          v61 = -Height;
        }

        [v59 setConstant:v61];

        v46 = 0.0;
        if ([(CFXCameraControlsViewController *)self dockIsMagnified])
        {
          v29 = v29 + 31.0;
          if (v14 == 3)
          {
            v63 = -31.0;
          }

          else
          {
            v63 = 0.0;
          }
        }

        else
        {
          v63 = 0.0;
        }
      }

      v64 = [(CFXCameraControlsViewController *)self appStripBackgroundView];
      [v64 setFrame:{v63, v46, v29, v33}];
    }
  }
}

- (UIColor)backgroundColor
{
  [(CFXCameraControlsViewController *)self loadViewIfNeeded];
  v3 = [(CFXCameraControlsViewController *)self backgroundView];
  v4 = [v3 backgroundColor];

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v7 = a3;
  [(CFXCameraControlsViewController *)self loadViewIfNeeded];
  if (isStreamingMode(-[CFXCameraControlsViewController captureMode](self, "captureMode")) || ([MEMORY[0x277D75418] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 == 1))
  {
    v6 = [(CFXCameraControlsViewController *)self backgroundView];
    [v6 setBackgroundColor:v7];
  }
}

- (void)updateUIForVideoRecording:(BOOL)a3
{
  v3 = a3;
  v5 = !a3;
  v6 = [(CFXCameraControlsViewController *)self effectButton];
  [v6 setAlpha:v5];

  v7 = [(CFXCameraControlsViewController *)self flipButton];
  [v7 setAlpha:v5];

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    v10 = [(CFXCameraControlsViewController *)self bottomBar];
    [v10 setBackgroundStyle:v3];
  }
}

- (void)updateUIForDockMagnify:(BOOL)a3 dockHeightDelta:(double)a4
{
  [(CFXCameraControlsViewController *)self setDockIsMagnified:a3];
  [(CFXCameraControlsViewController *)self setDockMagnifiedHeightDelta:a4];
  [(CFXCameraControlsViewController *)self configureUIForOrientation];
  v6 = [(CFXCameraControlsViewController *)self backgroundView];
  [v6 layoutIfNeeded];
}

- (void)setShutterButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CFXCameraControlsViewController *)self shutterButton];
  [v4 setEnabled:v3];
}

- (void)setShutterButtonAlpha:(double)a3
{
  v4 = [(CFXCameraControlsViewController *)self shutterButton];
  [v4 setAlpha:a3];
}

- (void)effectsButtonTapped:(id)a3
{
  v4 = [(CFXCameraControlsViewController *)self effectButton];
  [v4 setActive:0];

  v5 = [(CFXCameraControlsViewController *)self delegate];

  if (v5)
  {
    v6 = [(CFXCameraControlsViewController *)self delegate];
    [v6 cameraControlsViewControllerEffectsButtonWasTapped:self];
  }
}

- (void)shutterButtonTapped:(id)a3
{
  if (![(CFXCameraControlsViewController *)self captureMode])
  {
    [(CFXCameraControlsViewController *)self setShutterButtonEnabled:0];
  }

  v4 = [(CFXCameraControlsViewController *)self delegate];

  if (v4)
  {
    v5 = [(CFXCameraControlsViewController *)self delegate];
    [v5 cameraControlsViewControllerShutterButtonWasTapped:self];

    if ([(CFXCameraControlsViewController *)self captureMode]== 2)
    {
      v6 = [(CFXCameraControlsViewController *)self shutterButton];
      v7 = [v6 mode];

      v8 = [(CFXCameraControlsViewController *)self shutterButton];
      v10 = v8;
      if (v7 == 6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 6;
      }

      [v8 setMode:v9 animated:1];
    }
  }
}

- (void)switchCameraButtonTapped:(id)a3
{
  v4 = [(CFXCameraControlsViewController *)self delegate];

  if (v4)
  {
    v5 = [(CFXCameraControlsViewController *)self delegate];
    [v5 cameraControlsViewControllerSwitchCameraButtonWasTapped:self];
  }
}

- (double)CFX_smallPhoneDockHeightAdjustment
{
  v2 = +[JFXOrientationMonitor keyWindow];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [MEMORY[0x277D3D080] cameraBottomBarFrameForReferenceBounds:{v4, v6, v8, v10}];
  v12 = v11;
  [MEMORY[0x277D3D080] reviewScreenControlBarFrameForReferenceBounds:{v4, v6, v8, v10}];
  return v12 - v13;
}

- (CFXCameraControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (UIView)effectButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_effectButtonContainerPad);

  return WeakRetained;
}

- (UIView)shutterButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_shutterButtonContainerPad);

  return WeakRetained;
}

- (UIView)flipButtonContainerPad
{
  WeakRetained = objc_loadWeakRetained(&self->_flipButtonContainerPad);

  return WeakRetained;
}

- (UIView)bottomBlackView
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackView);

  return WeakRetained;
}

- (UIView)appStripBackgroundContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerView);

  return WeakRetained;
}

- (NSLayoutConstraint)backgroundViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomBlackViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBlackViewTrailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)appStripBackgroundContainerViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_appStripBackgroundContainerViewTrailingConstraint);

  return WeakRetained;
}

@end