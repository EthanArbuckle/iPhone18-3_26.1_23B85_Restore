@interface CKNavBarUnifiedCallButton
- (BOOL)shouldUseJoinPillWithLabel;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKNavBarUnifiedCallButton)initWithFrame:(CGRect)frame;
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
- (void)_configureParentBarButtonItemWithBackgroundColor:(id)color;
- (void)_updateForCurrentState;
- (void)layoutSubviews;
- (void)setJoinPillShouldDisableLabel:(BOOL)label;
- (void)setOverrideAudioCallActions:(id)actions;
- (void)setParentBarButtonItem:(id)item;
- (void)updateWithStyle:(int64_t)style availabilityForVideo:(BOOL)video audio:(BOOL)audio telephony:(BOOL)telephony screenSharing:(BOOL)sharing;
@end

@implementation CKNavBarUnifiedCallButton

- (CKNavBarUnifiedCallButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKNavBarUnifiedCallButton;
  v3 = [(CKNavBarUnifiedCallButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKNavBarUnifiedCallButton *)v3 setButtonStyle:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

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
  layer = [(CKNavBarUnifiedCallButton *)self layer];
  [layer setCornerRadius:v4];

  if ([(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall])
  {
    titleLabel = [(CKNavBarUnifiedCallButton *)self titleLabel];
    text = [titleLabel text];
    if ([text length])
    {
      joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];

      if (!joinPillShouldDisableLabel)
      {
        [(CKNavBarUnifiedCallButton *)self _currentLabelPreferredWidth];
        v10 = v9;
        titleLabel2 = [(CKNavBarUnifiedCallButton *)self titleLabel];
        [titleLabel2 bounds];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v7.receiver = self;
  v7.super_class = CKNavBarUnifiedCallButton;
  [(CKNavBarUnifiedCallButton *)&v7 sizeThatFits:fits.width];
  v5 = fmin(v4, 80.0);
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)updateWithStyle:(int64_t)style availabilityForVideo:(BOOL)video audio:(BOOL)audio telephony:(BOOL)telephony screenSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  telephonyCopy = telephony;
  audioCopy = audio;
  videoCopy = video;
  v29 = *MEMORY[0x1E69E9840];
  v13 = self->_buttonStyle != style || self->_faceTimeVideoAvailable != video || self->_faceTimeAudioAvailable != audio || self->_telephonyCallAvailable != telephony || self->_screenSharingAvailable != sharing;
  self->_buttonStyle = style;
  self->_faceTimeVideoAvailable = video;
  self->_faceTimeAudioAvailable = audio;
  self->_telephonyCallAvailable = telephony;
  self->_screenSharingAvailable = sharing;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = @"NO";
    if (videoCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v19 = 134219010;
    styleCopy = style;
    if (audioCopy)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v21 = 2112;
    v22 = v16;
    if (telephonyCopy)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v23 = 2112;
    v24 = v17;
    if (sharingCopy)
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

- (void)setOverrideAudioCallActions:(id)actions
{
  actionsCopy = actions;
  if (([actionsCopy isEqualToArray:self->_overrideAudioCallActions] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideAudioCallActions, actions);
    [(CKNavBarUnifiedCallButton *)self _configureActionsForCurrentState];
  }
}

- (double)_currentLabelPreferredWidth
{
  v21[1] = *MEMORY[0x1E69E9840];
  titleLabel = [(CKNavBarUnifiedCallButton *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length];

  if (!v5)
  {
    return 0.0;
  }

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];

  titleLabel2 = [(CKNavBarUnifiedCallButton *)self titleLabel];
  font = [titleLabel2 font];

  [font pointSize];
  v11 = v10;
  titleLabel3 = [(CKNavBarUnifiedCallButton *)self titleLabel];
  [titleLabel3 _actualScaleFactor];
  v14 = round(v11 * v13 * 4.0) * 0.25;

  v20 = *MEMORY[0x1E69DB648];
  v15 = [font fontWithSize:v14];
  v21[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  [v7 sizeWithAttributes:v16];
  v18 = ceil(v17);

  return v18;
}

- (void)setJoinPillShouldDisableLabel:(BOOL)label
{
  if (self->_joinPillShouldDisableLabel != label)
  {
    self->_joinPillShouldDisableLabel = label;
    [(CKNavBarUnifiedCallButton *)self _updateForCurrentState];
    [(CKNavBarUnifiedCallButton *)self layoutIfNeeded];
    delegate = [(CKNavBarUnifiedCallButton *)self delegate];
    [delegate buttonWidthDidChange:self];
  }
}

- (void)setParentBarButtonItem:(id)item
{
  obj = item;
  WeakRetained = objc_loadWeakRetained(&self->_parentBarButtonItem);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentBarButtonItem, obj);
    v5 = obj;
    if (obj)
    {
      _backgroundColorForCurrentStyle = [(CKNavBarUnifiedCallButton *)self _backgroundColorForCurrentStyle];
      [(CKNavBarUnifiedCallButton *)self _configureParentBarButtonItemWithBackgroundColor:_backgroundColorForCurrentStyle];

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
  _isStyledForJoinableCall = [(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall];
  if (_isStyledForJoinableCall)
  {
    LOBYTE(_isStyledForJoinableCall) = ![(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
  }

  return _isStyledForJoinableCall;
}

- (void)_configureActionsForCurrentState
{
  _actionsForCurrentStyle = [(CKNavBarUnifiedCallButton *)self _actionsForCurrentStyle];
  _subActionsForCurrentStyle = [(CKNavBarUnifiedCallButton *)self _subActionsForCurrentStyle];
  if ([(CKNavBarUnifiedCallButton *)self _isStyledForJoinableCall]|| [(CKNavBarUnifiedCallButton *)self _isStyledForJoinedCall])
  {
    openJoinedCallAction = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
    [(CKNavBarUnifiedCallButton *)self addAction:openJoinedCallAction forControlEvents:64];

    [(CKNavBarUnifiedCallButton *)self setMenu:0];
    [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:0];
    selfCopy2 = self;
    v6 = 1;
LABEL_4:
    [(CKNavBarUnifiedCallButton *)selfCopy2 setUserInteractionEnabled:v6];
    goto LABEL_5;
  }

  if (![_actionsForCurrentStyle count])
  {
    openJoinedCallAction2 = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
    [(CKNavBarUnifiedCallButton *)self removeAction:openJoinedCallAction2 forControlEvents:64];

    [(CKNavBarUnifiedCallButton *)self setMenu:0];
    [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:0];
    selfCopy2 = self;
    v6 = 0;
    goto LABEL_4;
  }

  if (_subActionsForCurrentStyle)
  {
    v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:_subActionsForCurrentStyle];
  }

  else
  {
    v7 = 0;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithArray:_actionsForCurrentStyle];
  v10 = v9;
  if (v7)
  {
    [v9 addObject:v7];
  }

  openJoinedCallAction3 = [(CKNavBarUnifiedCallButton *)self openJoinedCallAction];
  [(CKNavBarUnifiedCallButton *)self removeAction:openJoinedCallAction3 forControlEvents:64];

  v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v10];
  [(CKNavBarUnifiedCallButton *)self setMenu:v12];

  [(CKNavBarUnifiedCallButton *)self setShowsMenuAsPrimaryAction:1];
  [(CKNavBarUnifiedCallButton *)self setUserInteractionEnabled:1];

LABEL_5:
}

- (void)_configureInsetsForCurrentState
{
  traitCollection = [(CKNavBarUnifiedCallButton *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

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
  if (layoutDirection == 1)
  {
    v16 = -v13;
  }

  else
  {
    v16 = v13;
  }

  if (layoutDirection == 1)
  {
    v15 = v13;
    v17 = v12 + v13;
  }

  else
  {
    v17 = v8;
  }

  if (layoutDirection != 1)
  {
    v8 = v14;
  }

  [(CKNavBarUnifiedCallButton *)self setTitleEdgeInsets:0.0, v16, 0.0, v15];

  [(CKNavBarUnifiedCallButton *)self setContentEdgeInsets:v6, v17, v10, v8];
}

- (void)_configureParentBarButtonItemWithBackgroundColor:(id)color
{
  colorCopy = color;
  parentBarButtonItem = [(CKNavBarUnifiedCallButton *)self parentBarButtonItem];
  [parentBarButtonItem setTintColor:colorCopy];

  parentBarButtonItem2 = [(CKNavBarUnifiedCallButton *)self parentBarButtonItem];
  [parentBarButtonItem2 setStyle:2 * (colorCopy != 0)];
}

- (void)_configureFrameForCurrentState
{
  [(CKNavBarUnifiedCallButton *)self buttonStyle];

  [(CKNavBarUnifiedCallButton *)self sizeToFit];
}

- (double)_cornerRadiusForCurrentStyle
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (buttonStyle > 5 || ((1 << buttonStyle) & 0x2A) == 0 || [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
  {
    return 0.0;
  }

  [(CKNavBarUnifiedCallButton *)self frame];
  traitCollection = [(CKNavBarUnifiedCallButton *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v7 = v6;

  return v7;
}

- (double)_leadingMarginForCurrentState
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 10.0;
    if (joinPillShouldDisableLabel)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_trailingMarginForCurrentState
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 10.0;
    if (joinPillShouldDisableLabel)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_imageToTextSpacingForCurrentState
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    result = 5.0;
    if (joinPillShouldDisableLabel)
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
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = &stru_1F04268F8;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
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
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  navBarUnifiedCallButtonJoinTextFont = 0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      navBarUnifiedCallButtonJoinTextFont = 0;
    }

    else
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      navBarUnifiedCallButtonJoinTextFont = [v5 navBarUnifiedCallButtonJoinTextFont];
    }
  }

  return navBarUnifiedCallButtonJoinTextFont;
}

- (double)_minimumFontScaleFactorForCurrentStyle
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  result = 0.0;
  if ((buttonStyle - 1) <= 4)
  {
    return dbl_190DD0AF0[buttonStyle - 1];
  }

  return result;
}

- (id)_tintColorForCurrentStyle
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  whiteColor = 0;
  if (buttonStyle <= 6)
  {
    if (((1 << buttonStyle) & 0x2A) == 0)
    {
      if (((1 << buttonStyle) & 0x54) == 0)
      {
        goto LABEL_8;
      }

      v5 = MEMORY[0x1E69DC888];
      goto LABEL_6;
    }

    joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
    v5 = MEMORY[0x1E69DC888];
    if (joinPillShouldDisableLabel)
    {
LABEL_6:
      whiteColor = [v5 ckColorNamed:@"CKSystemGreenColor"];
      goto LABEL_8;
    }

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

LABEL_8:

  return whiteColor;
}

- (id)_titleColorForCurrentStyle
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  whiteColor = 0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    if ([(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel])
    {
      whiteColor = 0;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  return whiteColor;
}

- (id)_backgroundColorForCurrentStyle
{
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  v4 = 0;
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
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
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (buttonStyle > 3)
  {
    switch(buttonStyle)
    {
      case 4:
        v6 = +[CKUIBehavior sharedBehaviors];
        navBarAudioFillImage = [v6 navBarAudioFillImage];
        goto LABEL_24;
      case 5:
        joinPillShouldDisableLabel = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
        v8 = +[CKUIBehavior sharedBehaviors];
        v6 = v8;
        if (!joinPillShouldDisableLabel)
        {
          navBarAudioFillImage = [v8 navbarJoinPillSharePlayImage];
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

    navBarAudioFillImage = [v8 navBarSharePlayImage];
    goto LABEL_24;
  }

  switch(buttonStyle)
  {
    case 1:
      joinPillShouldDisableLabel2 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
      v10 = +[CKUIBehavior sharedBehaviors];
      v6 = v10;
      if (!joinPillShouldDisableLabel2)
      {
        navBarAudioFillImage = [v10 navbarJoinPillVideoImage];
        goto LABEL_24;
      }

LABEL_16:
      navBarAudioFillImage = [v10 navBarVideoImage];
      goto LABEL_24;
    case 2:
      v6 = +[CKUIBehavior sharedBehaviors];
      navBarAudioFillImage = [v6 navBarVideoFillImage];
      goto LABEL_24;
    case 3:
      joinPillShouldDisableLabel3 = [(CKNavBarUnifiedCallButton *)self joinPillShouldDisableLabel];
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = v5;
      if (!joinPillShouldDisableLabel3)
      {
        navBarAudioFillImage = [v5 navbarJoinPillAudioImage];
LABEL_24:
        v12 = navBarAudioFillImage;

        goto LABEL_25;
      }

LABEL_22:
      navBarAudioFillImage = [v5 navBarAudioImage];
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
  buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
  if (buttonStyle <= 5 && ((1 << buttonStyle) & 0x2A) != 0)
  {
    _joinCallActions = [(CKNavBarUnifiedCallButton *)self _joinCallActions];
  }

  else
  {
    _joinCallActions = [(CKNavBarUnifiedCallButton *)self _startCallActions];
  }

  return _joinCallActions;
}

- (id)_subActionsForCurrentStyle
{
  if ([(CKNavBarUnifiedCallButton *)self buttonStyle])
  {
    _startCallSubActions = 0;
  }

  else
  {
    _startCallSubActions = [(CKNavBarUnifiedCallButton *)self _startCallSubActions];
  }

  return _startCallSubActions;
}

- (id)_startCallActions
{
  array = [MEMORY[0x1E695DF70] array];
  overrideAudioCallActions = [(CKNavBarUnifiedCallButton *)self overrideAudioCallActions];
  v5 = [overrideAudioCallActions count];

  if (v5)
  {
    overrideAudioCallActions2 = [(CKNavBarUnifiedCallButton *)self overrideAudioCallActions];
    [array addObjectsFromArray:overrideAudioCallActions2];
LABEL_7:

    goto LABEL_8;
  }

  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeAudioAvailable])
  {
    faceTimeAudioAction = [(CKNavBarUnifiedCallButton *)self faceTimeAudioAction];
    [array addObject:faceTimeAudioAction];
  }

  if ([(CKNavBarUnifiedCallButton *)self isTelephonyAvailable])
  {
    overrideAudioCallActions2 = [(CKNavBarUnifiedCallButton *)self telephonyCallAction];
    [array addObject:overrideAudioCallActions2];
    goto LABEL_7;
  }

LABEL_8:
  if ([(CKNavBarUnifiedCallButton *)self isFaceTimeVideoAvailable])
  {
    faceTimeVideoAction = [(CKNavBarUnifiedCallButton *)self faceTimeVideoAction];
    [array addObject:faceTimeVideoAction];
  }

  v9 = [array copy];

  return v9;
}

- (id)_startCallSubActions
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(CKNavBarUnifiedCallButton *)self isScreenSharingAvailable])
  {
    faceTimeShareMyScreenAction = [(CKNavBarUnifiedCallButton *)self faceTimeShareMyScreenAction];
    v7[0] = faceTimeShareMyScreenAction;
    faceTimeInviteToShareTheirScreenAction = [(CKNavBarUnifiedCallButton *)self faceTimeInviteToShareTheirScreenAction];
    v7[1] = faceTimeInviteToShareTheirScreenAction;
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
    navBarVideoImage = [v7 navBarVideoImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_faceTimeVideoAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:navBarVideoImage identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeVideo" handler:v13];
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
    navBarVideoImage = [v7 navBarVideoImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__CKNavBarUnifiedCallButton_faceTimeJoinWithVideoAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:navBarVideoImage identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeJoinWithVideo" handler:v13];
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
    navBarAudioImage = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_faceTimeAudioAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:navBarAudioImage identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeAudio" handler:v13];
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
    navBarAudioImage = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__CKNavBarUnifiedCallButton_faceTimeJoinWithAudioAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:navBarAudioImage identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierFaceTimeJoinWithAudio" handler:v13];
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
    navBarAudioImage = [v7 navBarAudioImage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__CKNavBarUnifiedCallButton_telephonyCallAction__block_invoke;
    v13[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v14, &location);
    v9 = [v4 actionWithTitle:v6 image:navBarAudioImage identifier:@"CKNavBarUnifiedButtonViewUIActionIdentifierTelephonyCall" handler:v13];
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
    buttonStyle = [(CKNavBarUnifiedCallButton *)self buttonStyle];
    v5 = @"LEAVE_CONVERSATION_EXTRA_SHORT";
    if (buttonStyle == 4)
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