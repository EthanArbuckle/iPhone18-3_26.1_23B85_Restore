@interface HUQuickControlPushButtonView
- (CGSize)intrinsicContentSize;
- (HUQuickControlPushButtonView)initWithProfile:(id)profile;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)value;
- (void)_actuateTapticFeedbackWithIntensity:(double)intensity;
- (void)_animateToEnlargeView;
- (void)_animateToShrinkView;
- (void)_contentSizeCategoryDidChange;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)dealloc;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)setProfile:(id)profile;
- (void)setValue:(id)value;
@end

@implementation HUQuickControlPushButtonView

- (HUQuickControlPushButtonView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v23.receiver = self;
  v23.super_class = HUQuickControlPushButtonView;
  v6 = [(HUQuickControlPushButtonView *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_userInteractionActive = 0;
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(HUQuickControlRoundButton);
    [(HUQuickControlPushButtonView *)v7 setRoundButton:v8];

    roundButton = [(HUQuickControlPushButtonView *)v7 roundButton];
    [(HUQuickControlPushButtonView *)v7 addSubview:roundButton];

    v10 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlPushButtonView *)v7 setDecorationIconView:v10];

    decorationIconView = [(HUQuickControlPushButtonView *)v7 decorationIconView];
    [decorationIconView setContentMode:1];

    decorationIconView2 = [(HUQuickControlPushButtonView *)v7 decorationIconView];
    [(HUQuickControlPushButtonView *)v7 addSubview:decorationIconView2];

    descriptionText = [(HUQuickControlPushButtonView *)v7 descriptionText];

    if (descriptionText)
    {
      v14 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUQuickControlPushButtonView *)v7 setButtonLabel:v14];

      buttonLabel = [(HUQuickControlPushButtonView *)v7 buttonLabel];
      [(HUQuickControlPushButtonView *)v7 addSubview:buttonLabel];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
    }

    v17 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel_handleTap_];
    [(HUQuickControlPushButtonView *)v7 setLongPressGestureRecognizer:v17];

    longPressGestureRecognizer = [(HUQuickControlPushButtonView *)v7 longPressGestureRecognizer];
    [longPressGestureRecognizer setMinimumPressDuration:0.0];

    longPressGestureRecognizer2 = [(HUQuickControlPushButtonView *)v7 longPressGestureRecognizer];
    [(HUQuickControlPushButtonView *)v7 addGestureRecognizer:longPressGestureRecognizer2];

    [(HUQuickControlPushButtonView *)v7 _prepareForTapticFeedback];
    LODWORD(v20) = 1148846080;
    [(HUQuickControlPushButtonView *)v7 setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(HUQuickControlPushButtonView *)v7 setContentHuggingPriority:1 forAxis:v21];
  }

  return v7;
}

- (void)handleTap:(id)tap
{
  v22 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if (-[HUQuickControlPushButtonView reachabilityState](self, "reachabilityState") == 2 || (v5 = MEMORY[0x277CD1650], -[HUQuickControlPushButtonView profile](self, "profile"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = [v5 hf_isSuspendedStateSupported:{objc_msgSend(v6, "suspendedState")}], v6, (v5 & 1) != 0))
  {
    state = [tapCopy state];
    if ((state - 4) >= 2)
    {
      if (state != 3)
      {
        if (state != 1)
        {
LABEL_13:
          [(HUQuickControlPushButtonView *)self setNeedsLayout];
          goto LABEL_14;
        }

        [(HUQuickControlPushButtonView *)self setUserInteractionActive:1];
        interactionDelegate = [(HUQuickControlPushButtonView *)self interactionDelegate];
        [interactionDelegate controlView:self interactionStateDidChange:1 forFirstTouch:0];

        [(HUQuickControlPushButtonView *)self _animateToEnlargeView];
        v9 = 0.5;
LABEL_12:
        [(HUQuickControlPushButtonView *)self _actuateTapticFeedbackWithIntensity:v9];
        goto LABEL_13;
      }

      [(HUQuickControlPushButtonView *)self setControlState:[(HUQuickControlPushButtonView *)self controlState]!= 1];
      interactionDelegate2 = [(HUQuickControlPushButtonView *)self interactionDelegate];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUQuickControlPushButtonView controlState](self, "controlState")}];
      [interactionDelegate2 controlView:self valueDidChange:v14];
    }

    interactionDelegate3 = [(HUQuickControlPushButtonView *)self interactionDelegate];
    [interactionDelegate3 controlView:self interactionStateDidChange:1 forFirstTouch:0];

    [(HUQuickControlPushButtonView *)self setUserInteractionActive:0];
    [(HUQuickControlPushButtonView *)self _animateToShrinkView];
    v9 = 1.0;
    goto LABEL_12;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    reachabilityState = [(HUQuickControlPushButtonView *)self reachabilityState];
    profile = [(HUQuickControlPushButtonView *)self profile];
    v16 = 138412802;
    selfCopy = self;
    v18 = 2048;
    v19 = reachabilityState;
    v20 = 2048;
    suspendedState = [profile suspendedState];
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: Ignoring tap gesture for reachabilityState %lu and suspendedState %lu", &v16, 0x20u);
  }

LABEL_14:
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = HUQuickControlPushButtonView;
  [(HUQuickControlPushButtonView *)&v50 layoutSubviews];
  [(HUQuickControlPushButtonView *)self bounds];
  v4 = v3 * 0.5;
  layer = [(HUQuickControlPushButtonView *)self layer];
  [layer setCornerRadius:v4];

  [(HUQuickControlPushButtonView *)self intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  roundButton = [(HUQuickControlPushButtonView *)self roundButton];
  v11 = 0.0;
  [roundButton setFrame:{0.0, 0.0, v7, v9}];

  roundButton2 = [(HUQuickControlPushButtonView *)self roundButton];
  [roundButton2 frame];
  v14 = v13;

  profile = [(HUQuickControlPushButtonView *)self profile];
  controlSize = [profile controlSize];

  if (controlSize <= 3)
  {
    v11 = dbl_20D5CADB8[controlSize];
  }

  decorationIconView = [(HUQuickControlPushButtonView *)self decorationIconView];
  [decorationIconView setFrame:{0.0, 0.0, v14 * v11, v14 * v11}];

  profile2 = [(HUQuickControlPushButtonView *)self profile];
  v19 = +[HUQuickControlUtilities iconSizeForQuickControlSize:](HUQuickControlUtilities, "iconSizeForQuickControlSize:", [profile2 controlSize]);
  decorationIconView2 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [decorationIconView2 setIconSize:v19];

  roundButton3 = [(HUQuickControlPushButtonView *)self roundButton];
  [roundButton3 center];
  v23 = v22;
  v25 = v24;
  decorationIconView3 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [decorationIconView3 setCenter:{v23, v25}];

  buttonLabel = [(HUQuickControlPushButtonView *)self buttonLabel];

  if (buttonLabel)
  {
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    buttonLabel2 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel2 setFont:v28];

    descriptionText = [(HUQuickControlPushButtonView *)self descriptionText];
    buttonLabel3 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel3 setText:descriptionText];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    buttonLabel4 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel4 setTextColor:systemGrayColor];

    buttonLabel5 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel5 setTextAlignment:1];

    buttonLabel6 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel6 sizeToFit];

    buttonLabel7 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel7 setNumberOfLines:3];

    roundButton4 = [(HUQuickControlPushButtonView *)self roundButton];
    [roundButton4 center];
    v39 = v38;
    roundButton5 = [(HUQuickControlPushButtonView *)self roundButton];
    [roundButton5 center];
    v42 = v41;
    roundButton6 = [(HUQuickControlPushButtonView *)self roundButton];
    [roundButton6 frame];
    v45 = v42 + v44 * 0.5 + 14.0;

    buttonLabel8 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel8 frame];
    v48 = v47;
    buttonLabel9 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [buttonLabel9 setFrame:{v39 - v14 * 0.5, v45, v14, v48}];
  }

  [(HUQuickControlPushButtonView *)self _updateUI];
  [(HUQuickControlPushButtonView *)self _updateUIForReachabilityState:[(HUQuickControlPushButtonView *)self reachabilityState]];
}

- (void)_updateUI
{
  if (-[HUQuickControlPushButtonView controlState](self, "controlState") == 1 || (-[HUQuickControlPushButtonView profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 toggleColorScheme], v3, (v4 & 1) == 0))
  {
    profile = [(HUQuickControlPushButtonView *)self profile];
    tintColor = [profile tintColor];
    roundButton = [(HUQuickControlPushButtonView *)self roundButton];
    [roundButton setBackgroundColor:tintColor];

    roundButton2 = [(HUQuickControlPushButtonView *)self roundButton];
    controlCenterMaterialView = [roundButton2 controlCenterMaterialView];
    [controlCenterMaterialView setHidden:1];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] quaternarySystemFillColor];
    }
    v11 = ;
    roundButton3 = [(HUQuickControlPushButtonView *)self roundButton];
    [roundButton3 setBackgroundColor:v11];

    roundButton4 = [(HUQuickControlPushButtonView *)self roundButton];
    controlCenterMaterialView2 = [roundButton4 controlCenterMaterialView];
    [controlCenterMaterialView2 setHidden:0];

    systemWhiteColor = [MEMORY[0x277D75348] systemMidGrayColor];
  }

  v15 = systemWhiteColor;
  decorationIconView = [(HUQuickControlPushButtonView *)self decorationIconView];
  [decorationIconView setTintColor:v15];

  [(HUQuickControlPushButtonView *)self _updateDecorationIconDescriptorAnimated:0];
}

- (CGSize)intrinsicContentSize
{
  profile = [(HUQuickControlPushButtonView *)self profile];
  v3 = HUQuickControlPushButtonMetricsForControlSize([profile controlSize]);
  sizeDescriptor = [v3 sizeDescriptor];
  [sizeDescriptor intrinsicSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_contentSizeCategoryDidChange
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  buttonLabel = [(HUQuickControlPushButtonView *)self buttonLabel];
  [buttonLabel setFont:v3];

  [(HUQuickControlPushButtonView *)self setNeedsLayout];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUQuickControlPushButtonView;
  [(HUQuickControlPushButtonView *)&v4 dealloc];
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  decorationIconView = [(HUQuickControlPushButtonView *)self decorationIconView];
  profile = [(HUQuickControlPushButtonView *)self profile];
  decorationIconDescriptor = [profile decorationIconDescriptor];
  [decorationIconView updateWithIconDescriptor:decorationIconDescriptor displayStyle:3 animated:animatedCopy];
}

- (void)_animateToEnlargeView
{
  [(HUQuickControlPushButtonView *)self transform];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v3;
  *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (CGAffineTransformEqualToTransform(&t1, &t2) && [(HUQuickControlPushButtonView *)self reachabilityState]== 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__HUQuickControlPushButtonView__animateToEnlargeView__block_invoke;
    v4[3] = &unk_277DB8488;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v4 options:0 animations:0.2 completion:0.0];
  }
}

uint64_t __53__HUQuickControlPushButtonView__animateToEnlargeView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    memset(&v5, 0, sizeof(v5));
  }

  CGAffineTransformScale(&v6, &v5, 1.1, 1.1);
  v5 = v6;
  return [v3 setTransform:&v5];
}

- (void)_animateToShrinkView
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__HUQuickControlPushButtonView__animateToShrinkView__block_invoke;
  v2[3] = &unk_277DB8488;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v2 options:0 animations:0.2 completion:0.0];
}

uint64_t __52__HUQuickControlPushButtonView__animateToShrinkView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D755F0]);
  [(HUQuickControlPushButtonView *)self setFeedbackGenerator:v3];

  feedbackGenerator = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [feedbackGenerator prepare];
}

- (void)_actuateTapticFeedbackWithIntensity:(double)intensity
{
  feedbackGenerator = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [feedbackGenerator impactOccurredWithIntensity:intensity];

  feedbackGenerator2 = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [feedbackGenerator2 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  v3 = HUQuickControlPushButtonMetricsForControlSize(size);
  sizeDescriptor = [v3 sizeDescriptor];

  return sizeDescriptor;
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  controlSize = [(HUQuickControlViewProfile *)self->_profile controlSize];
  controlSize2 = [(HUQuickControlViewProfile *)profileCopy controlSize];
  profile = self->_profile;
  self->_profile = profileCopy;

  if (controlSize != controlSize2)
  {
    [(HUQuickControlPushButtonView *)self invalidateIntrinsicContentSize];
    [(HUQuickControlPushButtonView *)self setNeedsLayout];
  }

  [(HUQuickControlPushButtonView *)self _updateUI];
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  controlState = [(HUQuickControlPushButtonView *)self controlState];

  return [v2 numberWithUnsignedInteger:controlState];
}

- (void)setValue:(id)value
{
  -[HUQuickControlPushButtonView setControlState:](self, "setControlState:", [value intValue]);

  [(HUQuickControlPushButtonView *)self _updateUI];
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state >= 2)
  {
    if (state != 2)
    {
      return;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277CD1650];
  profile = [(HUQuickControlPushButtonView *)self profile];
  v6 = [v4 hf_isSuspendedStateSupported:{objc_msgSend(profile, "suspendedState")}];

  if (v6)
  {
LABEL_5:
    v6 = 1;
    v7 = 1.0;
    goto LABEL_6;
  }

  v7 = 0.5;
LABEL_6:
  [(HUQuickControlPushButtonView *)self setAlpha:v7];

  [(HUQuickControlPushButtonView *)self setUserInteractionEnabled:v6];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end