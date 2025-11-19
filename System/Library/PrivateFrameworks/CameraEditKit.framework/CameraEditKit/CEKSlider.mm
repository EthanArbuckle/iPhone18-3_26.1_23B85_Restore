@interface CEKSlider
+ (id)_decimalFormatter;
+ (id)_integerFormatter;
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)_isScrollExternallyAnimating;
- (BOOL)_markedValueWithinRange;
- (BOOL)logarithmic;
- (BOOL)useTickMarkLegibilityShadows;
- (CEKContactObserver)contactObserver;
- (CEKFluidBehaviorSettings)_externalScrollSettings;
- (CEKSlider)initWithTitle:(id)a3 tickMarkStyle:(unint64_t)a4;
- (CEKSliderDelegate)delegate;
- (CEKSliderPositionDriver)_sliderDriver;
- (CEKTickMarksConfiguration)tickMarksConfiguration;
- (CGRect)frameForLevelIndicator;
- (CGRect)frameForTicksView;
- (CGRect)frameForTitleLabel;
- (CGRect)frameForValueLabel;
- (CGSize)tickMarkSize;
- (NSString)title;
- (double)_valueForScrollViewXOffset:(double)a3;
- (double)_xOffsetForMarkedValue;
- (double)xOffsetForValue:(double)a3;
- (id)_attributedStringFromValue:(double)a3 usingFormatter:(id)a4;
- (id)formattedIntegerStringFromNumber:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)selectionFeedbackProfile;
- (int64_t)tickMarkCount;
- (int64_t)titleAlignment;
- (void)_applyExternalTarget:(double)a3 mode:(int64_t)a4 completion:(id)a5;
- (void)_clampValuesAndUpdateScrollPosition:(BOOL)a3;
- (void)_createExternalScrollAnimatorIfNeeded;
- (void)_createGradientIfNeeded;
- (void)_handleExternalScrollAnimated;
- (void)_resetSnapped;
- (void)_setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)_setDimmed:(BOOL)a3 animated:(BOOL)a4;
- (void)_setOverscrolling:(BOOL)a3;
- (void)_setShowValueLabel:(BOOL)a3 animated:(BOOL)a4;
- (void)_setValue:(double)a3 shouldSendActions:(BOOL)a4 shouldUpdateScrollPosition:(BOOL)a5;
- (void)_sliderDidEndScrolling;
- (void)_updateColorsAnimated:(BOOL)a3;
- (void)_updateEnableAppearanceStateAnimated:(BOOL)a3;
- (void)_updateFonts;
- (void)_updateLegibilityBackground;
- (void)_updateMagneticTickIndexes;
- (void)_updateMarkedViewAnimated:(BOOL)a3;
- (void)_updateScrollViewPosition;
- (void)_updateValueLabel;
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)removeGradients;
- (void)resetToDefault;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDefaultValue:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3 dimmed:(BOOL)a4 animated:(BOOL)a5;
- (void)setFontStyle:(unint64_t)a3;
- (void)setGradientInsets:(id)a3;
- (void)setLabelVerticalPadding:(double)a3;
- (void)setLevelIndicatorHeight:(double)a3;
- (void)setLogarithmic:(BOOL)a3;
- (void)setMagneticRange:(id)a3;
- (void)setMarkedValue:(double)a3 animated:(BOOL)a4;
- (void)setMaximumValue:(double)a3;
- (void)setMinimumValue:(double)a3;
- (void)setOpaqueGradientsWithColor:(id)a3;
- (void)setSelectionFeedbackProfile:(int64_t)a3;
- (void)setSliderVerticalAlignment:(int64_t)a3;
- (void)setSliderVerticalOffset:(double)a3;
- (void)setTextOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setTickMarkCount:(int64_t)a3;
- (void)setTickMarkSize:(CGSize)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAlignment:(int64_t)a3;
- (void)setTitleAlpha:(double)a3;
- (void)setTransparentGradients;
- (void)setUseTickMarkLegibilityShadows:(BOOL)a3;
- (void)setValueLabelFormat:(int64_t)a3;
- (void)setValueLabelMultiplier:(double)a3;
- (void)setValueLabelVisibility:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation CEKSlider

- (CEKSlider)initWithTitle:(id)a3 tickMarkStyle:(unint64_t)a4
{
  v6 = a3;
  v38.receiver = self;
  v38.super_class = CEKSlider;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(CEKSlider *)&v38 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  v12 = v11;
  if (v11)
  {
    v11->_textOrientation = 0;
    v11->_fontStyle = 0;
    v11->_titleAlpha = 0.6;
    v11->_animationDuration = 0.25;
    v13 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKSlider *)v12 setTintColor:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    contentScrollView = v12->__contentScrollView;
    v12->__contentScrollView = v14;

    [(UIScrollView *)v12->__contentScrollView setDelegate:v12];
    [(UIScrollView *)v12->__contentScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v12->__contentScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v12->__contentScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(UIScrollView *)v12->__contentScrollView _setSupportsPointerDragScrolling:1];
    v16 = [(UIScrollView *)v12->__contentScrollView panGestureRecognizer];
    [v16 _wantsGESEvents:1];

    [(CEKSlider *)v12 addSubview:v12->__contentScrollView];
    v12->__ticksStyle = a4;
    if (a4)
    {
      if (a4 == 1)
      {
        v17 = objc_alloc_init(CEKDynamicTickMarksView);
        dynamicTickMarksView = v12->__dynamicTickMarksView;
        v12->__dynamicTickMarksView = v17;

        objc_storeStrong(&v12->__tickMarksView, v12->__dynamicTickMarksView);
      }
    }

    else
    {
      v19 = objc_alloc_init(CEKSliderTickMarksView);
      tickMarksView = v12->__tickMarksView;
      v12->__tickMarksView = v19;
    }

    [(CEKTickMarksContainer *)v12->__tickMarksView setDelegate:v12];
    v21 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [v21 setTickMarkSpacing:9.0];

    v22 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [v22 setTickMarkWidth:1.0];

    v23 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [v23 setMainTickMarkInterval:10];

    [(UIScrollView *)v12->__contentScrollView addSubview:v12->__tickMarksView];
    v12->_tickMarkSize = xmmword_1B7EDA700;
    v24 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [v24 setTickMarksCount:41];

    v12->_sliderVerticalAlignment = 0;
    v12->_labelVerticalPadding = 10.0;
    v12->_valueLabelVisibility = 0;
    v12->_valueLabelFormat = 0;
    v12->_valueLabelMultiplier = 100.0;
    v12->_levelIndicatorHeight = 26.0;
    if (!v12->__dynamicTickMarksView)
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
      levelIndicatorView = v12->__levelIndicatorView;
      v12->__levelIndicatorView = v25;

      v27 = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v12->__levelIndicatorView setBackgroundColor:v27];

      v28 = [(UIView *)v12->__levelIndicatorView layer];
      [v28 setAnchorPoint:{0.5, 0.0}];

      [(CEKSlider *)v12 addSubview:v12->__levelIndicatorView];
    }

    v12->_minimumValue = -1.0;
    v12->_maximumValue = 1.0;
    v12->_markedValue = 1.79769313e308;
    if ([v6 length])
    {
      v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
      v30 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v29 setBackgroundColor:v30];

      [(UILabel *)v29 setTextAlignment:4];
      [(UILabel *)v29 setLineBreakMode:0];
      [(UILabel *)v29 setNumberOfLines:0];
      [(UILabel *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      v31 = [MEMORY[0x1E69DC888] labelColor];
      [(CEKSlider *)v12 titleAlpha];
      v32 = [v31 colorWithAlphaComponent:?];
      [(UILabel *)v29 setTextColor:v32];

      [(UILabel *)v29 setText:v6];
      titleLabel = v12->__titleLabel;
      v12->__titleLabel = v29;
      v34 = v29;

      [(CEKSlider *)v12 addSubview:v12->__titleLabel];
      [(CEKSlider *)v12 _updateFonts];
    }

    if (CEKHapticsAllowed())
    {
      v35 = objc_alloc_init(CEKSelectionFeedbackGenerator);
      feedbackGenerator = v12->__feedbackGenerator;
      v12->__feedbackGenerator = v35;
    }

    v12->_feedbackScope = 2;
  }

  return v12;
}

+ (id)_integerFormatter
{
  if (_integerFormatter_onceToken != -1)
  {
    +[CEKSlider _integerFormatter];
  }

  v3 = _integerFormatter_integerFormatter;

  return v3;
}

void __30__CEKSlider__integerFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _integerFormatter_integerFormatter;
  _integerFormatter_integerFormatter = v0;

  [_integerFormatter_integerFormatter setPositiveFormat:@"0"];
  [_integerFormatter_integerFormatter setNegativeFormat:@"0"];
  [_integerFormatter_integerFormatter setPositivePrefix:0];
  v2 = [_integerFormatter_integerFormatter minusSign];
  [_integerFormatter_integerFormatter setNegativePrefix:v2];
}

+ (id)_decimalFormatter
{
  if (_decimalFormatter_onceToken != -1)
  {
    +[CEKSlider _decimalFormatter];
  }

  v3 = _decimalFormatter_decimalFormatter;

  return v3;
}

void __30__CEKSlider__decimalFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _decimalFormatter_decimalFormatter;
  _decimalFormatter_decimalFormatter = v0;

  [_decimalFormatter_decimalFormatter setPositiveFormat:@"0.00"];
  [_decimalFormatter_decimalFormatter setNegativeFormat:@"0.00"];
  v2 = [_decimalFormatter_decimalFormatter stringFromNumber:&unk_1F2FDFE38];
  [_decimalFormatter_decimalFormatter setZeroSymbol:v2];

  v3 = [_decimalFormatter_decimalFormatter minusSign];
  [_decimalFormatter_decimalFormatter setNegativePrefix:v3];
}

- (id)formattedIntegerStringFromNumber:(id)a3
{
  [a3 doubleValue];
  v5 = v4;
  v6 = [objc_opt_class() _integerFormatter];
  v7 = [(CEKSlider *)self _attributedStringFromValue:v6 usingFormatter:v5];

  return v7;
}

- (id)_attributedStringFromValue:(double)a3 usingFormatter:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v8 = [v6 stringFromNumber:v7];

  v9 = [v6 stringFromNumber:&unk_1F2FE0320];
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 stringFromNumber:&unk_1F2FDFAF8];

    v8 = v10;
  }

  v11 = CEKFrameworkBundle();
  v12 = [v11 preferredLocalizations];
  v13 = [v12 firstObject];

  v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
  v15 = [(CEKSlider *)self _valueLabel];
  v16 = [v15 font];
  [v16 pointSize];
  v18 = v17;

  if (CEKIsCustomKerningSupportedForLocale(v14))
  {
    v23 = *MEMORY[0x1E69DB660];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18 * 100.0 / 1000.0];
    v24[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v20];

  return v21;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToWillBeginScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidScroll = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillEndScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidEndScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillUpdateValue = objc_opt_respondsToSelector() & 1;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v18.receiver = self;
  v18.super_class = CEKSlider;
  v7 = [(CEKSlider *)&v18 hitTest:a4 withEvent:?];
  [(CEKSlider *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(CEKSlider *)self interactiveWhenHidden])
  {
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    v20.x = x;
    v20.y = y;
    if (CGRectContainsPoint(v21, v20))
    {
      v16 = [(CEKSlider *)self _contentScrollView];

      v7 = v16;
    }
  }

  return v7;
}

- (void)layoutSubviews
{
  v105.receiver = self;
  v105.super_class = CEKSlider;
  [(CEKSlider *)&v105 layoutSubviews];
  [(CEKSlider *)self tickMarkSize];
  v4 = v3;
  v6 = v5;
  v7 = [(CEKSlider *)self _tickMarksView];
  v8 = [v7 tickMarksModel];
  [v8 setTickMarkWidth:v4];

  v9 = [(CEKSlider *)self _tickMarksView];
  v10 = [v9 tickMarksModel];
  [v10 requiredWidth];
  v12 = v11;

  [(CEKSlider *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(CEKSlider *)self sliderVerticalAlignment];
  v100 = v20;
  if (v21 == 2)
  {
    [(CEKSlider *)self levelIndicatorHeight];
    v31 = v30 + 33.0 - v6;
    [(CEKSlider *)self sliderVerticalOffset];
    v22 = v32 + v31;
    goto LABEL_7;
  }

  if (v21 == 1)
  {
    v106.origin.x = v14;
    v106.origin.y = v16;
    v106.size.width = v18;
    v106.size.height = v20;
    v28 = CGRectGetMaxY(v106) - v6;
    [(CEKSlider *)self sliderVerticalOffset];
    v22 = v28 - v29;
LABEL_7:
    v23 = 0.0;
    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E695F058];
  v22 = *(MEMORY[0x1E695F058] + 8);
  if (!v21)
  {
    v94 = 0;
    UIRectCenteredYInRectScale();
    v23 = v24;
    v22 = v25;
    v12 = v26;
    v6 = v27;
  }

LABEL_8:
  v33 = v14;
  v34 = v16;
  recta = v22;
  v101 = v18;
  v102 = v33;
  v35 = [(CEKSlider *)self _dynamicTickMarksView];
  [(CEKSlider *)self bounds];
  [(CEKSlider *)self convertRect:v35 toView:?];
  [v35 setVisibleBounds:?];
  v95 = CEKPixelWidthForView(self);
  v36 = [(CEKSlider *)self _tickMarksView];
  [v36 frameForAlignmentRect:{v23, v22, v12, v6}];
  v38 = v37;
  v39 = v23;
  v40 = v6;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = [(CEKSlider *)self _tickMarksView];
  [v47 setFrame:{v38, v42, v44, v46}];

  [(CEKSlider *)self levelIndicatorHeight];
  v99 = v34;
  UIRectCenteredXInRectScale();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v107.origin.x = v39;
  v107.origin.y = recta;
  v96 = v12;
  rect = v40;
  v107.size.width = v12;
  v107.size.height = v40;
  MaxY = CGRectGetMaxY(v107);
  [(CEKSlider *)self levelIndicatorHeight];
  v56 = MaxY - v55;
  if (![(CEKSlider *)self _isAnimating])
  {
    v57 = [(CEKSlider *)self _levelIndicatorView];
    [v57 setFrame:{v49, v56, v51, v53}];
  }

  v108.origin.x = v49;
  v108.origin.y = v56;
  v108.size.width = v51;
  v108.size.height = v53;
  v109 = CGRectInset(v108, -v95, -v95);
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v62 = [(CEKSlider *)self _levelIndicatorBackgroundView];
  [v62 setFrame:{x, y, width, height}];

  v63 = [(CEKSlider *)self _contentScrollView];
  [v63 setFrame:{v102, v99, v101, v100}];

  v110.origin.x = v49;
  v110.origin.y = v56;
  v110.size.width = v51;
  v110.size.height = v53;
  MinX = CGRectGetMinX(v110);
  v111.origin.x = v102;
  v111.origin.y = v99;
  v111.size.width = v101;
  v111.size.height = v100;
  v65 = MinX - CGRectGetMinX(v111);
  v112.origin.x = v102;
  v112.origin.y = v99;
  v112.size.width = v101;
  v112.size.height = v100;
  MaxX = CGRectGetMaxX(v112);
  v113.origin.x = v49;
  v113.origin.y = v56;
  v113.size.width = v51;
  v113.size.height = v53;
  v67 = MaxX - CGRectGetMaxX(v113);
  v68 = [(CEKSlider *)self _contentScrollView];
  [v68 setContentInset:{0.0, v65, 0.0, v67}];

  v69 = [(CEKSlider *)self _contentScrollView];
  [v69 setContentSize:{v96, rect}];

  if ([(CEKSlider *)self _markedValueWithinRange])
  {
    [(CEKSlider *)self _xOffsetForMarkedValue];
    v71 = v70 + -4.0;
    v72 = [(CEKSlider *)self _dotView];
    [v72 setFrame:{v71, v56, 8.0, 8.0}];
  }

  v73 = [(CEKSlider *)self _titleLabel];
  v74 = [(CEKSlider *)self _valueLabel];
  v75 = *(MEMORY[0x1E695EFD0] + 16);
  *&v104.a = *MEMORY[0x1E695EFD0];
  *&v104.c = v75;
  *&v104.tx = *(MEMORY[0x1E695EFD0] + 32);
  v76 = [(CEKSlider *)self textOrientation];
  if (v76 == 1)
  {
    v78 = -1.57079633;
  }

  else
  {
    v77 = 18.0;
    if (v76 != 2)
    {
      goto LABEL_17;
    }

    v78 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&v104, v78);
  v77 = 28.0;
LABEL_17:
  v103 = v104;
  [v74 setTransform:&v103];
  v103 = v104;
  [v73 setTransform:&v103];
  [(CEKSlider *)self labelVerticalPadding];
  v80 = v79;
  [v73 setFrame:{10.0, v79, v101 + -20.0, 18.0}];
  [v74 setFrame:{0.0, v80, v101, v77}];
  v81 = [(CEKSlider *)self _edgeGradientView];
  v82 = v81;
  if (v81)
  {
    v84 = *MEMORY[0x1E69DDCE0];
    v83 = *(MEMORY[0x1E69DDCE0] + 8);
    v86 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *(MEMORY[0x1E69DDCE0] + 24);
    v87 = [v81 edgeGradientStyle];
    if (v87 != 2)
    {
      if (v87 == 1)
      {
        v114.origin.x = v49;
        v114.origin.y = v56;
        v114.size.width = v51;
        v114.size.height = v53;
        v90 = CGRectGetMaxY(v114);
        v89 = v100;
        v86 = v100 - v90;
        v83 = 0.0;
        v84 = v56;
        v85 = 0.0;
        v88 = v99;
        goto LABEL_24;
      }

      if (v87)
      {
        v88 = v99;
        v89 = v100;
        goto LABEL_24;
      }
    }

    v88 = v56;
    v89 = v53;
LABEL_24:
    [v82 setFrame:{v102, v88, v101, v89}];
    [v82 setContentInsets:{v84, v83, v86, v85}];
    [(CEKSlider *)self gradientInsets];
    v92 = v91;
    [(CEKSlider *)self gradientInsets];
    [v82 setGradientDimensions:{v92, v101 * 0.1, v101 * 0.1, v93}];
  }

  [(CEKSlider *)self _updateScrollViewPosition];
  [(CEKSlider *)self _updateMagneticTickIndexes];
}

- (void)resetToDefault
{
  [(CEKSlider *)self defaultValue];

  [(CEKSlider *)self setValue:?];
}

- (void)_clampValuesAndUpdateScrollPosition:(BOOL)a3
{
  v3 = a3;
  [(CEKSlider *)self minimumValue];
  v6 = v5;
  [(CEKSlider *)self defaultValue];
  v8 = v7;
  [(CEKSlider *)self maximumValue];
  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v6 >= v9)
  {
    v9 = v6;
  }

  self->_defaultValue = v9;
  [(CEKSlider *)self minimumValue];
  v11 = v10;
  [(CEKSlider *)self value];
  v13 = v12;
  [(CEKSlider *)self maximumValue];
  if (v13 < v14)
  {
    v14 = v13;
  }

  if (v11 >= v14)
  {
    v14 = v11;
  }

  self->_value = v14;
  if (v3)
  {

    [(CEKSlider *)self _updateScrollViewPosition];
  }
}

- (void)setDefaultValue:(double)a3
{
  if (self->_defaultValue != a3)
  {
    self->_defaultValue = a3;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];
  }
}

- (void)setMinimumValue:(double)a3
{
  if (self->_minimumValue != a3)
  {
    self->_minimumValue = a3;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];

    [(CEKSlider *)self _updateMagneticTickIndexes];
  }
}

- (void)setMaximumValue:(double)a3
{
  if (self->_maximumValue != a3)
  {
    self->_maximumValue = a3;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];

    [(CEKSlider *)self _updateMagneticTickIndexes];
  }
}

- (NSString)title
{
  v2 = [(CEKSlider *)self _titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v8 = a3;
  v4 = [(CEKSlider *)self _titleLabel];
  v5 = [v4 text];
  v6 = [v8 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(CEKSlider *)self _titleLabel];
    [v7 setText:v8];

    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)a3
{
  if (self->_titleAlpha != a3)
  {
    self->_titleAlpha = a3;
    [(CEKSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setMarkedValue:(double)a3 animated:(BOOL)a4
{
  if (self->_markedValue != a3)
  {
    self->_markedValue = a3;
    [(CEKSlider *)self _updateMarkedViewAnimated:a4];

    [(CEKSlider *)self setNeedsLayout];
  }
}

- (BOOL)_markedValueWithinRange
{
  [(CEKSlider *)self minimumValue];
  v4 = v3;
  [(CEKSlider *)self markedValue];
  if (v4 > v5)
  {
    return 0;
  }

  [(CEKSlider *)self markedValue];
  v8 = v7;
  [(CEKSlider *)self maximumValue];
  return v8 <= v9;
}

- (void)_updateMarkedViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKSlider *)self _dotView];
  v6 = [(CEKSlider *)self _markedValueWithinRange];
  if (!v6 && !v5)
  {
    return;
  }

  [(CEKSlider *)self markedValue];
  v8 = v7;
  [(CEKSlider *)self value];
  v10 = v8 - v9;
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  if ([(CEKSlider *)self _ticksStyle]== 1)
  {
    v12 = v11 > 0.02 && v6;
    v13 = 0.0;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0.0;
    if (!v6 || ![(CEKSlider *)self _isActive]&& v11 <= 0.01)
    {
      goto LABEL_22;
    }
  }

  v14 = [(CEKSlider *)self _isDimmed];
  if (v14 || v5)
  {
    if (v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = objc_alloc_init(CEKSliderDotView);
    v15 = [(CEKSlider *)self tickMarksConfiguration];
    -[CEKSliderDotView setUseLegibilityShadow:](v5, "setUseLegibilityShadow:", [v15 useTickMarkLegibilityShadows]);

    [(CEKSliderDotView *)v5 setAlpha:0.0];
    if ([(CEKSlider *)self _ticksStyle]== 1)
    {
      v16 = [(CEKSlider *)self tickMarksConfiguration];
      v17 = [v16 secondaryTickMarkColor];
      [(CEKSliderDotView *)v5 setDotColor:v17];
    }

    objc_storeStrong(&self->__dotView, v5);
    v18 = [(CEKSlider *)self _contentScrollView];
    v19 = [(CEKSlider *)self _tickMarksView];
    [v18 insertSubview:v5 aboveSubview:v19];

    [(CEKSlider *)self setNeedsLayout];
  }

  v13 = 1.0;
LABEL_22:
  if (!v3 || ([(CEKSliderDotView *)v5 alpha], v20 == v13))
  {
    [(CEKSliderDotView *)v5 setAlpha:v13];
  }

  else
  {
    v21 = MEMORY[0x1E69DD250];
    [(CEKSlider *)self animationDuration];
    v23 = v22;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __39__CEKSlider__updateMarkedViewAnimated___block_invoke;
    v25[3] = &unk_1E7CC6660;
    v26 = v5;
    v27 = v13;
    v24 = v5;
    [v21 animateWithDuration:v25 animations:0 completion:v23];
  }
}

- (CEKTickMarksConfiguration)tickMarksConfiguration
{
  v2 = [(CEKSlider *)self _tickMarksView];
  v3 = [v2 tickMarksModel];

  return v3;
}

- (void)_updateLegibilityBackground
{
  v3 = 0.0;
  if ([(CEKSlider *)self useTickMarkLegibilityShadows])
  {
    v3 = 1.0;
    if (!self->__levelIndicatorBackgroundView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      levelIndicatorBackgroundView = self->__levelIndicatorBackgroundView;
      self->__levelIndicatorBackgroundView = v4;

      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
      [(UIView *)self->__levelIndicatorBackgroundView setBackgroundColor:v6];

      v7 = self->__levelIndicatorBackgroundView;
      v8 = [(CEKSlider *)self _levelIndicatorView];
      [(CEKSlider *)self insertSubview:v7 belowSubview:v8];
    }
  }

  v9 = [(CEKSlider *)self _levelIndicatorView];
  [v9 setAlpha:v3];
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKSlider *)self _dotView];
  [v5 setUseLegibilityShadow:v3];

  v6 = [(CEKSlider *)self tickMarksConfiguration];
  [v6 setUseTickMarkLegibilityShadows:v3];

  [(CEKSlider *)self _updateLegibilityBackground];
}

- (BOOL)useTickMarkLegibilityShadows
{
  v2 = [(CEKSlider *)self tickMarksConfiguration];
  v3 = [v2 useTickMarkLegibilityShadows];

  return v3;
}

- (void)setTickMarkCount:(int64_t)a3
{
  v5 = [(CEKSlider *)self _tickMarksView];
  v4 = [v5 tickMarksModel];
  [v4 setTickMarksCount:a3];
}

- (int64_t)tickMarkCount
{
  v2 = [(CEKSlider *)self _tickMarksView];
  v3 = [v2 tickMarksModel];
  v4 = [v3 tickMarksCount];

  return v4;
}

- (void)setLogarithmic:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKSlider *)self _tickMarksView];
  v4 = [v5 tickMarksModel];
  [v4 setLogarithmic:v3];
}

- (BOOL)logarithmic
{
  v2 = [(CEKSlider *)self _tickMarksView];
  v3 = [v2 tickMarksModel];
  v4 = [v3 logarithmic];

  return v4;
}

- (void)setTickMarkSize:(CGSize)a3
{
  if (self->_tickMarkSize.width != a3.width || self->_tickMarkSize.height != a3.height)
  {
    self->_tickMarkSize = a3;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)_createGradientIfNeeded
{
  v3 = [(CEKSlider *)self _edgeGradientView];

  if (!v3)
  {
    v4 = objc_alloc_init(CEKEdgeGradientView);
    [(CEKSlider *)self _setEdgeGradientView:v4];
  }
}

- (void)setTransparentGradients
{
  [(CEKSlider *)self _createGradientIfNeeded];
  v6 = [(CEKSlider *)self _edgeGradientView];
  [v6 setEdgeGradientStyleBlack];
  v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  v4 = [v6 layer];
  [v4 setCompositingFilter:v3];

  v5 = [(CEKSlider *)self _contentScrollView];
  [(CEKSlider *)self insertSubview:v6 aboveSubview:v5];
}

- (void)setOpaqueGradientsWithColor:(id)a3
{
  v4 = a3;
  [(CEKSlider *)self _createGradientIfNeeded];
  v7 = [(CEKSlider *)self _edgeGradientView];
  [v7 setCustomEdgeGradientStyleWithColor:v4];

  v5 = [v7 layer];
  [v5 setCompositingFilter:0];

  v6 = [(CEKSlider *)self _contentScrollView];
  [(CEKSlider *)self insertSubview:v7 aboveSubview:v6];
}

- (void)removeGradients
{
  v3 = [(CEKSlider *)self _edgeGradientView];
  [v3 removeFromSuperview];

  [(CEKSlider *)self _setEdgeGradientView:0];
}

- (void)setGradientInsets:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  p_gradientInsets = &self->_gradientInsets;
  if (!CEKEdgeInsetsEqualToInsets(a3.var0, a3.var1, self->_gradientInsets.startInset, self->_gradientInsets.endInset))
  {
    p_gradientInsets->startInset = var0;
    p_gradientInsets->endInset = var1;

    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3 dimmed:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([(CEKSlider *)self isEnabled]!= a3 || [(CEKSlider *)self _isDimmed]!= v6)
  {
    [(CEKSlider *)self setEnabled:v7];
    [(CEKSlider *)self _setDimmed:v6 animated:v5];
    [(CEKSlider *)self contactEndedWithAction:0];
    v9 = [(CEKSlider *)self _dynamicTickMarksView];
    [v9 setEnabled:v7];
  }
}

- (void)_setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__dimmed != a3)
  {
    self->__dimmed = a3;
    [(CEKSlider *)self _updateEnableAppearanceStateAnimated:a4];
  }
}

- (void)_updateEnableAppearanceStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKSlider *)self _isDimmed];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CEKSlider__updateEnableAppearanceStateAnimated___block_invoke;
  aBlock[3] = &unk_1E7CC6AC0;
  aBlock[4] = self;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v3)
  {
    [(CEKSlider *)self _setAnimating:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__CEKSlider__updateEnableAppearanceStateAnimated___block_invoke_2;
    v8[3] = &unk_1E7CC63C8;
    v8[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v8 completion:0.25];
  }

  else
  {
    (*(v6 + 2))(v6);
  }

  [(CEKSlider *)self _updateMarkedViewAnimated:v3];
}

void __50__CEKSlider__updateEnableAppearanceStateAnimated___block_invoke(uint64_t a1)
{
  v2 = 0.33;
  if (!*(a1 + 40))
  {
    v2 = 1.0;
  }

  [*(a1 + 32) setAlpha:v2];
  v3 = [*(a1 + 32) _levelIndicatorView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = 0.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) levelIndicatorHeight];
    v10 = v11;
  }

  v12 = [*(a1 + 32) _levelIndicatorView];
  [v12 setFrame:{v5, v7, v9, v10}];

  if (*(a1 + 40))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = [*(a1 + 32) _levelIndicatorView];
  [v14 setAlpha:v13];
}

- (void)setMagneticRange:(id)a3
{
  v5 = a3;
  if (self->_magneticRange != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_magneticRange, a3);
    [(CEKSlider *)self _updateMagneticTickIndexes];
    v5 = v6;
  }
}

- (void)_updateMagneticTickIndexes
{
  v17 = [(CEKSlider *)self magneticRange];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v4 = [(CEKSlider *)self _tickMarksView];
  v5 = [v4 tickMarksModel];

  if ([v17 count])
  {
    v6 = 0;
    do
    {
      v7 = [v17 valueAtIndex:v6];
      [v7 doubleValue];
      v9 = v8;

      [(CEKSlider *)self minimumValue];
      v11 = v10;
      [(CEKSlider *)self maximumValue];
      [v5 xOffsetForNormalizedValue:{CEKProgress(v9, v11, v12)}];
      v14 = [v5 floorTickMarkIndexForXOffset:v13 + 0.001];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      [v3 addIndex:v15];
      ++v6;
    }

    while (v6 < [v17 count]);
  }

  v16 = [(CEKSlider *)self _dynamicTickMarksView];
  [v16 setMagneticTickMarkIndexes:v3];
}

- (void)_resetSnapped
{
  [(CEKSlider *)self _setSnapped:0];
  [(CEKSlider *)self _setSnappedOffset:0.0];

  [(CEKSlider *)self _setUnsnappingProgress:0.0];
}

- (void)performWaveAnimation
{
  v2 = [(CEKSlider *)self _dynamicTickMarksView];
  [v2 performWaveAnimation];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKSlider;
  [(CEKSlider *)&v3 tintColorDidChange];
  [(CEKSlider *)self _updateColorsAnimated:0];
}

- (void)_updateColorsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CEKSlider *)self _isActive])
  {
    [(CEKSlider *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v5 = ;
  v6 = [(CEKSlider *)self tintColor];
  if (![(CEKSlider *)self _isActive]&& [(CEKSlider *)self valueLabelVisibility]== 2)
  {
    v7 = [MEMORY[0x1E69DC888] labelColor];

    v6 = v7;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__CEKSlider__updateColorsAnimated___block_invoke;
  aBlock[3] = &unk_1E7CC6AE8;
  aBlock[4] = self;
  v8 = v5;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v3)
  {
    v12 = MEMORY[0x1E69DD250];
    [(CEKSlider *)self animationDuration];
    [v12 animateWithDuration:v11 animations:?];
  }

  else
  {
    (*(v10 + 2))(v10);
  }
}

void __35__CEKSlider__updateColorsAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _levelIndicatorView];
  [v3 setBackgroundColor:v2];

  v4 = [MEMORY[0x1E69DC888] labelColor];
  [*(a1 + 32) titleAlpha];
  v5 = [v4 colorWithAlphaComponent:?];
  v6 = [*(a1 + 32) _titleLabel];
  [v6 setTextColor:v5];

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) _valueLabel];
  [v8 setTextColor:v7];
}

- (void)_setActive:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__active != a3)
  {
    v5 = a4;
    v6 = a3;
    self->__active = a3;
    if ([(CEKSlider *)self valueLabelVisibility]== 1)
    {
      [(CEKSlider *)self _setShowValueLabel:v6 animated:v5];
    }

    [(CEKSlider *)self _updateColorsAnimated:v5];

    [(CEKSlider *)self _updateMarkedViewAnimated:v5];
  }
}

- (double)_xOffsetForMarkedValue
{
  [(CEKSlider *)self markedValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v4 = v3;
  v5 = [(CEKSlider *)self _contentScrollView];
  [v5 contentInset];
  v7 = v4 + v6;

  return v7;
}

- (double)xOffsetForValue:(double)a3
{
  [(CEKSlider *)self minimumValue];
  v6 = v5;
  [(CEKSlider *)self maximumValue];
  v8 = CEKProgress(a3, v6, v7);
  v9 = [(CEKSlider *)self _tickMarksView];
  v10 = [v9 tickMarksModel];
  [v10 xOffsetForNormalizedValue:v8];
  v11 = [(CEKSlider *)self _contentScrollView];
  [v11 contentInset];

  UIRoundToViewScale();
  return result;
}

- (void)_updateScrollViewPosition
{
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(CEKSlider *)self value];
  [(CEKSlider *)self xOffsetForValue:?];
  v5 = v4;
  v6 = [(CEKSlider *)self _contentScrollView];
  [v6 setContentOffset:0 animated:{v5, v3}];
}

- (void)_setValue:(double)a3 shouldSendActions:(BOOL)a4 shouldUpdateScrollPosition:(BOOL)a5
{
  if (self->_value != a3)
  {
    v5 = a4;
    self->_value = a3;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:a5];
    [(CEKSlider *)self _updateMarkedViewAnimated:1];
    [(CEKSlider *)self _updateValueLabel];
    if (v5)
    {

      [(CEKSlider *)self sendActionsForControlEvents:4096];
    }
  }
}

- (double)_valueForScrollViewXOffset:(double)a3
{
  v5 = [(CEKSlider *)self _contentScrollView];
  [v5 contentInset];
  v7 = v6;
  v8 = (v6 + a3) / CEKScrollableDistanceInScrollView(v5);
  v9 = [(CEKSlider *)self _tickMarksView];
  v10 = [v9 tickMarksModel];

  v11 = [(CEKSlider *)self magneticRange];
  [(CEKSlider *)self minimumValue];
  v13 = v12;
  [(CEKSlider *)self maximumValue];
  v15 = v14;
  [v10 absoluteValueForNormalizedValue:v8 inAbsoluteRangeSize:v14 - v13];
  v17 = v13 + v16;
  if ([v11 count])
  {
    v18 = [v11 valueAtIndex:{objc_msgSend(v11, "indexOfValueClosestToValue:", v17)}];
    [v18 doubleValue];
    v20 = v19;

    [v10 xOffsetForNormalizedValue:{CEKProgress(v20, v13, v15)}];
    v22 = v21 - v7;
    v23 = CEKPixelWidthForView(self) * 0.5;
    if (vabdd_f64(v22, a3) > v23)
    {
      [v10 xOffsetForNormalizedValue:1.0];
      v20 = v17;
      if (v24 - v7 - a3 < v23)
      {
        [(CEKSlider *)self maximumValue];
        v20 = v25;
      }
    }
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

- (void)setValueLabelVisibility:(int64_t)a3
{
  if (self->_valueLabelVisibility != a3)
  {
    self->_valueLabelVisibility = a3;
    if (a3 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3 == 1 && [(CEKSlider *)self _isActive];
    }

    [(CEKSlider *)self _setShowValueLabel:v5 animated:0];
  }
}

- (void)_setShowValueLabel:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = 0.0;
  if (a3)
  {
    v8 = [(CEKSlider *)self _valueLabel];

    v7 = 1.0;
    if (!v8)
    {
      v11 = objc_alloc(MEMORY[0x1E69DCC10]);
      v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v13 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v12 setBackgroundColor:v13];

      [(UILabel *)v12 setTextAlignment:1];
      [(UILabel *)v12 setLineBreakMode:4];
      [(UILabel *)v12 setNumberOfLines:1];
      [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      valueLabel = self->__valueLabel;
      self->__valueLabel = v12;
      v15 = v12;

      [(CEKSlider *)self addSubview:self->__valueLabel];
      [(CEKSlider *)self _updateFonts];
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_9:
      v16 = [(CEKSlider *)self _valueLabel];
      [v16 setAlpha:v7];

      goto LABEL_10;
    }
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v5)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0x20000;
  }

  v10 = MEMORY[0x1E69DD250];
  [(CEKSlider *)self animationDuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__CEKSlider__setShowValueLabel_animated___block_invoke;
  v17[3] = &unk_1E7CC6660;
  v17[4] = self;
  *&v17[5] = v7;
  [v10 animateWithDuration:v9 delay:v17 options:0 animations:? completion:?];
LABEL_10:
  [(CEKSlider *)self _updateColorsAnimated:v4];
  [(CEKSlider *)self _updateValueLabel];
  [(CEKSlider *)self setNeedsLayout];
}

void __41__CEKSlider__setShowValueLabel_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _valueLabel];
  [v2 setAlpha:v1];
}

- (void)setValueLabelFormat:(int64_t)a3
{
  if (self->_valueLabelFormat != a3)
  {
    self->_valueLabelFormat = a3;
    [(CEKSlider *)self _updateValueLabel];
  }
}

- (void)setValueLabelMultiplier:(double)a3
{
  if (self->_valueLabelMultiplier != a3)
  {
    self->_valueLabelMultiplier = a3;
    [(CEKSlider *)self _updateValueLabel];
  }
}

- (void)_updateValueLabel
{
  v3 = [(CEKSlider *)self _valueLabel];
  [v3 alpha];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v6 = [(CEKSlider *)self valueLabelFormat];
  if (v6 == 1)
  {
    v7 = [objc_opt_class() _decimalFormatter];
  }

  else
  {
    if (v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [objc_opt_class() _integerFormatter];
  }

  v8 = v7;
LABEL_9:
  [(CEKSlider *)self value];
  v10 = v9;
  [(CEKSlider *)self valueLabelMultiplier];
  v13 = [(CEKSlider *)self _attributedStringFromValue:v8 usingFormatter:v10 * v11];

LABEL_10:
  v12 = [(CEKSlider *)self _valueLabel];
  [v12 setAttributedText:v13];
}

- (void)setFontStyle:(unint64_t)a3
{
  if (self->_fontStyle != a3)
  {
    self->_fontStyle = a3;
    [(CEKSlider *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  v3 = [(CEKSlider *)self fontStyle];
  v4 = CEKFontOfSizeAndStyle(v3, 14.0);
  v5 = [(CEKSlider *)self _titleLabel];
  [v5 setFont:v4];

  v7 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(v3, 14.0);
  v6 = [(CEKSlider *)self _valueLabel];
  [v6 setFont:v7];
}

- (void)setSelectionFeedbackProfile:(int64_t)a3
{
  v4 = [(CEKSlider *)self _feedbackGenerator];
  [v4 setProfile:a3];
}

- (int64_t)selectionFeedbackProfile
{
  v2 = [(CEKSlider *)self _feedbackGenerator];
  v3 = [v2 profile];

  return v3;
}

- (void)setTextOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_textOrientation != a3)
  {
    if (a4)
    {
      [(CEKSlider *)self layoutIfNeeded];
      self->_textOrientation = a3;
      [(CEKSlider *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __41__CEKSlider_setTextOrientation_animated___block_invoke;
      v6[3] = &unk_1E7CC6358;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      self->_textOrientation = a3;

      [(CEKSlider *)self setNeedsLayout];
    }
  }
}

- (int64_t)titleAlignment
{
  v2 = [(CEKSlider *)self _titleLabel];
  v3 = [v2 textAlignment];

  return v3;
}

- (void)setTitleAlignment:(int64_t)a3
{
  v4 = [(CEKSlider *)self _titleLabel];
  [v4 setTextAlignment:a3];
}

- (void)setSliderVerticalOffset:(double)a3
{
  if (self->_sliderVerticalOffset != a3)
  {
    self->_sliderVerticalOffset = a3;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setLabelVerticalPadding:(double)a3
{
  if (self->_labelVerticalPadding != a3)
  {
    self->_labelVerticalPadding = a3;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setSliderVerticalAlignment:(int64_t)a3
{
  if (self->_sliderVerticalAlignment != a3)
  {
    self->_sliderVerticalAlignment = a3;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setLevelIndicatorHeight:(double)a3
{
  if (self->_levelIndicatorHeight != a3)
  {
    self->_levelIndicatorHeight = a3;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (CGRect)frameForTitleLabel
{
  [(CEKSlider *)self layoutIfNeeded];
  v3 = [(CEKSlider *)self _titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForValueLabel
{
  [(CEKSlider *)self layoutIfNeeded];
  v3 = [(CEKSlider *)self _valueLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForLevelIndicator
{
  [(CEKSlider *)self layoutIfNeeded];
  v3 = [(CEKSlider *)self _levelIndicatorView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameForTicksView
{
  [(CEKSlider *)self layoutIfNeeded];
  v3 = [(CEKSlider *)self _contentScrollView];
  v4 = [(CEKSlider *)self _tickMarksView];
  [v4 frame];
  [v3 convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(CEKSlider *)self _dynamicTickMarksView];
  [(CEKSlider *)self bounds];
  [(CEKSlider *)self convertRect:v5 toView:?];
  [v5 setVisibleBounds:?];
  if ([(CEKSlider *)self _isreAdjustingOffsets])
  {
    goto LABEL_30;
  }

  [v4 contentOffset];
  v45 = v6;
  v46 = v7;
  if (self->_delegateFlags.respondsToWillUpdateValue)
  {
    v8 = [v4 panGestureRecognizer];
    [v8 velocityInView:self];
    v10 = v9;

    v11 = [(CEKSlider *)self delegate];
    [v11 slider:self willUpdateValue:&v45 withVelocity:v10];

    [(CEKSlider *)self set_reAdjustingOffsets:1];
    [v4 setContentOffset:{v45, v46}];
    [(CEKSlider *)self set_reAdjustingOffsets:0];
  }

  v12 = [(CEKSlider *)self _isExternallyScrolling]|| [(CEKSlider *)self _isScrollExternallyAnimating];
  if ([v4 isTracking])
  {
    v13 = 1;
LABEL_10:
    [v4 contentOffset];
    [(CEKSlider *)self _valueForScrollViewXOffset:?];
    v14 = 1;
    [(CEKSlider *)self _setValue:1 shouldSendActions:0 shouldUpdateScrollPosition:?];
    goto LABEL_12;
  }

  v13 = [v4 isDecelerating];
  if ((v13 | v12))
  {
    goto LABEL_10;
  }

  v14 = 0;
  v13 = 0;
LABEL_12:
  if (self->_delegateFlags.respondsToDidScroll)
  {
    v15 = [(CEKSlider *)self delegate];
    [v15 sliderDidScroll:self];
  }

  v16 = [(CEKSlider *)self _tickMarksView];
  v17 = [v16 tickMarksModel];

  [(CEKSlider *)self value];
  v19 = v18;
  [(CEKSlider *)self minimumValue];
  v21 = v20;
  [(CEKSlider *)self maximumValue];
  [v17 xOffsetForNormalizedValue:{CEKProgress(v19, v21, v22)}];
  v24 = v23;
  v25 = [(CEKSlider *)self _tickMarksView];
  v26 = [v25 tickMarksModel];
  v27 = [v26 floorTickMarkIndexForXOffset:v24 + 0.001];

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if ([(CEKSlider *)self _tickMarkIndex]== v27)
  {
    goto LABEL_24;
  }

  [(CEKSlider *)self _setTickMarkIndex:v27];
  v28 = [(CEKSlider *)self _dynamicTickMarksView];
  [v28 setSelectedTickMarkIndex:v27 animated:v14];

  if (!v14)
  {
    goto LABEL_24;
  }

  v29 = [(CEKSlider *)self feedbackScope];
  if ((v29 - 1) > 1)
  {
    goto LABEL_24;
  }

  v30 = v29;
  v44 = [v17 tickMarksCount];
  v43 = [v17 isMainTickMarkAtIndex:v27];
  v31 = [(CEKSlider *)self _dynamicTickMarksView];
  v32 = [v31 magneticTickMarkIndexes];
  v33 = [v32 containsIndex:v27];

  if (!v27 || v27 == v44 - 1)
  {
    v36 = [(CEKSlider *)self _feedbackGenerator];
    [v36 performFeedback];

    v35 = [(CEKSlider *)self _feedbackGenerator];
    [v35 playEndTickSound];
  }

  else if ((v43 | v33))
  {
    v34 = [(CEKSlider *)self _feedbackGenerator];
    [v34 performFeedback];

    v35 = [(CEKSlider *)self _feedbackGenerator];
    [v35 playMajorTickSound];
  }

  else
  {
    if (v30 != 2)
    {
      goto LABEL_24;
    }

    v42 = [(CEKSlider *)self _feedbackGenerator];
    [v42 performFeedback];

    v35 = [(CEKSlider *)self _feedbackGenerator];
    [v35 playMinorTickSound];
  }

LABEL_24:
  [v4 contentInset];
  v38 = v37;
  v39 = CEKScrollableDistanceInScrollView(v4) - v37;
  v40 = v45 > v39 + 20.0 || v45 < -20.0 - v38;
  [(CEKSlider *)self _setOverscrolling:v40];
  if (v13)
  {
    v41 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [v41 invalidate];

    [(CEKSlider *)self _setExternalScrollOffsetAnimator:0];
    [(CEKSlider *)self contactEndedWithAction:0];
    [(CEKSlider *)self _resetSnapped];
  }

LABEL_30:
}

- (void)_setOverscrolling:(BOOL)a3
{
  if (self->__overscrolling != a3)
  {
    v3 = a3;
    self->__overscrolling = a3;
    v5 = [(CEKSlider *)self feedbackScope];
    if (v3)
    {
      if (v5)
      {
        v6 = [(CEKSlider *)self _feedbackGenerator];
        [v6 playOverscrollTickSound];
      }
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CEKSlider *)self _feedbackGenerator];
  [v4 prepareFeedback];

  [(CEKSlider *)self _setActive:1 animated:1];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    v5 = [(CEKSlider *)self delegate];
    [v5 sliderWillBeginScrolling:self];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (self->_delegateFlags.respondsToWillEndScrolling)
  {
    y = a4.y;
    x = a4.x;
    v10 = [(CEKSlider *)self delegate];
    [v10 sliderWillEndScrolling:self withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(CEKSlider *)self _sliderDidEndScrolling];
  }
}

- (void)_sliderDidEndScrolling
{
  [(CEKSlider *)self _setActive:0 animated:1];
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    v3 = [(CEKSlider *)self delegate];
    [v3 sliderDidEndScrolling:self];
  }
}

- (CEKSliderPositionDriver)_sliderDriver
{
  sliderDriver = self->__sliderDriver;
  if (!sliderDriver)
  {
    v4 = CEKDefaultSliderPositionDriver();
    v5 = self->__sliderDriver;
    self->__sliderDriver = v4;

    sliderDriver = self->__sliderDriver;
  }

  return sliderDriver;
}

- (void)contactBeganWithAction:(id)a3
{
  v8 = a3;
  if (![(CEKSlider *)self _isExternalScrollingAllowed]&& [(CEKSlider *)self isEnabled])
  {
    [(CEKSlider *)self _setExternalScrollingAllowed:1];
    [(CEKSlider *)self _setExternalOverScroll:0.0];
    v4 = [(CEKSlider *)self _sliderDriver];
    [v4 contactBeganWithAction:v8];

    v5 = [(CEKSlider *)self _contentScrollView];
    [v5 contentOffset];
    v7 = v6;
    [v5 setContentOffset:0 animated:?];
    [(CEKSlider *)self _applyExternalTarget:2 mode:v7];
  }
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  if ([(CEKSlider *)self _isExternalScrollingAllowed])
  {
    v5 = [(CEKSlider *)self _contentScrollView];
    if (![(CEKSlider *)self _isExternallyScrolling])
    {
      [(CEKSlider *)self _setExternallyScrolling:1];
      [(CEKSlider *)self scrollViewWillBeginDragging:v5];
    }

    [(CEKSlider *)self _createExternalScrollAnimatorIfNeeded];
    v6 = [(CEKSlider *)self _sliderDriver];
    [v6 distanceTraveled];
    v8 = v7;
    [v6 contactUpdatedWithAction:v4];
    [v6 distanceTraveled];
    v10 = v9 - v8;
    v11 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [v11 value];
    v13 = v12;

    v14 = v10 + v13;
    [(CEKSlider *)self minimumValue];
    [(CEKSlider *)self xOffsetForValue:?];
    v16 = v15;
    [(CEKSlider *)self maximumValue];
    [(CEKSlider *)self xOffsetForValue:?];
    v18 = v17;
    [(CEKSlider *)self _externalOverScroll];
    if (v10 + v13 <= v18)
    {
      v20 = 0.0;
      if (v14 >= v16)
      {
        goto LABEL_13;
      }

      if (v19 == 0.0)
      {
        v20 = v14 - v16;
      }

      else
      {
        v20 = v10 + v19;
      }
    }

    else if (v19 == 0.0)
    {
      v20 = v14 - v18;
    }

    else
    {
      v20 = v10 + v19;
    }

    [(CEKSlider *)self bounds];
    v55 = v16;
    LOBYTE(v56) = 1;
    *(&v56 + 1) = 0;
    HIDWORD(v56) = 0;
    v57 = v18;
    LOBYTE(v58) = 1;
    *(&v58 + 1) = 0;
    HIDWORD(v58) = 0;
    BSUIConstrainValueToIntervalWithRubberBand();
    v14 = v21;
LABEL_13:
    [(CEKSlider *)self _setExternalOverScroll:v20, *&v55, v56, *&v57, v58];
    if ([(CEKSlider *)self _snapped])
    {
      [(CEKSlider *)self _unsnappingProgress];
      if (v22 > 0.0 && v10 < 0.0 || v22 < 0.0 && v10 > 0.0)
      {
        v22 = 0.0;
      }

      if (fabs(v10 + v22) <= 10.0)
      {
        [(CEKSlider *)self _setUnsnappingProgress:?];
        [(CEKSlider *)self _snappedOffset];
        v32 = v44;
      }

      else
      {
        [(CEKSlider *)self _snappedOffset];
        [(CEKSlider *)self _valueForScrollViewXOffset:?];
        v23 = os_log_create("com.apple.camera", "CameraEditKit");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(CEKSlider *)v23 contactUpdatedWithAction:v24, v25, v26, v27, v28, v29, v30];
        }

        [(CEKSlider *)self _snappedOffset];
        v32 = v10 + v31;
        [(CEKSlider *)self _resetSnapped];
      }

      goto LABEL_35;
    }

    v33 = [(CEKSlider *)self magneticRange];
    if (!v33)
    {
      goto LABEL_32;
    }

    [(CEKSlider *)self value];
    v34 = [v33 indexOfValueClosestToValue:?];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v35 = [v33 valueAtIndex:v34];
    [v35 doubleValue];
    v37 = v36;

    [(CEKSlider *)self xOffsetForValue:v37];
    v38 = [(CEKSlider *)self traitCollection];
    [v38 displayScale];
    UIRoundToScale();
    v32 = v39;

    v41 = 0;
    if (v10 > 0.0 && v13 < v32)
    {
      v40 = v14 + 0.3;
      v41 = v14 + 0.3 >= v32;
    }

    v42 = 1;
    if (v10 < 0.0 && v13 > v32)
    {
      v40 = v14 + -0.3;
      v42 = v14 + -0.3 > v32;
    }

    [(CEKSlider *)self minimumValue];
    if (v37 == v43)
    {
      goto LABEL_32;
    }

    [(CEKSlider *)self maximumValue];
    if (v41)
    {
      if (v37 != v45)
      {
LABEL_44:
        v47 = os_log_create("com.apple.camera", "CameraEditKit");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          [(CEKSlider *)v47 contactUpdatedWithAction:v48, v49, v50, v51, v52, v53, v54];
        }

        [(CEKSlider *)self _setSnappedOffset:v32];
        [(CEKSlider *)self _setUnsnappingProgress:dbl_1B7EDA710[v10 > 0.0] + v14 - v32];
        [(CEKSlider *)self _setSnapped:1];
        goto LABEL_33;
      }
    }

    else
    {
      v46 = v37 == v45 || v42;
      if ((v46 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    v32 = v14;
LABEL_33:

LABEL_35:
    [(CEKSlider *)self _applyExternalTarget:5 mode:v32];
  }
}

- (void)contactEndedWithAction:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CEKSlider *)self _isExternalScrollingAllowed])
  {
    goto LABEL_27;
  }

  [(CEKSlider *)self _resetSnapped];
  [(CEKSlider *)self _setExternalScrollingAllowed:0];
  [(CEKSlider *)self _setExternallyScrolling:0];
  v5 = [(CEKSlider *)self _sliderDriver];
  [v5 contactEndedWithAction:v4];
  [v5 velocity];
  v7 = v6;
  [v5 distanceToDecelerate];
  v9 = v8;
  v10 = [(CEKSlider *)self _externalScrollOffsetAnimator];
  [v10 value];
  v12 = v11;

  v13 = [(CEKSlider *)self traitCollection];
  [v13 displayScale];
  UIRoundToScale();
  v15 = v14;

  [(CEKSlider *)self minimumValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v17 = v16;
  [(CEKSlider *)self maximumValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v19 = v18;
  v20 = fmax(v17, fmin(v18, v15));
  v21 = [(CEKSlider *)self magneticRange];
  if (v21)
  {
    v22 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [v22 value];
    [(CEKSlider *)self _valueForScrollViewXOffset:?];
    v24 = v23;

    v25 = [v21 indexOfValueClosestToValue:v24];
    v26 = [v21 indexOfValueGreaterThanValue:v24];
    v27 = [v21 indexOfValueLessThanValue:v24];
    if (v20 != v12 || v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 <= 20.0 || v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v7 >= -20.0 || v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = os_log_create("com.apple.camera", "CameraEditKit");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [(CEKDiscreteSlider *)v35 contactEndedWithAction:v50, v51, v52, v53, v54, v55, v56];
          }

          goto LABEL_22;
        }

        v45 = [v21 valueAtIndex:v27];
        [v45 doubleValue];
        v31 = v46;

        [(CEKSlider *)self xOffsetForValue:v31];
        v47 = [(CEKSlider *)self traitCollection];
        [v47 displayScale];
        UIRoundToScale();
        v49 = v48;

        v20 = fmax(v17, fmin(v19, v49));
        v35 = os_log_create("com.apple.camera", "CameraEditKit");
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = [v21 valueAtIndex:v26];
        [v29 doubleValue];
        v31 = v30;

        [(CEKSlider *)self xOffsetForValue:v31];
        v32 = [(CEKSlider *)self traitCollection];
        [v32 displayScale];
        UIRoundToScale();
        v34 = v33;

        v20 = fmax(v17, fmin(v19, v34));
        v35 = os_log_create("com.apple.camera", "CameraEditKit");
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }
      }

      *buf = 134218496;
      v60 = v24;
      v61 = 2048;
      v62 = v31;
      v63 = 2048;
      v64 = v7;
      v42 = "ScrollDiagnostic: Decelerating from %.3f to magnetic value %.3f with velocity %.3f";
      v43 = v35;
      v44 = 32;
      goto LABEL_19;
    }

    v36 = [v21 valueAtIndex:v25];
    [v36 doubleValue];
    v38 = v37;

    if (vabdd_f64(v38, v24) < 0.1)
    {
      [(CEKSlider *)self xOffsetForValue:v38];
      v39 = [(CEKSlider *)self traitCollection];
      [v39 displayScale];
      UIRoundToScale();
      v41 = v40;

      v20 = fmax(v17, fmin(v19, v41));
      v35 = os_log_create("com.apple.camera", "CameraEditKit");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v60 = v24;
        v61 = 2048;
        v62 = v38;
        v63 = 2048;
        v64 = v9;
        v65 = 2048;
        v66 = v7;
        v42 = "ScrollDiagnostic: Decelerating from %.3f to magnetic value %.3f due to proximity and deceleration %.3f (velocity %.3f)";
        v43 = v35;
        v44 = 42;
LABEL_19:
        _os_log_debug_impl(&dword_1B7E93000, v43, OS_LOG_TYPE_DEBUG, v42, buf, v44);
      }

LABEL_22:
    }
  }

  if (v20 == v12)
  {
    [(CEKSlider *)self _sliderDidEndScrolling];
  }

  else
  {
    v57 = [(CEKSlider *)self _contentScrollView];
    [(CEKSlider *)self scrollViewDidEndDragging:v57 willDecelerate:1];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __36__CEKSlider_contactEndedWithAction___block_invoke;
    v58[3] = &unk_1E7CC6700;
    v58[4] = self;
    [(CEKSlider *)self _applyExternalTarget:3 mode:v58 completion:v20];
  }

LABEL_27:
}

uint64_t __36__CEKSlider_contactEndedWithAction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isScrollExternallyAnimating];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _isExternalScrollingAllowed];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 _sliderDidEndScrolling];
    }
  }

  return result;
}

- (CEKFluidBehaviorSettings)_externalScrollSettings
{
  externalScrollSettings = self->__externalScrollSettings;
  if (!externalScrollSettings)
  {
    v4 = objc_alloc_init(CEKFluidBehaviorSettings);
    v5 = self->__externalScrollSettings;
    self->__externalScrollSettings = v4;

    [(CEKFluidBehaviorSettings *)self->__externalScrollSettings setDefaultCriticallyDampedValues];
    [(CEKFluidBehaviorSettings *)self->__externalScrollSettings setDampingRatio:1.0];
    [(CEKFluidBehaviorSettings *)self->__externalScrollSettings setResponse:0.4];
    externalScrollSettings = self->__externalScrollSettings;
  }

  return externalScrollSettings;
}

- (BOOL)_isScrollExternallyAnimating
{
  v2 = [(CEKSlider *)self _externalScrollOffsetAnimator];
  [v2 presentationValue];
  [v2 value];
  v3 = BSFloatEqualToFloat();

  return v3 ^ 1;
}

- (void)_applyExternalTarget:(double)a3 mode:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(CEKSlider *)self _externalScrollOffsetAnimator];
  UIRoundToViewScale();
  v10 = v9;
  if (!v8 || ([v8 value], v10 != v11))
  {
    [(CEKSlider *)self _createExternalScrollAnimatorIfNeeded];
    v12 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [v12 value];
    v14 = v10 - v13;

    if (v14 != 0.0)
    {
      v15 = [(CEKSlider *)self contactObserver];
      [v15 observeContactRecognitionDelta:v14];
    }

    v16 = MEMORY[0x1E69DD250];
    v17 = [(CEKSlider *)self _externalScrollSettings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__CEKSlider__applyExternalTarget_mode_completion___block_invoke;
    v18[3] = &unk_1E7CC6660;
    v18[4] = self;
    *&v18[5] = v10;
    [v16 cek_animateWithSettings:v17 mode:a4 animations:v18 completion:v7];
  }
}

void __50__CEKSlider__applyExternalTarget_mode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _externalScrollOffsetAnimator];
  [v2 setValue:v1];
}

- (void)_createExternalScrollAnimatorIfNeeded
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(CEKSlider *)self _externalScrollOffsetAnimator];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD268]);
    [(CEKSlider *)self _setExternalScrollOffsetAnimator:v4];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DD250];
    v16[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__CEKSlider__createExternalScrollAnimatorIfNeeded__block_invoke;
    v13 = &unk_1E7CC6728;
    objc_copyWeak(&v14, &location);
    [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:&v10];

    v7 = [(CEKSlider *)self _contentScrollView:v10];
    [v7 contentOffset];
    v9 = v8;

    [v4 setValue:v9];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __50__CEKSlider__createExternalScrollAnimatorIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExternalScrollAnimated];
}

- (void)_handleExternalScrollAnimated
{
  v3 = [(CEKSlider *)self _externalScrollOffsetAnimator];
  if (v3)
  {
    v5 = v3;
    v4 = [(CEKSlider *)self _contentScrollView];
    [v4 contentOffset];
    [v5 presentationValue];
    [v4 setContentOffset:?];

    v3 = v5;
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets
{
  startInset = self->_gradientInsets.startInset;
  endInset = self->_gradientInsets.endInset;
  result.var1 = endInset;
  result.var0 = startInset;
  return result;
}

- (CEKSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)tickMarkSize
{
  width = self->_tickMarkSize.width;
  height = self->_tickMarkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CEKContactObserver)contactObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contactObserver);

  return WeakRetained;
}

@end