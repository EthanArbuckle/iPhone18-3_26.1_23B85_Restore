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
- (CEKSlider)initWithTitle:(id)title tickMarkStyle:(unint64_t)style;
- (CEKSliderDelegate)delegate;
- (CEKSliderPositionDriver)_sliderDriver;
- (CEKTickMarksConfiguration)tickMarksConfiguration;
- (CGRect)frameForLevelIndicator;
- (CGRect)frameForTicksView;
- (CGRect)frameForTitleLabel;
- (CGRect)frameForValueLabel;
- (CGSize)tickMarkSize;
- (NSString)title;
- (double)_valueForScrollViewXOffset:(double)offset;
- (double)_xOffsetForMarkedValue;
- (double)xOffsetForValue:(double)value;
- (id)_attributedStringFromValue:(double)value usingFormatter:(id)formatter;
- (id)formattedIntegerStringFromNumber:(id)number;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)selectionFeedbackProfile;
- (int64_t)tickMarkCount;
- (int64_t)titleAlignment;
- (void)_applyExternalTarget:(double)target mode:(int64_t)mode completion:(id)completion;
- (void)_clampValuesAndUpdateScrollPosition:(BOOL)position;
- (void)_createExternalScrollAnimatorIfNeeded;
- (void)_createGradientIfNeeded;
- (void)_handleExternalScrollAnimated;
- (void)_resetSnapped;
- (void)_setActive:(BOOL)active animated:(BOOL)animated;
- (void)_setDimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)_setOverscrolling:(BOOL)overscrolling;
- (void)_setShowValueLabel:(BOOL)label animated:(BOOL)animated;
- (void)_setValue:(double)value shouldSendActions:(BOOL)actions shouldUpdateScrollPosition:(BOOL)position;
- (void)_sliderDidEndScrolling;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)_updateEnableAppearanceStateAnimated:(BOOL)animated;
- (void)_updateFonts;
- (void)_updateLegibilityBackground;
- (void)_updateMagneticTickIndexes;
- (void)_updateMarkedViewAnimated:(BOOL)animated;
- (void)_updateScrollViewPosition;
- (void)_updateValueLabel;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)removeGradients;
- (void)resetToDefault;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDefaultValue:(double)value;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled dimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)setFontStyle:(unint64_t)style;
- (void)setGradientInsets:(id)insets;
- (void)setLabelVerticalPadding:(double)padding;
- (void)setLevelIndicatorHeight:(double)height;
- (void)setLogarithmic:(BOOL)logarithmic;
- (void)setMagneticRange:(id)range;
- (void)setMarkedValue:(double)value animated:(BOOL)animated;
- (void)setMaximumValue:(double)value;
- (void)setMinimumValue:(double)value;
- (void)setOpaqueGradientsWithColor:(id)color;
- (void)setSelectionFeedbackProfile:(int64_t)profile;
- (void)setSliderVerticalAlignment:(int64_t)alignment;
- (void)setSliderVerticalOffset:(double)offset;
- (void)setTextOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setTickMarkCount:(int64_t)count;
- (void)setTickMarkSize:(CGSize)size;
- (void)setTitle:(id)title;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTitleAlpha:(double)alpha;
- (void)setTransparentGradients;
- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows;
- (void)setValueLabelFormat:(int64_t)format;
- (void)setValueLabelMultiplier:(double)multiplier;
- (void)setValueLabelVisibility:(int64_t)visibility;
- (void)tintColorDidChange;
@end

@implementation CEKSlider

- (CEKSlider)initWithTitle:(id)title tickMarkStyle:(unint64_t)style
{
  titleCopy = title;
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
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKSlider *)v12 setTintColor:systemYellowColor];

    v14 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    contentScrollView = v12->__contentScrollView;
    v12->__contentScrollView = v14;

    [(UIScrollView *)v12->__contentScrollView setDelegate:v12];
    [(UIScrollView *)v12->__contentScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v12->__contentScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v12->__contentScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(UIScrollView *)v12->__contentScrollView _setSupportsPointerDragScrolling:1];
    panGestureRecognizer = [(UIScrollView *)v12->__contentScrollView panGestureRecognizer];
    [panGestureRecognizer _wantsGESEvents:1];

    [(CEKSlider *)v12 addSubview:v12->__contentScrollView];
    v12->__ticksStyle = style;
    if (style)
    {
      if (style == 1)
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
    tickMarksModel = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [tickMarksModel setTickMarkSpacing:9.0];

    tickMarksModel2 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [tickMarksModel2 setTickMarkWidth:1.0];

    tickMarksModel3 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [tickMarksModel3 setMainTickMarkInterval:10];

    [(UIScrollView *)v12->__contentScrollView addSubview:v12->__tickMarksView];
    v12->_tickMarkSize = xmmword_1B7EDA700;
    tickMarksModel4 = [(CEKTickMarksContainer *)v12->__tickMarksView tickMarksModel];
    [tickMarksModel4 setTickMarksCount:41];

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

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIView *)v12->__levelIndicatorView setBackgroundColor:labelColor];

      layer = [(UIView *)v12->__levelIndicatorView layer];
      [layer setAnchorPoint:{0.5, 0.0}];

      [(CEKSlider *)v12 addSubview:v12->__levelIndicatorView];
    }

    v12->_minimumValue = -1.0;
    v12->_maximumValue = 1.0;
    v12->_markedValue = 1.79769313e308;
    if ([titleCopy length])
    {
      v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v29 setBackgroundColor:clearColor];

      [(UILabel *)v29 setTextAlignment:4];
      [(UILabel *)v29 setLineBreakMode:0];
      [(UILabel *)v29 setNumberOfLines:0];
      [(UILabel *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      [(CEKSlider *)v12 titleAlpha];
      v32 = [labelColor2 colorWithAlphaComponent:?];
      [(UILabel *)v29 setTextColor:v32];

      [(UILabel *)v29 setText:titleCopy];
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

- (id)formattedIntegerStringFromNumber:(id)number
{
  [number doubleValue];
  v5 = v4;
  _integerFormatter = [objc_opt_class() _integerFormatter];
  v7 = [(CEKSlider *)self _attributedStringFromValue:_integerFormatter usingFormatter:v5];

  return v7;
}

- (id)_attributedStringFromValue:(double)value usingFormatter:(id)formatter
{
  v24[1] = *MEMORY[0x1E69E9840];
  formatterCopy = formatter;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v8 = [formatterCopy stringFromNumber:v7];

  v9 = [formatterCopy stringFromNumber:&unk_1F2FE0320];
  if ([v8 isEqualToString:v9])
  {
    v10 = [formatterCopy stringFromNumber:&unk_1F2FDFAF8];

    v8 = v10;
  }

  v11 = CEKFrameworkBundle();
  preferredLocalizations = [v11 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject];
  _valueLabel = [(CEKSlider *)self _valueLabel];
  font = [_valueLabel font];
  [font pointSize];
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v18.receiver = self;
  v18.super_class = CEKSlider;
  v7 = [(CEKSlider *)&v18 hitTest:event withEvent:?];
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
      _contentScrollView = [(CEKSlider *)self _contentScrollView];

      v7 = _contentScrollView;
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
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel setTickMarkWidth:v4];

  _tickMarksView2 = [(CEKSlider *)self _tickMarksView];
  tickMarksModel2 = [_tickMarksView2 tickMarksModel];
  [tickMarksModel2 requiredWidth];
  v12 = v11;

  [(CEKSlider *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sliderVerticalAlignment = [(CEKSlider *)self sliderVerticalAlignment];
  v100 = v20;
  if (sliderVerticalAlignment == 2)
  {
    [(CEKSlider *)self levelIndicatorHeight];
    v31 = v30 + 33.0 - v6;
    [(CEKSlider *)self sliderVerticalOffset];
    v22 = v32 + v31;
    goto LABEL_7;
  }

  if (sliderVerticalAlignment == 1)
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
  if (!sliderVerticalAlignment)
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
  _dynamicTickMarksView = [(CEKSlider *)self _dynamicTickMarksView];
  [(CEKSlider *)self bounds];
  [(CEKSlider *)self convertRect:_dynamicTickMarksView toView:?];
  [_dynamicTickMarksView setVisibleBounds:?];
  v95 = CEKPixelWidthForView(self);
  _tickMarksView3 = [(CEKSlider *)self _tickMarksView];
  [_tickMarksView3 frameForAlignmentRect:{v23, v22, v12, v6}];
  v38 = v37;
  v39 = v23;
  v40 = v6;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  _tickMarksView4 = [(CEKSlider *)self _tickMarksView];
  [_tickMarksView4 setFrame:{v38, v42, v44, v46}];

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
    _levelIndicatorView = [(CEKSlider *)self _levelIndicatorView];
    [_levelIndicatorView setFrame:{v49, v56, v51, v53}];
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
  _levelIndicatorBackgroundView = [(CEKSlider *)self _levelIndicatorBackgroundView];
  [_levelIndicatorBackgroundView setFrame:{x, y, width, height}];

  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView setFrame:{v102, v99, v101, v100}];

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
  _contentScrollView2 = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView2 setContentInset:{0.0, v65, 0.0, v67}];

  _contentScrollView3 = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView3 setContentSize:{v96, rect}];

  if ([(CEKSlider *)self _markedValueWithinRange])
  {
    [(CEKSlider *)self _xOffsetForMarkedValue];
    v71 = v70 + -4.0;
    _dotView = [(CEKSlider *)self _dotView];
    [_dotView setFrame:{v71, v56, 8.0, 8.0}];
  }

  _titleLabel = [(CEKSlider *)self _titleLabel];
  _valueLabel = [(CEKSlider *)self _valueLabel];
  v75 = *(MEMORY[0x1E695EFD0] + 16);
  *&v104.a = *MEMORY[0x1E695EFD0];
  *&v104.c = v75;
  *&v104.tx = *(MEMORY[0x1E695EFD0] + 32);
  textOrientation = [(CEKSlider *)self textOrientation];
  if (textOrientation == 1)
  {
    v78 = -1.57079633;
  }

  else
  {
    v77 = 18.0;
    if (textOrientation != 2)
    {
      goto LABEL_17;
    }

    v78 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&v104, v78);
  v77 = 28.0;
LABEL_17:
  v103 = v104;
  [_valueLabel setTransform:&v103];
  v103 = v104;
  [_titleLabel setTransform:&v103];
  [(CEKSlider *)self labelVerticalPadding];
  v80 = v79;
  [_titleLabel setFrame:{10.0, v79, v101 + -20.0, 18.0}];
  [_valueLabel setFrame:{0.0, v80, v101, v77}];
  _edgeGradientView = [(CEKSlider *)self _edgeGradientView];
  v82 = _edgeGradientView;
  if (_edgeGradientView)
  {
    v84 = *MEMORY[0x1E69DDCE0];
    v83 = *(MEMORY[0x1E69DDCE0] + 8);
    v86 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *(MEMORY[0x1E69DDCE0] + 24);
    edgeGradientStyle = [_edgeGradientView edgeGradientStyle];
    if (edgeGradientStyle != 2)
    {
      if (edgeGradientStyle == 1)
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

      if (edgeGradientStyle)
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

- (void)_clampValuesAndUpdateScrollPosition:(BOOL)position
{
  positionCopy = position;
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
  if (positionCopy)
  {

    [(CEKSlider *)self _updateScrollViewPosition];
  }
}

- (void)setDefaultValue:(double)value
{
  if (self->_defaultValue != value)
  {
    self->_defaultValue = value;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];
  }
}

- (void)setMinimumValue:(double)value
{
  if (self->_minimumValue != value)
  {
    self->_minimumValue = value;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];

    [(CEKSlider *)self _updateMagneticTickIndexes];
  }
}

- (void)setMaximumValue:(double)value
{
  if (self->_maximumValue != value)
  {
    self->_maximumValue = value;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:1];

    [(CEKSlider *)self _updateMagneticTickIndexes];
  }
}

- (NSString)title
{
  _titleLabel = [(CEKSlider *)self _titleLabel];
  text = [_titleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _titleLabel = [(CEKSlider *)self _titleLabel];
  text = [_titleLabel text];
  v6 = [titleCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    _titleLabel2 = [(CEKSlider *)self _titleLabel];
    [_titleLabel2 setText:titleCopy];

    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)alpha
{
  if (self->_titleAlpha != alpha)
  {
    self->_titleAlpha = alpha;
    [(CEKSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setMarkedValue:(double)value animated:(BOOL)animated
{
  if (self->_markedValue != value)
  {
    self->_markedValue = value;
    [(CEKSlider *)self _updateMarkedViewAnimated:animated];

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

- (void)_updateMarkedViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _dotView = [(CEKSlider *)self _dotView];
  _markedValueWithinRange = [(CEKSlider *)self _markedValueWithinRange];
  if (!_markedValueWithinRange && !_dotView)
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
    v12 = v11 > 0.02 && _markedValueWithinRange;
    v13 = 0.0;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0.0;
    if (!_markedValueWithinRange || ![(CEKSlider *)self _isActive]&& v11 <= 0.01)
    {
      goto LABEL_22;
    }
  }

  _isDimmed = [(CEKSlider *)self _isDimmed];
  if (_isDimmed || _dotView)
  {
    if (_isDimmed)
    {
      goto LABEL_22;
    }
  }

  else
  {
    _dotView = objc_alloc_init(CEKSliderDotView);
    tickMarksConfiguration = [(CEKSlider *)self tickMarksConfiguration];
    -[CEKSliderDotView setUseLegibilityShadow:](_dotView, "setUseLegibilityShadow:", [tickMarksConfiguration useTickMarkLegibilityShadows]);

    [(CEKSliderDotView *)_dotView setAlpha:0.0];
    if ([(CEKSlider *)self _ticksStyle]== 1)
    {
      tickMarksConfiguration2 = [(CEKSlider *)self tickMarksConfiguration];
      secondaryTickMarkColor = [tickMarksConfiguration2 secondaryTickMarkColor];
      [(CEKSliderDotView *)_dotView setDotColor:secondaryTickMarkColor];
    }

    objc_storeStrong(&self->__dotView, _dotView);
    _contentScrollView = [(CEKSlider *)self _contentScrollView];
    _tickMarksView = [(CEKSlider *)self _tickMarksView];
    [_contentScrollView insertSubview:_dotView aboveSubview:_tickMarksView];

    [(CEKSlider *)self setNeedsLayout];
  }

  v13 = 1.0;
LABEL_22:
  if (!animatedCopy || ([(CEKSliderDotView *)_dotView alpha], v20 == v13))
  {
    [(CEKSliderDotView *)_dotView setAlpha:v13];
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
    v26 = _dotView;
    v27 = v13;
    v24 = _dotView;
    [v21 animateWithDuration:v25 animations:0 completion:v23];
  }
}

- (CEKTickMarksConfiguration)tickMarksConfiguration
{
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];

  return tickMarksModel;
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
      _levelIndicatorView = [(CEKSlider *)self _levelIndicatorView];
      [(CEKSlider *)self insertSubview:v7 belowSubview:_levelIndicatorView];
    }
  }

  _levelIndicatorView2 = [(CEKSlider *)self _levelIndicatorView];
  [_levelIndicatorView2 setAlpha:v3];
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  _dotView = [(CEKSlider *)self _dotView];
  [_dotView setUseLegibilityShadow:shadowsCopy];

  tickMarksConfiguration = [(CEKSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration setUseTickMarkLegibilityShadows:shadowsCopy];

  [(CEKSlider *)self _updateLegibilityBackground];
}

- (BOOL)useTickMarkLegibilityShadows
{
  tickMarksConfiguration = [(CEKSlider *)self tickMarksConfiguration];
  useTickMarkLegibilityShadows = [tickMarksConfiguration useTickMarkLegibilityShadows];

  return useTickMarkLegibilityShadows;
}

- (void)setTickMarkCount:(int64_t)count
{
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel setTickMarksCount:count];
}

- (int64_t)tickMarkCount
{
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  tickMarksCount = [tickMarksModel tickMarksCount];

  return tickMarksCount;
}

- (void)setLogarithmic:(BOOL)logarithmic
{
  logarithmicCopy = logarithmic;
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel setLogarithmic:logarithmicCopy];
}

- (BOOL)logarithmic
{
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  logarithmic = [tickMarksModel logarithmic];

  return logarithmic;
}

- (void)setTickMarkSize:(CGSize)size
{
  if (self->_tickMarkSize.width != size.width || self->_tickMarkSize.height != size.height)
  {
    self->_tickMarkSize = size;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)_createGradientIfNeeded
{
  _edgeGradientView = [(CEKSlider *)self _edgeGradientView];

  if (!_edgeGradientView)
  {
    v4 = objc_alloc_init(CEKEdgeGradientView);
    [(CEKSlider *)self _setEdgeGradientView:v4];
  }
}

- (void)setTransparentGradients
{
  [(CEKSlider *)self _createGradientIfNeeded];
  _edgeGradientView = [(CEKSlider *)self _edgeGradientView];
  [_edgeGradientView setEdgeGradientStyleBlack];
  v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  layer = [_edgeGradientView layer];
  [layer setCompositingFilter:v3];

  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [(CEKSlider *)self insertSubview:_edgeGradientView aboveSubview:_contentScrollView];
}

- (void)setOpaqueGradientsWithColor:(id)color
{
  colorCopy = color;
  [(CEKSlider *)self _createGradientIfNeeded];
  _edgeGradientView = [(CEKSlider *)self _edgeGradientView];
  [_edgeGradientView setCustomEdgeGradientStyleWithColor:colorCopy];

  layer = [_edgeGradientView layer];
  [layer setCompositingFilter:0];

  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [(CEKSlider *)self insertSubview:_edgeGradientView aboveSubview:_contentScrollView];
}

- (void)removeGradients
{
  _edgeGradientView = [(CEKSlider *)self _edgeGradientView];
  [_edgeGradientView removeFromSuperview];

  [(CEKSlider *)self _setEdgeGradientView:0];
}

- (void)setGradientInsets:(id)insets
{
  var1 = insets.var1;
  var0 = insets.var0;
  p_gradientInsets = &self->_gradientInsets;
  if (!CEKEdgeInsetsEqualToInsets(insets.var0, insets.var1, self->_gradientInsets.startInset, self->_gradientInsets.endInset))
  {
    p_gradientInsets->startInset = var0;
    p_gradientInsets->endInset = var1;

    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled dimmed:(BOOL)dimmed animated:(BOOL)animated
{
  animatedCopy = animated;
  dimmedCopy = dimmed;
  enabledCopy = enabled;
  if ([(CEKSlider *)self isEnabled]!= enabled || [(CEKSlider *)self _isDimmed]!= dimmedCopy)
  {
    [(CEKSlider *)self setEnabled:enabledCopy];
    [(CEKSlider *)self _setDimmed:dimmedCopy animated:animatedCopy];
    [(CEKSlider *)self contactEndedWithAction:0];
    _dynamicTickMarksView = [(CEKSlider *)self _dynamicTickMarksView];
    [_dynamicTickMarksView setEnabled:enabledCopy];
  }
}

- (void)_setDimmed:(BOOL)dimmed animated:(BOOL)animated
{
  if (self->__dimmed != dimmed)
  {
    self->__dimmed = dimmed;
    [(CEKSlider *)self _updateEnableAppearanceStateAnimated:animated];
  }
}

- (void)_updateEnableAppearanceStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _isDimmed = [(CEKSlider *)self _isDimmed];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CEKSlider__updateEnableAppearanceStateAnimated___block_invoke;
  aBlock[3] = &unk_1E7CC6AC0;
  aBlock[4] = self;
  v10 = _isDimmed;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (animatedCopy)
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

  [(CEKSlider *)self _updateMarkedViewAnimated:animatedCopy];
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

- (void)setMagneticRange:(id)range
{
  rangeCopy = range;
  if (self->_magneticRange != rangeCopy)
  {
    v6 = rangeCopy;
    objc_storeStrong(&self->_magneticRange, range);
    [(CEKSlider *)self _updateMagneticTickIndexes];
    rangeCopy = v6;
  }
}

- (void)_updateMagneticTickIndexes
{
  magneticRange = [(CEKSlider *)self magneticRange];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];

  if ([magneticRange count])
  {
    v6 = 0;
    do
    {
      v7 = [magneticRange valueAtIndex:v6];
      [v7 doubleValue];
      v9 = v8;

      [(CEKSlider *)self minimumValue];
      v11 = v10;
      [(CEKSlider *)self maximumValue];
      [tickMarksModel xOffsetForNormalizedValue:{CEKProgress(v9, v11, v12)}];
      v14 = [tickMarksModel floorTickMarkIndexForXOffset:v13 + 0.001];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      [indexSet addIndex:v15];
      ++v6;
    }

    while (v6 < [magneticRange count]);
  }

  _dynamicTickMarksView = [(CEKSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView setMagneticTickMarkIndexes:indexSet];
}

- (void)_resetSnapped
{
  [(CEKSlider *)self _setSnapped:0];
  [(CEKSlider *)self _setSnappedOffset:0.0];

  [(CEKSlider *)self _setUnsnappingProgress:0.0];
}

- (void)performWaveAnimation
{
  _dynamicTickMarksView = [(CEKSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView performWaveAnimation];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKSlider;
  [(CEKSlider *)&v3 tintColorDidChange];
  [(CEKSlider *)self _updateColorsAnimated:0];
}

- (void)_updateColorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CEKSlider *)self _isActive])
  {
    [(CEKSlider *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v5 = ;
  tintColor = [(CEKSlider *)self tintColor];
  if (![(CEKSlider *)self _isActive]&& [(CEKSlider *)self valueLabelVisibility]== 2)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];

    tintColor = labelColor;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__CEKSlider__updateColorsAnimated___block_invoke;
  aBlock[3] = &unk_1E7CC6AE8;
  aBlock[4] = self;
  v8 = v5;
  v14 = v8;
  v9 = tintColor;
  v15 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (animatedCopy)
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

- (void)_setActive:(BOOL)active animated:(BOOL)animated
{
  if (self->__active != active)
  {
    animatedCopy = animated;
    activeCopy = active;
    self->__active = active;
    if ([(CEKSlider *)self valueLabelVisibility]== 1)
    {
      [(CEKSlider *)self _setShowValueLabel:activeCopy animated:animatedCopy];
    }

    [(CEKSlider *)self _updateColorsAnimated:animatedCopy];

    [(CEKSlider *)self _updateMarkedViewAnimated:animatedCopy];
  }
}

- (double)_xOffsetForMarkedValue
{
  [(CEKSlider *)self markedValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v4 = v3;
  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView contentInset];
  v7 = v4 + v6;

  return v7;
}

- (double)xOffsetForValue:(double)value
{
  [(CEKSlider *)self minimumValue];
  v6 = v5;
  [(CEKSlider *)self maximumValue];
  v8 = CEKProgress(value, v6, v7);
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel xOffsetForNormalizedValue:v8];
  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView contentInset];

  UIRoundToViewScale();
  return result;
}

- (void)_updateScrollViewPosition
{
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(CEKSlider *)self value];
  [(CEKSlider *)self xOffsetForValue:?];
  v5 = v4;
  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView setContentOffset:0 animated:{v5, v3}];
}

- (void)_setValue:(double)value shouldSendActions:(BOOL)actions shouldUpdateScrollPosition:(BOOL)position
{
  if (self->_value != value)
  {
    actionsCopy = actions;
    self->_value = value;
    [(CEKSlider *)self _clampValuesAndUpdateScrollPosition:position];
    [(CEKSlider *)self _updateMarkedViewAnimated:1];
    [(CEKSlider *)self _updateValueLabel];
    if (actionsCopy)
    {

      [(CEKSlider *)self sendActionsForControlEvents:4096];
    }
  }
}

- (double)_valueForScrollViewXOffset:(double)offset
{
  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  [_contentScrollView contentInset];
  v7 = v6;
  v8 = (v6 + offset) / CEKScrollableDistanceInScrollView(_contentScrollView);
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];

  magneticRange = [(CEKSlider *)self magneticRange];
  [(CEKSlider *)self minimumValue];
  v13 = v12;
  [(CEKSlider *)self maximumValue];
  v15 = v14;
  [tickMarksModel absoluteValueForNormalizedValue:v8 inAbsoluteRangeSize:v14 - v13];
  v17 = v13 + v16;
  if ([magneticRange count])
  {
    v18 = [magneticRange valueAtIndex:{objc_msgSend(magneticRange, "indexOfValueClosestToValue:", v17)}];
    [v18 doubleValue];
    v20 = v19;

    [tickMarksModel xOffsetForNormalizedValue:{CEKProgress(v20, v13, v15)}];
    v22 = v21 - v7;
    v23 = CEKPixelWidthForView(self) * 0.5;
    if (vabdd_f64(v22, offset) > v23)
    {
      [tickMarksModel xOffsetForNormalizedValue:1.0];
      v20 = v17;
      if (v24 - v7 - offset < v23)
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

- (void)setValueLabelVisibility:(int64_t)visibility
{
  if (self->_valueLabelVisibility != visibility)
  {
    self->_valueLabelVisibility = visibility;
    if (visibility == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = visibility == 1 && [(CEKSlider *)self _isActive];
    }

    [(CEKSlider *)self _setShowValueLabel:v5 animated:0];
  }
}

- (void)_setShowValueLabel:(BOOL)label animated:(BOOL)animated
{
  animatedCopy = animated;
  labelCopy = label;
  v7 = 0.0;
  if (label)
  {
    _valueLabel = [(CEKSlider *)self _valueLabel];

    v7 = 1.0;
    if (!_valueLabel)
    {
      v11 = objc_alloc(MEMORY[0x1E69DCC10]);
      v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v12 setBackgroundColor:clearColor];

      [(UILabel *)v12 setTextAlignment:1];
      [(UILabel *)v12 setLineBreakMode:4];
      [(UILabel *)v12 setNumberOfLines:1];
      [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      valueLabel = self->__valueLabel;
      self->__valueLabel = v12;
      v15 = v12;

      [(CEKSlider *)self addSubview:self->__valueLabel];
      [(CEKSlider *)self _updateFonts];
      if (animatedCopy)
      {
        goto LABEL_4;
      }

LABEL_9:
      _valueLabel2 = [(CEKSlider *)self _valueLabel];
      [_valueLabel2 setAlpha:v7];

      goto LABEL_10;
    }
  }

  if (!animatedCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (labelCopy)
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
  [(CEKSlider *)self _updateColorsAnimated:animatedCopy];
  [(CEKSlider *)self _updateValueLabel];
  [(CEKSlider *)self setNeedsLayout];
}

void __41__CEKSlider__setShowValueLabel_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _valueLabel];
  [v2 setAlpha:v1];
}

- (void)setValueLabelFormat:(int64_t)format
{
  if (self->_valueLabelFormat != format)
  {
    self->_valueLabelFormat = format;
    [(CEKSlider *)self _updateValueLabel];
  }
}

- (void)setValueLabelMultiplier:(double)multiplier
{
  if (self->_valueLabelMultiplier != multiplier)
  {
    self->_valueLabelMultiplier = multiplier;
    [(CEKSlider *)self _updateValueLabel];
  }
}

- (void)_updateValueLabel
{
  _valueLabel = [(CEKSlider *)self _valueLabel];
  [_valueLabel alpha];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  valueLabelFormat = [(CEKSlider *)self valueLabelFormat];
  if (valueLabelFormat == 1)
  {
    _decimalFormatter = [objc_opt_class() _decimalFormatter];
  }

  else
  {
    if (valueLabelFormat)
    {
      v8 = 0;
      goto LABEL_9;
    }

    _decimalFormatter = [objc_opt_class() _integerFormatter];
  }

  v8 = _decimalFormatter;
LABEL_9:
  [(CEKSlider *)self value];
  v10 = v9;
  [(CEKSlider *)self valueLabelMultiplier];
  v13 = [(CEKSlider *)self _attributedStringFromValue:v8 usingFormatter:v10 * v11];

LABEL_10:
  _valueLabel2 = [(CEKSlider *)self _valueLabel];
  [_valueLabel2 setAttributedText:v13];
}

- (void)setFontStyle:(unint64_t)style
{
  if (self->_fontStyle != style)
  {
    self->_fontStyle = style;
    [(CEKSlider *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  fontStyle = [(CEKSlider *)self fontStyle];
  v4 = CEKFontOfSizeAndStyle(fontStyle, 14.0);
  _titleLabel = [(CEKSlider *)self _titleLabel];
  [_titleLabel setFont:v4];

  v7 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(fontStyle, 14.0);
  _valueLabel = [(CEKSlider *)self _valueLabel];
  [_valueLabel setFont:v7];
}

- (void)setSelectionFeedbackProfile:(int64_t)profile
{
  _feedbackGenerator = [(CEKSlider *)self _feedbackGenerator];
  [_feedbackGenerator setProfile:profile];
}

- (int64_t)selectionFeedbackProfile
{
  _feedbackGenerator = [(CEKSlider *)self _feedbackGenerator];
  profile = [_feedbackGenerator profile];

  return profile;
}

- (void)setTextOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_textOrientation != orientation)
  {
    if (animated)
    {
      [(CEKSlider *)self layoutIfNeeded];
      self->_textOrientation = orientation;
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
      self->_textOrientation = orientation;

      [(CEKSlider *)self setNeedsLayout];
    }
  }
}

- (int64_t)titleAlignment
{
  _titleLabel = [(CEKSlider *)self _titleLabel];
  textAlignment = [_titleLabel textAlignment];

  return textAlignment;
}

- (void)setTitleAlignment:(int64_t)alignment
{
  _titleLabel = [(CEKSlider *)self _titleLabel];
  [_titleLabel setTextAlignment:alignment];
}

- (void)setSliderVerticalOffset:(double)offset
{
  if (self->_sliderVerticalOffset != offset)
  {
    self->_sliderVerticalOffset = offset;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setLabelVerticalPadding:(double)padding
{
  if (self->_labelVerticalPadding != padding)
  {
    self->_labelVerticalPadding = padding;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setSliderVerticalAlignment:(int64_t)alignment
{
  if (self->_sliderVerticalAlignment != alignment)
  {
    self->_sliderVerticalAlignment = alignment;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (void)setLevelIndicatorHeight:(double)height
{
  if (self->_levelIndicatorHeight != height)
  {
    self->_levelIndicatorHeight = height;
    [(CEKSlider *)self setNeedsLayout];
  }
}

- (CGRect)frameForTitleLabel
{
  [(CEKSlider *)self layoutIfNeeded];
  _titleLabel = [(CEKSlider *)self _titleLabel];
  [_titleLabel frame];
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
  _valueLabel = [(CEKSlider *)self _valueLabel];
  [_valueLabel frame];
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
  _levelIndicatorView = [(CEKSlider *)self _levelIndicatorView];
  [_levelIndicatorView frame];
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
  _contentScrollView = [(CEKSlider *)self _contentScrollView];
  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  [_tickMarksView frame];
  [_contentScrollView convertRect:self toView:?];
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _dynamicTickMarksView = [(CEKSlider *)self _dynamicTickMarksView];
  [(CEKSlider *)self bounds];
  [(CEKSlider *)self convertRect:_dynamicTickMarksView toView:?];
  [_dynamicTickMarksView setVisibleBounds:?];
  if ([(CEKSlider *)self _isreAdjustingOffsets])
  {
    goto LABEL_30;
  }

  [scrollCopy contentOffset];
  v45 = v6;
  v46 = v7;
  if (self->_delegateFlags.respondsToWillUpdateValue)
  {
    panGestureRecognizer = [scrollCopy panGestureRecognizer];
    [panGestureRecognizer velocityInView:self];
    v10 = v9;

    delegate = [(CEKSlider *)self delegate];
    [delegate slider:self willUpdateValue:&v45 withVelocity:v10];

    [(CEKSlider *)self set_reAdjustingOffsets:1];
    [scrollCopy setContentOffset:{v45, v46}];
    [(CEKSlider *)self set_reAdjustingOffsets:0];
  }

  _isScrollExternallyAnimating = [(CEKSlider *)self _isExternallyScrolling]|| [(CEKSlider *)self _isScrollExternallyAnimating];
  if ([scrollCopy isTracking])
  {
    isDecelerating = 1;
LABEL_10:
    [scrollCopy contentOffset];
    [(CEKSlider *)self _valueForScrollViewXOffset:?];
    v14 = 1;
    [(CEKSlider *)self _setValue:1 shouldSendActions:0 shouldUpdateScrollPosition:?];
    goto LABEL_12;
  }

  isDecelerating = [scrollCopy isDecelerating];
  if ((isDecelerating | _isScrollExternallyAnimating))
  {
    goto LABEL_10;
  }

  v14 = 0;
  isDecelerating = 0;
LABEL_12:
  if (self->_delegateFlags.respondsToDidScroll)
  {
    delegate2 = [(CEKSlider *)self delegate];
    [delegate2 sliderDidScroll:self];
  }

  _tickMarksView = [(CEKSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];

  [(CEKSlider *)self value];
  v19 = v18;
  [(CEKSlider *)self minimumValue];
  v21 = v20;
  [(CEKSlider *)self maximumValue];
  [tickMarksModel xOffsetForNormalizedValue:{CEKProgress(v19, v21, v22)}];
  v24 = v23;
  _tickMarksView2 = [(CEKSlider *)self _tickMarksView];
  tickMarksModel2 = [_tickMarksView2 tickMarksModel];
  v27 = [tickMarksModel2 floorTickMarkIndexForXOffset:v24 + 0.001];

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if ([(CEKSlider *)self _tickMarkIndex]== v27)
  {
    goto LABEL_24;
  }

  [(CEKSlider *)self _setTickMarkIndex:v27];
  _dynamicTickMarksView2 = [(CEKSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView2 setSelectedTickMarkIndex:v27 animated:v14];

  if (!v14)
  {
    goto LABEL_24;
  }

  feedbackScope = [(CEKSlider *)self feedbackScope];
  if ((feedbackScope - 1) > 1)
  {
    goto LABEL_24;
  }

  v30 = feedbackScope;
  tickMarksCount = [tickMarksModel tickMarksCount];
  v43 = [tickMarksModel isMainTickMarkAtIndex:v27];
  _dynamicTickMarksView3 = [(CEKSlider *)self _dynamicTickMarksView];
  magneticTickMarkIndexes = [_dynamicTickMarksView3 magneticTickMarkIndexes];
  v33 = [magneticTickMarkIndexes containsIndex:v27];

  if (!v27 || v27 == tickMarksCount - 1)
  {
    _feedbackGenerator = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator performFeedback];

    _feedbackGenerator2 = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator2 playEndTickSound];
  }

  else if ((v43 | v33))
  {
    _feedbackGenerator3 = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator3 performFeedback];

    _feedbackGenerator2 = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator2 playMajorTickSound];
  }

  else
  {
    if (v30 != 2)
    {
      goto LABEL_24;
    }

    _feedbackGenerator4 = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator4 performFeedback];

    _feedbackGenerator2 = [(CEKSlider *)self _feedbackGenerator];
    [_feedbackGenerator2 playMinorTickSound];
  }

LABEL_24:
  [scrollCopy contentInset];
  v38 = v37;
  v39 = CEKScrollableDistanceInScrollView(scrollCopy) - v37;
  v40 = v45 > v39 + 20.0 || v45 < -20.0 - v38;
  [(CEKSlider *)self _setOverscrolling:v40];
  if (isDecelerating)
  {
    _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator invalidate];

    [(CEKSlider *)self _setExternalScrollOffsetAnimator:0];
    [(CEKSlider *)self contactEndedWithAction:0];
    [(CEKSlider *)self _resetSnapped];
  }

LABEL_30:
}

- (void)_setOverscrolling:(BOOL)overscrolling
{
  if (self->__overscrolling != overscrolling)
  {
    overscrollingCopy = overscrolling;
    self->__overscrolling = overscrolling;
    feedbackScope = [(CEKSlider *)self feedbackScope];
    if (overscrollingCopy)
    {
      if (feedbackScope)
      {
        _feedbackGenerator = [(CEKSlider *)self _feedbackGenerator];
        [_feedbackGenerator playOverscrollTickSound];
      }
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  _feedbackGenerator = [(CEKSlider *)self _feedbackGenerator];
  [_feedbackGenerator prepareFeedback];

  [(CEKSlider *)self _setActive:1 animated:1];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    delegate = [(CEKSlider *)self delegate];
    [delegate sliderWillBeginScrolling:self];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (self->_delegateFlags.respondsToWillEndScrolling)
  {
    y = velocity.y;
    x = velocity.x;
    delegate = [(CEKSlider *)self delegate];
    [delegate sliderWillEndScrolling:self withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(CEKSlider *)self _sliderDidEndScrolling];
  }
}

- (void)_sliderDidEndScrolling
{
  [(CEKSlider *)self _setActive:0 animated:1];
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    delegate = [(CEKSlider *)self delegate];
    [delegate sliderDidEndScrolling:self];
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

- (void)contactBeganWithAction:(id)action
{
  actionCopy = action;
  if (![(CEKSlider *)self _isExternalScrollingAllowed]&& [(CEKSlider *)self isEnabled])
  {
    [(CEKSlider *)self _setExternalScrollingAllowed:1];
    [(CEKSlider *)self _setExternalOverScroll:0.0];
    _sliderDriver = [(CEKSlider *)self _sliderDriver];
    [_sliderDriver contactBeganWithAction:actionCopy];

    _contentScrollView = [(CEKSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    v7 = v6;
    [_contentScrollView setContentOffset:0 animated:?];
    [(CEKSlider *)self _applyExternalTarget:2 mode:v7];
  }
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  if ([(CEKSlider *)self _isExternalScrollingAllowed])
  {
    _contentScrollView = [(CEKSlider *)self _contentScrollView];
    if (![(CEKSlider *)self _isExternallyScrolling])
    {
      [(CEKSlider *)self _setExternallyScrolling:1];
      [(CEKSlider *)self scrollViewWillBeginDragging:_contentScrollView];
    }

    [(CEKSlider *)self _createExternalScrollAnimatorIfNeeded];
    _sliderDriver = [(CEKSlider *)self _sliderDriver];
    [_sliderDriver distanceTraveled];
    v8 = v7;
    [_sliderDriver contactUpdatedWithAction:actionCopy];
    [_sliderDriver distanceTraveled];
    v10 = v9 - v8;
    _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator value];
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

    magneticRange = [(CEKSlider *)self magneticRange];
    if (!magneticRange)
    {
      goto LABEL_32;
    }

    [(CEKSlider *)self value];
    v34 = [magneticRange indexOfValueClosestToValue:?];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v35 = [magneticRange valueAtIndex:v34];
    [v35 doubleValue];
    v37 = v36;

    [(CEKSlider *)self xOffsetForValue:v37];
    traitCollection = [(CEKSlider *)self traitCollection];
    [traitCollection displayScale];
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

- (void)contactEndedWithAction:(id)action
{
  v67 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (![(CEKSlider *)self _isExternalScrollingAllowed])
  {
    goto LABEL_27;
  }

  [(CEKSlider *)self _resetSnapped];
  [(CEKSlider *)self _setExternalScrollingAllowed:0];
  [(CEKSlider *)self _setExternallyScrolling:0];
  _sliderDriver = [(CEKSlider *)self _sliderDriver];
  [_sliderDriver contactEndedWithAction:actionCopy];
  [_sliderDriver velocity];
  v7 = v6;
  [_sliderDriver distanceToDecelerate];
  v9 = v8;
  _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
  [_externalScrollOffsetAnimator value];
  v12 = v11;

  traitCollection = [(CEKSlider *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v15 = v14;

  [(CEKSlider *)self minimumValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v17 = v16;
  [(CEKSlider *)self maximumValue];
  [(CEKSlider *)self xOffsetForValue:?];
  v19 = v18;
  v20 = fmax(v17, fmin(v18, v15));
  magneticRange = [(CEKSlider *)self magneticRange];
  if (magneticRange)
  {
    _externalScrollOffsetAnimator2 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator2 value];
    [(CEKSlider *)self _valueForScrollViewXOffset:?];
    v24 = v23;

    v25 = [magneticRange indexOfValueClosestToValue:v24];
    v26 = [magneticRange indexOfValueGreaterThanValue:v24];
    v27 = [magneticRange indexOfValueLessThanValue:v24];
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

        v45 = [magneticRange valueAtIndex:v27];
        [v45 doubleValue];
        v31 = v46;

        [(CEKSlider *)self xOffsetForValue:v31];
        traitCollection2 = [(CEKSlider *)self traitCollection];
        [traitCollection2 displayScale];
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
        v29 = [magneticRange valueAtIndex:v26];
        [v29 doubleValue];
        v31 = v30;

        [(CEKSlider *)self xOffsetForValue:v31];
        traitCollection3 = [(CEKSlider *)self traitCollection];
        [traitCollection3 displayScale];
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

    v36 = [magneticRange valueAtIndex:v25];
    [v36 doubleValue];
    v38 = v37;

    if (vabdd_f64(v38, v24) < 0.1)
    {
      [(CEKSlider *)self xOffsetForValue:v38];
      traitCollection4 = [(CEKSlider *)self traitCollection];
      [traitCollection4 displayScale];
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
    _contentScrollView = [(CEKSlider *)self _contentScrollView];
    [(CEKSlider *)self scrollViewDidEndDragging:_contentScrollView willDecelerate:1];

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
  _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
  [_externalScrollOffsetAnimator presentationValue];
  [_externalScrollOffsetAnimator value];
  v3 = BSFloatEqualToFloat();

  return v3 ^ 1;
}

- (void)_applyExternalTarget:(double)target mode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
  UIRoundToViewScale();
  v10 = v9;
  if (!_externalScrollOffsetAnimator || ([_externalScrollOffsetAnimator value], v10 != v11))
  {
    [(CEKSlider *)self _createExternalScrollAnimatorIfNeeded];
    _externalScrollOffsetAnimator2 = [(CEKSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator2 value];
    v14 = v10 - v13;

    if (v14 != 0.0)
    {
      contactObserver = [(CEKSlider *)self contactObserver];
      [contactObserver observeContactRecognitionDelta:v14];
    }

    v16 = MEMORY[0x1E69DD250];
    _externalScrollSettings = [(CEKSlider *)self _externalScrollSettings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__CEKSlider__applyExternalTarget_mode_completion___block_invoke;
    v18[3] = &unk_1E7CC6660;
    v18[4] = self;
    *&v18[5] = v10;
    [v16 cek_animateWithSettings:_externalScrollSettings mode:mode animations:v18 completion:completionCopy];
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
  _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];

  if (!_externalScrollOffsetAnimator)
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
  _externalScrollOffsetAnimator = [(CEKSlider *)self _externalScrollOffsetAnimator];
  if (_externalScrollOffsetAnimator)
  {
    v5 = _externalScrollOffsetAnimator;
    _contentScrollView = [(CEKSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    [v5 presentationValue];
    [_contentScrollView setContentOffset:?];

    _externalScrollOffsetAnimator = v5;
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