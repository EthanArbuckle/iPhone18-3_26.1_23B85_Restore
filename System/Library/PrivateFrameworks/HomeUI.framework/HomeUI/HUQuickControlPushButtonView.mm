@interface HUQuickControlPushButtonView
- (CGSize)intrinsicContentSize;
- (HUQuickControlPushButtonView)initWithProfile:(id)a3;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)value;
- (void)_actuateTapticFeedbackWithIntensity:(double)a3;
- (void)_animateToEnlargeView;
- (void)_animateToShrinkView;
- (void)_contentSizeCategoryDidChange;
- (void)_prepareForTapticFeedback;
- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)setProfile:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation HUQuickControlPushButtonView

- (HUQuickControlPushButtonView)initWithProfile:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = HUQuickControlPushButtonView;
  v6 = [(HUQuickControlPushButtonView *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_userInteractionActive = 0;
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(HUQuickControlRoundButton);
    [(HUQuickControlPushButtonView *)v7 setRoundButton:v8];

    v9 = [(HUQuickControlPushButtonView *)v7 roundButton];
    [(HUQuickControlPushButtonView *)v7 addSubview:v9];

    v10 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUQuickControlPushButtonView *)v7 setDecorationIconView:v10];

    v11 = [(HUQuickControlPushButtonView *)v7 decorationIconView];
    [v11 setContentMode:1];

    v12 = [(HUQuickControlPushButtonView *)v7 decorationIconView];
    [(HUQuickControlPushButtonView *)v7 addSubview:v12];

    v13 = [(HUQuickControlPushButtonView *)v7 descriptionText];

    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUQuickControlPushButtonView *)v7 setButtonLabel:v14];

      v15 = [(HUQuickControlPushButtonView *)v7 buttonLabel];
      [(HUQuickControlPushButtonView *)v7 addSubview:v15];

      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 addObserver:v7 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
    }

    v17 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel_handleTap_];
    [(HUQuickControlPushButtonView *)v7 setLongPressGestureRecognizer:v17];

    v18 = [(HUQuickControlPushButtonView *)v7 longPressGestureRecognizer];
    [v18 setMinimumPressDuration:0.0];

    v19 = [(HUQuickControlPushButtonView *)v7 longPressGestureRecognizer];
    [(HUQuickControlPushButtonView *)v7 addGestureRecognizer:v19];

    [(HUQuickControlPushButtonView *)v7 _prepareForTapticFeedback];
    LODWORD(v20) = 1148846080;
    [(HUQuickControlPushButtonView *)v7 setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(HUQuickControlPushButtonView *)v7 setContentHuggingPriority:1 forAxis:v21];
  }

  return v7;
}

- (void)handleTap:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (-[HUQuickControlPushButtonView reachabilityState](self, "reachabilityState") == 2 || (v5 = MEMORY[0x277CD1650], -[HUQuickControlPushButtonView profile](self, "profile"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = [v5 hf_isSuspendedStateSupported:{objc_msgSend(v6, "suspendedState")}], v6, (v5 & 1) != 0))
  {
    v7 = [v4 state];
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        if (v7 != 1)
        {
LABEL_13:
          [(HUQuickControlPushButtonView *)self setNeedsLayout];
          goto LABEL_14;
        }

        [(HUQuickControlPushButtonView *)self setUserInteractionActive:1];
        v8 = [(HUQuickControlPushButtonView *)self interactionDelegate];
        [v8 controlView:self interactionStateDidChange:1 forFirstTouch:0];

        [(HUQuickControlPushButtonView *)self _animateToEnlargeView];
        v9 = 0.5;
LABEL_12:
        [(HUQuickControlPushButtonView *)self _actuateTapticFeedbackWithIntensity:v9];
        goto LABEL_13;
      }

      [(HUQuickControlPushButtonView *)self setControlState:[(HUQuickControlPushButtonView *)self controlState]!= 1];
      v13 = [(HUQuickControlPushButtonView *)self interactionDelegate];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUQuickControlPushButtonView controlState](self, "controlState")}];
      [v13 controlView:self valueDidChange:v14];
    }

    v15 = [(HUQuickControlPushButtonView *)self interactionDelegate];
    [v15 controlView:self interactionStateDidChange:1 forFirstTouch:0];

    [(HUQuickControlPushButtonView *)self setUserInteractionActive:0];
    [(HUQuickControlPushButtonView *)self _animateToShrinkView];
    v9 = 1.0;
    goto LABEL_12;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HUQuickControlPushButtonView *)self reachabilityState];
    v12 = [(HUQuickControlPushButtonView *)self profile];
    v16 = 138412802;
    v17 = self;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = [v12 suspendedState];
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
  v5 = [(HUQuickControlPushButtonView *)self layer];
  [v5 setCornerRadius:v4];

  [(HUQuickControlPushButtonView *)self intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  v10 = [(HUQuickControlPushButtonView *)self roundButton];
  v11 = 0.0;
  [v10 setFrame:{0.0, 0.0, v7, v9}];

  v12 = [(HUQuickControlPushButtonView *)self roundButton];
  [v12 frame];
  v14 = v13;

  v15 = [(HUQuickControlPushButtonView *)self profile];
  v16 = [v15 controlSize];

  if (v16 <= 3)
  {
    v11 = dbl_20D5CADB8[v16];
  }

  v17 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [v17 setFrame:{0.0, 0.0, v14 * v11, v14 * v11}];

  v18 = [(HUQuickControlPushButtonView *)self profile];
  v19 = +[HUQuickControlUtilities iconSizeForQuickControlSize:](HUQuickControlUtilities, "iconSizeForQuickControlSize:", [v18 controlSize]);
  v20 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [v20 setIconSize:v19];

  v21 = [(HUQuickControlPushButtonView *)self roundButton];
  [v21 center];
  v23 = v22;
  v25 = v24;
  v26 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [v26 setCenter:{v23, v25}];

  v27 = [(HUQuickControlPushButtonView *)self buttonLabel];

  if (v27)
  {
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v29 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v29 setFont:v28];

    v30 = [(HUQuickControlPushButtonView *)self descriptionText];
    v31 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v31 setText:v30];

    v32 = [MEMORY[0x277D75348] systemGrayColor];
    v33 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v33 setTextColor:v32];

    v34 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v34 setTextAlignment:1];

    v35 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v35 sizeToFit];

    v36 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v36 setNumberOfLines:3];

    v37 = [(HUQuickControlPushButtonView *)self roundButton];
    [v37 center];
    v39 = v38;
    v40 = [(HUQuickControlPushButtonView *)self roundButton];
    [v40 center];
    v42 = v41;
    v43 = [(HUQuickControlPushButtonView *)self roundButton];
    [v43 frame];
    v45 = v42 + v44 * 0.5 + 14.0;

    v46 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v46 frame];
    v48 = v47;
    v49 = [(HUQuickControlPushButtonView *)self buttonLabel];
    [v49 setFrame:{v39 - v14 * 0.5, v45, v14, v48}];
  }

  [(HUQuickControlPushButtonView *)self _updateUI];
  [(HUQuickControlPushButtonView *)self _updateUIForReachabilityState:[(HUQuickControlPushButtonView *)self reachabilityState]];
}

- (void)_updateUI
{
  if (-[HUQuickControlPushButtonView controlState](self, "controlState") == 1 || (-[HUQuickControlPushButtonView profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 toggleColorScheme], v3, (v4 & 1) == 0))
  {
    v5 = [(HUQuickControlPushButtonView *)self profile];
    v6 = [v5 tintColor];
    v7 = [(HUQuickControlPushButtonView *)self roundButton];
    [v7 setBackgroundColor:v6];

    v8 = [(HUQuickControlPushButtonView *)self roundButton];
    v9 = [v8 controlCenterMaterialView];
    [v9 setHidden:1];

    v10 = [MEMORY[0x277D75348] systemWhiteColor];
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
    v12 = [(HUQuickControlPushButtonView *)self roundButton];
    [v12 setBackgroundColor:v11];

    v13 = [(HUQuickControlPushButtonView *)self roundButton];
    v14 = [v13 controlCenterMaterialView];
    [v14 setHidden:0];

    v10 = [MEMORY[0x277D75348] systemMidGrayColor];
  }

  v15 = v10;
  v16 = [(HUQuickControlPushButtonView *)self decorationIconView];
  [v16 setTintColor:v15];

  [(HUQuickControlPushButtonView *)self _updateDecorationIconDescriptorAnimated:0];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUQuickControlPushButtonView *)self profile];
  v3 = HUQuickControlPushButtonMetricsForControlSize([v2 controlSize]);
  v4 = [v3 sizeDescriptor];
  [v4 intrinsicSize];
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
  v4 = [(HUQuickControlPushButtonView *)self buttonLabel];
  [v4 setFont:v3];

  [(HUQuickControlPushButtonView *)self setNeedsLayout];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUQuickControlPushButtonView;
  [(HUQuickControlPushButtonView *)&v4 dealloc];
}

- (void)_updateDecorationIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(HUQuickControlPushButtonView *)self decorationIconView];
  v5 = [(HUQuickControlPushButtonView *)self profile];
  v6 = [v5 decorationIconDescriptor];
  [v7 updateWithIconDescriptor:v6 displayStyle:3 animated:v3];
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

  v4 = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [v4 prepare];
}

- (void)_actuateTapticFeedbackWithIntensity:(double)a3
{
  v5 = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [v5 impactOccurredWithIntensity:a3];

  v6 = [(HUQuickControlPushButtonView *)self feedbackGenerator];
  [v6 prepare];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v3 = HUQuickControlPushButtonMetricsForControlSize(a3);
  v4 = [v3 sizeDescriptor];

  return v4;
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  if (v5 != v6)
  {
    [(HUQuickControlPushButtonView *)self invalidateIntrinsicContentSize];
    [(HUQuickControlPushButtonView *)self setNeedsLayout];
  }

  [(HUQuickControlPushButtonView *)self _updateUI];
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HUQuickControlPushButtonView *)self controlState];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)setValue:(id)a3
{
  -[HUQuickControlPushButtonView setControlState:](self, "setControlState:", [a3 intValue]);

  [(HUQuickControlPushButtonView *)self _updateUI];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      return;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277CD1650];
  v5 = [(HUQuickControlPushButtonView *)self profile];
  v6 = [v4 hf_isSuspendedStateSupported:{objc_msgSend(v5, "suspendedState")}];

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