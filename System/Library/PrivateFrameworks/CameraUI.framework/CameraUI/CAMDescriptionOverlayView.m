@interface CAMDescriptionOverlayView
- (BOOL)_contentSizeCategory:(id)a3 exceedsMaximum:(id)a4;
- (BOOL)_determineIfDisplayZoomed:(id)a3;
- (BOOL)isAcknowledgmentButtonHighlighted;
- (BOOL)isDetailButtonHighlighted;
- (BOOL)isVisible;
- (CAMDescriptionOverlayView)initWithFrame:(CGRect)a3;
- (CAMDescriptionOverlayViewDelegate)delegate;
- (CGRect)textViewFrame;
- (CGRect)viewportFrame;
- (double)_additionalSpacingForContentSize:(id)a3;
- (double)additionalSpacing;
- (id)_buttonTitleTransformerForTextStyle:(id)a3;
- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)a3;
- (id)currentContentSize;
- (id)traitCollection;
- (void)_handleAcknowledgmentButtonTapped:(id)a3;
- (void)_handleDetailButtonTapped:(id)a3;
- (void)_handleTextViewFrame:(id)a3;
- (void)_layoutBlackoutMaskForFrame:(CGRect)a3 inFrame:(CGRect)a4;
- (void)_setTextViewFrame:(CGRect)a3;
- (void)_updateFontsUsingNarrowWidth:(BOOL)a3;
- (void)_updateTextUsingNarrowWidth:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAcknowledgmentButtonHighlighted:(BOOL)a3;
- (void)setBlackoutFrameVisible:(BOOL)a3;
- (void)setDetailButtonHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setViewportFrame:(CGRect)a3;
- (void)setVisible:(BOOL)a3 animationDuration:(double)a4 completion:(id)a5;
@end

@implementation CAMDescriptionOverlayView

- (CAMDescriptionOverlayView)initWithFrame:(CGRect)a3
{
  v61[1] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = CAMDescriptionOverlayView;
  v3 = [(CAMDescriptionOverlayView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
  v7 = v5;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
  v59 = CAMYellowColor();
  v58 = [v59 colorWithAlphaComponent:0.4];
  v56 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v56];
  blurEffectView = v3->__blurEffectView;
  v3->__blurEffectView = v9;

  [(CAMDescriptionOverlayView *)v3 addSubview:v3->__blurEffectView];
  v11 = [CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView alloc];
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v11 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
  primaryVibrancyEffectView = v3->__primaryVibrancyEffectView;
  v3->__primaryVibrancyEffectView = v16;

  [(CAMDescriptionOverlayView *)v3 addSubview:v3->__primaryVibrancyEffectView];
  v18 = [(CAMDescriptionOverlayView *)v3 isTitleMultiline];
  v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  titleLabel = v3->__titleLabel;
  v3->__titleLabel = v19;

  [(UILabel *)v3->__titleLabel setTextColor:v4];
  [(UILabel *)v3->__titleLabel setTextAlignment:4];
  [(UILabel *)v3->__titleLabel setNumberOfLines:!v18];
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = 4;
  }

  [(UILabel *)v3->__titleLabel setLineBreakMode:v21];
  [(UILabel *)v3->__titleLabel setAdjustsFontSizeToFitWidth:!v18];
  v22 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  descriptionTitleLabel = v3->__descriptionTitleLabel;
  v3->__descriptionTitleLabel = v22;

  [(UILabel *)v3->__descriptionTitleLabel setTextColor:v7];
  [(UILabel *)v3->__descriptionTitleLabel setTextAlignment:4];
  [(UILabel *)v3->__descriptionTitleLabel setAdjustsFontSizeToFitWidth:1];
  v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  descriptionLabel = v3->__descriptionLabel;
  v3->__descriptionLabel = v24;

  [(UILabel *)v3->__descriptionLabel setNumberOfLines:0];
  [(UILabel *)v3->__descriptionLabel setLineBreakMode:0];
  [(UILabel *)v3->__descriptionLabel setTextColor:v6];
  [(UILabel *)v3->__descriptionLabel setTextAlignment:4];
  [(UILabel *)v3->__descriptionLabel setUserInteractionEnabled:1];
  v26 = v3->__descriptionLabel;
  v27 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_handleDescriptionLabelTapped_];
  [(UILabel *)v26 addGestureRecognizer:v27];

  v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  infoTitleLabel = v3->__infoTitleLabel;
  v3->__infoTitleLabel = v28;

  [(UILabel *)v3->__infoTitleLabel setTextColor:v7];
  [(UILabel *)v3->__infoTitleLabel setTextAlignment:4];
  [(UILabel *)v3->__infoTitleLabel setAdjustsFontSizeToFitWidth:1];
  v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
  infoLabel = v3->__infoLabel;
  v3->__infoLabel = v30;

  [(UILabel *)v3->__infoLabel setNumberOfLines:0];
  [(UILabel *)v3->__infoLabel setLineBreakMode:0];
  v57 = v8;
  [(UILabel *)v3->__infoLabel setTextColor:v8];
  [(UILabel *)v3->__infoLabel setTextAlignment:4];
  v32 = [(CAMDescriptionOverlayView *)v3 buttonStyle];
  if (!v32)
  {
    v34 = MEMORY[0x1E69DDD40];
    goto LABEL_9;
  }

  v33 = 0;
  if (v32 == 1)
  {
    v34 = MEMORY[0x1E69DDCF8];
LABEL_9:
    v33 = *v34;
  }

  v35 = [MEMORY[0x1E69DC740] tintedGlassButtonConfiguration];
  [v35 setContentInsets:{4.0, 12.0, 4.0, 12.0}];
  [v35 setCornerStyle:4];
  v36 = [(CAMDescriptionOverlayView *)v3 _buttonTitleTransformerForTextStyle:v33];
  [v35 setTitleTextAttributesTransformer:v36];

  v37 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v35 primaryAction:0];
  detailButton = v3->__detailButton;
  v3->__detailButton = v37;

  [(UIButton *)v3->__detailButton setTintColor:v58];
  [(UIButton *)v3->__detailButton setTitleColor:v59 forState:0];
  [(UIButton *)v3->__detailButton setTitleColor:v58 forState:1];
  [(UIButton *)v3->__detailButton addTarget:v3 action:sel__handleDetailButtonTapped_ forControlEvents:64];
  v39 = [(CAMDescriptionOverlayView *)v3 detailText];

  v40 = [(CAMDescriptionOverlayView *)v3 buttonStyle];
  v54 = v33;
  if (v40)
  {
    if (v40 == 1)
    {
      v41 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v35 primaryAction:0];
      acknowledgmentButton = v3->__acknowledgmentButton;
      v3->__acknowledgmentButton = v41;

      [(UIButton *)v3->__acknowledgmentButton setTintColor:v59];
    }
  }

  else
  {
    if (v39)
    {
      v43 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    }

    else
    {
      v43 = [MEMORY[0x1E69DC740] tintedGlassButtonConfiguration];
      [v43 setCornerStyle:4];
      [v43 setButtonSize:3];
    }

    [v43 setContentInsets:{4.0, 4.0, 4.0, 4.0, v33}];
    v44 = [(CAMDescriptionOverlayView *)v3 _buttonTitleTransformerForTextStyle:v33];
    [v43 setTitleTextAttributesTransformer:v44];

    v45 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v43 primaryAction:0];
    v46 = v3->__acknowledgmentButton;
    v3->__acknowledgmentButton = v45;

    if (!v39)
    {
      [(UIButton *)v3->__acknowledgmentButton setTintColor:v58];
    }
  }

  [(UIButton *)v3->__acknowledgmentButton setTitleColor:v59 forState:0, v54];
  [(UIButton *)v3->__acknowledgmentButton setTitleColor:v58 forState:1];
  [(UIButton *)v3->__acknowledgmentButton addTarget:v3 action:sel__handleAcknowledgmentButtonTapped_ forControlEvents:64];
  v47 = [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v3->__primaryVibrancyEffectView contentView];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v47 addSubview:v3->__titleLabel];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v47 addSubview:v3->__descriptionTitleLabel];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v47 addSubview:v3->__infoTitleLabel];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v47 addSubview:v3->__infoLabel];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v3->__primaryVibrancyEffectView addSubview:v3->__detailButton];
  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v3->__primaryVibrancyEffectView addSubview:v3->__acknowledgmentButton];
  v48 = [(CAMDescriptionOverlayView *)v3 detailTextShouldHaveVibrancyEffect];
  v49 = v47;
  if (!v48)
  {
    v49 = v3->__primaryVibrancyEffectView;
  }

  [(CAMPortraitModeDescriptionOverlayPrimaryVibrancyEffectView *)v49 addSubview:v3->__descriptionLabel];
  v61[0] = objc_opt_class();
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v51 = [(CAMDescriptionOverlayView *)v3 registerForTraitChanges:v50 withAction:sel_setNeedsLayout];

  v52 = v3;
LABEL_23:

  return v3;
}

- (id)_buttonTitleTransformerForTextStyle:(id)a3
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:0 options:3];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CAMDescriptionOverlayView__buttonTitleTransformerForTextStyle___block_invoke;
  aBlock[3] = &unk_1E76FBBD0;
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  return v7;
}

id __65__CAMDescriptionOverlayView__buttonTitleTransformerForTextStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CAMDescriptionOverlayView;
  [(CAMDescriptionOverlayView *)&v5 didMoveToWindow];
  v3 = [(CAMDescriptionOverlayView *)self window];
  v4 = [v3 screen];
  [(CAMDescriptionOverlayView *)self _setIsDisplayZoomed:[(CAMDescriptionOverlayView *)self _determineIfDisplayZoomed:v4]];
}

- (void)_updateFontsUsingNarrowWidth:(BOOL)a3
{
  v4 = *MEMORY[0x1E69DDDB8];
  v5 = *MEMORY[0x1E69DDDC8];
  v41 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8] addingSymbolicTraits:32770 options:3];
  v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:0 options:3];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:0 options:3];
  v8 = [v6 fontDescriptorWithSymbolicTraits:2];
  v9 = [v7 fontDescriptorWithSymbolicTraits:2];
  v10 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:3];
  v11 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:v5 addingSymbolicTraits:0 options:3];
  v12 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:v5 addingSymbolicTraits:0 options:3];
  v13 = 1.0;
  v14 = 1.0;
  if (v11)
  {
    [v6 pointSize];
    v16 = v15;
    [v11 pointSize];
    v14 = v16 / v17;
  }

  v40 = v11;
  [(CAMDescriptionOverlayView *)self _setDescriptionFontSizeMultiplier:v14];
  if (v12)
  {
    [v7 pointSize];
    v19 = v18;
    [v12 pointSize];
    v13 = v19 / v20;
  }

  [(CAMDescriptionOverlayView *)self _setInfoFontSizeMultiplier:v13];
  v39 = v12;
  v21 = MEMORY[0x1E69DB878];
  [v10 pointSize];
  v22 = [v21 fontWithDescriptor:v41 size:?];
  v23 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  v25 = v38 = v10;
  v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];
  [(CAMDescriptionOverlayView *)self _titleLabel];
  v27 = v37 = v8;
  [v27 setFont:v22];

  v28 = [(CAMDescriptionOverlayView *)self _descriptionTitleLabel];
  [v28 setFont:v23];

  v29 = [(CAMDescriptionOverlayView *)self _descriptionLabel];
  [v29 setFont:v24];

  v30 = [(CAMDescriptionOverlayView *)self _infoTitleLabel];
  [v30 setFont:v25];

  v31 = [(CAMDescriptionOverlayView *)self _infoLabel];
  [v31 setFont:v26];

  v32 = [(CAMDescriptionOverlayView *)self _titleLabel];
  [v32 setAdjustsFontForContentSizeCategory:1];

  v33 = [(CAMDescriptionOverlayView *)self _descriptionTitleLabel];
  [v33 setAdjustsFontForContentSizeCategory:1];

  v34 = [(CAMDescriptionOverlayView *)self _descriptionLabel];
  [v34 setAdjustsFontForContentSizeCategory:1];

  v35 = [(CAMDescriptionOverlayView *)self _infoTitleLabel];
  [v35 setAdjustsFontForContentSizeCategory:1];

  v36 = [(CAMDescriptionOverlayView *)self _infoLabel];
  [v36 setAdjustsFontForContentSizeCategory:1];
}

- (void)_updateTextUsingNarrowWidth:(BOOL)a3
{
  v3 = a3;
  v16 = [(CAMDescriptionOverlayView *)self attributedDescriptionTextUsingNarrowWidth:?];
  v5 = [(CAMDescriptionOverlayView *)self infoTitleTextUsingNarrowWidth:v3];
  v6 = [(CAMDescriptionOverlayView *)self infoTextUsingNarrowWidth:v3];
  v7 = [(CAMDescriptionOverlayView *)self titleTextUsingNarrowWidth:v3];
  v8 = [(CAMDescriptionOverlayView *)self detailText];
  v9 = [(CAMDescriptionOverlayView *)self acknowledgmentTextUsingNarrowWidth:v3];
  v10 = [(CAMDescriptionOverlayView *)self _titleLabel];
  [v10 setText:v7];

  v11 = [(CAMDescriptionOverlayView *)self _detailButton];
  [v11 setTitle:v8 forState:0];

  v12 = [(CAMDescriptionOverlayView *)self _acknowledgmentButton];
  [v12 setTitle:v9 forState:0];

  v13 = [(CAMDescriptionOverlayView *)self _descriptionLabel];
  [v13 setAttributedText:v16];

  v14 = [(CAMDescriptionOverlayView *)self _infoTitleLabel];
  [v14 setText:v5];

  v15 = [(CAMDescriptionOverlayView *)self _infoLabel];
  [v15 setText:v6];
}

- (void)layoutSubviews
{
  v305[7] = *MEMORY[0x1E69E9840];
  v303.receiver = self;
  v303.super_class = CAMDescriptionOverlayView;
  [(CAMDescriptionOverlayView *)&v303 layoutSubviews];
  [(CAMDescriptionOverlayView *)self bounds];
  v253 = v4;
  v254 = v3;
  v251 = v6;
  v252 = v5;
  [(CAMDescriptionOverlayView *)self viewportFrame];
  v8 = v7;
  v10 = v9;
  v220 = v12;
  v221 = v11;
  UIRectGetCenter();
  v249 = v14;
  v250 = v13;
  [(CAMDescriptionOverlayView *)self _updateFontsUsingNarrowWidth:v8 < 414.0];
  [(CAMDescriptionOverlayView *)self _updateTextUsingNarrowWidth:v8 < 414.0];
  v275 = [(CAMDescriptionOverlayView *)self _blurEffectView];
  v274 = [(CAMDescriptionOverlayView *)self _primaryVibrancyEffectView];
  v15 = [(CAMDescriptionOverlayView *)self _titleLabel];
  v16 = [(CAMDescriptionOverlayView *)self _descriptionTitleLabel];
  v17 = [(CAMDescriptionOverlayView *)self _descriptionLabel];
  v18 = [(CAMDescriptionOverlayView *)self _infoTitleLabel];
  v19 = [(CAMDescriptionOverlayView *)self _infoLabel];
  v20 = [(CAMDescriptionOverlayView *)self _detailButton];
  v21 = [(CAMDescriptionOverlayView *)self _acknowledgmentButton];
  v273 = v15;
  v22 = [v15 font];
  v272 = v16;
  v23 = [v16 font];
  v289 = v17;
  v24 = [v17 font];
  v292 = v18;
  v25 = [v18 font];
  v288 = v19;
  v26 = [v19 font];
  v294 = v20;
  v27 = [v20 titleLabel];
  v28 = [v27 font];

  v293 = v21;
  v29 = [v21 titleLabel];
  v30 = [v29 font];

  [v22 descender];
  UIFloorToViewScale();
  v32 = v31;
  [v23 descender];
  UIFloorToViewScale();
  v231 = v33;
  [v24 descender];
  UIFloorToViewScale();
  v276 = v34;
  [v25 descender];
  UIFloorToViewScale();
  v226 = v35;
  [v26 descender];
  UIFloorToViewScale();
  rect = v36;
  [v28 descender];
  UIFloorToViewScale();
  v217 = v37;
  [v30 descender];
  UIFloorToViewScale();
  v246 = v38;
  v261 = v22;
  [v22 lineHeight];
  UICeilToViewScale();
  v40 = v39;
  v260 = v23;
  [v23 lineHeight];
  UICeilToViewScale();
  v224 = v41;
  v259 = v24;
  [v24 lineHeight];
  UICeilToViewScale();
  v237 = v42;
  v258 = v25;
  [v25 lineHeight];
  UICeilToViewScale();
  v225 = v43;
  v257 = v26;
  [v26 lineHeight];
  UICeilToViewScale();
  v239 = v44;
  v256 = v28;
  [v28 lineHeight];
  UICeilToViewScale();
  v216 = v45;
  v255 = v30;
  [v30 lineHeight];
  UICeilToViewScale();
  v245 = v46;
  v47 = [(CAMDescriptionOverlayView *)self orientation];
  v301 = 0u;
  v302 = 0u;
  v48 = v47 - 3;
  v300 = 0u;
  CAMOrientationTransform(v47, &v300);
  if (v48 >= 2)
  {
    v49 = v10;
  }

  else
  {
    v49 = v8;
  }

  v218 = v10;
  if (v48 >= 2)
  {
    v10 = v8;
  }

  v50 = v10;
  if (v10 > v49)
  {
    v50 = v49 * 4.0 / 3.0;
    if (v10 < v50)
    {
      v50 = v10;
    }
  }

  v51 = MEMORY[0x1E695F058];
  v262 = v40;
  v233 = v32 + v40;
  v219 = v8;
  v52 = 50.0;
  if (v8 < 414.0)
  {
    v52 = 30.0;
  }

  v53 = v50 + v52 * -2.0;
  v54 = v10 + -20.0;
  if (v53 > 0.0 && v53 <= v54)
  {
    v56 = v53;
  }

  else
  {
    v56 = v10 + -20.0;
  }

  if (v53 <= v54)
  {
    v57 = v53;
  }

  else
  {
    v57 = v10 + -20.0;
  }

  v58 = [(CAMDescriptionOverlayView *)self isTitleMultiline];
  v59 = *MEMORY[0x1E695EFF8];
  v60 = *(MEMORY[0x1E695EFF8] + 8);
  [v273 textRectForBounds:!v58 limitedToNumberOfLines:{*MEMORY[0x1E695EFF8], v60, v56, v49}];
  [v289 textRectForBounds:0 limitedToNumberOfLines:{v59, v60, v57, v49}];
  v241 = v60;
  v243 = v59;
  v281 = v49;
  [v288 textRectForBounds:0 limitedToNumberOfLines:{v59, v60, v57, v49}];
  [v272 intrinsicContentSize];
  [v18 intrinsicContentSize];
  v286 = v10;
  [v294 intrinsicContentSize];
  [v293 intrinsicContentSize];
  UICeilToViewScale();
  rect_8 = v61;
  UICeilToViewScale();
  rect_16 = v62;
  UICeilToViewScale();
  v222 = v63;
  UICeilToViewScale();
  rect_24 = v64;
  UICeilToViewScale();
  v227 = v65;
  UICeilToViewScale();
  v269 = v66;
  UICeilToViewScale();
  v223 = v67;
  UICeilToViewScale();
  v270 = v68;
  UICeilToViewScale();
  v229 = v69;
  UICeilToViewScale();
  v271 = v70;
  UICeilToViewScale();
  v283 = v71;
  UICeilToViewScale();
  v73 = v72;
  UICeilToViewScale();
  v290 = v74;
  UICeilToViewScale();
  v76 = v75;
  v77 = [(CAMDescriptionOverlayView *)self detailText];

  if ([(CAMDescriptionOverlayView *)self buttonStyle])
  {
    v236 = v73;
    v279 = v76;
  }

  else
  {
    v236 = 45.0;
    if (!v77)
    {
      v76 = 45.0;
    }

    v279 = v76;
    v78 = v290;
    if (!v77)
    {
      v78 = v53;
    }

    v290 = v78;
    v283 = v53;
  }

  v79 = v276;
  v80 = v276 + v237;
  v81 = v51[1];
  [(CAMDescriptionOverlayView *)self additionalSpacing];
  v83 = v82;
  UIFloorToViewScale();
  v306.size.width = rect_8;
  v306.origin.y = v84 - v233;
  v235 = (v10 - rect_8) * 0.5;
  v306.origin.x = v235;
  y = v306.origin.y;
  v306.size.height = rect_16;
  v85 = v83 + CGRectGetMaxY(v306) - (v262 - v233) + 30.0;
  v86 = v51[3];
  v87 = [v272 text];
  v277 = v81;
  if (v87)
  {

LABEL_30:
    v90 = v286;
    v307.size.width = v222;
    v307.origin.x = (v286 - v222) * 0.5;
    v307.origin.y = v85 - (v231 + v224);
    v234 = v307.origin.y;
    v307.size.height = rect_24;
    v85 = v83 + v224 + v231 + CGRectGetMaxY(v307) + 2.0;
    v91 = v18;
    goto LABEL_31;
  }

  v88 = [v272 text];
  v89 = [v88 isEqualToString:&stru_1F1660A30];

  if (v89)
  {
    goto LABEL_30;
  }

  rect_24 = v86;
  v234 = v81;
  v91 = v18;
  v90 = v286;
LABEL_31:
  v308.size.width = v227;
  v308.origin.x = (v90 - v227) * 0.5;
  v308.origin.y = v85 - v80;
  v232 = v85 - v80;
  v308.size.height = v269;
  v92 = v79 + CGRectGetMaxY(v308);
  v93 = [v272 text];
  v248 = v53;
  if ([v93 length])
  {
  }

  else
  {
    v94 = [v289 text];
    v95 = [v94 length];

    v91 = v18;
    if (!v95)
    {
      goto LABEL_35;
    }
  }

  v85 = v83 + v92 + 25.0;
LABEL_35:
  v96 = rect + v239;
  v97 = [v91 text];
  v263 = v86;
  if (v97)
  {

LABEL_38:
    v100 = v286;
    v309.size.width = v223;
    v309.origin.x = (v286 - v223) * 0.5;
    v309.origin.y = v85 - (v226 + v225);
    v240 = v309.origin.y;
    v309.size.height = v270;
    v85 = v83 + v225 + v226 + CGRectGetMaxY(v309) + 2.0;
    goto LABEL_39;
  }

  v98 = [v91 text];
  v99 = [v98 isEqualToString:&stru_1F1660A30];

  if (v99)
  {
    goto LABEL_38;
  }

  v270 = v86;
  v240 = v277;
  v100 = v286;
LABEL_39:
  v310.size.width = v229;
  v310.origin.x = (v100 - v229) * 0.5;
  v310.origin.y = v85 - v96;
  v228 = v85 - v96;
  v310.size.height = v271;
  MaxY = CGRectGetMaxY(v310);
  v102 = v18;
  v103 = [v18 text];
  if ([v103 length])
  {

    v104 = v283;
  }

  else
  {
    v105 = [v288 text];
    v106 = [v105 length];

    v102 = v18;
    v104 = v283;
    if (!v106)
    {
      goto LABEL_43;
    }
  }

  v92 = rect + MaxY;
LABEL_43:
  v230 = v246 + v245;
  v107 = *v51;
  v108 = v83 + v92 + 50.0;
  v109 = v83;
  [v294 contentRectForBounds:{v243, v241, v104, v236}];
  [v294 titleRectForContentRect:?];
  v111 = v110;
  [v293 contentRectForBounds:{v243, v241, v290, v279}];
  [v293 titleRectForContentRect:?];
  v113 = v112;
  if (v77)
  {
    v114 = v286;
    v311.origin.x = (v286 - v104) * 0.5;
    v311.origin.y = v108 - v111 - (v217 + v216);
    x = v311.origin.x;
    v242 = v311.origin.y;
    v284 = v104;
    v311.size.width = v104;
    v311.size.height = v236;
    v115 = CGRectGetMaxY(v311);
    v116 = v277;
    v108 = v109 + v217 + v115 + 37.0;
    v263 = v236;
  }

  else
  {
    v284 = v51[2];
    x = v107;
    v116 = v277;
    v242 = v277;
    v114 = v286;
  }

  v117 = v116;
  [v294 setHidden:v77 == 0];
  v118 = v108 - v113 - v230;
  v312.origin.x = v235;
  v312.origin.y = y;
  v312.size.width = rect_8;
  v312.size.height = rect_16;
  CGRectGetMinY(v312);
  v313.origin.x = (v114 - v290) * 0.5;
  v313.origin.y = v118;
  v313.size.width = v290;
  v313.size.height = v279;
  CGRectGetMaxY(v313);
  [v293 contentEdgeInsets];
  v314.origin.x = v107;
  v314.origin.y = v117;
  v314.size.width = v114;
  v314.size.height = v281;
  CGRectGetHeight(v314);
  UIRoundToViewScale();
  v120 = v234 + v119;
  v121 = v232 + v119;
  v122 = v240 + v119;
  v244 = v228 + v119;
  rect_8a = v242 + v119;
  v123 = v118 + v119;
  v124 = (v114 - v248) * 0.5;
  [v273 frameForAlignmentRect:{v124, y + v119, v248, rect_16}];
  [v273 setFrame:?];
  [v272 frameForAlignmentRect:{v124, v120, v248, rect_24}];
  [v272 setFrame:?];
  [v289 frameForAlignmentRect:{v124, v121, v248, v269}];
  [v289 setFrame:?];
  [v102 frameForAlignmentRect:{v124, v122, v248, v270}];
  [v102 setFrame:?];
  [v288 frameForAlignmentRect:{v124, v244, v248, v271}];
  [v288 setFrame:?];
  [v294 frameForAlignmentRect:{x, rect_8a, v284, v263}];
  [v294 setFrame:?];
  [v293 frameForAlignmentRect:{(v114 - v290) * 0.5, v123, v290, v279}];
  [v293 setFrame:?];
  [v275 setFrame:{v254, v253, v252, v251}];
  v299[0] = v300;
  v299[1] = v301;
  v299[2] = v302;
  [v274 setTransform:v299];
  [v274 setCenter:{v250, v249}];
  [v274 setBounds:{v107, v277, v114, v281}];
  v125 = [(CAMDescriptionOverlayView *)self _blackoutView];
  [v125 setFrame:{v254, v253, v252, v251}];

  v126 = [(CAMDescriptionOverlayView *)self _blackoutMask];

  if (v126)
  {
    [(CAMDescriptionOverlayView *)self _layoutBlackoutMaskForFrame:v221 inFrame:v220, v219, v218, v254, v253, v252, v251];
  }

  v127 = MEMORY[0x1E696B098];
  [v273 bounds];
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v291 = [v273 window];
  [v273 convertRect:v291 toView:{v129, v131, v133, v135}];
  v287 = [v127 valueWithCGRect:?];
  v305[0] = v287;
  v136 = MEMORY[0x1E696B098];
  [v272 bounds];
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v285 = [v272 window];
  [v272 convertRect:v285 toView:{v138, v140, v142, v144}];
  v282 = [v136 valueWithCGRect:?];
  v305[1] = v282;
  v145 = MEMORY[0x1E696B098];
  [v289 bounds];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v280 = [v289 window];
  [v289 convertRect:v280 toView:{v147, v149, v151, v153}];
  v278 = [v145 valueWithCGRect:?];
  v305[2] = v278;
  v154 = MEMORY[0x1E696B098];
  [v102 bounds];
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = [v102 window];
  [v102 convertRect:v163 toView:{v156, v158, v160, v162}];
  v164 = [v154 valueWithCGRect:?];
  v305[3] = v164;
  v165 = MEMORY[0x1E696B098];
  [v288 bounds];
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;
  v174 = [v288 window];
  [v288 convertRect:v174 toView:{v167, v169, v171, v173}];
  v175 = [v165 valueWithCGRect:?];
  v305[4] = v175;
  v176 = MEMORY[0x1E696B098];
  [v294 bounds];
  v178 = v177;
  v180 = v179;
  v182 = v181;
  v184 = v183;
  v185 = [v294 window];
  [v294 convertRect:v185 toView:{v178, v180, v182, v184}];
  v186 = [v176 valueWithCGRect:?];
  v305[5] = v186;
  v187 = MEMORY[0x1E696B098];
  [v293 bounds];
  v189 = v188;
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v196 = [v293 window];
  [v293 convertRect:v196 toView:{v189, v191, v193, v195}];
  v197 = [v187 valueWithCGRect:?];
  v305[6] = v197;
  v198 = [MEMORY[0x1E695DEC8] arrayWithObjects:v305 count:7];

  v199 = *MEMORY[0x1E695F050];
  v200 = *(MEMORY[0x1E695F050] + 8);
  v201 = *(MEMORY[0x1E695F050] + 16);
  v202 = *(MEMORY[0x1E695F050] + 24);
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v203 = v198;
  v204 = [v203 countByEnumeratingWithState:&v295 objects:v304 count:16];
  if (v204)
  {
    v205 = v204;
    v206 = *v296;
    v208 = v274;
    v207 = v275;
    v210 = v272;
    v209 = v273;
    do
    {
      for (i = 0; i != v205; ++i)
      {
        if (*v296 != v206)
        {
          objc_enumerationMutation(v203);
        }

        [*(*(&v295 + 1) + 8 * i) CGRectValue];
        v212 = v315.origin.x;
        v213 = v315.origin.y;
        width = v315.size.width;
        height = v315.size.height;
        if (!CGRectIsEmpty(v315) && v213 >= 0.0)
        {
          v316.origin.x = v199;
          v316.origin.y = v200;
          v316.size.width = v201;
          v316.size.height = v202;
          if (CGRectIsNull(v316))
          {
            v199 = v212;
            v200 = v213;
            v201 = width;
            v202 = height;
          }

          else
          {
            v317.origin.x = v199;
            v317.origin.y = v200;
            v317.size.width = v201;
            v317.size.height = v202;
            v319.origin.x = v212;
            v319.origin.y = v213;
            v319.size.width = width;
            v319.size.height = height;
            v318 = CGRectUnion(v317, v319);
            v199 = v318.origin.x;
            v200 = v318.origin.y;
            v201 = v318.size.width;
            v202 = v318.size.height;
          }
        }
      }

      v205 = [v203 countByEnumeratingWithState:&v295 objects:v304 count:16];
    }

    while (v205);
  }

  else
  {
    v208 = v274;
    v207 = v275;
    v210 = v272;
    v209 = v273;
  }

  [(CAMDescriptionOverlayView *)self _setTextViewFrame:v199, v200, v201, v202];
}

- (void)_handleTextViewFrame:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(CAMDescriptionOverlayView *)self textViewFrame];
  [WeakRetained descriptionOverlayViewSetTextViewFrame:self textViewFrame:?];
}

- (void)_setTextViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CAMDescriptionOverlayView *)self textViewFrame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    [(CAMDescriptionOverlayView *)self setTextViewFrame:x, y, width, height];

    [(CAMDescriptionOverlayView *)self _handleTextViewFrame:self];
  }
}

- (BOOL)isDetailButtonHighlighted
{
  v2 = [(CAMDescriptionOverlayView *)self _detailButton];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setDetailButtonHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMDescriptionOverlayView *)self _detailButton];
  [v4 setHighlighted:v3];
}

- (void)_handleDetailButtonTapped:(id)a3
{
  [(CAMDescriptionOverlayView *)self detailButtonTapped];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained descriptionOverlayViewDidSelectDetail:self];
}

- (BOOL)isAcknowledgmentButtonHighlighted
{
  v2 = [(CAMDescriptionOverlayView *)self _acknowledgmentButton];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setAcknowledgmentButtonHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMDescriptionOverlayView *)self _acknowledgmentButton];
  [v4 setHighlighted:v3];
}

- (void)_handleAcknowledgmentButtonTapped:(id)a3
{
  [(CAMDescriptionOverlayView *)self acknowledgementButtonTapped];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained descriptionOverlayViewDidAcknowledge:self];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    if (a4)
    {
      [(CAMDescriptionOverlayView *)self layoutIfNeeded];
      self->_orientation = a3;
      [(CAMDescriptionOverlayView *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __53__CAMDescriptionOverlayView_setOrientation_animated___block_invoke;
      v6[3] = &unk_1E76F77B0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      self->_orientation = a3;

      [(CAMDescriptionOverlayView *)self setNeedsLayout];
    }
  }
}

- (void)setViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(a3, self->_viewportFrame))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;

    [(CAMDescriptionOverlayView *)self setNeedsLayout];
  }
}

- (void)_layoutBlackoutMaskForFrame:(CGRect)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGPathAddRect(Mutable, 0, v16);
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  CGPathAddRect(Mutable, 0, v17);
  v14 = [(CAMDescriptionOverlayView *)self _blackoutMask];
  [v14 setPath:Mutable];

  CGPathRelease(Mutable);
}

- (BOOL)isVisible
{
  v2 = [(CAMDescriptionOverlayView *)self _titleLabel];
  [v2 alpha];
  v4 = v3;

  return v4 == 1.0;
}

- (void)setVisible:(BOOL)a3 animationDuration:(double)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  if ([(CAMDescriptionOverlayView *)self isVisible]!= v6)
  {
    v9 = [(CAMDescriptionOverlayView *)self delegate];
    [v9 descriptionOverlayView:self willBecomeVisible:v6];
  }

  if (v6)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  if (v6)
  {
    v11 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CAMDescriptionOverlayView_setVisible_animationDuration_completion___block_invoke;
  aBlock[3] = &unk_1E76F97C8;
  aBlock[4] = self;
  v12 = v11;
  v19 = v12;
  v20 = v10;
  v21 = v6;
  v22 = v6;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (a4 <= 0.0)
  {
    (*(v13 + 2))(v13);
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v15 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__CAMDescriptionOverlayView_setVisible_animationDuration_completion___block_invoke_2;
    v16[3] = &unk_1E76F97A0;
    v17 = v8;
    [v15 animateWithDuration:6 delay:v14 options:v16 animations:a4 completion:0.0];
  }
}

uint64_t __69__CAMDescriptionOverlayView_setVisible_animationDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _blurEffectView];
  [v3 setEffect:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _titleLabel];
  [v5 setAlpha:v4];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) _descriptionTitleLabel];
  [v7 setAlpha:v6];

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) _descriptionLabel];
  [v9 setAlpha:v8];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 32) _infoTitleLabel];
  [v11 setAlpha:v10];

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) _infoLabel];
  [v13 setAlpha:v12];

  v14 = *(a1 + 48);
  v15 = [*(a1 + 32) _detailButton];
  [v15 setAlpha:v14];

  v16 = *(a1 + 48);
  v17 = [*(a1 + 32) _acknowledgmentButton];
  [v17 setAlpha:v16];

  v18 = *(a1 + 48);
  v19 = [*(a1 + 32) _blackoutView];
  [v19 setAlpha:v18];

  [*(a1 + 32) setCustomSubviewsVisible:*(a1 + 56)];
  v20 = *(a1 + 57);
  v21 = *(a1 + 32);

  return [v21 setUserInteractionEnabled:v20];
}

uint64_t __69__CAMDescriptionOverlayView_setVisible_animationDuration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setBlackoutFrameVisible:(BOOL)a3
{
  if (self->_blackoutFrameVisible != a3)
  {
    self->_blackoutFrameVisible = a3;
    if (a3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
      blackoutMask = self->__blackoutMask;
      self->__blackoutMask = v4;

      [(CAShapeLayer *)self->__blackoutMask setFillRule:*MEMORY[0x1E69797F8]];
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      blackoutView = self->__blackoutView;
      self->__blackoutView = v7;

      v9 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)self->__blackoutView setBackgroundColor:v9];

      [(UIView *)self->__blackoutView setUserInteractionEnabled:0];
      v10 = self->__blackoutMask;
      v11 = [(UIView *)self->__blackoutView layer];
      [v11 setMask:v10];

      v12 = self->__blackoutView;

      [(CAMDescriptionOverlayView *)self addSubview:v12];
    }

    else
    {
      v13 = self->__blackoutView;
      if (v13)
      {
        [(UIView *)v13 removeFromSuperview];
        v14 = self->__blackoutView;
        self->__blackoutView = 0;

        v15 = self->__blackoutMask;
        self->__blackoutMask = 0;
      }
    }
  }
}

- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)a3
{
  v3 = [(CAMDescriptionOverlayView *)self descriptionTextUsingNarrowWidth:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentContentSize
{
  v2 = [(CAMDescriptionOverlayView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  return v3;
}

- (double)additionalSpacing
{
  v3 = [(CAMDescriptionOverlayView *)self currentContentSize];
  [(CAMDescriptionOverlayView *)self _additionalSpacingForContentSize:v3];
  v5 = v4;

  return v5;
}

- (double)_additionalSpacingForContentSize:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (([v3 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0)
  {
    v5 = *MEMORY[0x1E69DDC70];
    if (([v3 isEqualToString:*MEMORY[0x1E69DDC70]] & 1) == 0)
    {
      v4 = 5.0;
      if (([v3 isEqualToString:v5] & 1) == 0)
      {
        if (([v3 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) != 0 || (v4 = 0.0, objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC20])))
        {
          v4 = 10.0;
        }
      }
    }
  }

  return v4;
}

- (id)traitCollection
{
  v14.receiver = self;
  v14.super_class = CAMDescriptionOverlayView;
  v3 = [(CAMDescriptionOverlayView *)&v14 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = [(CAMDescriptionOverlayView *)self _isDisplayZoomed];
  v6 = MEMORY[0x1E69DDC70];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DDC60];
  }

  v7 = *v6;
  v8 = v3;
  v9 = [(CAMDescriptionOverlayView *)self _contentSizeCategory:v4 exceedsMaximum:v7];
  v10 = v8;
  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CAMDescriptionOverlayView_traitCollection__block_invoke;
    v12[3] = &unk_1E76FEE90;
    v13 = v7;
    v10 = [v8 traitCollectionByModifyingTraits:v12];
  }

  return v10;
}

- (BOOL)_contentSizeCategory:(id)a3 exceedsMaximum:(id)a4
{
  v21[12] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DDC88];
  v21[0] = *MEMORY[0x1E69DDC68];
  v21[1] = v5;
  v6 = *MEMORY[0x1E69DDC70];
  v21[2] = *MEMORY[0x1E69DDC78];
  v21[3] = v6;
  v7 = *MEMORY[0x1E69DDC58];
  v21[4] = *MEMORY[0x1E69DDC60];
  v21[5] = v7;
  v8 = *MEMORY[0x1E69DDC40];
  v21[6] = *MEMORY[0x1E69DDC50];
  v21[7] = v8;
  v9 = *MEMORY[0x1E69DDC30];
  v21[8] = *MEMORY[0x1E69DDC38];
  v21[9] = v9;
  v10 = *MEMORY[0x1E69DDC20];
  v21[10] = *MEMORY[0x1E69DDC28];
  v21[11] = v10;
  v11 = MEMORY[0x1E695DEC8];
  v12 = a4;
  v13 = a3;
  v14 = [v11 arrayWithObjects:v21 count:12];
  v15 = [v14 indexOfObject:v13];

  v16 = [v14 indexOfObject:v12];
  v19 = v15 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0x7FFFFFFFFFFFFFFFLL && v15 > v16;

  return v19;
}

- (BOOL)_determineIfDisplayZoomed:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  [v3 bounds];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [v3 scale];
  v8 = v7 * v5;
  [v3 nativeBounds];
  v10 = v9;

  return v8 / v10 < 1.0;
}

- (CAMDescriptionOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)viewportFrame
{
  x = self->_viewportFrame.origin.x;
  y = self->_viewportFrame.origin.y;
  width = self->_viewportFrame.size.width;
  height = self->_viewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textViewFrame
{
  x = self->_textViewFrame.origin.x;
  y = self->_textViewFrame.origin.y;
  width = self->_textViewFrame.size.width;
  height = self->_textViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end