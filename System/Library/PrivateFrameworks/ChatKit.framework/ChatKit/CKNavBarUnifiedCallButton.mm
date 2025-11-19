@interface CKNavBarUnifiedCallButton
- (BOOL)shouldUseJoinPillWithLabel;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKNavBarUnifiedCallButton)initWithFrame:(CGRect)a3;
- (CKNavBarUnifiedCallButtonDelegate)delegate;
- (UIAction)faceTimeAudioAction;
- (UIAction)faceTimeInviteToShareTheirScreenAction;
- (UIAction)faceTimeJoinWithAudioAction;
- (UIAction)faceTimeJoinWithVideoAction;
- (UIAction)faceTimeShareMyScreenAction;
- (UIAction)faceTimeVideoAction;
- (UIAction)leaveJoinedCallAction;
- (UIAction)openJoinedCallAction;
- (UIAction)telephonyCallAction;
- (UIBarButtonItem)parentBarButtonItem;
- (double)_cornerRadiusForCurrentStyle;
- (double)_currentLabelPreferredWidth;
- (double)_imageToTextSpacingForCurrentState;
- (double)_leadingMarginForCurrentState;
- (double)_minimumFontScaleFactorForCurrentStyle;
- (double)_trailingMarginForCurrentState;
- (id)_actionsForCurrentStyle;
- (id)_axLabelForCurrentStyle;
- (id)_backgroundColorForCurrentStyle;
- (id)_startCallActions;
- (id)_startCallSubActions;
- (id)_subActionsForCurrentStyle;
- (id)_targetImageForCurrentFlags;
- (id)_tintColorForCurrentStyle;
- (id)_titleColorForCurrentStyle;
- (id)_titleForCurrentStyle;
- (id)_titleLabelFontForCurrentStyle;
- (void)_configureActionsForCurrentState;
- (void)_configureFrameForCurrentState;
- (void)_configureInsetsForCurrentState;
- (void)_configureParentBarButtonItemWithBackgroundColor:(id)a3;
- (void)_updateForCurrentState;
- (void)layoutSubviews;
- (void)setJoinPillShouldDisableLabel:(BOOL)a3;
- (void)setOverrideAudioCallActions:(id)a3;
- (void)setParentBarButtonItem:(id)a3;
- (void)updateWithStyle:(int64_t)a3 availabilityForVideo:(BOOL)a4 audio:(BOOL)a5 telephony:(BOOL)a6 screenSharing:(BOOL)a7;
@end

@implementation CKNavBarUnifiedCallButton

- (CKNavBarUnifiedCallButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKNavBarUnifiedCallButton;
  v3 = [(CKNavBarUnifiedCallButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKNavBarUnifiedCallButton *)v3 setButtonStyle:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    if (objc_opt_respondsToSelector())
    {
      [(CKNavBarUnifiedCallButton *)v4 _setMonochromaticTreatment:1];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKNavBarUnifiedCallButton;
  [(CKNavBarUnifiedCallButton *)&v14 layoutSubviews];
  [(CKNavBarUnifiedCallButton *)self _cornerRadiusForCurrentStyle];
  v4 = v3;
  v5 = [(CKNavBarUnifiedCallButton *)self layer];
  [v5 setCornerRadius:v4];

  if ([(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall])
  {
    v6 = [(CKNavBarUnifiedCallButton *)self titleLabel];
    v7 = [v6 text];
    if ([v7 length])
    {
      v8 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];

      if (!v8)
      {
        [(CKNavBarUnifiedCallButton *)self _currentLabelPreferredWidth];
        v10 = v9;
        v11 = [(CKNavBarUnifiedCallButton *)self titleLabel];
        [v11 bounds];
        v13 = ceil(v12);

        if (v10 > v13)
        {
          [(CKNavBarUnifiedCallButton *)self setJoinPillShouldDisableLabel:1];
        }
      }
    }

    else
    {
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v7.receiver = self;
  v7.super_class = CKNavBarUnifiedCallButton;
  [(CKNavBarUnifiedCallButton *)&v7 sizeThatFits:a3.width];
  v5 = fmin(v4, 80.0);
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)updateWithStyle:(int64_t)a3 availabilityForVideo:(BOOL)a4 audio:(BOOL)a5 telephony:(BOOL)a6 screenSharing:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v13 = self->_buttonStyle != a3 || self->_faceTimeVideoAvailable != a4 || self->_faceTimeAudioAvailable != a5 || self->_telephonyCallAvailable != a6 || self->_screenSharingAvailable != a7;
  self->_buttonStyle = a3;
  self->_faceTimeVideoAvailable = a4;
  self->_faceTimeAudioAvailable = a5;
  self->_telephonyCallAvailable = a6;
  self->_screenSharingAvailable = a7;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = @"NO";
    if (v10)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v19 = 134219010;
    v20 = a3;
    if (v9)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v21 = 2112;
    v22 = v16;
    if (v8)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v23 = 2112;
    v24 = v17;
    if (v7)
    {
      v15 = @"YES";
    }

    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Updating CKNavBarUnifiedCallButton with style: %ld, facetime video available: %@, facetime audio available: %@, telephony call available: %@, screen sharing available: %@", &v19, 0x34u);
  }

  if (v13)
  {
    [(CKNavBarUnifiedCallButton *)self _updateForCurrentState];
  }
}

- (void)setOverrideAudioCallActions:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_overrideAudioCallActions] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideAudioCallActions, a3);
    [(CKNavBarUnifiedCallButton *)self _configureActionsForCurrentState];
  }
}

- (double)_currentLabelPreferredWidth
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKNavBarUnifiedCallButton *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  if (!v5)
  {
    return 0.0;
  }

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];

  v8 = [(CKNavBarUnifiedCallButton *)self titleLabel];
  v9 = [v8 font];

  [v9 pointSize];
  v11 = v10;
  v12 = [(CKNavBarUnifiedCallButton *)self titleLabel];
  [v12 _actualScaleFactor];
  v14 = round(v11 * v13 * 4.0) * 0.25;

  v20 = *MEMORY[0x1E69DB648];
  v15 = [v9 fontWithSize:v14];
  v21[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  [v7 sizeWithAttributes:v16];
  v18 = ceil(v17);

  return v18;
}

- (void)setJoinPillShouldDisableLabel:(BOOL)a3
{
  if (self->_joinPillShouldDisableLabel != a3)
  {
    self->_joinPillShouldDisableLabel = a3;
    [(CKNavBarUnifiedCallButton *)self _updateForCurrentState];
    [(CKNavBarUnifiedCallButton *)self layoutIfNeeded];
    v5 = [(CKNavBarUnifiedCallButton *)self delegate];
    [v5 buttonWidthDidChange:self];
  }
}

- (void)setParentBarButtonItem:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentBarButtonItem);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentBarButtonItem, obj);
    v5 = obj;
    if (obj)
    {
      v6 = [(CKNavBarUnifiedCallButton *)self _backgroundColorForCurrentStyle];
      [(CKNavBarUnifiedCallButton *)self _configureParentBarButtonItemWithBackgroundColor:v6];

      v5 = obj;
    }
  }
}

- (void)_updateForCurrentState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__CKNavBarUnifiedCallButton__updateForCurrentState__block_invoke;
  v2[3] = &unk_1E72EBA18;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __51__CKNavBarUnifiedCallButton__updateForCurrentState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axLabelForCurrentStyle];
  [*(a1 + 32) setAccessibilityLabel:v2];

  v19 = [*(a1 + 32) imageForState:{objc_msgSend(*(a1 + 32), "state")}];
  v3 = [*(a1 + 32) _targetImageForCurrentFlags];
  if (v19 != v3)
  {
    [*(a1 + 32) setImage:v3 forState:{objc_msgSend(*(a1 + 32), "state")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _setEnableMonochromaticTreatment:{objc_msgSend(*(a1 + 32), "_usesMonochromaticTreatmentForCurrentStyle")}];
  }

  v4 = *(a1 + 32);
  v5 = [v4 _tintColorForCurrentStyle];
  [v4 setTintColor:v5];

  v6 = [*(a1 + 32) _backgroundColorForCurrentStyle];
  [*(a1 + 32) _configureParentBarButtonItemWithBackgroundColor:v6];
  v7 = *(a1 + 32);
  v8 = [v7 _titleForCurrentStyle];
  [v7 setTitle:v8 forState:0];

  v9 = *(a1 + 32);
  v10 = [v9 _titleColorForCurrentStyle];
  [v9 setTitleColor:v10 forState:0];

  v11 = [*(a1 + 32) titleLabel];
  v12 = [*(a1 + 32) _titleLabelFontForCurrentStyle];
  [v11 setFont:v12];

  v13 = [*(a1 + 32) titleLabel];
  [v13 setAdjustsFontForContentSizeCategory:0];

  v14 = [*(a1 + 32) _shouldEnableAdjustFontSizeForCurrentStyle];
  v15 = [*(a1 + 32) titleLabel];
  [v15 setAdjustsFontSizeToFitWidth:v14];

  [*(a1 + 32) _minimumFontScaleFactorForCurrentStyle];
  v17 = v16;
  v18 = [*(a1 + 32) titleLabel];
  [v18 setMinimumScaleFactor:v17];

  [*(a1 + 32) _configureActionsForCurrentState];
  [*(a1 + 32) _configureInsetsForCurrentState];
  [*(a1 + 32) _configureFrameForCurrentState];
  [*(a1 + 32) setNeedsLayout];
}

- (BOOL)shouldUseJoinPillWithLabel
{
  v3 = [(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall];
  if (v3)
  {
    LOBYTE(v3) = ![(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
  }

  return v3;
}

- (void)_configureActionsForCurrentState
{
  v13 = [(CKNavBarUnifiedCallButton *)self _actionsForCurrentStyle];
  v3 = [(CKNavBarUnifiedCallButton *)self _subActionsForCurrentStyle];
  if ([(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall]|| [(CKNavBarUnifiedCallButton *)self _isStyledForJoinedCall])
  {
    v4 = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
    [(CKNavBarUnifiedCallButton *)self addAction:v4 forControlEvents:64];

    [(CKNavBarUnifiedCallButton *)self setMenu:0];
    [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:0];
    v5 = self;
    v6 = 1;
LABEL_4:
    [(CKNavBarUnifiedCallButton *)v5 setUserInteractionEnabled:v6];
    goto LABEL_5;
  }

  if (![v13 count])
  {
    v8 = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
    [(CKNavBarUnifiedCallButton *)self removeAction:v8 forControlEvents:64];

    [(CKNavBarUnifiedCallButton *)self setMenu:0];
    [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:0];
    v5 = self;
    v6 = 0;
    goto LABEL_4;
  }

  if (v3)
  {
    v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v3];
  }

  else
  {
    v7 = 0;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithArray:v13];
  v10 = v9;
  if (v7)
  {
    [v9 addObject:v7];
  }

  v11 = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
  [(CKNavBarUnifiedCallButton *)self removeAction:v11 forControlEvents:64];

  v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v10];
  [(CKNavBarUnifiedCallButton *)self setMenu:v12];

  [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:1];
  [(CKNavBarUnifiedCallButton *)self setUserInteractionEnabled:1];

LABEL_5:
}

- (void)_configureInsetsForCurrentState
{
  v3 = [(CKNavBarUnifiedCallButton *)self traitCollection];
  v4 = [v3 layoutDirection];

  [(CKNavBarUnifiedCallButton *)self _topMarginForCurrentState];
  v6 = v5;
  [(CKNavBarUnifiedCallButton *)self _leadingMarginForCurrentState];
  v8 = v7;
  [(CKNavBarUnifiedCallButton *)self _bottomMarginForCurrentState];
  v10 = v9;
  [(CKNavBarUnifiedCallButton *)self _trailingMarginForCurrentState];
  v12 = v11;
  [(CKNavBarUnifiedCallButton *)self _imageToTextSpacingForCurrentState];
  v14 = v12 + v13;
  v15 = -v13;
  if (v4 == 1)
  {
    v16 = -v13;
  }

  else
  {
    v16 = v13;
  }

  if (v4 == 1)
  {
    v15 = v13;
    v17 = v12 + v13;
  }

  else
  {
    v17 = v8;
  }

  if (v4 != 1)
  {
    v8 = v14;
  }

  [(CKNavBarUnifiedCallButton *)self setTitleEdgeInsets:0.0, v16, 0.0, v15];

  [(CKNavBarUnifiedCallButton *)self setContentEdgeInsets:v6, v17, v10, v8];
}

- (void)_configureParentBarButtonItemWithBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CKNavBarUnifiedCallButton *)self parentBarButtonItem];
  [v5 setTintColor:v4];

  v6 = [(CKNavBarUnifiedCallButton *)self parentBarButtonItem];
  [v6 setStyle:2 * (v4 != 0)];
}

- (void)_configureFrameForCurrentState
{
  [(CKNavBarUnifiedCallButton *)self buttonStyle];

  [(CKNavBarUnifiedCallButton *)self sizeToFit];
}

- (double)_cornerRadiusForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (v3 > 5 || ((1 << v3) & 0x2A) == 0 || [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
  {
    return 0.0;
  }

  [(CKNavBarUnifiedCallButton *)self frame];
  v5 = [(CKNavBarUnifiedCallButton *)self traitCollection];
  [v5 displayScale];
  UIRoundToScale();
  v7 = v6;

  return v7;
}

- (double)_leadingMarginForCurrentState
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    v5 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 10.0;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_trailingMarginForCurrentState
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    v5 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 10.0;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_imageToTextSpacingForCurrentState
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    v5 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 5.0;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)_axLabelForCurrentStyle
{
  v2 = [(CKNavBarUnifiedCallButton *)self buttonStyle]- 1;
  if (v2 > 4)
  {
    v3 = @"FACE_TIME_DEFAULT";
  }

  else
  {
    v3 = off_1E72F2510[v2];
  }

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F04268F8 table:@"ChatKit"];

  return v5;
}

- (id)_titleForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = &stru_1F04268F8;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      v4 = 0;
    }

    else
    {
      v5 = CKFrameworkBundle();
      v4 = [v5 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
    }
  }

  return v4;
}

- (id)_titleLabelFontForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = 0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      v4 = 0;
    }

    else
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      v4 = [v5 navBarUnifiedCallButtonJoinTextFont];
    }
  }

  return v4;
}

- (double)_minimumFontScaleFactorForCurrentStyle
{
  v2 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if ((v2 - 1) <= 4)
  {
    return dbl_190DD0AF0[v2 - 1];
  }

  return result;
}

- (id)_tintColorForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = 0;
  if (v3 <= 6)
  {
    if (((1 << v3) & 0x2A) == 0)
    {
      if (((1 << v3) & 0x54) == 0)
      {
        goto LABEL_8;
      }

      v5 = MEMORY[0x1E69DC888];
      goto LABEL_6;
    }

    v6 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    v5 = MEMORY[0x1E69DC888];
    if (v6)
    {
LABEL_6:
      v4 = [v5 ckColorNamed:@"CKSystemGreenColor"];
      goto LABEL_8;
    }

    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

LABEL_8:

  return v4;
}

- (id)_titleColorForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = 0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  return v4;
}

- (id)_backgroundColorForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = 0;
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemGreenColor"];
    }
  }

  return v4;
}

- (id)_targetImageForCurrentFlags
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v6 = +[CKUIBehavior sharedBehaviors];
        v7 = [v6 navBarAudioFillImage];
        goto LABEL_24;
      case 5:
        v11 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
        v8 = +[CKUIBehavior sharedBehaviors];
        v6 = v8;
        if (!v11)
        {
          v7 = [v8 navbarJoinPillSharePlayImage];
          goto LABEL_24;
        }

        break;
      case 6:
        v8 = +[CKUIBehavior sharedBehaviors];
        v6 = v8;
        break;
      default:
        goto LABEL_14;
    }

    v7 = [v8 navBarSharePlayImage];
    goto LABEL_24;
  }

  switch(v3)
  {
    case 1:
      v9 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
      v10 = +[CKUIBehavior sharedBehaviors];
      v6 = v10;
      if (!v9)
      {
        v7 = [v10 navbarJoinPillVideoImage];
        goto LABEL_24;
      }

LABEL_16:
      v7 = [v10 navBarVideoImage];
      goto LABEL_24;
    case 2:
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 navBarVideoFillImage];
      goto LABEL_24;
    case 3:
      v4 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = v5;
      if (!v4)
      {
        v7 = [v5 navbarJoinPillAudioImage];
LABEL_24:
        v12 = v7;

        goto LABEL_25;
      }

LABEL_22:
      v7 = [v5 navBarAudioImage];
      goto LABEL_24;
  }

LABEL_14:
  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeVideoAvailable])
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    v6 = v10;
    goto LABEL_16;
  }

  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeAudioAvailable])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = v5;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

- (id)_actionsForCurrentStyle
{
  v3 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (v3 <= 5 && ((1 << v3) & 0x2A) != 0)
  {
    v4 = [(CKNavBarUnifiedCallButton *)self _joinCallActions];
  }

  else
  {
    v4 = [(CKNavBarUnifiedCallButton *)self _startCallActions];
  }

  return v4;
}

- (id)_subActionsForCurrentStyle
{
  if ([(CKNavBarUnifiedCallButton *)self buttonStyle])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CKNavBarUnifiedCallButton *)self _startCallSubActions];
  }

  return v3;
}

- (id)_startCallActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKNavBarUnifiedCallButton *)self overrideAudioCallActions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CKNavBarUnifiedCallButton *)self overrideAudioCallActions];
    [v3 addObjectsFromArray:v6];
LABEL_7:

    goto LABEL_8;
  }

  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeAudioAvailable])
  {
    v7 = [(CKNavBarUnifiedCallButton *)self faceTimeAudioAction];
    [v3 addObject:v7];
  }

  if ([(CKNavBarUnifiedCallButton *)self isTelephonyAvailable])
  {
    v6 = [(CKNavBarUnifiedCallButton *)self telephonyCallAction];
    [v3 addObject:v6];
    goto LABEL_7;
  }

LABEL_8:
  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeVideoAvailable])
  {
    v8 = [(CKNavBarUnifiedCallButton *)self faceTimeVideoAction];
    [v3 addObject:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)_startCallSubActions
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(CKNavBarUnifiedCallButton *)self isScreenSharingAvailable])
  {
    v3 = [(CKNavBarUnifiedCallButton *)self faceTimeShareMyScreenAction];
    v7[0] = v3;
    v4 = [(CKNavBarUnifiedCallButton *)self faceTimeInviteToShareTheirScreenAction];
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIAction)faceTimeVideoAction
{
  objc_initWeak(&location, self);
  faceTimeVideoAction = self->_faceTimeVideoAction;
  if (!faceTimeVideoAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"FACETIME_VIDEO" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 navBarVideoImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_faceTimeVideoAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:v8 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeVideo" handler:v13];
    v10 = self->_faceTimeVideoAction;
    self->_faceTimeVideoAction = v9;

    objc_destroyWeak(&v14);
    faceTimeVideoAction = self->_faceTimeVideoAction;
  }

  v11 = faceTimeVideoAction;
  objc_destroyWeak(&location);

  return v11;
}

void __48__CKNavBarUnifiedCallButton_faceTimeVideoAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 buttonRequestsStartFaceTimeVideo:v3];

    WeakRetained = v3;
  }
}

- (UIAction)faceTimeJoinWithVideoAction
{
  objc_initWeak(&location, self);
  faceTimeJoinWithVideoAction = self->_faceTimeJoinWithVideoAction;
  if (!faceTimeJoinWithVideoAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"FACETIME_VIDEO" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 navBarVideoImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__CKNavBarUnifiedCallButton_faceTimeJoinWithVideoAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:v8 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeJoinWithVideo" handler:v13];
    v10 = self->_faceTimeJoinWithVideoAction;
    self->_faceTimeJoinWithVideoAction = v9;

    objc_destroyWeak(&v14);
    faceTimeJoinWithVideoAction = self->_faceTimeJoinWithVideoAction;
  }

  v11 = faceTimeJoinWithVideoAction;
  objc_destroyWeak(&location);

  return v11;
}

void __56__CKNavBarUnifiedCallButton_faceTimeJoinWithVideoAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 button:v3 requestsJoinActiveCallWithVideoEnabled:1];

    WeakRetained = v3;
  }
}

- (UIAction)faceTimeAudioAction
{
  objc_initWeak(&location, self);
  faceTimeAudioAction = self->_faceTimeAudioAction;
  if (!faceTimeAudioAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"FACETIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_faceTimeAudioAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:v8 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeAudio" handler:v13];
    v10 = self->_faceTimeAudioAction;
    self->_faceTimeAudioAction = v9;

    objc_destroyWeak(&v14);
    faceTimeAudioAction = self->_faceTimeAudioAction;
  }

  v11 = faceTimeAudioAction;
  objc_destroyWeak(&location);

  return v11;
}

void __48__CKNavBarUnifiedCallButton_faceTimeAudioAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 buttonRequestsStartFaceTimeAudio:v3];

    WeakRetained = v3;
  }
}

- (UIAction)faceTimeJoinWithAudioAction
{
  objc_initWeak(&location, self);
  faceTimeJoinWithAudioAction = self->_faceTimeJoinWithAudioAction;
  if (!faceTimeJoinWithAudioAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"FACETIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__CKNavBarUnifiedCallButton_faceTimeJoinWithAudioAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:v8 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeJoinWithAudio" handler:v13];
    v10 = self->_faceTimeJoinWithAudioAction;
    self->_faceTimeJoinWithAudioAction = v9;

    objc_destroyWeak(&v14);
    faceTimeJoinWithAudioAction = self->_faceTimeJoinWithAudioAction;
  }

  v11 = faceTimeJoinWithAudioAction;
  objc_destroyWeak(&location);

  return v11;
}

void __56__CKNavBarUnifiedCallButton_faceTimeJoinWithAudioAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 button:v3 requestsJoinActiveCallWithVideoEnabled:0];

    WeakRetained = v3;
  }
}

- (UIAction)faceTimeShareMyScreenAction
{
  objc_initWeak(&location, self);
  faceTimeShareMyScreenAction = self->_faceTimeShareMyScreenAction;
  if (!faceTimeShareMyScreenAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"INVITE_TO_SHARE_MY_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__CKNavBarUnifiedCallButton_faceTimeShareMyScreenAction__block_invoke;
    v11[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v12, &location);
    v7 = [v4 actionWithTitle:v6 image:0 identifier:0 handler:v11];
    v8 = self->_faceTimeShareMyScreenAction;
    self->_faceTimeShareMyScreenAction = v7;

    objc_destroyWeak(&v12);
    faceTimeShareMyScreenAction = self->_faceTimeShareMyScreenAction;
  }

  v9 = faceTimeShareMyScreenAction;
  objc_destroyWeak(&location);

  return v9;
}

void __56__CKNavBarUnifiedCallButton_faceTimeShareMyScreenAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 button:v3 requestsStartFaceTimeWithScreenShareType:1];

    WeakRetained = v3;
  }
}

- (UIAction)faceTimeInviteToShareTheirScreenAction
{
  objc_initWeak(&location, self);
  faceTimeInviteToShareTheirScreenAction = self->_faceTimeInviteToShareTheirScreenAction;
  if (!faceTimeInviteToShareTheirScreenAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ASK_TO_SHARE_THEIR_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__CKNavBarUnifiedCallButton_faceTimeInviteToShareTheirScreenAction__block_invoke;
    v11[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v12, &location);
    v7 = [v4 actionWithTitle:v6 image:0 identifier:0 handler:v11];
    v8 = self->_faceTimeInviteToShareTheirScreenAction;
    self->_faceTimeInviteToShareTheirScreenAction = v7;

    objc_destroyWeak(&v12);
    faceTimeInviteToShareTheirScreenAction = self->_faceTimeInviteToShareTheirScreenAction;
  }

  v9 = faceTimeInviteToShareTheirScreenAction;
  objc_destroyWeak(&location);

  return v9;
}

void __67__CKNavBarUnifiedCallButton_faceTimeInviteToShareTheirScreenAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 button:v3 requestsStartFaceTimeWithScreenShareType:2];

    WeakRetained = v3;
  }
}

- (UIAction)telephonyCallAction
{
  objc_initWeak(&location, self);
  telephonyCallAction = self->_telephonyCallAction;
  if (!telephonyCallAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"CALL" value:&stru_1F04268F8 table:@"ChatKit"];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_telephonyCallAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:v8 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierTelephonyCall" handler:v13];
    v10 = self->_telephonyCallAction;
    self->_telephonyCallAction = v9;

    objc_destroyWeak(&v14);
    telephonyCallAction = self->_telephonyCallAction;
  }

  v11 = telephonyCallAction;
  objc_destroyWeak(&location);

  return v11;
}

void __48__CKNavBarUnifiedCallButton_telephonyCallAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 buttonRequestsStartTelephonyCall:v3];

    WeakRetained = v3;
  }
}

- (UIAction)openJoinedCallAction
{
  objc_initWeak(&location, self);
  openJoinedCallAction = self->_openJoinedCallAction;
  if (!openJoinedCallAction)
  {
    v4 = MEMORY[0x1E69DC628];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__CKNavBarUnifiedCallButton_openJoinedCallAction__block_invoke;
    v11[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v12, &location);
    v7 = [v4 actionWithTitle:v6 image:0 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierOpenJoinedCall" handler:v11];
    v8 = self->_openJoinedCallAction;
    self->_openJoinedCallAction = v7;

    objc_destroyWeak(&v12);
    openJoinedCallAction = self->_openJoinedCallAction;
  }

  v9 = openJoinedCallAction;
  objc_destroyWeak(&location);

  return v9;
}

void __49__CKNavBarUnifiedCallButton_openJoinedCallAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 buttonRequestsOpenJoinedCall:v3];

    WeakRetained = v3;
  }
}

- (UIAction)leaveJoinedCallAction
{
  leaveJoinedCallAction = self->_leaveJoinedCallAction;
  if (!leaveJoinedCallAction)
  {
    objc_initWeak(&location, self);
    v4 = [(CKNavBarUnifiedCallButton *)self buttonStyle];
    v5 = @"LEAVE_CONVERSATION_EXTRA_SHORT";
    if (v4 == 4)
    {
      v5 = @"END_CALL";
    }

    v6 = v5;
    v7 = MEMORY[0x1E69DC628];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __50__CKNavBarUnifiedCallButton_leaveJoinedCallAction__block_invoke;
    v17 = &unk_1E72EBCD8;
    objc_copyWeak(&v18, &location);
    v11 = [v7 actionWithTitle:v9 image:v10 identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierLeaveJoinedCall" handler:&v14];
    v12 = self->_leaveJoinedCallAction;
    self->_leaveJoinedCallAction = v11;

    [(UIAction *)self->_leaveJoinedCallAction setAttributes:2, v14, v15, v16, v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
    leaveJoinedCallAction = self->_leaveJoinedCallAction;
  }

  return leaveJoinedCallAction;
}

void __50__CKNavBarUnifiedCallButton_leaveJoinedCallAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 buttonRequestsLeaveJoinedCall:v3];

    WeakRetained = v3;
  }
}

- (CKNavBarUnifiedCallButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIBarButtonItem)parentBarButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentBarButtonItem);

  return WeakRetained;
}

@end