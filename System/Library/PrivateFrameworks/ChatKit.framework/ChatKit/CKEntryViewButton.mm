@interface CKEntryViewButton
+ (id)entryViewButtonImageForType:(int64_t)a3;
+ (id)entryViewButtonImageForType:(int64_t)a3 color:(char)a4;
+ (id)entryViewButtonImageWithName:(id)a3 tintColor:(char)a4 shouldSuppressHairline:(BOOL)a5;
+ (id)entryViewButtonOfType:(int64_t)a3;
+ (id)entryViewButtonOfType:(int64_t)a3 wantsVibrancy:(BOOL)a4;
+ (id)imageNameForEntryViewButtonType:(int64_t)a3;
+ (id)overlayImageForImageNamed:(id)a3 tintColor:(char)a4;
+ (void)prewarmEntryViewButtons;
- (BOOL)isEnabled;
- (CGSize)intrinsicContentSize;
- (CKEntryViewButton)initWithFrame:(CGRect)a3 wantsVibrancy:(BOOL)a4;
- (double)blurRadius;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4 modifiers:(int64_t)a5;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)a3;
- (void)setCkTintColor:(char)a3;
- (void)setDefaultImage;
- (void)setEnabled:(BOOL)a3;
- (void)setTintedImageForButtonType:(int64_t)a3 tintColor:(char)a4;
- (void)setWantsVibrancy:(BOOL)a3;
- (void)setupCompositeFilterForButton;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKEntryViewButton

+ (id)entryViewButtonOfType:(int64_t)a3 wantsVibrancy:(BOOL)a4
{
  v4 = a4;
  v6 = [CKEntryViewButton alloc];
  v7 = [(CKEntryViewButton *)v6 initWithFrame:v4 wantsVibrancy:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKEntryViewButton *)v7 setEntryViewButtonType:a3];
  if (a3 == 1)
  {
    [(CKEntryViewButton *)v7 setCkTintColor:0xFFFFFFFFLL];
  }

  return v7;
}

+ (id)entryViewButtonOfType:(int64_t)a3
{
  v4 = [CKEntryViewButton alloc];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 entryViewButtonWantsVibrancy];
  v7 = [(CKEntryViewButton *)v4 initWithFrame:v6 wantsVibrancy:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CKEntryViewButton *)v7 setEntryViewButtonType:a3];

  return v7;
}

+ (id)imageNameForEntryViewButtonType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = [v4 entryViewDictationButtonName];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = [v4 entryViewKeyboardButtonName];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 entryViewAudioButtonName];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 entryViewSendButtonName];
  }

  v3 = v5;

LABEL_11:

  return v3;
}

+ (void)prewarmEntryViewButtons
{
  v3 = [objc_opt_class() imageNameForEntryViewButtonType:1];
  v4 = [a1 entryViewButtonImageWithName:v3 tintColor:0xFFFFFFFFLL shouldSuppressHairline:1];
  v5 = [objc_opt_class() imageNameForEntryViewButtonType:0];

  v6 = [a1 entryViewButtonImageWithName:v5 tintColor:1 shouldSuppressHairline:1];
  v7 = [objc_opt_class() imageNameForEntryViewButtonType:0];

  v8 = [a1 entryViewButtonImageWithName:v7 tintColor:0 shouldSuppressHairline:1];
  v9 = +[CKUIBehavior sharedBehaviors];
  v11 = [v9 entryViewDictationButtonName];

  v10 = [a1 entryViewButtonImageWithName:v11 tintColor:0xFFFFFFFFLL shouldSuppressHairline:0];
}

+ (id)entryViewButtonImageForType:(int64_t)a3
{
  v4 = [objc_opt_class() imageNameForEntryViewButtonType:a3];
  v5 = [a1 entryViewButtonImageWithName:v4 tintColor:0xFFFFFFFFLL shouldSuppressHairline:1];

  return v5;
}

+ (id)entryViewButtonImageForType:(int64_t)a3 color:(char)a4
{
  v4 = a4;
  v6 = [objc_opt_class() imageNameForEntryViewButtonType:a3];
  v7 = [a1 entryViewButtonImageWithName:v6 tintColor:v4 shouldSuppressHairline:1];

  return v7;
}

- (CKEntryViewButton)initWithFrame:(CGRect)a3 wantsVibrancy:(BOOL)a4
{
  v4 = a4;
  v15.receiver = self;
  v15.super_class = CKEntryViewButton;
  v5 = [(CKEntryViewButton *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(CKEntryViewButton *)v5 addSubview:v6];
    [(CKEntryViewButton *)v5 setVibrancyView:v6];
    [(CKEntryViewButton *)v5 setWantsVibrancy:v4];
    v7 = [(CKEntryViewButton *)v5 _preferredEntryViewButtonType];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:v7];
    v9 = v8;
    if (!v7)
    {
      [v8 setAdjustsImageWhenDisabled:0];
    }

    v10 = [v9 imageView];
    [v10 setContentMode:1];

    v11 = objc_alloc_init(CKEntryViewBlurrableButtonContainer);
    [(CKEntryViewBlurrableButtonContainer *)v11 addSubview:v9];
    v12 = [v6 contentView];
    [v12 addSubview:v11];

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
  v11 = [(CKEntryViewButton *)self vibrancyView];
  [v11 setFrame:{v4, v6, v8, v10}];

  if (self->_needsOversizedBlurContainer)
  {
    v12 = [(CKEntryViewButton *)self blurrableButtonContainer];
    v13 = v12;
    v14 = v4 + -30.0;
    v15 = v6 + -30.0;
    v16 = v8 + 60.0;
    v17 = v10 + 60.0;
  }

  else
  {
    v12 = [(CKEntryViewButton *)self blurrableButtonContainer];
    v13 = v12;
    v14 = v4;
    v15 = v6;
    v16 = v8;
    v17 = v10;
  }

  [v12 setFrame:{v14, v15, v16, v17}];

  v18 = [(CKEntryViewButton *)self blurrableButtonContainer];
  [(CKEntryViewButton *)self convertRect:v18 toView:v4, v6, v8, v10];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(CKEntryViewButton *)self button];
  [v27 setFrame:{v20, v22, v24, v26}];
}

+ (id)entryViewButtonImageWithName:(id)a3 tintColor:(char)a4 shouldSuppressHairline:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (entryViewButtonImageWithName_tintColor_shouldSuppressHairline__onceToken != -1)
  {
    +[CKEntryViewButton entryViewButtonImageWithName:tintColor:shouldSuppressHairline:];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = v10;
  if (v6 == -1)
  {
    [v10 entryFieldButtonColor];
  }

  else
  {
    [v10 sendButtonColorForColorType:v6];
  }
  v12 = ;

  v13 = MEMORY[0x1E696AEC0];
  v14 = [v12 description];
  v15 = [v13 stringWithFormat:@"%@-%@", v8, v14];

  v16 = [entryViewButtonImageWithName_tintColor_shouldSuppressHairline__sDictionary objectForKey:v15];
  if (v16)
  {
    goto LABEL_47;
  }

  v54 = a1;
  v17 = [CKEntryViewButton imageNameForEntryViewButtonType:1];
  v18 = [CKEntryViewButton imageNameForEntryViewButtonType:0];
  v60 = [CKEntryViewButton imageNameForEntryViewButtonType:2];
  v19 = [CKEntryViewButton imageNameForEntryViewButtonType:3];
  v55 = v5;
  v59 = v18;
  if ([v8 isEqualToString:v17] || objc_msgSend(v8, "isEqualToString:", v18))
  {
    v20 = [MEMORY[0x1E69DCAB8] ckImageNamed:v8];
  }

  else if (([v8 isEqualToString:v60] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", v19))
  {
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:v8];
  }

  else
  {
    v20 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v8];
  }

  v21 = v20;
  v56 = v12;
  v58 = v19;
  if (([v8 isEqualToString:v60] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", v19) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", v17))
  {
    v22 = v17;
    v23 = +[CKUIBehavior sharedBehaviors];
    v24 = [v23 entryViewDefaultSymbolConfiguration];

    v25 = +[CKUIBehavior sharedBehaviors];
    v26 = [v25 entryViewButtonTintColor];

    v27 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v26];
    v28 = [v24 configurationByApplyingConfiguration:v27];
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
      if (([v8 isEqualToString:v59] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", v22))
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

      if ([v8 isEqualToString:v60])
      {
        v37 = +[CKUIBehavior sharedBehaviors];
        [v37 dictationButtonSize];
      }

      else
      {
        if (![v8 isEqualToString:v34])
        {
          if (([v8 isEqualToString:v58] & 1) == 0)
          {
LABEL_28:
            v43 = CKIsRunningInMacCatalyst();
            if (([v8 isEqualToString:v60] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", v58) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", v34) & 1) == 0 && !v43)
            {
              [v21 scale];
              v45 = v44;
              v62.width = v31;
              v62.height = v33;
              UIGraphicsBeginImageContextWithOptions(v62, 0, v45);
              [v12 set];
              [v16 drawInRect:{0.0, 0.0, v31, v33}];
              v46 = [v54 overlayImageForImageNamed:v8 tintColor:v6];
              if (v46)
              {
                v47 = +[CKUIBehavior sharedBehaviors];
                [v47 theme];
                v48 = v57 = v46;
                v49 = [v48 sendButtonArrowColorForColorType:v6];
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
          v41 = [v40 entryViewButtonTintColor];
          v42 = [v16 imageWithTintColor:v41];

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

+ (id)overlayImageForImageNamed:(id)a3 tintColor:(char)a4
{
  v4 = a4;
  v5 = a3;
  v6 = 0;
  if (v4 <= 0xF && ((1 << v4) & 0x8003) != 0)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 entryViewSendButtonName];
    v9 = [v5 isEqualToString:v8];

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

- (void)setCkTintColor:(char)a3
{
  if (self->_ckTintColor != a3)
  {
    self->_ckTintColor = a3;
    [(CKEntryViewButton *)self setDefaultImage];
  }
}

- (void)setWantsVibrancy:(BOOL)a3
{
  if (self->_wantsVibrancy != a3)
  {
    v3 = a3;
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 entryViewButtonWantsVibrancy];

    if (v6)
    {
      self->_wantsVibrancy = v3;
      if (v3)
      {
        v9 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
        v7 = [MEMORY[0x1E69DD248] _effectForBlurEffect:? vibrancyStyle:?];
        v8 = [(CKEntryViewButton *)self vibrancyView];
        [v8 setEffect:v7];
      }

      else
      {
        v9 = [(CKEntryViewButton *)self vibrancyView];
        [v9 setEffect:0];
      }
    }
  }
}

- (void)setBlurRadius:(double)a3
{
  v4 = [(CKEntryViewButton *)self blurrableButtonContainer];
  [v4 setBlurRadius:a3];
}

- (double)blurRadius
{
  v2 = [(CKEntryViewButton *)self blurrableButtonContainer];
  [v2 blurRadius];
  v4 = v3;

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKEntryViewButton *)self button];
  [v4 setEnabled:v3];
}

- (BOOL)isEnabled
{
  v2 = [(CKEntryViewButton *)self button];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setDefaultImage
{
  v3 = [(CKEntryViewButton *)self entryViewButtonType];
  ckTintColor = self->_ckTintColor;

  [(CKEntryViewButton *)self setTintedImageForButtonType:v3 tintColor:ckTintColor];
}

- (void)setTintedImageForButtonType:(int64_t)a3 tintColor:(char)a4
{
  v4 = a4;
  v12 = [CKEntryViewButton imageNameForEntryViewButtonType:?];
  [(CKEntryViewButton *)self setupCompositeFilterForButton];
  v7 = [objc_opt_class() entryViewButtonImageWithName:v12 tintColor:v4 shouldSuppressHairline:1];
  v8 = [(CKEntryViewButton *)self button];
  [v8 setImage:v7 forState:0];

  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = [(CKEntryViewButton *)self button];
  [v11 setImage:v10 forState:4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKEntryViewButton;
  [(CKEntryViewButton *)&v4 traitCollectionDidChange:a3];
  [(CKEntryViewButton *)self setupCompositeFilterForButton];
}

- (void)setupCompositeFilterForButton
{
  if ([(CKEntryViewButton *)self _buttonStyleNeedsBlendFilter])
  {
    v12 = *MEMORY[0x1E6979CE8];
    v3 = [(CKEntryViewButton *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      v5 = *MEMORY[0x1E6979CF8];

      v12 = v5;
    }

    v6 = [(CKEntryViewButton *)self button];
    v7 = [v6 layer];
    v8 = [MEMORY[0x1E6979378] filterWithType:v12];
    [v7 setCompositingFilter:v8];

    v9 = [(CKEntryViewButton *)self button];
    v10 = [v9 superview];
    v11 = [v10 layer];
    [v11 setAllowsGroupBlending:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CKEntryViewButton *)self button];
  [v3 sizeToFit];

  v4 = [(CKEntryViewButton *)self button];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4 modifiers:(int64_t)a5
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDB8] effectWithPreview:v5];
  v7 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:0];

  return v7;
}

@end