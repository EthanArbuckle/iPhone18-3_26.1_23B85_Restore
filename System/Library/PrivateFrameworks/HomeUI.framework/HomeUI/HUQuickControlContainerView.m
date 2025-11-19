@interface HUQuickControlContainerView
- (BOOL)_isDisambiguationButtonVisible;
- (BOOL)_isPhoneCallStatusUpdateTimerActive;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_shouldShowControlView;
- (BOOL)_shouldShowDisambiguationButtonForUserActivities:(id)a3 disambiguationContext:(id)a4;
- (BOOL)_useCompactHeightLayout;
- (CGAffineTransform)_controlHostTransform;
- (CGAffineTransform)_controlHostTransformForPresentationProgress:(SEL)a3;
- (CGAffineTransform)_disambiguationButtonHiddenTransform;
- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)a3;
- (CGPoint)_controlHostCenter;
- (CGPoint)_controlHostCenterForPresentationProgress:(double)a3;
- (CGRect)presentedControlFrame;
- (CGRect)sourceRect;
- (CGSize)_presentedControlHostSize;
- (HUQuickControlContainerView)initWithFrame:(CGRect)a3 delegate:(id)a4 sourceRect:(CGRect)a5;
- (HUQuickControlContainerViewDelegate)delegate;
- (double)_disambiguationButtonPreferredHeight;
- (void)_configureCardViewLayoutGuideConstraints:(id)a3;
- (void)_configureControlViewLayoutGuideConstraints:(id)a3;
- (void)_configureDisambiguationButtonConstraints:(id)a3;
- (void)_configureDisambiguationForActivities:(id)a3 disambiguationContext:(id)a4;
- (void)_configureRegularHeightConstraints:(id)a3;
- (void)_detailsButtonTapped:(id)a3;
- (void)_disambiguationButtonTapped:(id)a3;
- (void)_disambiguationButtonTouchDown:(id)a3;
- (void)_disambiguationButtonTouchUp:(id)a3;
- (void)_invalidatePhoneCallStatusUpdateTimer;
- (void)_startPhoneCallStatusUpdateTimer;
- (void)_updateCompactControlBottomConstraint;
- (void)_updateDetailsButtonVisibility;
- (void)_updateDisambiguationButtonVisible:(BOOL)a3;
- (void)_updateLayoutMargins;
- (void)dealloc;
- (void)didUpdateActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5;
- (void)externalAnimationsEnded;
- (void)hideAuxiliaryView;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setActiveControlView:(id)a3;
- (void)setChromeTransitionProgress:(double)a3;
- (void)setEdgesForExtendedLayout:(unint64_t)a3;
- (void)setShouldShowActiveControl:(BOOL)a3;
- (void)setShouldShowDetailsButton:(BOOL)a3;
- (void)setStandardViewportFromParentGuide:(id)a3;
- (void)showAuxiliaryView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)a3;
@end

@implementation HUQuickControlContainerView

- (HUQuickControlContainerView)initWithFrame:(CGRect)a3 delegate:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = a4;
  v54.receiver = self;
  v54.super_class = HUQuickControlContainerView;
  v15 = [(HUQuickControlContainerView *)&v54 initWithFrame:v12, v11, v10, v9];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v14);
    v16->_sourceRect.origin.x = x;
    v16->_sourceRect.origin.y = y;
    v16->_sourceRect.size.width = width;
    v16->_sourceRect.size.height = height;
    v16->_shouldShowDetailsButton = 1;
    v16->_shouldShowActiveControl = 1;
    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      v16->_isExternallyAnimating = 1;
      v17 = [MEMORY[0x277D14990] sharedInstance];
      [v17 addObserver:v16];
      v18 = objc_alloc(MEMORY[0x277D755E8]);
      v19 = [v17 lastDisambiguationContext];
      v20 = [v19 leadingImage];
      v21 = [v18 initWithImage:v20];
      disambiguationButtonLeadingImageView = v16->_disambiguationButtonLeadingImageView;
      v16->_disambiguationButtonLeadingImageView = v21;

      [(UIImageView *)v16->_disambiguationButtonLeadingImageView setFrame:0.0, 0.0, 34.0, 34.0];
      [(UIImageView *)v16->_disambiguationButtonLeadingImageView setContentMode:4];
      v23 = [objc_alloc(MEMORY[0x277D3D310]) initWithLeadingAccessoryView:v16->_disambiguationButtonLeadingImageView trailingAccessoryView:0];
      disambiguationButton = v16->_disambiguationButton;
      v16->_disambiguationButton = v23;

      [(PLPillControl *)v16->_disambiguationButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = v16->_disambiguationButton;
      v26 = [MEMORY[0x277D75348] systemWhiteColor];
      [(PLPillControl *)v25 setBackgroundColor:v26];

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
    v29 = [(HUQuickControlContainerView *)v16 activeControlView];
    v30 = [(HUControlHostView *)v28 initWithControlView:v29];
    [(HUQuickControlContainerView *)v16 setControlHostView:v30];

    v31 = [(HUQuickControlContainerView *)v16 controlHostView];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [(HUQuickControlContainerView *)v16 controlHostView];
    [(HUQuickControlContainerView *)v16 addSubview:v32];

    v33 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HUQuickControlContainerView *)v16 setDetailsButton:v33];

    v34 = [(HUQuickControlContainerView *)v16 detailsButton];
    v35 = HUImageNamed(@"card-settings");
    [v34 setImage:v35 forState:0];

    v36 = [MEMORY[0x277D75348] systemGrayColor];
    v37 = [(HUQuickControlContainerView *)v16 detailsButton];
    [v37 setTintColor:v36];

    v38 = [(HUQuickControlContainerView *)v16 detailsButton];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

    v39 = [(HUQuickControlContainerView *)v16 detailsButton];
    [v39 setAlpha:1.0];

    v40 = [(HUQuickControlContainerView *)v16 detailsButton];
    [v40 addTarget:v16 action:sel__detailsButtonTapped_ forControlEvents:64];

    v41 = [(HUQuickControlContainerView *)v16 detailsButton];
    [(HUQuickControlContainerView *)v16 addSubview:v41];

    v42 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setControlViewLayoutGuide:v42];

    v43 = [(HUQuickControlContainerView *)v16 controlViewLayoutGuide];
    [v43 setIdentifier:@"HUControlViewLayoutGuide"];

    v44 = [(HUQuickControlContainerView *)v16 controlViewLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:v44];

    v45 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setCardViewLayoutGuide:v45];

    v46 = [(HUQuickControlContainerView *)v16 cardViewLayoutGuide];
    [v46 setIdentifier:@"HUCardViewLayoutGuide"];

    v47 = [(HUQuickControlContainerView *)v16 cardViewLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:v47];

    v48 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(HUQuickControlContainerView *)v16 setControlViewPreferredFrameLayoutGuide:v48];

    v49 = [(HUQuickControlContainerView *)v16 controlViewPreferredFrameLayoutGuide];
    [v49 setIdentifier:@"HUControlViewPreferredFrameLayoutGuide"];

    v50 = [(HUQuickControlContainerView *)v16 controlViewPreferredFrameLayoutGuide];
    [(HUQuickControlContainerView *)v16 addLayoutGuide:v50];

    v51 = [(HUQuickControlContainerView *)v16 layer];
    [v51 setAllowsGroupBlending:0];

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
  v3 = [(HUQuickControlContainerView *)self disambiguationButton];
  v4 = [v3 layer];
  [v4 setCornerRadius:8.0];

  v5 = [(PLPillControl *)self->_disambiguationButton layer];
  LODWORD(v6) = 1036831949;
  [v5 setShadowOpacity:v6];
  [v5 setShadowOffset:{0.0, 10.0}];
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [v5 setShadowColor:{objc_msgSend(v7, "CGColor")}];

  [v5 setShadowRadius:12.0];
  [v5 setShadowPathIsBounds:1];
  if ([(HUQuickControlContainerView *)self isDisambiguationButtonAnimating])
  {
    [(HUQuickControlContainerView *)self frame];
    [(HUQuickControlContainerView *)self setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  }
}

- (void)setEdgesForExtendedLayout:(unint64_t)a3
{
  if (self->_edgesForExtendedLayout != a3)
  {
    self->_edgesForExtendedLayout = a3;
    [(HUQuickControlContainerView *)self _updateLayoutMargins];
  }
}

- (void)setShouldShowActiveControl:(BOOL)a3
{
  if (self->_shouldShowActiveControl != a3)
  {
    v4 = a3;
    self->_shouldShowActiveControl = a3;
    v6 = [(HUQuickControlContainerView *)self controlHostView];
    [v6 setHidden:!v4];

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

  v3 = [(HUQuickControlContainerView *)self activeControlView];
  v4 = v3 != 0;

  return v4;
}

- (void)setActiveControlView:(id)a3
{
  v7 = a3;
  v5 = [(HUQuickControlContainerView *)self activeControlView];

  if (v5 != v7)
  {
    objc_storeStrong(&self->_activeControlView, a3);
    v6 = [(HUQuickControlContainerView *)self controlHostView];
    [v6 setControlView:v7];

    [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldShowDetailsButton:(BOOL)a3
{
  if (self->_shouldShowDetailsButton != a3)
  {
    self->_shouldShowDetailsButton = a3;
    [(HUQuickControlContainerView *)self _updateDetailsButtonVisibility];
  }
}

- (void)setChromeTransitionProgress:(double)a3
{
  self->_chromeTransitionProgress = a3;
  v5 = [(HUQuickControlContainerView *)self summaryView];
  [v5 setAlpha:a3];

  v6 = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [v6 setAlpha:a3];

  [(HUQuickControlContainerView *)self setAlpha:a3];
}

- (void)setStandardViewportFromParentGuide:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_standardViewportFromParentGuide, a3);
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

- (void)_detailsButtonTapped:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[HUQuickControlContainerView _detailsButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped details button", &v6, 0x16u);
  }

  v5 = [(HUQuickControlContainerView *)self delegate];
  [v5 detailsButtonPressedInContainerView:self];
}

- (void)showAuxiliaryView:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [v5 setAuxiliaryView:v4];

  [(HUQuickControlContainerView *)self _updateCompactControlBottomConstraint];
}

- (void)hideAuxiliaryView
{
  v3 = [(HUQuickControlContainerView *)self buttonRowView];
  v4 = [(HUQuickControlContainerView *)self auxiliaryHostView];
  [v4 setAuxiliaryView:v3];

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

        v4 = [(HUQuickControlContainerView *)self currentUserActivities];
        v5 = [(HUQuickControlContainerView *)self currentDisambiguationContext];
        [(HUQuickControlContainerView *)self _configureDisambiguationForActivities:v4 disambiguationContext:v5];

        v6 = [(HUQuickControlContainerView *)self currentUserActivities];
        v7 = [(HUQuickControlContainerView *)self currentDisambiguationContext];
        v8 = [(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:v6 disambiguationContext:v7];

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

- (void)_disambiguationButtonTapped:(id)a3
{
  v4 = [MEMORY[0x277D14990] sharedInstance];
  v5 = [(HUQuickControlContainerView *)self currentDisambiguationContext];
  [v4 userTappedDisambiguationButtonForContext:v5];

  v6 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v6 setHighlighted:1];

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

- (void)_disambiguationButtonTouchDown:(id)a3
{
  v3 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v3 setHighlighted:1];
}

- (void)_disambiguationButtonTouchUp:(id)a3
{
  v3 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v3 setHighlighted:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUQuickControlContainerView;
  v4 = a3;
  [(HUQuickControlContainerView *)&v8 traitCollectionDidChange:v4];
  v5 = [(HUQuickControlContainerView *)self traitCollection:v8.receiver];
  v6 = [v5 verticalSizeClass];
  v7 = [v4 verticalSizeClass];

  if (v6 != v7)
  {
    [(HUQuickControlContainerView *)self setNeedsUpdateConstraints];
    [(HUQuickControlContainerView *)self setNeedsLayout];
  }
}

- (BOOL)_useCompactHeightLayout
{
  v2 = [(HUQuickControlContainerView *)self traitCollection];
  v3 = [v2 verticalSizeClass] == 1;

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
  v7 = [(HUQuickControlContainerView *)self controlHostView];
  [v7 setLayoutMargins:{0.0, v4, 0.0, v6}];
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

- (CGAffineTransform)_controlHostTransformForPresentationProgress:(SEL)a3
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

- (CGPoint)_controlHostCenterForPresentationProgress:(double)a3
{
  [(HUQuickControlContainerView *)self sourceRect];
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  [(HUQuickControlContainerView *)self sourceRect];
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  v13 = [(HUQuickControlContainerView *)self superview];
  v14 = [v13 window];
  [v14 bounds];
  v16 = v15;
  v30 = v17;

  [(HUQuickControlContainerView *)self _presentedControlHostSize];
  v19 = v18;
  v21 = v20;
  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = v19 * 0.5;
  if (v23)
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
  v28 = v6 + (v24 - v6) * a3;
  v29 = v8 + (v12 - v8) * a3;
  result.y = v29;
  result.x = v28;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = [a3 screen];
  [v4 bounds];
  v6 = HURoundToScreenScale(v5 * 0.78);

  v7 = [(HUQuickControlContainerView *)self maxHeightConstraints];

  if (v7)
  {
    v8 = [(HUQuickControlContainerView *)self maxHeightConstraints];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HUQuickControlContainerView_willMoveToWindow___block_invoke;
    v18[3] = &__block_descriptor_40_e35_v32__0__NSLayoutConstraint_8Q16_B24l;
    *&v18[4] = v6;
    [v8 enumerateObjectsUsingBlock:v18];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v9 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintLessThanOrEqualToConstant:v6];

    LODWORD(v12) = 1144750080;
    [v11 setPriority:v12];
    [v17 addObject:v11];
    v13 = [(HUQuickControlContainerView *)self controlHostView];
    v14 = [v13 heightAnchor];
    v15 = [v14 constraintLessThanOrEqualToConstant:v6];

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
  v4 = [(HUQuickControlContainerView *)self contentConstraints];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAD0];
    v6 = [(HUQuickControlContainerView *)self contentConstraints];
    [v5 deactivateConstraints:v6];
  }

  v7 = [MEMORY[0x277CBEB18] array];
  [(HUQuickControlContainerView *)self _configureRegularHeightConstraints:v7];
  [MEMORY[0x277CCAAD0] activateConstraints:v7];
  [(HUQuickControlContainerView *)self setContentConstraints:v7];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@ Added and activated constraints = %@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = HUQuickControlContainerView;
  [(HUQuickControlContainerView *)&v10 updateConstraints];
}

- (void)_configureRegularHeightConstraints:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  v7 = [v6 centerYAnchor];
  v8 = [(HUQuickControlContainerView *)self controlHostView];
  v9 = [v8 centerYAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v5 addObject:v10];

  v11 = [(HUQuickControlContainerView *)self controlHostView];
  [v11 setRequiresWellDefinedSize:1];

  v12 = [(HUQuickControlContainerView *)self heightAnchor];
  v13 = [(HUQuickControlContainerView *)self standardViewportFromParentGuide];
  v14 = [v13 heightAnchor];
  v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14];

  [v5 addObject:v15];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = [(HUQuickControlContainerView *)self standardViewportFromParentGuide];
    v19 = [v18 heightAnchor];
    v60 = 138412802;
    v61 = v17;
    v62 = 2112;
    v63 = v15;
    v64 = 2112;
    v65 = v19;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ totalHeightFromParent = %@, self.standardViewportFromParentGuide.heightAnchor = %@", &v60, 0x20u);
  }

  v20 = [(HUQuickControlContainerView *)self controlHostView];
  v21 = [v20 bottomAnchor];
  v22 = [(HUQuickControlContainerView *)self detailsButton];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:-5.0];
  [v5 addObject:v24];

  v25 = [(HUQuickControlContainerView *)self detailsButton];
  v26 = [v25 bottomAnchor];
  v27 = [(HUQuickControlContainerView *)self bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-20.0];
  [v5 addObject:v28];

  v29 = [(HUQuickControlContainerView *)self controlHostView];
  v30 = [v29 widthAnchor];
  v31 = [(HUQuickControlContainerView *)self widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v5 addObject:v32];

  v33 = [(HUQuickControlContainerView *)self controlHostView];
  v34 = [v33 centerXAnchor];
  v35 = [(HUQuickControlContainerView *)self centerXAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v5 addObject:v36];

  v37 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  v38 = [v37 widthAnchor];
  v39 = [(HUQuickControlContainerView *)self layoutMarginsGuide];
  v40 = [v39 widthAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v5 addObject:v41];

  v42 = [(HUQuickControlContainerView *)self controlViewPreferredFrameLayoutGuide];
  v43 = [v42 centerXAnchor];
  v44 = [(HUQuickControlContainerView *)self centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v5 addObject:v45];

  v46 = [(HUQuickControlContainerView *)self detailsButton];
  v47 = [v46 trailingAnchor];
  v48 = [(HUQuickControlContainerView *)self trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-25.0];
  [v5 addObject:v49];

  v50 = [(HUQuickControlContainerView *)self detailsButton];
  v51 = [v50 widthAnchor];
  v52 = [v51 constraintEqualToConstant:40.0];
  [v5 addObject:v52];

  v53 = [(HUQuickControlContainerView *)self detailsButton];
  v54 = [v53 heightAnchor];
  v55 = [v54 constraintEqualToConstant:40.0];
  [v5 addObject:v55];

  [(HUQuickControlContainerView *)self _configureControlViewLayoutGuideConstraints:v5];
  [(HUQuickControlContainerView *)self _configureCardViewLayoutGuideConstraints:v5];
  if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !objc_msgSend(MEMORY[0x277D14CE8], "isProxHandOffV2Config"))
  {
    v56 = [(HUQuickControlContainerView *)self controlHostView];
    v57 = [v56 topAnchor];
    v58 = [(HUQuickControlContainerView *)self topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    [v5 addObject:v59];
  }

  else
  {
    [(HUQuickControlContainerView *)self _configureDisambiguationButtonConstraints:v5];
  }
}

- (void)_configureControlViewLayoutGuideConstraints:(id)a3
{
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  v8 = [(HUQuickControlContainerView *)self controlViewLayoutGuide];
  v6 = [(HUQuickControlContainerView *)self controlHostView];
  v7 = [v4 hu_constraintsSizingAnchorProvider:v8 toAnchorProvider:v6];
  [v5 addObjectsFromArray:v7];
}

- (void)_configureCardViewLayoutGuideConstraints:(id)a3
{
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  v7 = [(HUQuickControlContainerView *)self cardViewLayoutGuide];
  v6 = [v4 hu_constraintsSizingAnchorProvider:v7 toAnchorProvider:self];
  [v5 addObjectsFromArray:v6];
}

- (void)_updateCompactControlBottomConstraint
{
  v3 = [(HUQuickControlContainerView *)self compactControlBottomConstraint];
  [v3 setActive:0];

  if ([(HUQuickControlContainerView *)self _useCompactHeightLayout]&& [(HUQuickControlContainerView *)self _shouldShowControlView])
  {
    v4 = [(HUQuickControlContainerView *)self auxiliaryHostView];
    v5 = [v4 auxiliaryView];
    v6 = [v5 hasCenteredContent];

    v7 = [(HUQuickControlContainerView *)self controlHostView];
    v8 = [v7 bottomAnchor];
    if (v6)
    {
      v9 = [(HUQuickControlContainerView *)self auxiliaryHostView];
      v10 = [v9 topAnchor];
      [v8 constraintEqualToAnchor:v10 constant:-20.0];
    }

    else
    {
      v9 = [(HUQuickControlContainerView *)self layoutMarginsGuide];
      v10 = [v9 bottomAnchor];
      [v8 constraintEqualToAnchor:v10];
    }
    v11 = ;
    [(HUQuickControlContainerView *)self setCompactControlBottomConstraint:v11];

    v12 = [(HUQuickControlContainerView *)self compactControlBottomConstraint];
    [v12 setActive:1];
  }

  else
  {

    [(HUQuickControlContainerView *)self setCompactControlBottomConstraint:0];
  }
}

- (void)_configureDisambiguationButtonConstraints:(id)a3
{
  v4 = a3;
  controlHostViewTopConstraintToView = self->_controlHostViewTopConstraintToView;
  v30 = v4;
  if (!controlHostViewTopConstraintToView)
  {
    v6 = [(HUQuickControlContainerView *)self controlHostView];
    v7 = [v6 topAnchor];
    v8 = [(HUQuickControlContainerView *)self topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
    v10 = self->_controlHostViewTopConstraintToView;
    self->_controlHostViewTopConstraintToView = v9;

    v4 = v30;
    controlHostViewTopConstraintToView = self->_controlHostViewTopConstraintToView;
  }

  [v4 addObject:controlHostViewTopConstraintToView];
  disambiguationButtonTopConstraint = self->_disambiguationButtonTopConstraint;
  if (!disambiguationButtonTopConstraint)
  {
    v12 = [(HUQuickControlContainerView *)self disambiguationButton];
    v13 = [v12 topAnchor];
    v14 = [(HUQuickControlContainerView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:12.0];
    v16 = self->_disambiguationButtonTopConstraint;
    self->_disambiguationButtonTopConstraint = v15;

    disambiguationButtonTopConstraint = self->_disambiguationButtonTopConstraint;
  }

  [v30 addObject:disambiguationButtonTopConstraint];
  disambiguationButtonHeightConstraint = self->_disambiguationButtonHeightConstraint;
  if (!disambiguationButtonHeightConstraint)
  {
    v18 = [(HUQuickControlContainerView *)self disambiguationButton];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintGreaterThanOrEqualToConstant:50.0];
    v21 = self->_disambiguationButtonHeightConstraint;
    self->_disambiguationButtonHeightConstraint = v20;

    disambiguationButtonHeightConstraint = self->_disambiguationButtonHeightConstraint;
  }

  [v30 addObject:disambiguationButtonHeightConstraint];
  v22 = [(HUQuickControlContainerView *)self disambiguationButton];
  v23 = [v22 leadingAnchor];
  v24 = [(HUQuickControlContainerView *)self leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:40.0];
  [v30 addObject:v25];

  v26 = [(HUQuickControlContainerView *)self disambiguationButton];
  v27 = [v26 trailingAnchor];
  v28 = [(HUQuickControlContainerView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-40.0];
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
  v2 = [(HUQuickControlContainerView *)self cardViewLayoutGuide];
  [v2 layoutFrame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)a3
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"fillColor"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlContainerView;
    v5 = [(HUQuickControlContainerView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_configureDisambiguationForActivities:(id)a3 disambiguationContext:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if ([(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:a3 disambiguationContext:v8])
  {
    v9 = [v8 titleText];
    v10 = [v8 subtitleText];
    v11 = v10;
    if (v9)
    {
      v4 = [(HUQuickControlContainerView *)self disambiguationButtonPrimaryText];
      if (([v9 isEqualToAttributedString:v4] & 1) == 0)
      {

LABEL_15:
        v4 = [MEMORY[0x277CBEB18] array];
        v16 = [objc_alloc(MEMORY[0x277D3D308]) initWithAttributedText:v9 style:5];
        [v4 addObject:v16];
        if (v11)
        {
          v17 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
        }

        else
        {
          v17 = 0;
        }

        [v4 na_safeAddObject:v17];
        [(HUQuickControlContainerView *)self setDisambiguationButtonPrimaryText:v9];
        [(HUQuickControlContainerView *)self setDisambiguationButtonSecondaryText:v11];
        v18 = [(HUQuickControlContainerView *)self disambiguationButton];
        v19 = [v4 copy];
        [v18 setCenterContentItems:v19 animated:1];

        goto LABEL_19;
      }

      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else if (!v10)
    {
LABEL_20:
      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        v22 = [(HUQuickControlContainerView *)self disambiguationButton];
        v23 = [v22 centerContentItems];
        v29 = 138412546;
        v30 = v21;
        v31 = 2112;
        v32 = v23;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@  self.disambiguationButton.CenterContentItems = %@", &v29, 0x16u);
      }

      v24 = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
      v25 = [v8 leadingImage];
      [v24 setImage:v25];

      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = NSStringFromSelector(a2);
        v28 = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
        v29 = 138412546;
        v30 = v27;
        v31 = 2112;
        v32 = v28;
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

    v14 = [(HUQuickControlContainerView *)self disambiguationButtonSecondaryText];
    v15 = [v11 isEqualToString:v14];

    if (v9)
    {
    }

    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v12 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v12 setCenterContentItems:MEMORY[0x277CBEBF8]];

  v13 = [(HUQuickControlContainerView *)self disambiguationButtonLeadingImageView];
  [v13 setImage:0];

  if ([(HUQuickControlContainerView *)self _isPhoneCallStatusUpdateTimerActive]&& ![(HUQuickControlContainerView *)self hasActivePhoneCall])
  {
    [(HUQuickControlContainerView *)self _invalidatePhoneCallStatusUpdateTimer];
  }

LABEL_31:
}

- (BOOL)_shouldShowDisambiguationButtonForUserActivities:(id)a3 disambiguationContext:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 activity];
  if (v7)
  {
    v8 = [v6 interactionDirection] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 activity];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    v17 = [v6 interactionDirection];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Activities = %@, disambiguationContext.activity = [%@] interactionDirection = [%ld]", &v12, 0x20u);
  }

  return v8;
}

- (BOOL)_isDisambiguationButtonVisible
{
  v2 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v2 alpha];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_updateDisambiguationButtonVisible:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(HUQuickControlContainerView *)self _isDisambiguationButtonVisible];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUQuickControlContainerView *)self disambiguationButton];
    *buf = 138412802;
    v19 = v7;
    v20 = 1024;
    v21 = v5;
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Disambiguation button %@ current display mode %{BOOL}d, requested display mode %{BOOL}d", buf, 0x18u);
  }

  if (v5 != v3)
  {
    v8 = [(HUQuickControlContainerView *)self isExternallyAnimating];
    v9 = HFLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [(HUQuickControlContainerView *)self disambiguationButton];
        *buf = 138412546;
        v19 = v11;
        v20 = 1024;
        v21 = v5;
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
      v17 = v3;
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
  v3 = [(HUQuickControlContainerView *)self disambiguationButton];
  v4 = [(HUQuickControlContainerView *)self disambiguationButton];
  [v4 bounds];
  [v3 sizeThatFits:{v5, 1.79769313e308}];
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

  v8 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __63__HUQuickControlContainerView__startPhoneCallStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  dispatch_source_set_timer(v9, v5, 0x3B9ACA00uLL, 0);

  v10 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  dispatch_resume(v10);

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
    v6 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
    dispatch_source_cancel(v6);
  }

  [(HUQuickControlContainerView *)self setPhoneCallStatusUpdateTimer:0];
}

- (BOOL)_isPhoneCallStatusUpdateTimerActive
{
  v3 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
  if (v3)
  {
    v4 = [(HUQuickControlContainerView *)self phoneCallStatusUpdateTimer];
    v5 = dispatch_source_testcancel(v4) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HUQuickControlContainerView *)self currentDisambiguationContext];
  v13 = [v12 activity];
  v14 = [v11 activity];
  v15 = [v13 isEqual:v14];

  v16 = HFLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = [v11 activity];
      v23 = 138412290;
      v24 = v18;
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
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ didUpdateActivities = %@ forProxControlID = %@ disambiguationContext = %@", &v23, 0x2Au);
    }

    v20 = [v11 activity];
    if (v20)
    {
      v21 = [v11 activity];
      -[HUQuickControlContainerView setHasActivePhoneCall:](self, "setHasActivePhoneCall:", [v21 pcactivityType] == 0);
    }

    else
    {
      [(HUQuickControlContainerView *)self setHasActivePhoneCall:0];
    }

    [(HUQuickControlContainerView *)self setCurrentDisambiguationContext:v11];
    [(HUQuickControlContainerView *)self setCurrentUserActivities:v9];
    [(HUQuickControlContainerView *)self _configureDisambiguationForActivities:v9 disambiguationContext:v11];
    [(HUQuickControlContainerView *)self _updateDisambiguationButtonVisible:[(HUQuickControlContainerView *)self _shouldShowDisambiguationButtonForUserActivities:v9 disambiguationContext:v11]];
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