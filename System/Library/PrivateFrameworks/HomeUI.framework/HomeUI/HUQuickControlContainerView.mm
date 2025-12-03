@interface HUQuickControlContainerView
- (BOOL)_isDisambiguationButtonVisible;
- (BOOL)_isPhoneCallStatusUpdateTimerActive;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldShowControlView;
- (BOOL)_shouldShowDisambiguationButtonForUserActivities:(id)activities disambiguationContext:(id)context;
- (BOOL)_useCompactHeightLayout;
- (CGAffineTransform)_controlHostTransform;
- (CGAffineTransform)_controlHostTransformForPresentationProgress:(SEL)progress;
- (CGAffineTransform)_disambiguationButtonHiddenTransform;
- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)progress;
- (CGPoint)_controlHostCenter;
- (CGPoint)_controlHostCenterForPresentationProgress:(double)progress;
- (CGRect)presentedControlFrame;
- (CGRect)sourceRect;
- (CGSize)_presentedControlHostSize;
- (HUQuickControlContainerView)initWithFrame:(CGRect)frame delegate:(id)delegate sourceRect:(CGRect)rect;
- (HUQuickControlContainerViewDelegate)delegate;
- (double)_disambiguationButtonPreferredHeight;
- (void)_configureCardViewLayoutGuideConstraints:(id)constraints;
- (void)_configureControlViewLayoutGuideConstraints:(id)constraints;
- (void)_configureDisambiguationButtonConstraints:(id)constraints;
- (void)_configureDisambiguationForActivities:(id)activities disambiguationContext:(id)context;
- (void)_configureRegularHeightConstraints:(id)constraints;
- (void)_detailsButtonTapped:(id)tapped;
- (void)_disambiguationButtonTapped:(id)tapped;
- (void)_disambiguationButtonTouchDown:(id)down;
- (void)_disambiguationButtonTouchUp:(id)up;
- (void)_invalidatePhoneCallStatusUpdateTimer;
- (void)_startPhoneCallStatusUpdateTimer;
- (void)_updateCompactControlBottomConstraint;
- (void)_updateDetailsButtonVisibility;
- (void)_updateDisambiguationButtonVisible:(BOOL)visible;
- (void)_updateLayoutMargins;
- (void)dealloc;
- (void)didUpdateActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context;
- (void)externalAnimationsEnded;
- (void)hideAuxiliaryView;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setActiveControlView:(id)view;
- (void)setChromeTransitionProgress:(double)progress;
- (void)setEdgesForExtendedLayout:(unint64_t)layout;
- (void)setShouldShowActiveControl:(BOOL)control;
- (void)setShouldShowDetailsButton:(BOOL)button;
- (void)setStandardViewportFromParentGuide:(id)guide;
- (void)showAuxiliaryView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)window;
@end

@implementation HUQuickControlContainerView

- (HUQuickControlContainerView)initWithFrame:(CGRect)frame delegate:(id)delegate sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = HUQuickControlContainerView;
  v15 = [(HUQuickControlContainerView *)&v54 initWithFrame:v12, v11, v10, v9];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16->_sourceRect.origin.x = x;
    v16->_sourceRect.origin.y = y;
    v16->_sourceRect.size.width = width;
    v16->_sourceRect.size.height = height;
    v16->_shouldShowDetailsButton = 1;
    v16->_shouldShowActiveControl = 1;
    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      v16->_isExternallyAnimating = 1;
      mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
      [mEMORY[0x277D14990] addObserver:v16];
      v18 = objc_alloc(MEMORY[0x277D755E8]);
      lastDisambiguationContext = [mEMORY[0x277D14990] lastDisambiguationContext];
      leadingImage = [lastDisambiguationContext leadingImage];
      v21 = [v18 initWithImage:leadingImage];
      disambiguationButtonLeadingImageView = v16->_disambiguationButtonLeadingImageView;
      v16->_disambiguationButtonLeadingImageView = v21;

      [(UIImageView *)v16->_disambiguationButtonLeadingImageView setFrame:0.0, 0.0, 34.0, 34.0];
      [(UIImageView *)v16->_disambiguationButtonLeadingImageView setContentMode:4];
      v23 = [objc_alloc(MEMORY[0x277D3D310]) initWithLeadingAccessoryView:v16->_disambiguationButtonLeadingImageView trailingAccessoryView:0];
      disambiguationButton = v16->_disambiguationButton;
      v16->_disambiguationButton = v23;

      [(PLPillControl *)v16->_disambiguationButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = v16->_disambiguationButton;
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [(PLPillControl *)v25 setBackgroundColor:systemWhiteColor];

      [(PLPillControl *)v16->_disambiguationButton setAlpha:0.0];
      v27 = v16->_disambiguationButton;
      [(HUQuickControlContainerView *)v16 _disambiguationButtonHiddenTransform];
      [(PLPillControl *)v27 setTransform:&v53];
      [(PLPillControl *)v16->_disambiguationButton setOpaque:1];
      [(PLPillControl *)v16->_disambiguationButton addTarget:v16 action:sel__disambiguationButtonTapped_ forControlEvents:64];
      [(PLPillControl *)v16->_disambiguationButton addTarget:v16 action:sel__disambiguationButtonTouchDown_ forControlEvents:1];
      [(PLPillControl *)v16->_disambiguationButton addTarget:v16 action:sel__disambiguationButtonTouchUp_ forControlEvents:128];
      [(PLPillControl *)v16->_disambiguationButton addTarget:v16 action:sel__disambiguationButtonTouchUp_ forControlEvents:256];
      [(PLPillControl *)v16->_disambiguationButton addTarget:v16 action:sel__disambiguationButtonTouchUp_ forControlEvents:32];
      [(HUQuickControlContainerView *)v16 addSubview:v16->_disambiguationButton];
    }

    v28 = [HUControlHostView alloc];
    activeControlView = [(HUQuickControlContainerView *)v16 activeControlView];
    v30 = [(HUControlHostView *)v28 initWithControlView:activeControlView];
    [(HUQuickControlContainerView *)v16 setControlHostView:v30];

    controlHostView = [(HUQuickControlContainerView *)v16 controlHostView];
    [controlHostView setTranslatesAutoresizingMaskIntoConstraints:0];

    controlHostView2 = [(HUQuickControlContainerView *)v16 controlHostView];
    [(HUQuickControlContainerView *)v16 addSubview:controlHostView2];

    v33 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HUQuickControlContainerView *)v16 setDetailsButton:v33];

    detailsButton = [(HUQuickControlContainerView *)v16 detailsButton];
    v35 = HUImageNamed(@"card-settings");
    [detailsButton setImage:v35 forState:0];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    detailsButton2 = [(HUQuickControlContainerView *)v16 detailsButton];
    [detailsButton2 setTintColor:systemGrayColor];

    detailsButton3 = [(HUQuickControlContainerView *)v16 detailsButton];
    [detailsButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    detailsButton4 = [(HUQuickControlContainerView *)v16 detailsButton];
    [detailsButton4 setAlpha:1.0];

    detailsButton5 = [(HUQuickControlContainerView *)v16 detailsButton];
    [detailsButton5 addTarget:v16 action:sel__detailsButtonTapped_ forControlEvents:64];

    detailsButton6 = [(HUQuickControlContainerView *)v16 detailsButton];
    [(HUQuickControlContainerView *)v16 addSubview:detailsButton6];

    v42 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setControlViewLayoutGuide:v42];

    controlViewLayoutGuide = [(HUQuickControlContainerView *)v16 controlViewLayoutGuide];
    [controlViewLayoutGuide setIdentifier:@"HUControlViewLayoutGuide"];

    controlViewLayoutGuide2 = [(HUQuickControlContainerView *)v16 controlViewLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:controlViewLayoutGuide2];

    v45 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setCardViewLayoutGuide:v45];

    cardViewLayoutGuide = [(HUQuickControlContainerView *)v16 cardViewLayoutGuide];
    [cardViewLayoutGuide setIdentifier:@"HUCardViewLayoutGuide"];

    cardViewLayoutGuide2 = [(HUQuickControlContainerView *)v16 cardViewLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:cardViewLayoutGuide2];

    v48 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setControlViewPreferredFrameLayoutGuide:v48];

    controlViewPreferredFrameLayoutGuide = [(HUQuickControlContainerView *)v16 controlViewPreferredFrameLayoutGuide];
    [controlViewPreferredFrameLayoutGuide setIdentifier:@"HUControlViewPreferredFrameLayoutGuide"];

    controlViewPreferredFrameLayoutGuide2 = [(HUQuickControlContainerView *)v16 controlViewPreferredFrameLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:controlViewPreferredFrameLayoutGuide2];

    layer = [(HUQuickControlContainerView *)v16 layer];
    [layer setAllowsGroupBlending:0];

    [(HUQuickControlContainerView *)v16 _updateLayoutMargins];
  }

  return v16;
}

- (void)dealloc
{
  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    [(HUQuickControlContainerView *)self _invalidatePhoneCallStatusUpdateTimer];
  }

  v3.receiver = self;
  v3.super_class = HUQuickControlContainerView;
  [(HUQuickControlContainerView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUQuickControlContainerView;
  [(HUQuickControlContainerView *)&v8 layoutSubviews];
  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  layer = [disambiguationButton layer];
  [layer setCornerRadius:8.0];

  layer2 = [(PLPillControl *)self->_disambiguationButton layer];
  LODWORD(v6) = 1036831949;
  [layer2 setShadowOpacity:v6];
  [layer2 setShadowOffset:{0.0, 10.0}];
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [layer2 setShadowColor:{objc_msgSend(v7, "CGColor")}];

  [layer2 setShadowRadius:12.0];
  [layer2 setShadowPathIsBounds:1];
  if ([(HUQuickControlContainerView *)self isDisambiguationButtonAnimating])
  {
    [(HUQuickControlContainerView *)self frame];
    [(HUQuickControlContainerView *)self setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  }
}

- (void)setEdgesForExtendedLayout:(unint64_t)layout
{
  if (self->_edgesForExtendedLayout != layout)
  {
    self->_edgesForExtendedLayout = layout;
    [(HUQuickControlContainerView *)self _updateLayoutMargins];
  }
}

- (void)setShouldShowActiveControl:(BOOL)control
{
  if (self->_shouldShowActiveControl != control)
  {
    controlCopy = control;
    self->_shouldShowActiveControl = control;
    controlHostView = [(HUQuickControlContainerView *)self controlHostView];
    [controlHostView setHidden:!controlCopy];

    [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];

    [(HUQuickControlContainerView *)self setNeedsLayout];
  }
}

- (BOOL)_shouldShowControlView
{
  if (![(HUQuickControlContainerView *)self shouldShowActiveControl])
  {
    return 0;
  }

  activeControlView = [(HUQuickControlContainerView *)self activeControlView];
  v4 = activeControlView != 0;

  return v4;
}

- (void)setActiveControlView:(id)view
{
  viewCopy = view;
  activeControlView = [(HUQuickControlContainerView *)self activeControlView];

  if (activeControlView != viewCopy)
  {
    objc_storeStrong(&self->_activeControlView, view);
    controlHostView = [(HUQuickControlContainerView *)self controlHostView];
    [controlHostView setControlView:viewCopy];

    [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldShowDetailsButton:(BOOL)button
{
  if (self->_shouldShowDetailsButton != button)
  {
    self->_shouldShowDetailsButton = button;
    [(HUQuickControlContainerView *)self _updateDetailsButtonVisibility];
  }
}

- (void)setChromeTransitionProgress:(double)progress
{
  self->_chromeTransitionProgress = progress;
  summaryView = [(HUQuickControlContainerView *)self summaryView];
  [summaryView setAlpha:progress];

  auxiliaryHostView = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [auxiliaryHostView setAlpha:progress];

  [(HUQuickControlContainerView *)self setAlpha:progress];
}

- (void)setStandardViewportFromParentGuide:(id)guide
{
  v10 = *MEMORY[0x277D85DE8];
  guideCopy = guide;
  objc_storeStrong(&self->_standardViewportFromParentGuide, guide);
  [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    standardViewportFromParentGuide = self->_standardViewportFromParentGuide;
    v8 = 138412290;
    v9 = standardViewportFromParentGuide;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Setting _standardViewportFromParentGuide = %@", &v8, 0xCu);
  }
}

- (void)_detailsButtonTapped:(id)tapped
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "[HUQuickControlContainerView _detailsButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped details button", &v6, 0x16u);
  }

  delegate = [(HUQuickControlContainerView *)self delegate];
  [delegate detailsButtonPressedInContainerView:self];
}

- (void)showAuxiliaryView:(id)view
{
  viewCopy = view;
  auxiliaryHostView = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [auxiliaryHostView setAuxiliaryView:viewCopy];

  [(HUQuickControlContainerView *)self _updateCompactControlBottomConstraint];
}

- (void)hideAuxiliaryView
{
  buttonRowView = [(HUQuickControlContainerView *)self buttonRowView];
  auxiliaryHostView = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [auxiliaryHostView setAuxiliaryView:buttonRowView];

  [(HUQuickControlContainerView *)self _updateCompactControlBottomConstraint];
}

- (void)externalAnimationsEnded
{
  if ([(HUQuickControlContainerView *)self isExternallyAnimating])
  {
    self->_isExternallyAnimating = 0;
    if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
    {
      if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
      {
        v3 = HFLogForCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Disambiguation button external animations ended", v9, 2u);
        }

        currentUserActivities = [(HUQuickControlContainerView *)self currentUserActivities];
        currentDisambiguationContext = [(HUQuickControlContainerView *)self currentDisambiguationContext];
        [(HUQuickControlContainerView *)self _configureDisambiguationForActivities:currentUserActivities disambiguationContext:currentDisambiguationContext];

        currentUserActivities2 = [(HUQuickControlContainerView *)self currentUserActivities];
        currentDisambiguationContext2 = [(HUQuickControlContainerView *)self currentDisambiguationContext];
        v8 = [(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:currentUserActivities2 disambiguationContext:currentDisambiguationContext2];

        [(HUQuickControlContainerView *)self _updateDisambiguationButtonVisible:v8];
        [(HUQuickControlContainerView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_updateDetailsButtonVisibility
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__HUQuickControlContainerView__updateDetailsButtonVisibility__block_invoke;
  v2[3] = &unk_277DB8488;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.25];
}

void __61__HUQuickControlContainerView__updateDetailsButtonVisibility__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldShowDetailsButton])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) detailsButton];
  [v3 setAlpha:v2];
}

- (void)_disambiguationButtonTapped:(id)tapped
{
  mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
  currentDisambiguationContext = [(HUQuickControlContainerView *)self currentDisambiguationContext];
  [mEMORY[0x277D14990] userTappedDisambiguationButtonForContext:currentDisambiguationContext];

  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton setHighlighted:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUQuickControlContainerView__disambiguationButtonTapped___block_invoke;
  v7[3] = &unk_277DB8488;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.25];
}

void __59__HUQuickControlContainerView__disambiguationButtonTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) disambiguationButton];
  [v1 setHighlighted:0];
}

- (void)_disambiguationButtonTouchDown:(id)down
{
  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton setHighlighted:1];
}

- (void)_disambiguationButtonTouchUp:(id)up
{
  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton setHighlighted:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HUQuickControlContainerView;
  changeCopy = change;
  [(HUQuickControlContainerView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HUQuickControlContainerView *)self traitCollection:v8.receiver];
  verticalSizeClass = [v5 verticalSizeClass];
  verticalSizeClass2 = [changeCopy verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];
    [(HUQuickControlContainerView *)self setNeedsLayout];
  }
}

- (BOOL)_useCompactHeightLayout
{
  traitCollection = [(HUQuickControlContainerView *)self traitCollection];
  v3 = [traitCollection verticalSizeClass] == 1;

  return v3;
}

- (void)layoutMarginsDidChange
{
  v8.receiver = self;
  v8.super_class = HUQuickControlContainerView;
  [(HUQuickControlContainerView *)&v8 layoutMarginsDidChange];
  [(HUQuickControlContainerView *)self layoutMargins];
  v4 = v3;
  [(HUQuickControlContainerView *)self layoutMargins];
  v6 = v5;
  controlHostView = [(HUQuickControlContainerView *)self controlHostView];
  [controlHostView setLayoutMargins:{0.0, v4, 0.0, v6}];
}

- (void)_updateLayoutMargins
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HUQuickControlContainerView__updateLayoutMargins__block_invoke;
  aBlock[3] = &unk_277DBBC60;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = v3[2](v3, 1);
  v5 = v3[2](v3, 2);
  v6 = v3[2](v3, 4);
  [(HUQuickControlContainerView *)self setLayoutMargins:v4, v5, v6, v3[2](v3, 8)];
  [(HUQuickControlContainerView *)self setEdgesInsettingLayoutMarginsFromSafeArea:~[(HUQuickControlContainerView *)self edgesForExtendedLayout]& 0xF];
}

double __51__HUQuickControlContainerView__updateLayoutMargins__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) edgesForExtendedLayout];
  result = 34.0;
  if ((a2 & ~v3) != 0)
  {
    return 20.0;
  }

  return result;
}

- (CGAffineTransform)_controlHostTransformForPresentationProgress:(SEL)progress
{
  result = [(HUQuickControlContainerView *)self _presentedControlHostSize];
  v10 = v9;
  v11 = v8;
  if (v9 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v24 = MEMORY[0x277CBF2C0];
    v25 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v25;
    *&retstr->tx = *(v24 + 32);
  }

  else
  {
    [(HUQuickControlContainerView *)self sourceRect];
    v14 = v13;
    [(HUQuickControlContainerView *)self initialSourceViewScale];
    v16 = v15 * v14 / v10;
    [(HUQuickControlContainerView *)self sourceRect];
    v18 = v17;
    [(HUQuickControlContainerView *)self initialSourceViewScale];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HUQuickControlContainerView__controlHostTransformForPresentationProgress___block_invoke;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    *&aBlock[4] = a4;
    v20 = v19 * v18 / v11;
    v21 = _Block_copy(aBlock);
    v22 = v21[2](v16);
    v23 = (v21[2])(v21, v20);
    CGAffineTransformMakeScale(retstr, v22, v23);
  }

  return result;
}

- (CGAffineTransform)_controlHostTransform
{
  [(HUQuickControlContainerView *)self controlTransitionProgress];

  return [(HUQuickControlContainerView *)self _controlHostTransformForPresentationProgress:?];
}

- (CGPoint)_controlHostCenter
{
  [(HUQuickControlContainerView *)self controlTransitionProgress];

  [(HUQuickControlContainerView *)self _controlHostCenterForPresentationProgress:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_controlHostCenterForPresentationProgress:(double)progress
{
  [(HUQuickControlContainerView *)self sourceRect];
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  [(HUQuickControlContainerView *)self sourceRect];
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  superview = [(HUQuickControlContainerView *)self superview];
  window = [superview window];
  [window bounds];
  v16 = v15;
  v30 = v17;

  [(HUQuickControlContainerView *)self _presentedControlHostSize];
  v19 = v18;
  v21 = v20;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v24 = v19 * 0.5;
  if (userInterfaceIdiom)
  {
    if (v10 >= v24)
    {
      if (v10 + v24 <= v16)
      {
        goto LABEL_8;
      }

      v24 = v16 - v24;
      v25 = -20.0;
    }

    else
    {
      v25 = 20.0;
    }

    v10 = v24 + v25;
LABEL_8:
    v26 = v21 * 0.5;
    if (v12 >= v21 * 0.5)
    {
      if (v12 + v26 <= v30)
      {
LABEL_13:
        v24 = v10;
        goto LABEL_14;
      }

      v26 = v30 - v26;
      v27 = -60.0;
    }

    else
    {
      v27 = 60.0;
    }

    v12 = v26 + v27;
    goto LABEL_13;
  }

  v12 = v21 * 0.5;
LABEL_14:
  v28 = v6 + (v24 - v6) * progress;
  v29 = v8 + (v12 - v8) * progress;
  result.y = v29;
  result.x = v28;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  screen = [window screen];
  [screen bounds];
  v6 = HURoundToScreenScale(v5 * 0.78);

  maxHeightConstraints = [(HUQuickControlContainerView *)self maxHeightConstraints];

  if (maxHeightConstraints)
  {
    maxHeightConstraints2 = [(HUQuickControlContainerView *)self maxHeightConstraints];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HUQuickControlContainerView_willMoveToWindow___block_invoke;
    v18[3] = &__block_descriptor_40_e35_v32__0__NSLayoutConstraint_8Q16_B24l;
    *&v18[4] = v6;
    [maxHeightConstraints2 enumerateObjectsUsingBlock:v18];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    controlViewPreferredFrameLayoutGuide = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
    heightAnchor = [controlViewPreferredFrameLayoutGuide heightAnchor];
    v11 = [heightAnchor constraintLessThanOrEqualToConstant:v6];

    LODWORD(v12) = 1144750080;
    [v11 setPriority:v12];
    [v17 addObject:v11];
    controlHostView = [(HUQuickControlContainerView *)self controlHostView];
    heightAnchor2 = [controlHostView heightAnchor];
    v15 = [heightAnchor2 constraintLessThanOrEqualToConstant:v6];

    LODWORD(v16) = 1144750080;
    [v15 setPriority:v16];
    [v17 addObject:v15];
    [MEMORY[0x277CCAAD0] activateConstraints:v17];
    [(HUQuickControlContainerView *)self setMaxHeightConstraints:v17];
  }
}

- (void)updateConstraints
{
  v15 = *MEMORY[0x277D85DE8];
  contentConstraints = [(HUQuickControlContainerView *)self contentConstraints];

  if (contentConstraints)
  {
    v5 = MEMORY[0x277CCAAD0];
    contentConstraints2 = [(HUQuickControlContainerView *)self contentConstraints];
    [v5 deactivateConstraints:contentConstraints2];
  }

  array = [MEMORY[0x277CBEB18] array];
  [(HUQuickControlContainerView *)self _configureRegularHeightConstraints:array];
  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(HUQuickControlContainerView *)self setContentConstraints:array];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = array;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@ Added and activated constraints = %@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = HUQuickControlContainerView;
  [(HUQuickControlContainerView *)&v10 updateConstraints];
}

- (void)_configureRegularHeightConstraints:(id)constraints
{
  v66 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  controlViewPreferredFrameLayoutGuide = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  centerYAnchor = [controlViewPreferredFrameLayoutGuide centerYAnchor];
  controlHostView = [(HUQuickControlContainerView *)self controlHostView];
  centerYAnchor2 = [controlHostView centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [constraintsCopy addObject:v10];

  controlHostView2 = [(HUQuickControlContainerView *)self controlHostView];
  [controlHostView2 setRequiresWellDefinedSize:1];

  heightAnchor = [(HUQuickControlContainerView *)self heightAnchor];
  standardViewportFromParentGuide = [(HUQuickControlContainerView *)self standardViewportFromParentGuide];
  heightAnchor2 = [standardViewportFromParentGuide heightAnchor];
  v15 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];

  [constraintsCopy addObject:v15];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    standardViewportFromParentGuide2 = [(HUQuickControlContainerView *)self standardViewportFromParentGuide];
    heightAnchor3 = [standardViewportFromParentGuide2 heightAnchor];
    v60 = 138412802;
    v61 = v17;
    v62 = 2112;
    v63 = v15;
    v64 = 2112;
    v65 = heightAnchor3;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ totalHeightFromParent = %@, self.standardViewportFromParentGuide.heightAnchor = %@", &v60, 0x20u);
  }

  controlHostView3 = [(HUQuickControlContainerView *)self controlHostView];
  bottomAnchor = [controlHostView3 bottomAnchor];
  detailsButton = [(HUQuickControlContainerView *)self detailsButton];
  topAnchor = [detailsButton topAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-5.0];
  [constraintsCopy addObject:v24];

  detailsButton2 = [(HUQuickControlContainerView *)self detailsButton];
  bottomAnchor2 = [detailsButton2 bottomAnchor];
  bottomAnchor3 = [(HUQuickControlContainerView *)self bottomAnchor];
  v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-20.0];
  [constraintsCopy addObject:v28];

  controlHostView4 = [(HUQuickControlContainerView *)self controlHostView];
  widthAnchor = [controlHostView4 widthAnchor];
  widthAnchor2 = [(HUQuickControlContainerView *)self widthAnchor];
  v32 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [constraintsCopy addObject:v32];

  controlHostView5 = [(HUQuickControlContainerView *)self controlHostView];
  centerXAnchor = [controlHostView5 centerXAnchor];
  centerXAnchor2 = [(HUQuickControlContainerView *)self centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [constraintsCopy addObject:v36];

  controlViewPreferredFrameLayoutGuide2 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  widthAnchor3 = [controlViewPreferredFrameLayoutGuide2 widthAnchor];
  layoutMarginsGuide = [(HUQuickControlContainerView *)self layoutMarginsGuide];
  widthAnchor4 = [layoutMarginsGuide widthAnchor];
  v41 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [constraintsCopy addObject:v41];

  controlViewPreferredFrameLayoutGuide3 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  centerXAnchor3 = [controlViewPreferredFrameLayoutGuide3 centerXAnchor];
  centerXAnchor4 = [(HUQuickControlContainerView *)self centerXAnchor];
  v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [constraintsCopy addObject:v45];

  detailsButton3 = [(HUQuickControlContainerView *)self detailsButton];
  trailingAnchor = [detailsButton3 trailingAnchor];
  trailingAnchor2 = [(HUQuickControlContainerView *)self trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-25.0];
  [constraintsCopy addObject:v49];

  detailsButton4 = [(HUQuickControlContainerView *)self detailsButton];
  widthAnchor5 = [detailsButton4 widthAnchor];
  v52 = [widthAnchor5 constraintEqualToConstant:40.0];
  [constraintsCopy addObject:v52];

  detailsButton5 = [(HUQuickControlContainerView *)self detailsButton];
  heightAnchor4 = [detailsButton5 heightAnchor];
  v55 = [heightAnchor4 constraintEqualToConstant:40.0];
  [constraintsCopy addObject:v55];

  [(HUQuickControlContainerView *)self _configureControlViewLayoutGuideConstraints:constraintsCopy];
  [(HUQuickControlContainerView *)self _configureCardViewLayoutGuideConstraints:constraintsCopy];
  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !objc_msgSend(MEMORY[0x277D14CE8], "isProxHandOffV2Config"))
  {
    controlHostView6 = [(HUQuickControlContainerView *)self controlHostView];
    topAnchor2 = [controlHostView6 topAnchor];
    topAnchor3 = [(HUQuickControlContainerView *)self topAnchor];
    v59 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    [constraintsCopy addObject:v59];
  }

  else
  {
    [(HUQuickControlContainerView *)self _configureDisambiguationButtonConstraints:constraintsCopy];
  }
}

- (void)_configureControlViewLayoutGuideConstraints:(id)constraints
{
  v4 = MEMORY[0x277CCAAD0];
  constraintsCopy = constraints;
  controlViewLayoutGuide = [(HUQuickControlContainerView *)self controlViewLayoutGuide];
  controlHostView = [(HUQuickControlContainerView *)self controlHostView];
  v7 = [v4 hu_constraintsSizingAnchorProvider:controlViewLayoutGuide toAnchorProvider:controlHostView];
  [constraintsCopy addObjectsFromArray:v7];
}

- (void)_configureCardViewLayoutGuideConstraints:(id)constraints
{
  v4 = MEMORY[0x277CCAAD0];
  constraintsCopy = constraints;
  cardViewLayoutGuide = [(HUQuickControlContainerView *)self cardViewLayoutGuide];
  v6 = [v4 hu_constraintsSizingAnchorProvider:cardViewLayoutGuide toAnchorProvider:self];
  [constraintsCopy addObjectsFromArray:v6];
}

- (void)_updateCompactControlBottomConstraint
{
  compactControlBottomConstraint = [(HUQuickControlContainerView *)self compactControlBottomConstraint];
  [compactControlBottomConstraint setActive:0];

  if ([(HUQuickControlContainerView *)self _useCompactHeightLayout]&& [(HUQuickControlContainerView *)self _shouldShowControlView])
  {
    auxiliaryHostView = [(HUQuickControlContainerView *)self auxiliaryHostView];
    auxiliaryView = [auxiliaryHostView auxiliaryView];
    hasCenteredContent = [auxiliaryView hasCenteredContent];

    controlHostView = [(HUQuickControlContainerView *)self controlHostView];
    bottomAnchor = [controlHostView bottomAnchor];
    if (hasCenteredContent)
    {
      auxiliaryHostView2 = [(HUQuickControlContainerView *)self auxiliaryHostView];
      topAnchor = [auxiliaryHostView2 topAnchor];
      [bottomAnchor constraintEqualToAnchor:topAnchor constant:-20.0];
    }

    else
    {
      auxiliaryHostView2 = [(HUQuickControlContainerView *)self layoutMarginsGuide];
      topAnchor = [auxiliaryHostView2 bottomAnchor];
      [bottomAnchor constraintEqualToAnchor:topAnchor];
    }
    v11 = ;
    [(HUQuickControlContainerView *)self setCompactControlBottomConstraint:v11];

    compactControlBottomConstraint2 = [(HUQuickControlContainerView *)self compactControlBottomConstraint];
    [compactControlBottomConstraint2 setActive:1];
  }

  else
  {

    [(HUQuickControlContainerView *)self setCompactControlBottomConstraint:0];
  }
}

- (void)_configureDisambiguationButtonConstraints:(id)constraints
{
  constraintsCopy = constraints;
  controlHostViewTopConstraintToView = self->_controlHostViewTopConstraintToView;
  v30 = constraintsCopy;
  if (!controlHostViewTopConstraintToView)
  {
    controlHostView = [(HUQuickControlContainerView *)self controlHostView];
    topAnchor = [controlHostView topAnchor];
    topAnchor2 = [(HUQuickControlContainerView *)self topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v10 = self->_controlHostViewTopConstraintToView;
    self->_controlHostViewTopConstraintToView = v9;

    constraintsCopy = v30;
    controlHostViewTopConstraintToView = self->_controlHostViewTopConstraintToView;
  }

  [constraintsCopy addObject:controlHostViewTopConstraintToView];
  disambiguationButtonTopConstraint = self->_disambiguationButtonTopConstraint;
  if (!disambiguationButtonTopConstraint)
  {
    disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
    topAnchor3 = [disambiguationButton topAnchor];
    topAnchor4 = [(HUQuickControlContainerView *)self topAnchor];
    v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
    v16 = self->_disambiguationButtonTopConstraint;
    self->_disambiguationButtonTopConstraint = v15;

    disambiguationButtonTopConstraint = self->_disambiguationButtonTopConstraint;
  }

  [v30 addObject:disambiguationButtonTopConstraint];
  disambiguationButtonHeightConstraint = self->_disambiguationButtonHeightConstraint;
  if (!disambiguationButtonHeightConstraint)
  {
    disambiguationButton2 = [(HUQuickControlContainerView *)self disambiguationButton];
    heightAnchor = [disambiguationButton2 heightAnchor];
    v20 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
    v21 = self->_disambiguationButtonHeightConstraint;
    self->_disambiguationButtonHeightConstraint = v20;

    disambiguationButtonHeightConstraint = self->_disambiguationButtonHeightConstraint;
  }

  [v30 addObject:disambiguationButtonHeightConstraint];
  disambiguationButton3 = [(HUQuickControlContainerView *)self disambiguationButton];
  leadingAnchor = [disambiguationButton3 leadingAnchor];
  leadingAnchor2 = [(HUQuickControlContainerView *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
  [v30 addObject:v25];

  disambiguationButton4 = [(HUQuickControlContainerView *)self disambiguationButton];
  trailingAnchor = [disambiguationButton4 trailingAnchor];
  trailingAnchor2 = [(HUQuickControlContainerView *)self trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
  [v30 addObject:v29];
}

- (CGRect)presentedControlFrame
{
  [(HUQuickControlContainerView *)self _controlHostCenterForPresentationProgress:1.0];
  v4 = v3;
  v6 = v5;
  [(HUQuickControlContainerView *)self _presentedControlHostSize];
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)_presentedControlHostSize
{
  cardViewLayoutGuide = [(HUQuickControlContainerView *)self cardViewLayoutGuide];
  [cardViewLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)progress
{
  [(HUQuickControlContainerView *)self updateConstraintsIfNeeded];
  [(HUQuickControlContainerView *)self layoutIfNeeded];
  [(HUQuickControlContainerView *)self _controlHostCenterForPresentationProgress:a4];
  v8 = v7;
  v10 = v9;
  [(HUQuickControlContainerView *)self sourceRect];
  UIRectGetCenter();
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, v8 - v11, v10 - v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HUQuickControlContainerView_sourceViewTransformForPresentationProgress___block_invoke;
  v21[3] = &unk_277DBBCC8;
  v21[4] = self;
  v13 = __74__HUQuickControlContainerView_sourceViewTransformForPresentationProgress___block_invoke(v21);
  [(HUQuickControlContainerView *)self sourceRect];
  v15 = v13 / v14;
  [(HUQuickControlContainerView *)self initialSourceViewScale];
  v17 = v16;
  [(HUQuickControlContainerView *)self initialSourceViewScale];
  v20 = v22;
  return CGAffineTransformScale(retstr, &v20, v17 + (v15 - v18) * a4, v17 + (v15 - v18) * a4);
}

double __74__HUQuickControlContainerView_sourceViewTransformForPresentationProgress___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldShowControlView] && objc_msgSend(*(a1 + 32), "controlViewSupportsTransformTransition"))
  {
    v2 = [*(a1 + 32) activeControlView];
    [*(a1 + 32) _presentedControlHostSize];
    [v2 systemLayoutSizeFittingSize:?];
    v4 = v3;
  }

  else
  {
    [*(a1 + 32) sourceRect];
    v4 = v5 + v5;
    [*(a1 + 32) sourceRect];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"fillColor"] & 1) != 0 || (objc_msgSend(keyCopy, "hasPrefix:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlContainerView;
    v5 = [(HUQuickControlContainerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_configureDisambiguationForActivities:(id)activities disambiguationContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:activities disambiguationContext:contextCopy])
  {
    titleText = [contextCopy titleText];
    subtitleText = [contextCopy subtitleText];
    v11 = subtitleText;
    if (titleText)
    {
      disambiguationButtonPrimaryText = [(HUQuickControlContainerView *)self disambiguationButtonPrimaryText];
      if (([titleText isEqualToAttributedString:disambiguationButtonPrimaryText] & 1) == 0)
      {

LABEL_15:
        disambiguationButtonPrimaryText = [MEMORY[0x277CBEB18] array];
        v16 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:titleText style:5];
        [disambiguationButtonPrimaryText addObject:v16];
        if (v11)
        {
          v17 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
        }

        else
        {
          v17 = 0;
        }

        [disambiguationButtonPrimaryText na_safeAddObject:v17];
        [(HUQuickControlContainerView *)self setDisambiguationButtonPrimaryText:titleText];
        [(HUQuickControlContainerView *)self setDisambiguationButtonSecondaryText:v11];
        disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
        v19 = [disambiguationButtonPrimaryText copy];
        [disambiguationButton setCenterContentItems:v19 animated:1];

        goto LABEL_19;
      }

      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else if (!subtitleText)
    {
LABEL_20:
      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        disambiguationButton2 = [(HUQuickControlContainerView *)self disambiguationButton];
        centerContentItems = [disambiguationButton2 centerContentItems];
        v29 = 138412546;
        v30 = v21;
        v31 = 2112;
        v32 = centerContentItems;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@  self.disambiguationButton.CenterContentItems = %@", &v29, 0x16u);
      }

      disambiguationButtonLeadingImageView = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
      leadingImage = [contextCopy leadingImage];
      [disambiguationButtonLeadingImageView setImage:leadingImage];

      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = NSStringFromSelector(a2);
        disambiguationButtonLeadingImageView2 = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
        v29 = 138412546;
        v30 = v27;
        v31 = 2112;
        v32 = disambiguationButtonLeadingImageView2;
        _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@  self.disambiguationButtonLeadingImageView = %@", &v29, 0x16u);
      }

      if ([(HUQuickControlContainerView *)self _isPhoneCallStatusUpdateTimerActive]&& ![(HUQuickControlContainerView *)self hasActivePhoneCall])
      {
        [(HUQuickControlContainerView *)self _invalidatePhoneCallStatusUpdateTimer];
      }

      else if (![(HUQuickControlContainerView *)self _isPhoneCallStatusUpdateTimerActive]&& [(HUQuickControlContainerView *)self hasActivePhoneCall])
      {
        [(HUQuickControlContainerView *)self _startPhoneCallStatusUpdateTimer];
      }

      goto LABEL_31;
    }

    disambiguationButtonSecondaryText = [(HUQuickControlContainerView *)self disambiguationButtonSecondaryText];
    v15 = [v11 isEqualToString:disambiguationButtonSecondaryText];

    if (titleText)
    {
    }

    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  disambiguationButton3 = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton3 setCenterContentItems:MEMORY[0x277CBEBF8]];

  disambiguationButtonLeadingImageView3 = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
  [disambiguationButtonLeadingImageView3 setImage:0];

  if ([(HUQuickControlContainerView *)self _isPhoneCallStatusUpdateTimerActive]&& ![(HUQuickControlContainerView *)self hasActivePhoneCall])
  {
    [(HUQuickControlContainerView *)self _invalidatePhoneCallStatusUpdateTimer];
  }

LABEL_31:
}

- (BOOL)_shouldShowDisambiguationButtonForUserActivities:(id)activities disambiguationContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  contextCopy = context;
  activity = [contextCopy activity];
  if (activity)
  {
    v8 = [contextCopy interactionDirection] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activity2 = [contextCopy activity];
    v12 = 138412802;
    v13 = activitiesCopy;
    v14 = 2112;
    v15 = activity2;
    v16 = 2048;
    interactionDirection = [contextCopy interactionDirection];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Activities = %@, disambiguationContext.activity = [%@] interactionDirection = [%ld]", &v12, 0x20u);
  }

  return v8;
}

- (BOOL)_isDisambiguationButtonVisible
{
  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton alpha];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_updateDisambiguationButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  v24 = *MEMORY[0x277D85DE8];
  _isDisambiguationButtonVisible = [(HUQuickControlContainerView *)self _isDisambiguationButtonVisible];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
    *buf = 138412802;
    v19 = disambiguationButton;
    v20 = 1024;
    v21 = _isDisambiguationButtonVisible;
    v22 = 1024;
    v23 = visibleCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Disambiguation button %@ current display mode %{BOOL}d, requested display mode %{BOOL}d", buf, 0x18u);
  }

  if (_isDisambiguationButtonVisible != visibleCopy)
  {
    isExternallyAnimating = [(HUQuickControlContainerView *)self isExternallyAnimating];
    v9 = HFLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isExternallyAnimating)
    {
      if (v10)
      {
        disambiguationButton2 = [(HUQuickControlContainerView *)self disambiguationButton];
        *buf = 138412546;
        v19 = disambiguationButton2;
        v20 = 1024;
        v21 = _isDisambiguationButtonVisible;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Disambiguation button %@ display updates paused for external animation (current display mode %{BOOL}d)", buf, 0x12u);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Calling layoutIfNeeded", buf, 2u);
      }

      [(HUQuickControlContainerView *)self layoutIfNeeded];
      [(HUQuickControlContainerView *)self setIsDisambiguationButtonAnimating:1];
      objc_initWeak(buf, self);
      v12 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__HUQuickControlContainerView__updateDisambiguationButtonVisible___block_invoke;
      v15[3] = &unk_277DBBCF0;
      objc_copyWeak(&v16, buf);
      v17 = visibleCopy;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__HUQuickControlContainerView__updateDisambiguationButtonVisible___block_invoke_69;
      v13[3] = &unk_277DB7990;
      objc_copyWeak(&v14, buf);
      [v12 animateWithDuration:0 delay:v15 usingSpringWithDamping:v13 initialSpringVelocity:0.75 options:0.0 animations:0.73333 completion:0.0];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }
}

void __66__HUQuickControlContainerView__updateDisambiguationButtonVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  v4 = 0.0;
  if (*(a1 + 40) == 1)
  {
    [WeakRetained _disambiguationButtonPreferredHeight];
    v4 = v5 + 12.0;
  }

  v6 = [v3 controlHostViewTopConstraintToView];
  [v6 setConstant:v4];

  if (*(a1 + 40) == 1)
  {
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    v13 = *MEMORY[0x277CBF2C0];
    v14 = v7;
    v15 = *(MEMORY[0x277CBF2C0] + 32);
  }

  else if (v3)
  {
    [v3 _disambiguationButtonHiddenTransform];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v8 = [v3 disambiguationButton];
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  [v8 setTransform:v12];

  if (*(a1 + 40))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v3 disambiguationButton];
  [v10 setAlpha:v9];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Calling layoutIfNeeded inside animateWithDuration", v12, 2u);
  }

  [v3 layoutIfNeeded];
}

void __66__HUQuickControlContainerView__updateDisambiguationButtonVisible___block_invoke_69(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsDisambiguationButtonAnimating:0];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained disambiguationButton];
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = [WeakRetained _isDisambiguationButtonVisible];
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Disambiguation button %@ updated to display mode %{BOOL}d", &v5, 0x12u);
  }

  v4 = [WeakRetained delegate];
  [v4 contentDidUpdateInContainerView:WeakRetained];
}

- (CGAffineTransform)_disambiguationButtonHiddenTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeScale(retstr, 0.6, 0.6);
  [(HUQuickControlContainerView *)self _disambiguationButtonPreferredHeight];
  v6 = *&retstr->c;
  *&v9.a = *&retstr->a;
  *&v9.c = v6;
  *&v9.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v10, &v9, 0.0, v5 * -0.6 * 0.5);
  v8 = *&v10.c;
  *&retstr->a = *&v10.a;
  *&retstr->c = v8;
  *&retstr->tx = *&v10.tx;
  return result;
}

- (double)_disambiguationButtonPreferredHeight
{
  disambiguationButton = [(HUQuickControlContainerView *)self disambiguationButton];
  disambiguationButton2 = [(HUQuickControlContainerView *)self disambiguationButton];
  [disambiguationButton2 bounds];
  [disambiguationButton sizeThatFits:{v5, 1.79769313e308}];
  v7 = v6;

  result = 50.0;
  if (v7 >= 50.0)
  {
    return v7;
  }

  return result;
}

- (void)_startPhoneCallStatusUpdateTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(HUQuickControlContainerView *)self setPhoneCallStatusUpdateTimer:v4];

  v5 = dispatch_time(0, 0);
  objc_initWeak(&location, self);
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Starting Phone Call Status Update Timer", buf, 0xCu);
  }

  phoneCallStatusUpdateTimer = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __63__HUQuickControlContainerView__startPhoneCallStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(phoneCallStatusUpdateTimer, handler);

  phoneCallStatusUpdateTimer2 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  dispatch_source_set_timer(phoneCallStatusUpdateTimer2, v5, 0x3B9ACA00uLL, 0);

  phoneCallStatusUpdateTimer3 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  dispatch_resume(phoneCallStatusUpdateTimer3);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __63__HUQuickControlContainerView__startPhoneCallStatusUpdateTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Now Updating Phone Call Status...", &v7, 0xCu);
  }

  v5 = [WeakRetained currentUserActivities];
  v6 = [WeakRetained currentDisambiguationContext];
  [WeakRetained _configureDisambiguationForActivities:v5 disambiguationContext:v6];
}

- (void)_invalidatePhoneCallStatusUpdateTimer
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cancelling Phone Call Status Update Timer", &v7, 0xCu);
  }

  if ([(HUQuickControlContainerView *)self _isPhoneCallStatusUpdateTimerActive])
  {
    phoneCallStatusUpdateTimer = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
    dispatch_source_cancel(phoneCallStatusUpdateTimer);
  }

  [(HUQuickControlContainerView *)self setPhoneCallStatusUpdateTimer:0];
}

- (BOOL)_isPhoneCallStatusUpdateTimerActive
{
  phoneCallStatusUpdateTimer = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  if (phoneCallStatusUpdateTimer)
  {
    phoneCallStatusUpdateTimer2 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
    v5 = dispatch_source_testcancel(phoneCallStatusUpdateTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  contextCopy = context;
  currentDisambiguationContext = [(HUQuickControlContainerView *)self currentDisambiguationContext];
  activity = [currentDisambiguationContext activity];
  activity2 = [contextCopy activity];
  v15 = [activity isEqual:activity2];

  v16 = HFLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      activity3 = [contextCopy activity];
      v23 = 138412290;
      v24 = activity3;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "NOT Updating summary view for PCActivity = [%@]", &v23, 0xCu);
    }
  }

  else
  {
    if (v17)
    {
      v19 = NSStringFromSelector(a2);
      v23 = 138413058;
      v24 = v19;
      v25 = 2112;
      v26 = activitiesCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = contextCopy;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ didUpdateActivities = %@ forProxControlID = %@ disambiguationContext = %@", &v23, 0x2Au);
    }

    activity4 = [contextCopy activity];
    if (activity4)
    {
      activity5 = [contextCopy activity];
      -[HUQuickControlContainerView setHasActivePhoneCall:](self, "setHasActivePhoneCall:", [activity5 pcactivityType] == 0);
    }

    else
    {
      [(HUQuickControlContainerView *)self setHasActivePhoneCall:0];
    }

    [(HUQuickControlContainerView *)self setCurrentDisambiguationContext:contextCopy];
    [(HUQuickControlContainerView *)self setCurrentUserActivities:activitiesCopy];
    [(HUQuickControlContainerView *)self _configureDisambiguationForActivities:activitiesCopy disambiguationContext:contextCopy];
    [(HUQuickControlContainerView *)self _updateDisambiguationButtonVisible:[(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:activitiesCopy disambiguationContext:contextCopy]];
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Calling setNeedsLayout inside didUpdateActivities", &v23, 2u);
    }

    [(HUQuickControlContainerView *)self setNeedsLayout];
  }
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (HUQuickControlContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end