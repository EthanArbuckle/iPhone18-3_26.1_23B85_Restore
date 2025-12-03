@interface CEKDiscreteSlider
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)_isScrollActive;
- (BOOL)_isScrollExternallyAnimating;
- (BOOL)_shouldUseHighlightColor;
- (BOOL)_shouldUseStepwiseExternalScrolling;
- (BOOL)highlightSelectedIndex;
- (BOOL)useTickMarkLegibilityShadows;
- (CEKContactObserver)contactObserver;
- (CEKDiscreteSlider)initWithFrame:(CGRect)frame;
- (CEKDiscreteSlider)initWithTickMarkStyle:(unint64_t)style;
- (CEKDiscreteSliderDelegate)delegate;
- (CEKFluidBehaviorSettings)_externalScrollSettings;
- (CEKSliderPositionDriver)_sliderDriver;
- (CEKTickMarksConfiguration)tickMarksConfiguration;
- (CGPoint)_contentOffsetForIndex:(unint64_t)index;
- (CGSize)intrinsicContentSize;
- (double)_interpolatedIndexForContentOffset:(CGPoint)offset;
- (id)_createLegibilityImage;
- (id)_hidPassthroughDriver;
- (int64_t)_externalScrollingAllowedIndexForIndex:(int64_t)index;
- (int64_t)selectionFeedbackProfile;
- (unint64_t)_biasedIndexForContentOffset:(CGPoint)offset;
- (unint64_t)_indexForContentOffset:(CGPoint)offset;
- (unint64_t)_nearestIndexForContentOffset:(CGPoint)offset;
- (unint64_t)indexForTickMarkAtPoint:(CGPoint)point in:(id)in;
- (void)_applyExternalTarget:(double)target mode:(int64_t)mode completion:(id)completion;
- (void)_createExternalScrollAnimatorIfNeeded;
- (void)_createGradientIfNeeded;
- (void)_handleExternalScrollAnimated;
- (void)_layoutSliderContentAtY:(double)y withHorizontalPadding:(double)padding;
- (void)_layoutSubviewsWithLabelRotation:(double)rotation;
- (void)_layoutSubviewsWithNoRotation;
- (void)_limitExternalScrollIndexesForCurrentSelectionIfNeeded;
- (void)_setOverscrolling:(BOOL)overscrolling;
- (void)_setSelectedIndex:(unint64_t)index shouldDelegate:(BOOL)delegate wantsFeedbackEmitted:(BOOL)emitted shouldScroll:(BOOL)scroll scrollDuration:(double)duration scrollCurve:(id)curve scrollCompletion:(id)completion;
- (void)_sliderDidEndScrolling;
- (void)_updateAppearanceForActiveScrolling;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)_updateFonts;
- (void)_updateMarkedIndexViewAnimated:(BOOL)animated;
- (void)_updateScrollViewContentOffset;
- (void)_updateTextLegibilityBackground;
- (void)_updateTickMarkCount;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)removeGradients;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBounds:(CGRect)bounds;
- (void)setColorHighlight:(unint64_t)highlight animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)setFontStyle:(unint64_t)style;
- (void)setFrame:(CGRect)frame;
- (void)setGradientInsets:(id)insets;
- (void)setHighlightSelectedIndex:(BOOL)index animated:(BOOL)animated;
- (void)setIndexCount:(unint64_t)count;
- (void)setLabelVerticalPadding:(double)padding;
- (void)setLevelIndicatorHeight:(double)height;
- (void)setMagneticIndexes:(id)indexes;
- (void)setMarkedIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setOpaqueGradientsWithColor:(id)color;
- (void)setSelectedIndex:(unint64_t)index animatedDuration:(double)duration animatedCurve:(id)curve completion:(id)completion;
- (void)setSelectionFeedbackProfile:(int64_t)profile;
- (void)setSliderVerticalAlignment:(int64_t)alignment;
- (void)setSliderVerticalOffset:(double)offset;
- (void)setTextOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setTickMarkCountBetweenIndexes:(unint64_t)indexes;
- (void)setTickMarksHeight:(double)height animated:(BOOL)animated;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTitleText:(id)text;
- (void)setTransparentGradients;
- (void)setUseTextLegibilityBackgrounds:(BOOL)backgrounds;
- (void)setUseTextLegibilityShadows:(BOOL)shadows;
- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows;
- (void)tickMarksViewDidChangeWidthForTickMarkCount:(id)count;
- (void)updateValueLabel;
@end

@implementation CEKDiscreteSlider

- (CEKDiscreteSlider)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(CEKDiscreteSlider *)self initWithTickMarkStyle:0];
  v8 = v7;
  if (v7)
  {
    [(CEKDiscreteSlider *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (CEKDiscreteSlider)initWithTickMarkStyle:(unint64_t)style
{
  v18.receiver = self;
  v18.super_class = CEKDiscreteSlider;
  v4 = [(CEKDiscreteSlider *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKDiscreteSlider *)v4 setTintColor:systemYellowColor];

    v4->_textOrientation = 0;
    v4->_fontStyle = 0;
    v4->_colorHighlight = 1;
    v4->_markedIndex = -1;
    v4->_tickMarksHeight = 10.0;
    v4->_labelVerticalPadding = 10.0;
    v4->_sliderVerticalAlignment = 2;
    v4->_levelIndicatorHeight = 26.0;
    v6 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v6 setDelegate:v4];
    [v6 setShowsVerticalScrollIndicator:0];
    [v6 setShowsHorizontalScrollIndicator:0];
    [v6 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    panGestureRecognizer = [v6 panGestureRecognizer];
    [panGestureRecognizer _wantsGESEvents:1];

    objc_storeStrong(&v4->__contentScrollView, v6);
    if (style)
    {
      if (style == 1)
      {
        v8 = objc_alloc_init(CEKDynamicTickMarksView);
        dynamicTickMarksView = v4->__dynamicTickMarksView;
        v4->__dynamicTickMarksView = v8;

        objc_storeStrong(&v4->__tickMarksView, v4->__dynamicTickMarksView);
      }
    }

    else
    {
      v10 = objc_alloc_init(CEKSliderTickMarksView);
      tickMarksView = v4->__tickMarksView;
      v4->__tickMarksView = v10;
    }

    [(CEKTickMarksContainer *)v4->__tickMarksView setDelegate:v4];
    v4->_ticksStyle = style;
    [v6 addSubview:v4->__tickMarksView];
    [(CEKDiscreteSlider *)v4 addSubview:v6];
    if (!v4->__dynamicTickMarksView)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [(UIView *)v12 setUserInteractionEnabled:0];
      levelIndicatorView = v4->__levelIndicatorView;
      v4->__levelIndicatorView = v12;
      v14 = v12;

      [(CEKDiscreteSlider *)v4 addSubview:v14];
    }

    [(CEKDiscreteSlider *)v4 _updateColorsAnimated:0];
    [(CEKDiscreteSlider *)v4 updateValueLabel];
    v15 = objc_alloc_init(CEKSelectionFeedbackGenerator);
    feedbackGenerator = v4->__feedbackGenerator;
    v4->__feedbackGenerator = v15;

    v4->_biasScrollingToCurrentSelection = 1;
    v4->_feedbackScope = 2;
  }

  return v4;
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
    p_delegateFlags->respondsToDidEndScrolling = objc_opt_respondsToSelector() & 1;
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v6 layoutSubviews];
  [(CEKDiscreteSlider *)self bounds];
  if (!CGRectIsEmpty(v7))
  {
    textOrientation = [(CEKDiscreteSlider *)self textOrientation];
    switch(textOrientation)
    {
      case 0:
        [(CEKDiscreteSlider *)self _layoutSubviewsWithNoRotation];
        goto LABEL_9;
      case 2:
        v4 = 1.57079633;
        break;
      case 1:
        v4 = -1.57079633;
        break;
      default:
LABEL_9:
        _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
        [(CEKDiscreteSlider *)self bounds];
        [(CEKDiscreteSlider *)self convertRect:_dynamicTickMarksView toView:?];
        [_dynamicTickMarksView setVisibleBounds:?];

        return;
    }

    [(CEKDiscreteSlider *)self _layoutSubviewsWithLabelRotation:v4];
    goto LABEL_9;
  }
}

- (CGSize)intrinsicContentSize
{
  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView contentSize];
  v5 = v4;

  [(CEKDiscreteSlider *)self labelVerticalPadding];
  v7 = v6;
  if ([(CEKDiscreteSlider *)self textOrientation])
  {
    v8 = v7 + 40.0 + 5.0 + 10.0;
    [(CEKDiscreteSlider *)self levelIndicatorHeight];
    v10 = v9 + 5.0 + v9 + 5.0;
    [(CEKDiscreteSlider *)self tickMarksHeight];
    v12 = v8 + (v10 - v11) * 0.5 + 10.0;
  }

  else
  {
    [(CEKDiscreteSlider *)self levelIndicatorHeight];
    v12 = v7 + 18.0 + 5.0 + v13 + 10.0;
  }

  v14 = v5;
  result.height = v12;
  result.width = v14;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];
}

- (void)setUseTextLegibilityBackgrounds:(BOOL)backgrounds
{
  if (self->_useTextLegibilityBackgrounds != backgrounds)
  {
    self->_useTextLegibilityBackgrounds = backgrounds;
    [(CEKDiscreteSlider *)self _updateTextLegibilityBackground];

    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setUseTextLegibilityShadows:(BOOL)shadows
{
  if (self->_useTextLegibilityShadows != shadows)
  {
    self->_useTextLegibilityShadows = shadows;
    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  _dotView = [(CEKDiscreteSlider *)self _dotView];
  [_dotView setUseLegibilityShadow:shadowsCopy];

  tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration setUseTickMarkLegibilityShadows:shadowsCopy];
}

- (BOOL)useTickMarkLegibilityShadows
{
  tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  useTickMarkLegibilityShadows = [tickMarksConfiguration useTickMarkLegibilityShadows];

  return useTickMarkLegibilityShadows;
}

- (void)_createGradientIfNeeded
{
  _edgeGradientView = [(CEKDiscreteSlider *)self _edgeGradientView];

  if (!_edgeGradientView)
  {
    v4 = objc_alloc_init(CEKEdgeGradientView);
    [(CEKDiscreteSlider *)self set_edgeGradientView:v4];
  }
}

- (void)setTransparentGradients
{
  [(CEKDiscreteSlider *)self _createGradientIfNeeded];
  _edgeGradientView = [(CEKDiscreteSlider *)self _edgeGradientView];
  [_edgeGradientView setEdgeGradientStyleBlack];
  v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  layer = [_edgeGradientView layer];
  [layer setCompositingFilter:v3];

  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [(CEKDiscreteSlider *)self insertSubview:_edgeGradientView aboveSubview:_contentScrollView];
}

- (void)setOpaqueGradientsWithColor:(id)color
{
  colorCopy = color;
  [(CEKDiscreteSlider *)self _createGradientIfNeeded];
  _edgeGradientView = [(CEKDiscreteSlider *)self _edgeGradientView];
  [_edgeGradientView setCustomEdgeGradientStyleWithColor:colorCopy];

  layer = [_edgeGradientView layer];
  [layer setCompositingFilter:0];

  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [(CEKDiscreteSlider *)self insertSubview:_edgeGradientView aboveSubview:_contentScrollView];
}

- (void)removeGradients
{
  _edgeGradientView = [(CEKDiscreteSlider *)self _edgeGradientView];
  [_edgeGradientView removeFromSuperview];

  [(CEKDiscreteSlider *)self set_edgeGradientView:0];
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

    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlignment:(int64_t)alignment
{
  self->_titleAlignment = alignment;
  _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
  [_titleLabel setTextAlignment:alignment];
}

- (void)setSliderVerticalOffset:(double)offset
{
  if (self->_sliderVerticalOffset != offset)
  {
    self->_sliderVerticalOffset = offset;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setLabelVerticalPadding:(double)padding
{
  if (self->_labelVerticalPadding != padding)
  {
    self->_labelVerticalPadding = padding;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setSliderVerticalAlignment:(int64_t)alignment
{
  if (self->_sliderVerticalAlignment != alignment)
  {
    self->_sliderVerticalAlignment = alignment;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setLevelIndicatorHeight:(double)height
{
  if (self->_levelIndicatorHeight != height)
  {
    self->_levelIndicatorHeight = height;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(CEKDiscreteSlider *)self isEnabled];
  v10.receiver = self;
  v10.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v10 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
  {
    [(CEKDiscreteSlider *)self contactEndedWithAction:0];
    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [_contentScrollView setUserInteractionEnabled:enabledCopy];

    _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
    [_dynamicTickMarksView setEnabled:enabledCopy];

    v8 = 0.3;
    v9[1] = 3221225472;
    v9[0] = MEMORY[0x1E69E9820];
    v9[2] = __32__CEKDiscreteSlider_setEnabled___block_invoke;
    v9[3] = &unk_1E7CC6660;
    if (enabledCopy)
    {
      v8 = 1.0;
    }

    v9[4] = self;
    *&v9[5] = v8;
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.25];
  }
}

void __32__CEKDiscreteSlider_setEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _contentScrollView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _titleLabel];
  [v5 setAlpha:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _valueLabel];
  [v7 setAlpha:v6];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) _levelIndicatorView];
  [v9 setAlpha:v8];
}

- (BOOL)highlightSelectedIndex
{
  _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  highlightSelectedIndex = [_dynamicTickMarksView highlightSelectedIndex];

  return highlightSelectedIndex;
}

- (void)setHighlightSelectedIndex:(BOOL)index animated:(BOOL)animated
{
  animatedCopy = animated;
  indexCopy = index;
  _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView setHighlightSelectedIndex:indexCopy animated:animatedCopy];
}

- (void)setMagneticIndexes:(id)indexes
{
  v19 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  v6 = indexesCopy;
  if (self->_magneticIndexes != indexesCopy && ![(NSArray *)indexesCopy isEqualToArray:?])
  {
    objc_storeStrong(&self->_magneticIndexes, indexes);
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [indexSet addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v12++), "unsignedLongValue", v14)}];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
    [_dynamicTickMarksView setMagneticTickMarkIndexes:indexSet];
  }
}

- (void)setSelectedIndex:(unint64_t)index animatedDuration:(double)duration animatedCurve:(id)curve completion:(id)completion
{
  curveCopy = curve;
  completionCopy = completion;
  indexCount = [(CEKDiscreteSlider *)self indexCount];
  if (!index || indexCount)
  {
    indexCount2 = [(CEKDiscreteSlider *)self indexCount];
    if (indexCount2 - 1 >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = indexCount2 - 1;
    }

    [(CEKDiscreteSlider *)self _setSelectedIndex:indexCopy shouldDelegate:0 wantsFeedbackEmitted:0 shouldScroll:1 scrollDuration:curveCopy scrollCurve:completionCopy scrollCompletion:duration];
  }
}

- (void)setIndexCount:(unint64_t)count
{
  if (self->_indexCount == count)
  {
    return;
  }

  self->_indexCount = count;
  [(CEKDiscreteSlider *)self _updateTickMarkCount];
  if (count)
  {
    selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
    v7 = count - 1;
    if (selectedIndex <= count - 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  [(CEKDiscreteSlider *)self setSelectedIndex:v7];
LABEL_7:
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];

  [(CEKDiscreteSlider *)self setNeedsLayout];
}

- (void)setMarkedIndex:(unint64_t)index animated:(BOOL)animated
{
  if (self->_markedIndex != index)
  {
    self->_markedIndex = index;
    [(CEKDiscreteSlider *)self _updateMarkedIndexViewAnimated:animated];

    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  v4 = [textCopy isEqualToString:self->_titleText];
  v5 = textCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [textCopy copy];
    titleText = self->_titleText;
    self->_titleText = v6;

    _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
    if (!_titleLabel)
    {
      if ([(NSString *)self->_titleText length])
      {
        v9 = objc_alloc(MEMORY[0x1E69DCC10]);
        _titleLabel = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [_titleLabel setBackgroundColor:clearColor];

        [_titleLabel setTextAlignment:{-[CEKDiscreteSlider titleAlignment](self, "titleAlignment")}];
        [_titleLabel setNumberOfLines:0];
        [_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(CEKDiscreteSlider *)self addSubview:_titleLabel];
        [(CEKDiscreteSlider *)self set_titleLabel:_titleLabel];
        [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
        [(CEKDiscreteSlider *)self _updateFonts];
      }

      else
      {
        _titleLabel = 0;
      }
    }

    [_titleLabel setText:self->_titleText];

    v5 = textCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)updateValueLabel
{
  v19[1] = *MEMORY[0x1E69E9840];
  _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
  valueText = [(CEKDiscreteSlider *)self valueText];
  v5 = [valueText length];
  if (_valueLabel || !v5)
  {
    if (!v5)
    {
      [_valueLabel setAttributedText:0];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    _valueLabel = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [_valueLabel setBackgroundColor:clearColor];

    [_valueLabel setTextAlignment:1];
    [(CEKDiscreteSlider *)self addSubview:_valueLabel];
    [(CEKDiscreteSlider *)self set_valueLabel:_valueLabel];
    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
    [(CEKDiscreteSlider *)self _updateFonts];
  }

  v8 = CEKFrameworkBundle();
  preferredLocalizations = [v8 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject];
  font = [_valueLabel font];
  [font pointSize];
  v14 = v13;

  if (CEKIsCustomKerningSupportedForLocale(v11))
  {
    v18 = *MEMORY[0x1E69DB660];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14 * 100.0 / 1000.0];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:valueText attributes:v16];
  [_valueLabel setAttributedText:v17];

LABEL_9:
}

- (CEKTickMarksConfiguration)tickMarksConfiguration
{
  _tickMarksView = [(CEKDiscreteSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];

  return tickMarksModel;
}

- (void)setTickMarkCountBetweenIndexes:(unint64_t)indexes
{
  if (self->_tickMarkCountBetweenIndexes != indexes)
  {
    self->_tickMarkCountBetweenIndexes = indexes;
    [(CEKDiscreteSlider *)self _updateTickMarkCount];
  }
}

- (void)_updateTickMarkCount
{
  indexCount = [(CEKDiscreteSlider *)self indexCount];
  tickMarkCountBetweenIndexes = [(CEKDiscreteSlider *)self tickMarkCountBetweenIndexes];
  if (indexCount)
  {
    v5 = indexCount + (indexCount - 1) * tickMarkCountBetweenIndexes;
  }

  else
  {
    v5 = 0;
  }

  _tickMarksView = [(CEKDiscreteSlider *)self _tickMarksView];
  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel setTickMarksCount:v5];
}

- (void)setFontStyle:(unint64_t)style
{
  if (self->_fontStyle != style)
  {
    self->_fontStyle = style;
    [(CEKDiscreteSlider *)self _updateFonts];
  }
}

- (void)setSelectionFeedbackProfile:(int64_t)profile
{
  _feedbackGenerator = [(CEKDiscreteSlider *)self _feedbackGenerator];
  [_feedbackGenerator setProfile:profile];
}

- (int64_t)selectionFeedbackProfile
{
  _feedbackGenerator = [(CEKDiscreteSlider *)self _feedbackGenerator];
  profile = [_feedbackGenerator profile];

  return profile;
}

- (void)setTickMarksHeight:(double)height animated:(BOOL)animated
{
  if (self->_tickMarksHeight != height)
  {
    if (animated)
    {
      [(CEKDiscreteSlider *)self layoutIfNeeded];
      self->_tickMarksHeight = height;
      [(CEKDiscreteSlider *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__CEKDiscreteSlider_setTickMarksHeight_animated___block_invoke;
      v6[3] = &unk_1E7CC6358;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      self->_tickMarksHeight = height;

      [(CEKDiscreteSlider *)self setNeedsLayout];
    }
  }
}

- (void)setColorHighlight:(unint64_t)highlight animated:(BOOL)animated
{
  if (self->_colorHighlight != highlight)
  {
    self->_colorHighlight = highlight;
    [(CEKDiscreteSlider *)self _updateColorsAnimated:animated];
  }
}

- (void)_layoutSubviewsWithNoRotation
{
  [(CEKDiscreteSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sliderVerticalAlignment = [(CEKDiscreteSlider *)self sliderVerticalAlignment];
  if (sliderVerticalAlignment == 2)
  {
    [(CEKDiscreteSlider *)self sliderVerticalOffset];
    v12 = v18 + 33.0;
  }

  else if (sliderVerticalAlignment == 1)
  {
    v43.origin.x = v4;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    MaxY = CGRectGetMaxY(v43);
    [(CEKDiscreteSlider *)self levelIndicatorHeight];
    v16 = MaxY - v15;
    [(CEKDiscreteSlider *)self sliderVerticalOffset];
    v12 = v16 - v17;
  }

  else
  {
    v12 = 0.0;
    if (!sliderVerticalAlignment)
    {
      [(CEKDiscreteSlider *)self levelIndicatorHeight];
      v33 = 0;
      UIRectCenteredYInRectScale();
      v12 = v13;
    }
  }

  [(CEKDiscreteSlider *)self _layoutSliderContentAtY:v12 withHorizontalPadding:0.0, v33];
  _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
  _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  v40 = *MEMORY[0x1E695EFD0];
  v36 = v40;
  v41 = v35;
  v42 = *(MEMORY[0x1E695EFD0] + 32);
  v34 = v42;
  [_valueLabel setTransform:&v40];
  v40 = v36;
  v41 = v35;
  v42 = v34;
  [_titleLabel setTransform:&v40];
  [(CEKDiscreteSlider *)self labelVerticalPadding];
  v22 = v21;
  [(CEKDiscreteSlider *)self horizontalValueLabelOffset];
  v24 = v23;
  [_titleLabel setFrame:{10.0, v22, v8 + -20.0, 18.0}];
  [_valueLabel setFrame:{v24, v22, v8, 18.0}];
  [_valueLabel setTextAlignment:1];
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    _valueBackground = [(CEKDiscreteSlider *)self _valueBackground];
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    image = [_valueBackground image];
    [image size];
    v30 = v29;

    [_valueBackground setBounds:{v26, v27, 52.0, v30}];
    [_valueLabel center];
    [_valueBackground setCenter:v8 * 0.5];
    if (_valueLabel)
    {
      [_valueLabel transform];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
    }

    v40 = v37;
    v41 = v38;
    v42 = v39;
    [_valueBackground setTransform:&v40];
    _valueBackground2 = [(CEKDiscreteSlider *)self _valueBackground];
    [_valueBackground2 setAlpha:1.0];

    _titleBackground = [(CEKDiscreteSlider *)self _titleBackground];
    [_titleBackground setAlpha:0.0];
  }
}

- (void)_layoutSubviewsWithLabelRotation:(double)rotation
{
  v5 = 18.0;
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    _titleBackground = [(CEKDiscreteSlider *)self _titleBackground];
    image = [_titleBackground image];
    [image size];
    v5 = v8 * 0.5 + 10.0;
  }

  [(CEKDiscreteSlider *)self _layoutSliderContentAtY:55.0 withHorizontalPadding:v5];
  _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
  _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
  [_titleLabel intrinsicContentSize];
  [_titleLabel setBounds:{0.0, 0.0, v11, 18.0}];
  [_valueLabel setBounds:{0.0, 0.0, 40.0, 18.0}];
  _levelIndicatorView = [(CEKDiscreteSlider *)self _levelIndicatorView];
  _tickMarksView = [(CEKDiscreteSlider *)self _tickMarksView];
  v14 = 10.0;
  if (rotation > 0.0)
  {
    [(CEKDiscreteSlider *)self bounds];
    v14 = v15 + -10.0;
  }

  [_tickMarksView center];
  [_titleLabel setCenter:v14];
  if (_levelIndicatorView)
  {
    [_levelIndicatorView center];
  }

  else
  {
    [(CEKDiscreteSlider *)self frame];
    v16 = v17 * 0.5;
  }

  [_valueLabel setCenter:{v16, 21.0}];
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeRotation(&v34, rotation);
  UIIntegralTransform();
  v34 = v33;
  [_valueLabel setTransform:&v33];
  v33 = v34;
  [_titleLabel setTransform:&v33];
  [_valueLabel setTextAlignment:2 * (rotation > 0.0)];
  _valueBackground = [(CEKDiscreteSlider *)self _valueBackground];
  _titleBackground2 = [(CEKDiscreteSlider *)self _titleBackground];
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    image2 = [_titleBackground2 image];
    [image2 size];
    v24 = v23;

    [_titleLabel bounds];
    [_titleBackground2 setBounds:{v20, v21, v25 + 20.0, v24}];
    [_titleLabel center];
    [_titleBackground2 setCenter:?];
    if (_titleLabel)
    {
      [_titleLabel transform];
    }

    else
    {
      memset(&v32[1], 0, sizeof(CGAffineTransform));
    }

    v33 = v32[1];
    [_titleBackground2 setTransform:&v33];
    image3 = [_valueBackground image];
    [image3 size];
    v28 = v27;

    [_valueLabel bounds];
    [_valueBackground setBounds:{v20, v21, v29 + 12.0, v28}];
    [_valueLabel center];
    [_valueBackground setCenter:?];
    if (_valueLabel)
    {
      [_valueLabel transform];
    }

    else
    {
      memset(v32, 0, 48);
    }

    v33 = v32[0];
    [_valueBackground setTransform:{&v33, *&v32[0].a, *&v32[0].c, *&v32[0].tx}];
    [_valueLabel setTextAlignment:1];
    _valueBackground2 = [(CEKDiscreteSlider *)self _valueBackground];
    [_valueBackground2 setAlpha:1.0];

    _titleBackground3 = [(CEKDiscreteSlider *)self _titleBackground];
    [_titleBackground3 setAlpha:1.0];
  }
}

- (void)_layoutSliderContentAtY:(double)y withHorizontalPadding:(double)padding
{
  [(CEKDiscreteSlider *)self bounds];
  v62 = v7;
  v63 = v6;
  v9 = v8;
  v60 = v10;
  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  _levelIndicatorView = [(CEKDiscreteSlider *)self _levelIndicatorView];
  _tickMarksView = [(CEKDiscreteSlider *)self _tickMarksView];
  [(CEKDiscreteSlider *)self levelIndicatorHeight];
  v14 = v13;
  v61 = v9;
  UIRoundToViewScale();
  v16 = v15;
  [_levelIndicatorView setFrame:?];
  v17 = -CEKPixelWidthForView(self);
  v69.size.width = 1.0;
  v66 = v16;
  v69.origin.x = v16;
  v69.origin.y = y;
  v69.size.height = v14;
  v70 = CGRectInset(v69, v17, v17);
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  _indicatorBackground = [(CEKDiscreteSlider *)self _indicatorBackground];
  [_indicatorBackground setFrame:{x, y, width, height}];

  v65 = v14;
  if (_levelIndicatorView)
  {
    [(CEKDiscreteSlider *)self tickMarksHeight];
    v24 = v23;
  }

  else
  {
    v24 = v14;
  }

  tickMarksModel = [_tickMarksView tickMarksModel];
  [tickMarksModel requiredWidth];
  v57 = v26;

  v27 = *MEMORY[0x1E695F058];
  v59 = *MEMORY[0x1E695F058];
  [(CEKDiscreteSlider *)self levelIndicatorHeight];
  v58 = v28 - v24 + y;
  [_tickMarksView frameForAlignmentRect:v27];
  [_tickMarksView setFrame:?];
  [_tickMarksView frameForTickMarkAtIndex:{-[CEKDiscreteSlider markedIndex](self, "markedIndex")}];
  [_tickMarksView convertRect:_contentScrollView toView:?];
  traitCollection = [(CEKDiscreteSlider *)self traitCollection];
  [traitCollection displayScale];
  v56 = v30;
  UIRectCenteredXInRectScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  _dotView = [(CEKDiscreteSlider *)self _dotView];
  [_dotView setFrame:{v32, v34, v36, v38}];

  v71.origin.y = v62;
  v71.origin.x = v63;
  v71.size.height = v60;
  v71.size.width = v61;
  v72 = CGRectInset(v71, padding, 0.0);
  v40 = v72.origin.x;
  v41 = v72.origin.y;
  v42 = v72.size.width;
  v43 = v72.size.height;
  _edgeGradientView = [(CEKDiscreteSlider *)self _edgeGradientView];
  ticksStyle = [(CEKDiscreteSlider *)self ticksStyle];
  if (ticksStyle == 1)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v41;
  }

  if (ticksStyle)
  {
    yCopy = v46;
  }

  else
  {
    yCopy = y;
  }

  v73.origin.y = v58;
  v73.origin.x = v59;
  v73.size.width = v57;
  v73.size.height = v24;
  [_edgeGradientView setFrame:{v40, yCopy, v42, CGRectGetMaxY(v73) - yCopy}];
  [(CEKDiscreteSlider *)self gradientInsets];
  v49 = v48;
  [(CEKDiscreteSlider *)self gradientInsets];
  [_edgeGradientView setGradientDimensions:{v49, v42 * 0.1, v42 * 0.1, v50}];
  UIRoundToViewScale();
  v52 = v51;
  [_contentScrollView setFrame:{v40, v41, v42, v43}];
  [_contentScrollView setContentSize:{v57 + v52 * -2.0, v43}];
  v74.size.width = 1.0;
  v74.origin.y = y;
  v74.origin.x = v66;
  v74.size.height = v65;
  MinX = CGRectGetMinX(v74);
  v75.origin.x = v40;
  v75.origin.y = v41;
  v75.size.width = v42;
  v75.size.height = v43;
  v54 = MinX - CGRectGetMinX(v75) - v52;
  v76.origin.x = v40;
  v76.origin.y = v41;
  v76.size.width = v42;
  v76.size.height = v43;
  MaxX = CGRectGetMaxX(v76);
  v77.size.width = 1.0;
  v77.origin.x = v66;
  v77.origin.y = y;
  v77.size.height = v65;
  [_contentScrollView setContentInset:{0.0, v54, 0.0, v52 + MaxX - CGRectGetMaxX(v77)}];
  if ([(CEKDiscreteSlider *)self _needsUpdateContentOffset])
  {
    [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:0];
    [(CEKDiscreteSlider *)self _updateScrollViewContentOffset];
  }
}

- (void)_updateAppearanceForActiveScrolling
{
  [(CEKDiscreteSlider *)self _updateColorsAnimated:1];

  [(CEKDiscreteSlider *)self _updateMarkedIndexViewAnimated:1];
}

- (BOOL)_isScrollActive
{
  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  v4 = ([_contentScrollView isTracking] & 1) != 0 || (objc_msgSend(_contentScrollView, "isDecelerating") & 1) != 0 || -[CEKDiscreteSlider _isExternallyScrolling](self, "_isExternallyScrolling") || -[CEKDiscreteSlider _isScrollExternallyAnimating](self, "_isScrollExternallyAnimating");

  return v4;
}

- (BOOL)_shouldUseHighlightColor
{
  colorHighlight = [(CEKDiscreteSlider *)self colorHighlight];
  if (colorHighlight != 1)
  {
    return colorHighlight == 2;
  }

  if ([(CEKDiscreteSlider *)self _isScrollActive])
  {
    return 1;
  }

  _animationGenerator = [(CEKDiscreteSlider *)self _animationGenerator];
  v6 = [_animationGenerator isAnimatingForIdentifier:@"CEKSelectionScrollingAnimationKey"];

  return v6;
}

- (void)_updateColorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _levelIndicatorView = [(CEKDiscreteSlider *)self _levelIndicatorView];
  _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
  _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
  useTextLegibilityShadows = [(CEKDiscreteSlider *)self useTextLegibilityShadows];
  _shouldUseHighlightColor = [(CEKDiscreteSlider *)self _shouldUseHighlightColor];
  if (_shouldUseHighlightColor)
  {
    [(CEKDiscreteSlider *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v9 = ;
  v10 = [(CEKDiscreteSlider *)self useTextLegibilityBackgrounds]|| useTextLegibilityShadows;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v12 = labelColor;
  if ((v10 & 1) == 0)
  {
    v13 = [labelColor colorWithAlphaComponent:0.6];

    v12 = v13;
  }

  if (_shouldUseHighlightColor)
  {
    tintColor = [(CEKDiscreteSlider *)self tintColor];
  }

  else
  {
    tintColor = v12;
  }

  [_titleLabel setTextColor:{v12, tintColor}];
  if (useTextLegibilityShadows)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v16 = [systemBackgroundColor colorWithAlphaComponent:0.15];

    v17 = CEKPixelWidthForView(self);
    v18 = 0.0;
  }

  else
  {
    v16 = 0;
    v18 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  [_titleLabel setShadowColor:v16];
  [_valueLabel setShadowColor:v16];
  [_titleLabel setShadowOffset:{v18, v17}];
  [_valueLabel setShadowOffset:{v18, v17}];
  if (animatedCopy)
  {
    v19 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __43__CEKDiscreteSlider__updateColorsAnimated___block_invoke;
    v29[3] = &unk_1E7CC6688;
    v20 = _levelIndicatorView;
    v30 = _levelIndicatorView;
    v31 = v9;
    [v19 animateWithDuration:v29 animations:0.15];
    v21 = MEMORY[0x1E69DD250];
    _valueLabel2 = [(CEKDiscreteSlider *)self _valueLabel];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__CEKDiscreteSlider__updateColorsAnimated___block_invoke_2;
    v26[3] = &unk_1E7CC6688;
    v27 = _valueLabel;
    v23 = v24;
    v28 = v24;
    [v21 transitionWithView:_valueLabel2 duration:5242880 options:v26 animations:0 completion:0.15];
  }

  else
  {
    v20 = _levelIndicatorView;
    [_levelIndicatorView setBackgroundColor:v9];
    v23 = v24;
    [_valueLabel setTextColor:v24];
  }
}

- (void)_updateScrollViewContentOffset
{
  [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self selectedIndex]];
  v4 = v3;
  v6 = v5;
  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView setContentOffset:0 animated:{v4, v6}];
}

- (void)_updateMarkedIndexViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _dotView = [(CEKDiscreteSlider *)self _dotView];
  markedIndex = [(CEKDiscreteSlider *)self markedIndex];
  ticksStyle = [(CEKDiscreteSlider *)self ticksStyle];
  markedIndex2 = [(CEKDiscreteSlider *)self markedIndex];
  indexCount = [(CEKDiscreteSlider *)self indexCount];
  if (ticksStyle == 1)
  {
    if (markedIndex2 < indexCount)
    {
LABEL_8:
      v11 = markedIndex != [(CEKDiscreteSlider *)self selectedIndex];
      goto LABEL_9;
    }
  }

  else if (markedIndex2 < indexCount)
  {
    if ([(CEKDiscreteSlider *)self _isScrollActive])
    {
      v10 = _dotView != 0;
      v11 = 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
  v10 = _dotView != 0;
  if (v11 || _dotView)
  {
LABEL_11:
    if (!v11 || v10)
    {
      if (v11)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      if (!animatedCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
      _dotView = objc_alloc_init(CEKSliderDotView);
      tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
      -[CEKSliderDotView setUseLegibilityShadow:](_dotView, "setUseLegibilityShadow:", [tickMarksConfiguration useTickMarkLegibilityShadows]);

      if ([(CEKDiscreteSlider *)self ticksStyle]== 1)
      {
        tickMarksConfiguration2 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
        secondaryTickMarkColor = [tickMarksConfiguration2 secondaryTickMarkColor];
        [(CEKSliderDotView *)_dotView setDotColor:secondaryTickMarkColor];
      }

      _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
      [_contentScrollView addSubview:_dotView];

      [(CEKDiscreteSlider *)self set_dotView:_dotView];
      [(CEKDiscreteSlider *)self setNeedsLayout];
      if (!animatedCopy)
      {
        v16 = 1.0;
        goto LABEL_24;
      }

      [(CEKSliderDotView *)_dotView setAlpha:0.0];
      v16 = 1.0;
    }

    [(CEKSliderDotView *)_dotView alpha];
    if (v17 != v16)
    {
      v18 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52__CEKDiscreteSlider__updateMarkedIndexViewAnimated___block_invoke;
      v19[3] = &unk_1E7CC6660;
      v20 = _dotView;
      v21 = v16;
      _dotView = _dotView;
      [v18 animateWithDuration:v19 animations:0 completion:0.25];

LABEL_25:
      return;
    }

LABEL_24:
    [(CEKSliderDotView *)_dotView setAlpha:v16];
    goto LABEL_25;
  }
}

- (void)_setOverscrolling:(BOOL)overscrolling
{
  if (self->__overscrolling != overscrolling)
  {
    overscrollingCopy = overscrolling;
    self->__overscrolling = overscrolling;
    feedbackScope = [(CEKDiscreteSlider *)self feedbackScope];
    if (overscrollingCopy)
    {
      if (feedbackScope)
      {
        _feedbackGenerator = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator playOverscrollTickSound];

        _feedbackGenerator2 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator2 performFeedback];
      }
    }
  }
}

- (void)_updateTextLegibilityBackground
{
  useTextLegibilityBackgrounds = [(CEKDiscreteSlider *)self useTextLegibilityBackgrounds];
  _valueBackground = [(CEKDiscreteSlider *)self _valueBackground];
  _titleBackground = [(CEKDiscreteSlider *)self _titleBackground];
  _indicatorBackground = [(CEKDiscreteSlider *)self _indicatorBackground];
  if (useTextLegibilityBackgrounds)
  {
    v6 = _valueBackground;
    if (!_valueBackground && !_titleBackground)
    {
      _createLegibilityImage = [(CEKDiscreteSlider *)self _createLegibilityImage];
      v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_createLegibilityImage];
      _titleBackground = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_createLegibilityImage];
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);

      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v10 = [systemBackgroundColor colorWithAlphaComponent:0.15];
      [v8 setBackgroundColor:v10];

      _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
      [(CEKDiscreteSlider *)self insertSubview:v16 belowSubview:_valueLabel];

      _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
      [(CEKDiscreteSlider *)self insertSubview:_titleBackground belowSubview:_titleLabel];

      _levelIndicatorView = [(CEKDiscreteSlider *)self _levelIndicatorView];
      [(CEKDiscreteSlider *)self insertSubview:v8 belowSubview:_levelIndicatorView];

      [(CEKDiscreteSlider *)self set_valueBackground:v16];
      [(CEKDiscreteSlider *)self set_titleBackground:_titleBackground];
      [(CEKDiscreteSlider *)self set_indicatorBackground:v8];

      v6 = v16;
      _indicatorBackground = v8;
    }
  }

  else
  {
    v6 = _valueBackground;
  }

  if (useTextLegibilityBackgrounds)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v17 = v6;
  [v6 setAlpha:v14];
  [_titleBackground setAlpha:v14];
  [_indicatorBackground setAlpha:v14];
  [(CEKDiscreteSlider *)self setNeedsLayout];
}

- (id)_createLegibilityImage
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  traitCollection = [(CEKDiscreteSlider *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;
  v14.width = 25.0;
  v14.height = 25.0;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v6);

  CurrentContext = UIGraphicsGetCurrentContext();
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v9 = [systemBackgroundColor colorWithAlphaComponent:0.3];
  CGContextSetFillColorWithColor(CurrentContext, [v9 CGColor]);

  v15.size.width = 25.0;
  v15.size.height = 25.0;
  v15.origin.x = v2;
  v15.origin.y = v3;
  CGContextFillEllipseInRect(CurrentContext, v15);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v11 = [v10 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x1E69DDCE0], 12.5, *(MEMORY[0x1E69DDCE0] + 16), 12.5}];

  return v11;
}

- (void)_updateFonts
{
  fontStyle = [(CEKDiscreteSlider *)self fontStyle];
  v4 = CEKFontOfSizeAndStyle(fontStyle, 14.0);
  _titleLabel = [(CEKDiscreteSlider *)self _titleLabel];
  [_titleLabel setFont:v4];

  v7 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(fontStyle, 14.0);
  _valueLabel = [(CEKDiscreteSlider *)self _valueLabel];
  [_valueLabel setFont:v7];
}

- (void)performWaveAnimation
{
  _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView performWaveAnimation];
}

- (void)_setSelectedIndex:(unint64_t)index shouldDelegate:(BOOL)delegate wantsFeedbackEmitted:(BOOL)emitted shouldScroll:(BOOL)scroll scrollDuration:(double)duration scrollCurve:(id)curve scrollCompletion:(id)completion
{
  scrollCopy = scroll;
  emittedCopy = emitted;
  delegateCopy = delegate;
  curveCopy = curve;
  completionCopy = completion;
  if (self->_selectedIndex == index)
  {
    goto LABEL_24;
  }

  self->_selectedIndex = index;
  [(CEKDiscreteSlider *)self updateValueLabel];
  [(CEKDiscreteSlider *)self _updateMarkedIndexViewAnimated:1];
  _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [_dynamicTickMarksView setSelectedTickMarkIndex:index animated:delegateCopy];

  if (delegateCopy)
  {
    [(CEKDiscreteSlider *)self sendActionsForControlEvents:4096];
  }

  if (emittedCopy)
  {
    feedbackScope = [(CEKDiscreteSlider *)self feedbackScope];
    if ((feedbackScope - 1) <= 1)
    {
      v20 = feedbackScope;
      if (index)
      {
        v21 = [(CEKDiscreteSlider *)self indexCount]- 1 == index;
      }

      else
      {
        v21 = 1;
      }

      v22 = [(CEKDiscreteSlider *)self _tickMarkIndexForIndex:index];
      _tickMarksView = [(CEKDiscreteSlider *)self _tickMarksView];
      tickMarksModel = [_tickMarksView tickMarksModel];
      v25 = [tickMarksModel isMainTickMarkAtIndex:v22];

      if (v21)
      {
        _feedbackGenerator = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator performFeedback];

        _feedbackGenerator2 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator2 playEndTickSound];
LABEL_15:

        goto LABEL_16;
      }

      if (v25)
      {
        _feedbackGenerator3 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator3 performFeedback];

        _feedbackGenerator2 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator2 playMajorTickSound];
        goto LABEL_15;
      }

      if (v20 == 2)
      {
        _feedbackGenerator4 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator4 performFeedback];

        _feedbackGenerator2 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [_feedbackGenerator2 playMinorTickSound];
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (duration > 0.0 && scrollCopy)
  {
    _animationGenerator = [(CEKDiscreteSlider *)self _animationGenerator];

    if (!_animationGenerator)
    {
      v31 = objc_alloc_init(CEKAnimationGenerator);
      [(CEKDiscreteSlider *)self _setAnimationGenerator:v31];
    }

    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    v34 = v33;
    v36 = v35;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:index];
    v38 = v37;
    v40 = v39;
    _animationGenerator2 = [(CEKDiscreteSlider *)self _animationGenerator];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke;
    v51[3] = &unk_1E7CC66B0;
    v52 = curveCopy;
    v54 = v34;
    v55 = v36;
    v56 = v38;
    v57 = v40;
    v53 = _contentScrollView;
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke_2;
    v47 = &unk_1E7CC66D8;
    v48 = v53;
    selfCopy = self;
    v50 = completionCopy;
    v42 = v53;
    [_animationGenerator2 startAnimationForIdentifier:@"CEKSelectionScrollingAnimationKey" duration:v51 updateHandler:&v44 completionHandler:duration];

    [v42 setScrollEnabled:{0, v44, v45, v46, v47}];
    [(CEKDiscreteSlider *)self _updateColorsAnimated:1];
  }

  else if (scrollCopy)
  {
    _animationGenerator3 = [(CEKDiscreteSlider *)self _animationGenerator];
    [_animationGenerator3 stopAnimationForIdentifier:@"CEKSelectionScrollingAnimationKey"];

    [(CEKDiscreteSlider *)self _updateScrollViewContentOffset];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

LABEL_24:
}

uint64_t __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke(uint64_t a1, double a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    *&a2 = a2;
    [v4 _solveForInput:a2];
    v2 = v5;
  }

  v6 = *(a1 + 56);
  v7 = CEKInterpolate(*(a1 + 48), *(a1 + 64), v2);
  v8 = *(a1 + 40);

  return [v8 setContentOffset:{v7, v6}];
}

uint64_t __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setScrollEnabled:1];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v5 = *(a1 + 40);

  return [v5 _updateColorsAnimated:1];
}

- (double)_interpolatedIndexForContentOffset:(CGPoint)offset
{
  x = offset.x;
  if (![(CEKDiscreteSlider *)self indexCount:offset.x])
  {
    return 0.0;
  }

  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView contentInset];
  v7 = (x + v6) / CEKScrollableDistanceInScrollView(_contentScrollView);
  v8 = v7 * ([(CEKDiscreteSlider *)self indexCount]- 1);

  return v8;
}

- (unint64_t)_biasedIndexForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  result = [(CEKDiscreteSlider *)self indexCount];
  if (result)
  {
    [(CEKDiscreteSlider *)self _interpolatedIndexForContentOffset:x, y];
    v8 = v7;
    selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
    v10 = floor(v8);
    v11 = ceil(v8);
    if (v8 <= selectedIndex)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    if (selectedIndex == v12)
    {
      v14 = selectedIndex;
      v15 = vcvtad_u64_f64(v8);
      [(CEKDiscreteSlider *)self _contentOffsetForIndex:v15];
      if (vabdd_f64(v16, x) <= 1.0)
      {
        v13 = v15;
      }

      else
      {
        v13 = v14;
      }
    }

    return CEKClamp(v13, 0.0, ([(CEKDiscreteSlider *)self indexCount]- 1));
  }

  return result;
}

- (unint64_t)_nearestIndexForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  result = [(CEKDiscreteSlider *)self indexCount];
  if (result)
  {
    [(CEKDiscreteSlider *)self _interpolatedIndexForContentOffset:x, y];
    return CEKClamp(round(v7), 0.0, ([(CEKDiscreteSlider *)self indexCount]- 1));
  }

  return result;
}

- (unint64_t)_indexForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(CEKDiscreteSlider *)self biasScrollingToCurrentSelection])
  {

    return [(CEKDiscreteSlider *)self _biasedIndexForContentOffset:x, y];
  }

  else
  {

    return [(CEKDiscreteSlider *)self _nearestIndexForContentOffset:x, y];
  }
}

- (CGPoint)_contentOffsetForIndex:(unint64_t)index
{
  if ([(CEKDiscreteSlider *)self indexCount])
  {
    CEKProgress(index, 0.0, ([(CEKDiscreteSlider *)self indexCount]- 1));
    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    v7 = v6;
    CEKScrollableDistanceInScrollView(_contentScrollView);
    [_contentScrollView contentInset];
    UIRoundToViewScale();
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v10 = v9;
  v11 = v7;
  result.y = v11;
  result.x = v10;
  return result;
}

- (unint64_t)indexForTickMarkAtPoint:(CGPoint)point in:(id)in
{
  y = point.y;
  x = point.x;
  inCopy = in;
  _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView convertPoint:inCopy fromView:{x, y}];
  v10 = v9;

  _contentScrollView2 = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView2 contentInset];
  v13 = v10 - v12;
  _contentScrollView3 = [(CEKDiscreteSlider *)self _contentScrollView];
  [_contentScrollView3 contentOffset];
  v16 = v15;

  return [(CEKDiscreteSlider *)self _nearestIndexForContentOffset:v13, v16];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  _feedbackGenerator = [(CEKDiscreteSlider *)self _feedbackGenerator];
  [_feedbackGenerator prepareFeedback];

  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    delegate = [(CEKDiscreteSlider *)self delegate];
    [delegate sliderWillBeginScrolling:self];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];
  if (!decelerate)
  {

    [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];

  [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
}

- (void)_sliderDidEndScrolling
{
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    delegate = [(CEKDiscreteSlider *)self delegate];
    [delegate sliderDidEndScrolling:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _dynamicTickMarksView = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [(CEKDiscreteSlider *)self bounds];
  [(CEKDiscreteSlider *)self convertRect:_dynamicTickMarksView toView:?];
  [_dynamicTickMarksView setVisibleBounds:?];
  if ([(CEKDiscreteSlider *)self _isScrollActive])
  {
    _animationGenerator = [(CEKDiscreteSlider *)self _animationGenerator];
    v6 = [_animationGenerator isAnimatingForIdentifier:@"CEKSelectionScrollingAnimationKey"];

    if ((v6 & 1) == 0)
    {
      [scrollCopy contentOffset];
      [(CEKDiscreteSlider *)self _setSelectedIndex:[(CEKDiscreteSlider *)self _indexForContentOffset:?] shouldDelegate:1 wantsFeedbackEmitted:1 shouldScroll:0 scrollDuration:0 scrollCurve:0 scrollCompletion:0.0];
      [scrollCopy contentOffset];
      v8 = v7;
      [scrollCopy contentInset];
      v10 = v9;
      v11 = v8 > CEKScrollableDistanceInScrollView(scrollCopy) - v9 + 20.0 || v8 < -20.0 - v10;
      [(CEKDiscreteSlider *)self _setOverscrolling:v11];
    }
  }

  if (([scrollCopy isTracking] & 1) != 0 || objc_msgSend(scrollCopy, "isDecelerating"))
  {
    _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator invalidate];

    [(CEKDiscreteSlider *)self _setExternalScrollOffsetAnimator:0];
    [(CEKDiscreteSlider *)self contactEndedWithAction:0];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self _nearestIndexForContentOffset:dragging, offset->x, offset->y]];
  offset->x = v6;
  offset->y = v7;
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
  [animationCopy contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = [(CEKDiscreteSlider *)self _nearestIndexForContentOffset:v6, v8];

  [(CEKDiscreteSlider *)self _setSelectedIndex:v9 shouldDelegate:1 wantsFeedbackEmitted:1 shouldScroll:0 scrollDuration:0 scrollCurve:0 scrollCompletion:0.0];
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

- (id)_hidPassthroughDriver
{
  _sliderDriver = [(CEKDiscreteSlider *)self _sliderDriver];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _sliderDriver;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldUseStepwiseExternalScrolling
{
  tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration tickMarkSpacing];
  v4 = v3 > 25.0;

  return v4;
}

- (void)_limitExternalScrollIndexesForCurrentSelectionIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  firstIndex = [self firstIndex];
  v6 = 2048;
  lastIndex = [self lastIndex];
  _os_log_debug_impl(&dword_1B7E93000, a2, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Limited range to [%lu-%lu]", &v4, 0x16u);
}

- (int64_t)_externalScrollingAllowedIndexForIndex:(int64_t)index
{
  _externalScrollAllowedIndexes = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
  firstIndex = [_externalScrollAllowedIndexes firstIndex];
  lastIndex = [_externalScrollAllowedIndexes lastIndex];
  if (lastIndex >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = lastIndex;
  }

  if (firstIndex <= indexCopy)
  {
    v8 = indexCopy;
  }

  else
  {
    v8 = firstIndex;
  }

  return v8;
}

- (void)contactBeganWithAction:(id)action
{
  actionCopy = action;
  if (![(CEKDiscreteSlider *)self _isExternalScrollingAllowed]&& [(CEKDiscreteSlider *)self isEnabled])
  {
    [(CEKDiscreteSlider *)self _setExternalScrollingAllowed:1];
    [(CEKDiscreteSlider *)self _setExternalOverScroll:0.0];
    selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
    _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    v6 = _externalScrollOffsetAnimator;
    if (_externalScrollOffsetAnimator)
    {
      [_externalScrollOffsetAnimator value];
      v8 = v7;
      [v6 presentationValue];
      if (v8 != v9)
      {
        [v6 value];
        selectedIndex = [(CEKDiscreteSlider *)self _indexForContentOffset:?];
      }
    }

    if ([(CEKDiscreteSlider *)self _shouldUseStepwiseExternalScrolling])
    {
      v10 = [MEMORY[0x1E696AD50] indexSetWithIndex:selectedIndex];
      [(CEKDiscreteSlider *)self _setExternalScrollAllowedIndexes:v10];

      _externalScrollAllowedIndexes = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
      v12 = _externalScrollAllowedIndexes;
      if (selectedIndex <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = selectedIndex;
      }

      [_externalScrollAllowedIndexes addIndex:v13 - 1];

      _externalScrollAllowedIndexes2 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
      indexCount = [(CEKDiscreteSlider *)self indexCount];
      if (indexCount - 1 >= selectedIndex + 1)
      {
        v16 = selectedIndex + 1;
      }

      else
      {
        v16 = indexCount - 1;
      }

      [_externalScrollAllowedIndexes2 addIndex:v16];
    }

    else
    {
      _externalScrollAllowedIndexes2 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[CEKDiscreteSlider indexCount](self, "indexCount")}];
      [(CEKDiscreteSlider *)self _setExternalScrollAllowedIndexes:_externalScrollAllowedIndexes2];
    }

    _hidPassthroughDriver = [(CEKDiscreteSlider *)self _hidPassthroughDriver];
    _shouldUseStepwiseExternalScrolling = [(CEKDiscreteSlider *)self _shouldUseStepwiseExternalScrolling];
    if (_shouldUseStepwiseExternalScrolling)
    {
      v19 = 1.2;
      [_hidPassthroughDriver setScrollMultiplier:1.2];
    }

    else
    {
      +[_TtC13CameraEditKit34HIDPassthroughSliderPositionDriver defaultScrollMultiplier];
      [_hidPassthroughDriver setScrollMultiplier:?];
      +[_TtC13CameraEditKit34HIDPassthroughSliderPositionDriver defaultVelocityMultiplier];
      v19 = v20;
    }

    [_hidPassthroughDriver setVelocityMultiplier:v19];
    [_hidPassthroughDriver setAcceptsLowConfidenceScrolling:!_shouldUseStepwiseExternalScrolling];
    _sliderDriver = [(CEKDiscreteSlider *)self _sliderDriver];
    [_sliderDriver contactBeganWithAction:actionCopy];

    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    v24 = v23;
    [_contentScrollView setContentOffset:0 animated:?];
    [(CEKDiscreteSlider *)self _applyExternalTarget:2 mode:v24];
  }
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  if ([(CEKDiscreteSlider *)self _isExternalScrollingAllowed])
  {
    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    if (![(CEKDiscreteSlider *)self _isExternallyScrolling])
    {
      [(CEKDiscreteSlider *)self _setExternallyScrolling:1];
      [(CEKDiscreteSlider *)self scrollViewWillBeginDragging:_contentScrollView];
    }

    [(CEKDiscreteSlider *)self _createExternalScrollAnimatorIfNeeded];
    _sliderDriver = [(CEKDiscreteSlider *)self _sliderDriver];
    [_sliderDriver distanceTraveled];
    v8 = v7;
    [_sliderDriver contactUpdatedWithAction:actionCopy];
    [_sliderDriver distanceTraveled];
    v10 = v9 - v8;
    _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator value];
    v13 = v12;

    v14 = v10 + v13;
    if (![(CEKDiscreteSlider *)self indexCount])
    {
      goto LABEL_16;
    }

    [(CEKDiscreteSlider *)self _limitExternalScrollIndexesForCurrentSelectionIfNeeded];
    _externalScrollAllowedIndexes = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
    firstIndex = [_externalScrollAllowedIndexes firstIndex];
    lastIndex = [_externalScrollAllowedIndexes lastIndex];
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:firstIndex];
    v19 = v18;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:lastIndex];
    v21 = v20;
    [(CEKDiscreteSlider *)self _externalOverScroll];
    if (v14 <= v21)
    {
      v23 = 0.0;
      if (v14 >= v19)
      {
LABEL_15:
        [(CEKDiscreteSlider *)self _setExternalOverScroll:v23, *&v25, v26, *&v27, v28];

LABEL_16:
        [(CEKDiscreteSlider *)self _applyExternalTarget:5 mode:v14];

        goto LABEL_17;
      }

      if (v22 == 0.0)
      {
        v23 = v14 - v19;
      }

      else
      {
        v23 = v10 + v22;
      }
    }

    else if (v22 == 0.0)
    {
      v23 = v14 - v21;
    }

    else
    {
      v23 = v10 + v22;
    }

    [(CEKDiscreteSlider *)self bounds];
    v25 = v19;
    LOBYTE(v26) = 1;
    *(&v26 + 1) = 0;
    HIDWORD(v26) = 0;
    v27 = v21;
    LOBYTE(v28) = 1;
    *(&v28 + 1) = 0;
    HIDWORD(v28) = 0;
    BSUIConstrainValueToIntervalWithRubberBand();
    v14 = v24;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)contactEndedWithAction:(id)action
{
  v77 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (![(CEKDiscreteSlider *)self _isExternalScrollingAllowed])
  {
    goto LABEL_61;
  }

  [(CEKDiscreteSlider *)self _setExternalScrollingAllowed:0];
  [(CEKDiscreteSlider *)self _setExternallyScrolling:0];
  _sliderDriver = [(CEKDiscreteSlider *)self _sliderDriver];
  [_sliderDriver contactEndedWithAction:actionCopy];
  [_sliderDriver velocity];
  v7 = v6;
  _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  [_externalScrollOffsetAnimator value];
  v10 = v9;

  [_sliderDriver distanceToDecelerate];
  v12 = [(CEKDiscreteSlider *)self _indexForContentOffset:v10 + v11, 0.0];
  selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
  _externalScrollAllowedIndexes = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
  [(CEKDiscreteSlider *)self _limitExternalScrollIndexesForCurrentSelectionIfNeeded];
  v15 = [(CEKDiscreteSlider *)self _externalScrollingAllowedIndexForIndex:v12];
  if (v15 == v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
    v17 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v70 = v12;
      v71 = 2048;
      v72 = v16;
      v73 = 2048;
      firstIndex = [_externalScrollAllowedIndexes firstIndex];
      v75 = 2048;
      lastIndex = [_externalScrollAllowedIndexes lastIndex];
      _os_log_debug_impl(&dword_1B7E93000, v17, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Clamping targetOffset from %ld to %ld based on allowed range [%lu-%lu]", buf, 0x2Au);
    }
  }

  [(CEKDiscreteSlider *)self _contentOffsetForIndex:v16];
  v19 = v18;
  magneticIndexes = [(CEKDiscreteSlider *)self magneticIndexes];
  if (magneticIndexes)
  {
    v60 = selectedIndex;
    v62 = actionCopy;
    v21 = _externalScrollAllowedIndexes;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:0];
    v23 = v22;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self indexCount]- 1];
    v25 = v24;
    _externalScrollOffsetAnimator2 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator2 value];
    v28 = v27;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61 = magneticIndexes;
    v29 = magneticIndexes;
    v30 = [v29 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v65;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
      v34 = 0;
      while (1)
      {
        if (*v65 != v32)
        {
          objc_enumerationMutation(v29);
        }

        unsignedIntegerValue = [*(*(&v64 + 1) + 8 * v34) unsignedIntegerValue];
        [(CEKDiscreteSlider *)self _contentOffsetForIndex:unsignedIntegerValue];
        if (v36 >= v28)
        {
          if (v36 > v28)
          {

            if (v7 <= 20.0)
            {
              goto LABEL_26;
            }

            _externalScrollAllowedIndexes = v21;
            if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_27;
            }

            [(CEKDiscreteSlider *)self _contentOffsetForIndex:unsignedIntegerValue];
            traitCollection = [(CEKDiscreteSlider *)self traitCollection];
            [traitCollection displayScale];
            UIRoundToScale();
            v39 = v38;

            v19 = fmax(v23, fmin(v25, v39));
            v40 = os_log_create("com.apple.camera", "CameraEditKit");
            actionCopy = v62;
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              selectedIndex = v60;
              magneticIndexes = v61;
              goto LABEL_36;
            }

            *buf = 134218496;
            v70 = v60;
            v71 = 2048;
            v72 = unsignedIntegerValue;
            selectedIndex = v60;
            v73 = 2048;
            firstIndex = *&v7;
LABEL_64:
            _os_log_debug_impl(&dword_1B7E93000, v40, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Decelerating from %ld to magnetic index %lu with velocity %.3f", buf, 0x20u);
            goto LABEL_30;
          }
        }

        else
        {
          v33 = unsignedIntegerValue;
        }

        if (v31 == ++v34)
        {
          v31 = [v29 countByEnumeratingWithState:&v64 objects:v68 count:16];
          if (v31)
          {
            goto LABEL_10;
          }

          goto LABEL_25;
        }
      }
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:

LABEL_26:
    _externalScrollAllowedIndexes = v21;
LABEL_27:
    actionCopy = v62;
    if (v7 >= -20.0 || v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = os_log_create("com.apple.camera", "CameraEditKit");
      v44 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
      selectedIndex = v60;
      if (v19 == v10)
      {
        magneticIndexes = v61;
        if (v44)
        {
          [(CEKDiscreteSlider *)v40 contactEndedWithAction:v45, v46, v47, v48, v49, v50, v51];
        }
      }

      else
      {
        magneticIndexes = v61;
        if (v44)
        {
          *buf = 134218496;
          v70 = v60;
          v71 = 2048;
          v72 = v16;
          v73 = 2048;
          firstIndex = *&v7;
          _os_log_debug_impl(&dword_1B7E93000, v40, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Decelerating without magnet from %ld to index %lu (velocity %.3f)", buf, 0x20u);
        }
      }
    }

    else
    {
      [(CEKDiscreteSlider *)self _contentOffsetForIndex:v33];
      traitCollection2 = [(CEKDiscreteSlider *)self traitCollection];
      [traitCollection2 displayScale];
      UIRoundToScale();
      v43 = v42;

      v19 = fmax(v23, fmin(v25, v43));
      v40 = os_log_create("com.apple.camera", "CameraEditKit");
      selectedIndex = v60;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v70 = v60;
        v71 = 2048;
        v72 = v33;
        v73 = 2048;
        firstIndex = *&v7;
        goto LABEL_64;
      }

LABEL_30:
      magneticIndexes = v61;
    }

LABEL_36:
  }

  _hidPassthroughDriver = [(CEKDiscreteSlider *)self _hidPassthroughDriver];
  if (([_hidPassthroughDriver liftoffDidFlickUp] & 1) == 0)
  {
    liftoffDidFlickDown = [_hidPassthroughDriver liftoffDidFlickDown];
    if (!liftoffDidFlickDown || v16 != selectedIndex)
    {
      if (!liftoffDidFlickDown)
      {
        v55 = os_log_create("com.apple.camera", "CameraEditKit");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          [CEKDiscreteSlider contactEndedWithAction:];
        }

        goto LABEL_57;
      }

      goto LABEL_45;
    }

LABEL_42:
    if ([_hidPassthroughDriver liftoffDidFlickUp])
    {
      v54 = selectedIndex + 1;
    }

    else if ([_hidPassthroughDriver liftoffDidFlickDown])
    {
      v54 = selectedIndex - 1;
    }

    else
    {
      v54 = v16;
    }

    v56 = [(CEKDiscreteSlider *)self _externalScrollingAllowedIndexForIndex:v54];
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:v56];
    v19 = v57;
    v55 = os_log_create("com.apple.camera", "CameraEditKit");
    v58 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
    if (v56 == selectedIndex)
    {
      if (v58)
      {
        [CEKDiscreteSlider contactEndedWithAction:];
      }
    }

    else if (v58)
    {
      [CEKDiscreteSlider contactEndedWithAction:];
    }

    goto LABEL_57;
  }

  if (v16 == selectedIndex)
  {
    goto LABEL_42;
  }

LABEL_45:
  v55 = os_log_create("com.apple.camera", "CameraEditKit");
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    [CEKDiscreteSlider contactEndedWithAction:];
  }

LABEL_57:

  if (v19 == v10)
  {
    [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
  }

  else
  {
    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [(CEKDiscreteSlider *)self scrollViewDidEndDragging:_contentScrollView willDecelerate:1];

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __44__CEKDiscreteSlider_contactEndedWithAction___block_invoke;
    v63[3] = &unk_1E7CC6700;
    v63[4] = self;
    [(CEKDiscreteSlider *)self _applyExternalTarget:3 mode:v63 completion:v19];
  }

LABEL_61:
}

uint64_t __44__CEKDiscreteSlider_contactEndedWithAction___block_invoke(uint64_t a1)
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
  selfCopy = self;
  _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  [_externalScrollOffsetAnimator presentationValue];
  [_externalScrollOffsetAnimator value];
  CEKPixelWidthForView(selfCopy);
  LOBYTE(selfCopy) = BSFloatApproximatelyEqualToFloat();

  return selfCopy ^ 1;
}

- (void)_applyExternalTarget:(double)target mode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  UIRoundToViewScale();
  v10 = v9;
  if (!_externalScrollOffsetAnimator || ([_externalScrollOffsetAnimator value], v10 != v11))
  {
    [(CEKDiscreteSlider *)self _createExternalScrollAnimatorIfNeeded];
    _externalScrollOffsetAnimator2 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [_externalScrollOffsetAnimator2 value];
    v14 = v10 - v13;

    if (v14 != 0.0)
    {
      contactObserver = [(CEKDiscreteSlider *)self contactObserver];
      [contactObserver observeContactRecognitionDelta:v14];
    }

    v16 = MEMORY[0x1E69DD250];
    _externalScrollSettings = [(CEKDiscreteSlider *)self _externalScrollSettings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__CEKDiscreteSlider__applyExternalTarget_mode_completion___block_invoke;
    v18[3] = &unk_1E7CC6660;
    v18[4] = self;
    *&v18[5] = v10;
    [v16 cek_animateWithSettings:_externalScrollSettings mode:mode animations:v18 completion:completionCopy];
  }
}

void __58__CEKDiscreteSlider__applyExternalTarget_mode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _externalScrollOffsetAnimator];
  [v2 setValue:v1];
}

- (void)_createExternalScrollAnimatorIfNeeded
{
  v16[1] = *MEMORY[0x1E69E9840];
  _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];

  if (!_externalScrollOffsetAnimator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD268]);
    [(CEKDiscreteSlider *)self _setExternalScrollOffsetAnimator:v4];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DD250];
    v16[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __58__CEKDiscreteSlider__createExternalScrollAnimatorIfNeeded__block_invoke;
    v13 = &unk_1E7CC6728;
    objc_copyWeak(&v14, &location);
    [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:&v10];

    v7 = [(CEKDiscreteSlider *)self _contentScrollView:v10];
    [v7 contentOffset];
    v9 = v8;

    [v4 setValue:v9];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __58__CEKDiscreteSlider__createExternalScrollAnimatorIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExternalScrollAnimated];
}

- (void)_handleExternalScrollAnimated
{
  _externalScrollOffsetAnimator = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  if (_externalScrollOffsetAnimator)
  {
    v5 = _externalScrollOffsetAnimator;
    _contentScrollView = [(CEKDiscreteSlider *)self _contentScrollView];
    [_contentScrollView contentOffset];
    [v5 presentationValue];
    [_contentScrollView setContentOffset:?];

    _externalScrollOffsetAnimator = v5;
  }
}

- (void)tickMarksViewDidChangeWidthForTickMarkCount:(id)count
{
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];

  [(CEKDiscreteSlider *)self setNeedsLayout];
}

- (void)setTextOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_textOrientation != orientation)
  {
    if (animated)
    {
      [(CEKDiscreteSlider *)self layoutIfNeeded];
      self->_textOrientation = orientation;
      [(CEKDiscreteSlider *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__CEKDiscreteSlider_setTextOrientation_animated___block_invoke;
      v6[3] = &unk_1E7CC6358;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      self->_textOrientation = orientation;

      [(CEKDiscreteSlider *)self setNeedsLayout];
    }
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

- (CEKDiscreteSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CEKContactObserver)contactObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contactObserver);

  return WeakRetained;
}

- (void)contactEndedWithAction:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_1B7E93000, v1, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Advancing from %ld to %lu using micro-flick signal", v2, 0x16u);
}

@end