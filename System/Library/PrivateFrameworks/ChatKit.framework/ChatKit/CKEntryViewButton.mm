@interface CKEntryViewButton
+ (id)entryViewButtonImageForType:(int64_t)type;
+ (id)entryViewButtonImageForType:(int64_t)type color:(char)color;
+ (id)entryViewButtonImageWithName:(id)name tintColor:(char)color shouldSuppressHairline:(BOOL)hairline;
+ (id)entryViewButtonOfType:(int64_t)type;
+ (id)entryViewButtonOfType:(int64_t)type wantsVibrancy:(BOOL)vibrancy;
+ (id)imageNameForEntryViewButtonType:(int64_t)type;
+ (id)overlayImageForImageNamed:(id)named tintColor:(char)color;
+ (void)prewarmEntryViewButtons;
- (BOOL)isEnabled;
- (CGSize)intrinsicContentSize;
- (CKEntryViewButton)initWithFrame:(CGRect)frame wantsVibrancy:(BOOL)vibrancy;
- (double)blurRadius;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region modifiers:(int64_t)modifiers;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)radius;
- (void)setCkTintColor:(char)color;
- (void)setDefaultImage;
- (void)setEnabled:(BOOL)enabled;
- (void)setTintedImageForButtonType:(int64_t)type tintColor:(char)color;
- (void)setWantsVibrancy:(BOOL)vibrancy;
- (void)setupCompositeFilterForButton;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKEntryViewButton

+ (id)entryViewButtonOfType:(int64_t)type wantsVibrancy:(BOOL)vibrancy
{
  vibrancyCopy = vibrancy;
  v6 = [CKEntryViewButton alloc];
  v7 = [(CKEntryViewButton *)v6 initWithFrame:vibrancyCopy wantsVibrancy:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKEntryViewButton *)v7 setEntryViewButtonType:type];
  if (type == 1)
  {
    [(CKEntryViewButton *)v7 setCkTintColor:0xFFFFFFFFLL];
  }

  return v7;
}

+ (id)entryViewButtonOfType:(int64_t)type
{
  v4 = [CKEntryViewButton alloc];
  v5 = +[CKUIBehavior sharedBehaviors];
  entryViewButtonWantsVibrancy = [v5 entryViewButtonWantsVibrancy];
  v7 = [(CKEntryViewButton *)v4 initWithFrame:entryViewButtonWantsVibrancy wantsVibrancy:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CKEntryViewButton *)v7 setEntryViewButtonType:type];

  return v7;
}

+ (id)imageNameForEntryViewButtonType:(int64_t)type
{
  v3 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      entryViewDictationButtonName = [v4 entryViewDictationButtonName];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v4 = +[CKUIBehavior sharedBehaviors];
      entryViewDictationButtonName = [v4 entryViewKeyboardButtonName];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v4 = +[CKUIBehavior sharedBehaviors];
    entryViewDictationButtonName = [v4 entryViewAudioButtonName];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    entryViewDictationButtonName = [v4 entryViewSendButtonName];
  }

  v3 = entryViewDictationButtonName;

LABEL_11:

  return v3;
}

+ (void)prewarmEntryViewButtons
{
  v3 = [objc_opt_class() imageNameForEntryViewButtonType:1];
  v4 = [self entryViewButtonImageWithName:v3 tintColor:0xFFFFFFFFLL shouldSuppressHairline:1];
  v5 = [objc_opt_class() imageNameForEntryViewButtonType:0];

  v6 = [self entryViewButtonImageWithName:v5 tintColor:1 shouldSuppressHairline:1];
  v7 = [objc_opt_class() imageNameForEntryViewButtonType:0];

  v8 = [self entryViewButtonImageWithName:v7 tintColor:0 shouldSuppressHairline:1];
  v9 = +[CKUIBehavior sharedBehaviors];
  entryViewDictationButtonName = [v9 entryViewDictationButtonName];

  v10 = [self entryViewButtonImageWithName:entryViewDictationButtonName tintColor:0xFFFFFFFFLL shouldSuppressHairline:0];
}

+ (id)entryViewButtonImageForType:(int64_t)type
{
  v4 = [objc_opt_class() imageNameForEntryViewButtonType:type];
  v5 = [self entryViewButtonImageWithName:v4 tintColor:0xFFFFFFFFLL shouldSuppressHairline:1];

  return v5;
}

+ (id)entryViewButtonImageForType:(int64_t)type color:(char)color
{
  colorCopy = color;
  v6 = [objc_opt_class() imageNameForEntryViewButtonType:type];
  v7 = [self entryViewButtonImageWithName:v6 tintColor:colorCopy shouldSuppressHairline:1];

  return v7;
}

- (CKEntryViewButton)initWithFrame:(CGRect)frame wantsVibrancy:(BOOL)vibrancy
{
  vibrancyCopy = vibrancy;
  v15.receiver = self;
  v15.super_class = CKEntryViewButton;
  v5 = [(CKEntryViewButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(CKEntryViewButton *)v5 addSubview:v6];
    [(CKEntryViewButton *)v5 setVibrancyView:v6];
    [(CKEntryViewButton *)v5 setWantsVibrancy:vibrancyCopy];
    _preferredEntryViewButtonType = [(CKEntryViewButton *)v5 _preferredEntryViewButtonType];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:_preferredEntryViewButtonType];
    v9 = v8;
    if (!_preferredEntryViewButtonType)
    {
      [v8 setAdjustsImageWhenDisabled:0];
    }

    imageView = [v9 imageView];
    [imageView setContentMode:1];

    v11 = objc_alloc_init(CKEntryViewBlurrableButtonContainer);
    [(CKEntryViewBlurrableButtonContainer *)v11 addSubview:v9];
    contentView = [v6 contentView];
    [contentView addSubview:v11];

    [(CKEntryViewButton *)v5 setButton:v9];
    [(CKEntryViewButton *)v5 setBlurrableButtonContainer:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v5];
    [(CKEntryViewButton *)v5 addInteraction:v13];
  }

  return v5;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CKEntryViewButton;
  [(CKEntryViewButton *)&v28 layoutSubviews];
  [(CKEntryViewButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  vibrancyView = [(CKEntryViewButton *)self vibrancyView];
  [vibrancyView setFrame:{v4, v6, v8, v10}];

  if (self->_needsOversizedBlurContainer)
  {
    blurrableButtonContainer = [(CKEntryViewButton *)self blurrableButtonContainer];
    v13 = blurrableButtonContainer;
    v14 = v4 + -30.0;
    v15 = v6 + -30.0;
    v16 = v8 + 60.0;
    v17 = v10 + 60.0;
  }

  else
  {
    blurrableButtonContainer = [(CKEntryViewButton *)self blurrableButtonContainer];
    v13 = blurrableButtonContainer;
    v14 = v4;
    v15 = v6;
    v16 = v8;
    v17 = v10;
  }

  [blurrableButtonContainer setFrame:{v14, v15, v16, v17}];

  blurrableButtonContainer2 = [(CKEntryViewButton *)self blurrableButtonContainer];
  [(CKEntryViewButton *)self convertRect:blurrableButtonContainer2 toView:v4, v6, v8, v10];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  button = [(CKEntryViewButton *)self button];
  [button setFrame:{v20, v22, v24, v26}];
}

+ (id)entryViewButtonImageWithName:(id)name tintColor:(char)color shouldSuppressHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  colorCopy = color;
  nameCopy = name;
  if (entryViewButtonImageWithName_tintColor_shouldSuppressHairline__onceToken != -1)
  {
    +[CKEntryViewButton entryViewButtonImageWithName:tintColor:shouldSuppressHairline:];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  v11 = theme;
  if (colorCopy == -1)
  {
    [theme entryFieldButtonColor];
  }

  else
  {
    [theme sendButtonColorForColorType:colorCopy];
  }
  v12 = ;

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v12 description];
  v15 = [v13 stringWithFormat:@"%@-%@", nameCopy, v14];

  v16 = [entryViewButtonImageWithName_tintColor_shouldSuppressHairline__sDictionary objectForKey:v15];
  if (v16)
  {
    goto LABEL_47;
  }

  selfCopy = self;
  v17 = [CKEntryViewButton imageNameForEntryViewButtonType:1];
  v18 = [CKEntryViewButton imageNameForEntryViewButtonType:0];
  v60 = [CKEntryViewButton imageNameForEntryViewButtonType:2];
  v19 = [CKEntryViewButton imageNameForEntryViewButtonType:3];
  v55 = hairlineCopy;
  v59 = v18;
  if ([nameCopy isEqualToString:v17] || objc_msgSend(nameCopy, "isEqualToString:", v18))
  {
    v20 = [MEMORY[0x1E69DCAB8] ckImageNamed:nameCopy];
  }

  else if (([nameCopy isEqualToString:v60] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", v19))
  {
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy];
  }

  else
  {
    v20 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];
  }

  v21 = v20;
  v56 = v12;
  v58 = v19;
  if (([nameCopy isEqualToString:v60] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", v19) & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", v17))
  {
    v22 = v17;
    v23 = +[CKUIBehavior sharedBehaviors];
    entryViewDefaultSymbolConfiguration = [v23 entryViewDefaultSymbolConfiguration];

    v25 = +[CKUIBehavior sharedBehaviors];
    entryViewButtonTintColor = [v25 entryViewButtonTintColor];

    v27 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:entryViewButtonTintColor];
    v28 = [entryViewDefaultSymbolConfiguration configurationByApplyingConfiguration:v27];
    v29 = [v21 imageWithSymbolConfiguration:v28];

    v21 = v29;
    if (v29)
    {
LABEL_14:
      v16 = [v21 imageWithRenderingMode:2];
      [v21 size];
      v31 = v30;
      v33 = v32;
      v34 = v22;
      if (([nameCopy isEqualToString:v59] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", v22))
      {
        v12 = v56;
        if (!CKIsRunningInMacCatalyst())
        {
          v35 = +[CKUIBehavior sharedBehaviors];
          [v35 sendButtonSize];
          v31 = v36;

          v33 = v31;
        }
      }

      else
      {
        v12 = v56;
      }

      if ([nameCopy isEqualToString:v60])
      {
        v37 = +[CKUIBehavior sharedBehaviors];
        [v37 dictationButtonSize];
      }

      else
      {
        if (![nameCopy isEqualToString:v34])
        {
          if (([nameCopy isEqualToString:v58] & 1) == 0)
          {
LABEL_28:
            v43 = CKIsRunningInMacCatalyst();
            if (([nameCopy isEqualToString:v60] & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", v58) & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", v34) & 1) == 0 && !v43)
            {
              [v21 scale];
              v45 = v44;
              v62.width = v31;
              v62.height = v33;
              UIGraphicsBeginImageContextWithOptions(v62, 0, v45);
              [v12 set];
              [v16 drawInRect:{0.0, 0.0, v31, v33}];
              v46 = [selfCopy overlayImageForImageNamed:nameCopy tintColor:colorCopy];
              if (v46)
              {
                v47 = +[CKUIBehavior sharedBehaviors];
                [v47 theme];
                v48 = v57 = v46;
                v49 = [v48 sendButtonArrowColorForColorType:colorCopy];
                [v49 set];

                v46 = v57;
                [v57 drawInRect:{0.0, 0.0, v31, v33}];
              }

              v50 = UIGraphicsGetImageFromCurrentImageContext();

              UIGraphicsEndImageContext();
              v16 = v50;
            }

            if (!CKIsRunningInMacCatalyst() && v55)
            {
              [v16 _suppressesAccessibilityHairlineThickening];
            }

            if (v16)
            {
              [entryViewButtonImageWithName_tintColor_shouldSuppressHairline__sDictionary setObject:v16 forKey:v15];
            }

            goto LABEL_46;
          }

LABEL_27:
          v40 = +[CKUIBehavior sharedBehaviors];
          entryViewButtonTintColor2 = [v40 entryViewButtonTintColor];
          v42 = [v16 imageWithTintColor:entryViewButtonTintColor2];

          v16 = v42;
          goto LABEL_28;
        }

        v37 = +[CKUIBehavior sharedBehaviors];
        [v37 audioButtonSize];
      }

      v31 = v38;
      v33 = v39;

      goto LABEL_27;
    }
  }

  else
  {
    v22 = v17;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  v51 = IMLogHandleForCategory();
  v34 = v22;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    [CKEntryViewButton entryViewButtonImageWithName:v51 tintColor:? shouldSuppressHairline:?];
  }

  v16 = 0;
  v12 = v56;
LABEL_46:

  if (v21)
  {
LABEL_47:
    v52 = [v16 imageWithRenderingMode:1];
    goto LABEL_48;
  }

  v52 = 0;
LABEL_48:

  return v52;
}

void __83__CKEntryViewButton_entryViewButtonImageWithName_tintColor_shouldSuppressHairline___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = entryViewButtonImageWithName_tintColor_shouldSuppressHairline__sDictionary;
  entryViewButtonImageWithName_tintColor_shouldSuppressHairline__sDictionary = v0;
}

+ (id)overlayImageForImageNamed:(id)named tintColor:(char)color
{
  colorCopy = color;
  namedCopy = named;
  v6 = 0;
  if (colorCopy <= 0xF && ((1 << colorCopy) & 0x8003) != 0)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    entryViewSendButtonName = [v7 entryViewSendButtonName];
    v9 = [namedCopy isEqualToString:entryViewSendButtonName];

    if (v9)
    {
      v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"SendButtonPunchout"];
    }

    else
    {
      v6 = 0;
    }
  }

  v10 = [v6 imageWithRenderingMode:2];

  return v10;
}

- (void)setCkTintColor:(char)color
{
  if (self->_ckTintColor != color)
  {
    self->_ckTintColor = color;
    [(CKEntryViewButton *)self setDefaultImage];
  }
}

- (void)setWantsVibrancy:(BOOL)vibrancy
{
  if (self->_wantsVibrancy != vibrancy)
  {
    vibrancyCopy = vibrancy;
    v5 = +[CKUIBehavior sharedBehaviors];
    entryViewButtonWantsVibrancy = [v5 entryViewButtonWantsVibrancy];

    if (entryViewButtonWantsVibrancy)
    {
      self->_wantsVibrancy = vibrancyCopy;
      if (vibrancyCopy)
      {
        vibrancyView2 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
        v7 = [MEMORY[0x1E69DD248] _effectForBlurEffect:? vibrancyStyle:?];
        vibrancyView = [(CKEntryViewButton *)self vibrancyView];
        [vibrancyView setEffect:v7];
      }

      else
      {
        vibrancyView2 = [(CKEntryViewButton *)self vibrancyView];
        [vibrancyView2 setEffect:0];
      }
    }
  }
}

- (void)setBlurRadius:(double)radius
{
  blurrableButtonContainer = [(CKEntryViewButton *)self blurrableButtonContainer];
  [blurrableButtonContainer setBlurRadius:radius];
}

- (double)blurRadius
{
  blurrableButtonContainer = [(CKEntryViewButton *)self blurrableButtonContainer];
  [blurrableButtonContainer blurRadius];
  v4 = v3;

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  button = [(CKEntryViewButton *)self button];
  [button setEnabled:enabledCopy];
}

- (BOOL)isEnabled
{
  button = [(CKEntryViewButton *)self button];
  isEnabled = [button isEnabled];

  return isEnabled;
}

- (void)setDefaultImage
{
  entryViewButtonType = [(CKEntryViewButton *)self entryViewButtonType];
  ckTintColor = self->_ckTintColor;

  [(CKEntryViewButton *)self setTintedImageForButtonType:entryViewButtonType tintColor:ckTintColor];
}

- (void)setTintedImageForButtonType:(int64_t)type tintColor:(char)color
{
  colorCopy = color;
  v12 = [CKEntryViewButton imageNameForEntryViewButtonType:?];
  [(CKEntryViewButton *)self setupCompositeFilterForButton];
  v7 = [objc_opt_class() entryViewButtonImageWithName:v12 tintColor:colorCopy shouldSuppressHairline:1];
  button = [(CKEntryViewButton *)self button];
  [button setImage:v7 forState:0];

  if (type)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  button2 = [(CKEntryViewButton *)self button];
  [button2 setImage:v10 forState:4];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKEntryViewButton;
  [(CKEntryViewButton *)&v4 traitCollectionDidChange:change];
  [(CKEntryViewButton *)self setupCompositeFilterForButton];
}

- (void)setupCompositeFilterForButton
{
  if ([(CKEntryViewButton *)self _buttonStyleNeedsBlendFilter])
  {
    v12 = *MEMORY[0x1E6979CE8];
    traitCollection = [(CKEntryViewButton *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v5 = *MEMORY[0x1E6979CF8];

      v12 = v5;
    }

    button = [(CKEntryViewButton *)self button];
    layer = [button layer];
    v8 = [MEMORY[0x1E6979378] filterWithType:v12];
    [layer setCompositingFilter:v8];

    button2 = [(CKEntryViewButton *)self button];
    superview = [button2 superview];
    layer2 = [superview layer];
    [layer2 setAllowsGroupBlending:0];
  }
}

- (CGSize)intrinsicContentSize
{
  button = [(CKEntryViewButton *)self button];
  [button sizeToFit];

  button2 = [(CKEntryViewButton *)self button];
  [button2 frame];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region modifiers:(int64_t)modifiers
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  v7 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:0];

  return v7;
}

@end