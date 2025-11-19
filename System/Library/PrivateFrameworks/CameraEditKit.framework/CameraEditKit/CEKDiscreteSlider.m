@interface CEKDiscreteSlider
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)_isScrollActive;
- (BOOL)_isScrollExternallyAnimating;
- (BOOL)_shouldUseHighlightColor;
- (BOOL)_shouldUseStepwiseExternalScrolling;
- (BOOL)highlightSelectedIndex;
- (BOOL)useTickMarkLegibilityShadows;
- (CEKContactObserver)contactObserver;
- (CEKDiscreteSlider)initWithFrame:(CGRect)a3;
- (CEKDiscreteSlider)initWithTickMarkStyle:(unint64_t)a3;
- (CEKDiscreteSliderDelegate)delegate;
- (CEKFluidBehaviorSettings)_externalScrollSettings;
- (CEKSliderPositionDriver)_sliderDriver;
- (CEKTickMarksConfiguration)tickMarksConfiguration;
- (CGPoint)_contentOffsetForIndex:(unint64_t)a3;
- (CGSize)intrinsicContentSize;
- (double)_interpolatedIndexForContentOffset:(CGPoint)a3;
- (id)_createLegibilityImage;
- (id)_hidPassthroughDriver;
- (int64_t)_externalScrollingAllowedIndexForIndex:(int64_t)a3;
- (int64_t)selectionFeedbackProfile;
- (unint64_t)_biasedIndexForContentOffset:(CGPoint)a3;
- (unint64_t)_indexForContentOffset:(CGPoint)a3;
- (unint64_t)_nearestIndexForContentOffset:(CGPoint)a3;
- (unint64_t)indexForTickMarkAtPoint:(CGPoint)a3 in:(id)a4;
- (void)_applyExternalTarget:(double)a3 mode:(int64_t)a4 completion:(id)a5;
- (void)_createExternalScrollAnimatorIfNeeded;
- (void)_createGradientIfNeeded;
- (void)_handleExternalScrollAnimated;
- (void)_layoutSliderContentAtY:(double)a3 withHorizontalPadding:(double)a4;
- (void)_layoutSubviewsWithLabelRotation:(double)a3;
- (void)_layoutSubviewsWithNoRotation;
- (void)_limitExternalScrollIndexesForCurrentSelectionIfNeeded;
- (void)_setOverscrolling:(BOOL)a3;
- (void)_setSelectedIndex:(unint64_t)a3 shouldDelegate:(BOOL)a4 wantsFeedbackEmitted:(BOOL)a5 shouldScroll:(BOOL)a6 scrollDuration:(double)a7 scrollCurve:(id)a8 scrollCompletion:(id)a9;
- (void)_sliderDidEndScrolling;
- (void)_updateAppearanceForActiveScrolling;
- (void)_updateColorsAnimated:(BOOL)a3;
- (void)_updateFonts;
- (void)_updateMarkedIndexViewAnimated:(BOOL)a3;
- (void)_updateScrollViewContentOffset;
- (void)_updateTextLegibilityBackground;
- (void)_updateTickMarkCount;
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)removeGradients;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBounds:(CGRect)a3;
- (void)setColorHighlight:(unint64_t)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFontStyle:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGradientInsets:(id)a3;
- (void)setHighlightSelectedIndex:(BOOL)a3 animated:(BOOL)a4;
- (void)setIndexCount:(unint64_t)a3;
- (void)setLabelVerticalPadding:(double)a3;
- (void)setLevelIndicatorHeight:(double)a3;
- (void)setMagneticIndexes:(id)a3;
- (void)setMarkedIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setOpaqueGradientsWithColor:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3 animatedDuration:(double)a4 animatedCurve:(id)a5 completion:(id)a6;
- (void)setSelectionFeedbackProfile:(int64_t)a3;
- (void)setSliderVerticalAlignment:(int64_t)a3;
- (void)setSliderVerticalOffset:(double)a3;
- (void)setTextOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setTickMarkCountBetweenIndexes:(unint64_t)a3;
- (void)setTickMarksHeight:(double)a3 animated:(BOOL)a4;
- (void)setTitleAlignment:(int64_t)a3;
- (void)setTitleText:(id)a3;
- (void)setTransparentGradients;
- (void)setUseTextLegibilityBackgrounds:(BOOL)a3;
- (void)setUseTextLegibilityShadows:(BOOL)a3;
- (void)setUseTickMarkLegibilityShadows:(BOOL)a3;
- (void)tickMarksViewDidChangeWidthForTickMarkCount:(id)a3;
- (void)updateValueLabel;
@end

@implementation CEKDiscreteSlider

- (CEKDiscreteSlider)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CEKDiscreteSlider *)self initWithTickMarkStyle:0];
  v8 = v7;
  if (v7)
  {
    [(CEKDiscreteSlider *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (CEKDiscreteSlider)initWithTickMarkStyle:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = CEKDiscreteSlider;
  v4 = [(CEKDiscreteSlider *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKDiscreteSlider *)v4 setTintColor:v5];

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
    v7 = [v6 panGestureRecognizer];
    [v7 _wantsGESEvents:1];

    objc_storeStrong(&v4->__contentScrollView, v6);
    if (a3)
    {
      if (a3 == 1)
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
    v4->_ticksStyle = a3;
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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
    v3 = [(CEKDiscreteSlider *)self textOrientation];
    switch(v3)
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
        v5 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
        [(CEKDiscreteSlider *)self bounds];
        [(CEKDiscreteSlider *)self convertRect:v5 toView:?];
        [v5 setVisibleBounds:?];

        return;
    }

    [(CEKDiscreteSlider *)self _layoutSubviewsWithLabelRotation:v4];
    goto LABEL_9;
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v3 contentSize];
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

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];
}

- (void)setUseTextLegibilityBackgrounds:(BOOL)a3
{
  if (self->_useTextLegibilityBackgrounds != a3)
  {
    self->_useTextLegibilityBackgrounds = a3;
    [(CEKDiscreteSlider *)self _updateTextLegibilityBackground];

    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setUseTextLegibilityShadows:(BOOL)a3
{
  if (self->_useTextLegibilityShadows != a3)
  {
    self->_useTextLegibilityShadows = a3;
    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
  }
}

- (void)setUseTickMarkLegibilityShadows:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKDiscreteSlider *)self _dotView];
  [v5 setUseLegibilityShadow:v3];

  v6 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [v6 setUseTickMarkLegibilityShadows:v3];
}

- (BOOL)useTickMarkLegibilityShadows
{
  v2 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  v3 = [v2 useTickMarkLegibilityShadows];

  return v3;
}

- (void)_createGradientIfNeeded
{
  v3 = [(CEKDiscreteSlider *)self _edgeGradientView];

  if (!v3)
  {
    v4 = objc_alloc_init(CEKEdgeGradientView);
    [(CEKDiscreteSlider *)self set_edgeGradientView:v4];
  }
}

- (void)setTransparentGradients
{
  [(CEKDiscreteSlider *)self _createGradientIfNeeded];
  v6 = [(CEKDiscreteSlider *)self _edgeGradientView];
  [v6 setEdgeGradientStyleBlack];
  v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  v4 = [v6 layer];
  [v4 setCompositingFilter:v3];

  v5 = [(CEKDiscreteSlider *)self _contentScrollView];
  [(CEKDiscreteSlider *)self insertSubview:v6 aboveSubview:v5];
}

- (void)setOpaqueGradientsWithColor:(id)a3
{
  v4 = a3;
  [(CEKDiscreteSlider *)self _createGradientIfNeeded];
  v7 = [(CEKDiscreteSlider *)self _edgeGradientView];
  [v7 setCustomEdgeGradientStyleWithColor:v4];

  v5 = [v7 layer];
  [v5 setCompositingFilter:0];

  v6 = [(CEKDiscreteSlider *)self _contentScrollView];
  [(CEKDiscreteSlider *)self insertSubview:v7 aboveSubview:v6];
}

- (void)removeGradients
{
  v3 = [(CEKDiscreteSlider *)self _edgeGradientView];
  [v3 removeFromSuperview];

  [(CEKDiscreteSlider *)self set_edgeGradientView:0];
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

    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlignment:(int64_t)a3
{
  self->_titleAlignment = a3;
  v4 = [(CEKDiscreteSlider *)self _titleLabel];
  [v4 setTextAlignment:a3];
}

- (void)setSliderVerticalOffset:(double)a3
{
  if (self->_sliderVerticalOffset != a3)
  {
    self->_sliderVerticalOffset = a3;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setLabelVerticalPadding:(double)a3
{
  if (self->_labelVerticalPadding != a3)
  {
    self->_labelVerticalPadding = a3;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setSliderVerticalAlignment:(int64_t)a3
{
  if (self->_sliderVerticalAlignment != a3)
  {
    self->_sliderVerticalAlignment = a3;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setLevelIndicatorHeight:(double)a3
{
  if (self->_levelIndicatorHeight != a3)
  {
    self->_levelIndicatorHeight = a3;
    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKDiscreteSlider *)self isEnabled];
  v10.receiver = self;
  v10.super_class = CEKDiscreteSlider;
  [(CEKDiscreteSlider *)&v10 setEnabled:v3];
  if (v5 != v3)
  {
    [(CEKDiscreteSlider *)self contactEndedWithAction:0];
    v6 = [(CEKDiscreteSlider *)self _contentScrollView];
    [v6 setUserInteractionEnabled:v3];

    v7 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
    [v7 setEnabled:v3];

    v8 = 0.3;
    v9[1] = 3221225472;
    v9[0] = MEMORY[0x1E69E9820];
    v9[2] = __32__CEKDiscreteSlider_setEnabled___block_invoke;
    v9[3] = &unk_1E7CC6660;
    if (v3)
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
  v2 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  v3 = [v2 highlightSelectedIndex];

  return v3;
}

- (void)setHighlightSelectedIndex:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [v6 setHighlightSelectedIndex:v5 animated:v4];
}

- (void)setMagneticIndexes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_magneticIndexes != v5 && ![(NSArray *)v5 isEqualToArray:?])
  {
    objc_storeStrong(&self->_magneticIndexes, a3);
    v7 = [MEMORY[0x1E696AD50] indexSet];
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

          [v7 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v12++), "unsignedLongValue", v14)}];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    v13 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
    [v13 setMagneticTickMarkIndexes:v7];
  }
}

- (void)setSelectedIndex:(unint64_t)a3 animatedDuration:(double)a4 animatedCurve:(id)a5 completion:(id)a6
{
  v14 = a5;
  v10 = a6;
  v11 = [(CEKDiscreteSlider *)self indexCount];
  if (!a3 || v11)
  {
    v12 = [(CEKDiscreteSlider *)self indexCount];
    if (v12 - 1 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v12 - 1;
    }

    [(CEKDiscreteSlider *)self _setSelectedIndex:v13 shouldDelegate:0 wantsFeedbackEmitted:0 shouldScroll:1 scrollDuration:v14 scrollCurve:v10 scrollCompletion:a4];
  }
}

- (void)setIndexCount:(unint64_t)a3
{
  if (self->_indexCount == a3)
  {
    return;
  }

  self->_indexCount = a3;
  [(CEKDiscreteSlider *)self _updateTickMarkCount];
  if (a3)
  {
    v6 = [(CEKDiscreteSlider *)self selectedIndex];
    v7 = a3 - 1;
    if (v6 <= a3 - 1)
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

- (void)setMarkedIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_markedIndex != a3)
  {
    self->_markedIndex = a3;
    [(CEKDiscreteSlider *)self _updateMarkedIndexViewAnimated:a4];

    [(CEKDiscreteSlider *)self setNeedsLayout];
  }
}

- (void)setTitleText:(id)a3
{
  v11 = a3;
  v4 = [v11 isEqualToString:self->_titleText];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = [v11 copy];
    titleText = self->_titleText;
    self->_titleText = v6;

    v8 = [(CEKDiscreteSlider *)self _titleLabel];
    if (!v8)
    {
      if ([(NSString *)self->_titleText length])
      {
        v9 = objc_alloc(MEMORY[0x1E69DCC10]);
        v8 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v10 = [MEMORY[0x1E69DC888] clearColor];
        [v8 setBackgroundColor:v10];

        [v8 setTextAlignment:{-[CEKDiscreteSlider titleAlignment](self, "titleAlignment")}];
        [v8 setNumberOfLines:0];
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(CEKDiscreteSlider *)self addSubview:v8];
        [(CEKDiscreteSlider *)self set_titleLabel:v8];
        [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
        [(CEKDiscreteSlider *)self _updateFonts];
      }

      else
      {
        v8 = 0;
      }
    }

    [v8 setText:self->_titleText];

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)updateValueLabel
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(CEKDiscreteSlider *)self _valueLabel];
  v4 = [(CEKDiscreteSlider *)self valueText];
  v5 = [v4 length];
  if (v3 || !v5)
  {
    if (!v5)
    {
      [v3 setAttributedText:0];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v3 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [v3 setBackgroundColor:v7];

    [v3 setTextAlignment:1];
    [(CEKDiscreteSlider *)self addSubview:v3];
    [(CEKDiscreteSlider *)self set_valueLabel:v3];
    [(CEKDiscreteSlider *)self _updateColorsAnimated:0];
    [(CEKDiscreteSlider *)self _updateFonts];
  }

  v8 = CEKFrameworkBundle();
  v9 = [v8 preferredLocalizations];
  v10 = [v9 firstObject];

  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
  v12 = [v3 font];
  [v12 pointSize];
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

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v16];
  [v3 setAttributedText:v17];

LABEL_9:
}

- (CEKTickMarksConfiguration)tickMarksConfiguration
{
  v2 = [(CEKDiscreteSlider *)self _tickMarksView];
  v3 = [v2 tickMarksModel];

  return v3;
}

- (void)setTickMarkCountBetweenIndexes:(unint64_t)a3
{
  if (self->_tickMarkCountBetweenIndexes != a3)
  {
    self->_tickMarkCountBetweenIndexes = a3;
    [(CEKDiscreteSlider *)self _updateTickMarkCount];
  }
}

- (void)_updateTickMarkCount
{
  v3 = [(CEKDiscreteSlider *)self indexCount];
  v4 = [(CEKDiscreteSlider *)self tickMarkCountBetweenIndexes];
  if (v3)
  {
    v5 = v3 + (v3 - 1) * v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = [(CEKDiscreteSlider *)self _tickMarksView];
  v6 = [v7 tickMarksModel];
  [v6 setTickMarksCount:v5];
}

- (void)setFontStyle:(unint64_t)a3
{
  if (self->_fontStyle != a3)
  {
    self->_fontStyle = a3;
    [(CEKDiscreteSlider *)self _updateFonts];
  }
}

- (void)setSelectionFeedbackProfile:(int64_t)a3
{
  v4 = [(CEKDiscreteSlider *)self _feedbackGenerator];
  [v4 setProfile:a3];
}

- (int64_t)selectionFeedbackProfile
{
  v2 = [(CEKDiscreteSlider *)self _feedbackGenerator];
  v3 = [v2 profile];

  return v3;
}

- (void)setTickMarksHeight:(double)a3 animated:(BOOL)a4
{
  if (self->_tickMarksHeight != a3)
  {
    if (a4)
    {
      [(CEKDiscreteSlider *)self layoutIfNeeded];
      self->_tickMarksHeight = a3;
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
      self->_tickMarksHeight = a3;

      [(CEKDiscreteSlider *)self setNeedsLayout];
    }
  }
}

- (void)setColorHighlight:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_colorHighlight != a3)
  {
    self->_colorHighlight = a3;
    [(CEKDiscreteSlider *)self _updateColorsAnimated:a4];
  }
}

- (void)_layoutSubviewsWithNoRotation
{
  [(CEKDiscreteSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CEKDiscreteSlider *)self sliderVerticalAlignment];
  if (v11 == 2)
  {
    [(CEKDiscreteSlider *)self sliderVerticalOffset];
    v12 = v18 + 33.0;
  }

  else if (v11 == 1)
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
    if (!v11)
    {
      [(CEKDiscreteSlider *)self levelIndicatorHeight];
      v33 = 0;
      UIRectCenteredYInRectScale();
      v12 = v13;
    }
  }

  [(CEKDiscreteSlider *)self _layoutSliderContentAtY:v12 withHorizontalPadding:0.0, v33];
  v19 = [(CEKDiscreteSlider *)self _valueLabel];
  v20 = [(CEKDiscreteSlider *)self _titleLabel];
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  v40 = *MEMORY[0x1E695EFD0];
  v36 = v40;
  v41 = v35;
  v42 = *(MEMORY[0x1E695EFD0] + 32);
  v34 = v42;
  [v19 setTransform:&v40];
  v40 = v36;
  v41 = v35;
  v42 = v34;
  [v20 setTransform:&v40];
  [(CEKDiscreteSlider *)self labelVerticalPadding];
  v22 = v21;
  [(CEKDiscreteSlider *)self horizontalValueLabelOffset];
  v24 = v23;
  [v20 setFrame:{10.0, v22, v8 + -20.0, 18.0}];
  [v19 setFrame:{v24, v22, v8, 18.0}];
  [v19 setTextAlignment:1];
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    v25 = [(CEKDiscreteSlider *)self _valueBackground];
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v28 = [v25 image];
    [v28 size];
    v30 = v29;

    [v25 setBounds:{v26, v27, 52.0, v30}];
    [v19 center];
    [v25 setCenter:v8 * 0.5];
    if (v19)
    {
      [v19 transform];
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
    [v25 setTransform:&v40];
    v31 = [(CEKDiscreteSlider *)self _valueBackground];
    [v31 setAlpha:1.0];

    v32 = [(CEKDiscreteSlider *)self _titleBackground];
    [v32 setAlpha:0.0];
  }
}

- (void)_layoutSubviewsWithLabelRotation:(double)a3
{
  v5 = 18.0;
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    v6 = [(CEKDiscreteSlider *)self _titleBackground];
    v7 = [v6 image];
    [v7 size];
    v5 = v8 * 0.5 + 10.0;
  }

  [(CEKDiscreteSlider *)self _layoutSliderContentAtY:55.0 withHorizontalPadding:v5];
  v9 = [(CEKDiscreteSlider *)self _valueLabel];
  v10 = [(CEKDiscreteSlider *)self _titleLabel];
  [v10 intrinsicContentSize];
  [v10 setBounds:{0.0, 0.0, v11, 18.0}];
  [v9 setBounds:{0.0, 0.0, 40.0, 18.0}];
  v12 = [(CEKDiscreteSlider *)self _levelIndicatorView];
  v13 = [(CEKDiscreteSlider *)self _tickMarksView];
  v14 = 10.0;
  if (a3 > 0.0)
  {
    [(CEKDiscreteSlider *)self bounds];
    v14 = v15 + -10.0;
  }

  [v13 center];
  [v10 setCenter:v14];
  if (v12)
  {
    [v12 center];
  }

  else
  {
    [(CEKDiscreteSlider *)self frame];
    v16 = v17 * 0.5;
  }

  [v9 setCenter:{v16, 21.0}];
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeRotation(&v34, a3);
  UIIntegralTransform();
  v34 = v33;
  [v9 setTransform:&v33];
  v33 = v34;
  [v10 setTransform:&v33];
  [v9 setTextAlignment:2 * (a3 > 0.0)];
  v18 = [(CEKDiscreteSlider *)self _valueBackground];
  v19 = [(CEKDiscreteSlider *)self _titleBackground];
  if ([(CEKDiscreteSlider *)self useTextLegibilityBackgrounds])
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = [v19 image];
    [v22 size];
    v24 = v23;

    [v10 bounds];
    [v19 setBounds:{v20, v21, v25 + 20.0, v24}];
    [v10 center];
    [v19 setCenter:?];
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&v32[1], 0, sizeof(CGAffineTransform));
    }

    v33 = v32[1];
    [v19 setTransform:&v33];
    v26 = [v18 image];
    [v26 size];
    v28 = v27;

    [v9 bounds];
    [v18 setBounds:{v20, v21, v29 + 12.0, v28}];
    [v9 center];
    [v18 setCenter:?];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(v32, 0, 48);
    }

    v33 = v32[0];
    [v18 setTransform:{&v33, *&v32[0].a, *&v32[0].c, *&v32[0].tx}];
    [v9 setTextAlignment:1];
    v30 = [(CEKDiscreteSlider *)self _valueBackground];
    [v30 setAlpha:1.0];

    v31 = [(CEKDiscreteSlider *)self _titleBackground];
    [v31 setAlpha:1.0];
  }
}

- (void)_layoutSliderContentAtY:(double)a3 withHorizontalPadding:(double)a4
{
  [(CEKDiscreteSlider *)self bounds];
  v62 = v7;
  v63 = v6;
  v9 = v8;
  v60 = v10;
  v67 = [(CEKDiscreteSlider *)self _contentScrollView];
  v11 = [(CEKDiscreteSlider *)self _levelIndicatorView];
  v12 = [(CEKDiscreteSlider *)self _tickMarksView];
  [(CEKDiscreteSlider *)self levelIndicatorHeight];
  v14 = v13;
  v61 = v9;
  UIRoundToViewScale();
  v16 = v15;
  [v11 setFrame:?];
  v17 = -CEKPixelWidthForView(self);
  v69.size.width = 1.0;
  v66 = v16;
  v69.origin.x = v16;
  v69.origin.y = a3;
  v69.size.height = v14;
  v70 = CGRectInset(v69, v17, v17);
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  v22 = [(CEKDiscreteSlider *)self _indicatorBackground];
  [v22 setFrame:{x, y, width, height}];

  v65 = v14;
  if (v11)
  {
    [(CEKDiscreteSlider *)self tickMarksHeight];
    v24 = v23;
  }

  else
  {
    v24 = v14;
  }

  v25 = [v12 tickMarksModel];
  [v25 requiredWidth];
  v57 = v26;

  v27 = *MEMORY[0x1E695F058];
  v59 = *MEMORY[0x1E695F058];
  [(CEKDiscreteSlider *)self levelIndicatorHeight];
  v58 = v28 - v24 + a3;
  [v12 frameForAlignmentRect:v27];
  [v12 setFrame:?];
  [v12 frameForTickMarkAtIndex:{-[CEKDiscreteSlider markedIndex](self, "markedIndex")}];
  [v12 convertRect:v67 toView:?];
  v29 = [(CEKDiscreteSlider *)self traitCollection];
  [v29 displayScale];
  v56 = v30;
  UIRectCenteredXInRectScale();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = [(CEKDiscreteSlider *)self _dotView];
  [v39 setFrame:{v32, v34, v36, v38}];

  v71.origin.y = v62;
  v71.origin.x = v63;
  v71.size.height = v60;
  v71.size.width = v61;
  v72 = CGRectInset(v71, a4, 0.0);
  v40 = v72.origin.x;
  v41 = v72.origin.y;
  v42 = v72.size.width;
  v43 = v72.size.height;
  v44 = [(CEKDiscreteSlider *)self _edgeGradientView];
  v45 = [(CEKDiscreteSlider *)self ticksStyle];
  if (v45 == 1)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v41;
  }

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = a3;
  }

  v73.origin.y = v58;
  v73.origin.x = v59;
  v73.size.width = v57;
  v73.size.height = v24;
  [v44 setFrame:{v40, v47, v42, CGRectGetMaxY(v73) - v47}];
  [(CEKDiscreteSlider *)self gradientInsets];
  v49 = v48;
  [(CEKDiscreteSlider *)self gradientInsets];
  [v44 setGradientDimensions:{v49, v42 * 0.1, v42 * 0.1, v50}];
  UIRoundToViewScale();
  v52 = v51;
  [v67 setFrame:{v40, v41, v42, v43}];
  [v67 setContentSize:{v57 + v52 * -2.0, v43}];
  v74.size.width = 1.0;
  v74.origin.y = a3;
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
  v77.origin.y = a3;
  v77.size.height = v65;
  [v67 setContentInset:{0.0, v54, 0.0, v52 + MaxX - CGRectGetMaxX(v77)}];
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
  v3 = [(CEKDiscreteSlider *)self _contentScrollView];
  v4 = ([v3 isTracking] & 1) != 0 || (objc_msgSend(v3, "isDecelerating") & 1) != 0 || -[CEKDiscreteSlider _isExternallyScrolling](self, "_isExternallyScrolling") || -[CEKDiscreteSlider _isScrollExternallyAnimating](self, "_isScrollExternallyAnimating");

  return v4;
}

- (BOOL)_shouldUseHighlightColor
{
  v3 = [(CEKDiscreteSlider *)self colorHighlight];
  if (v3 != 1)
  {
    return v3 == 2;
  }

  if ([(CEKDiscreteSlider *)self _isScrollActive])
  {
    return 1;
  }

  v5 = [(CEKDiscreteSlider *)self _animationGenerator];
  v6 = [v5 isAnimatingForIdentifier:@"CEKSelectionScrollingAnimationKey"];

  return v6;
}

- (void)_updateColorsAnimated:(BOOL)a3
{
  v3 = a3;
  v25 = [(CEKDiscreteSlider *)self _levelIndicatorView];
  v5 = [(CEKDiscreteSlider *)self _valueLabel];
  v6 = [(CEKDiscreteSlider *)self _titleLabel];
  v7 = [(CEKDiscreteSlider *)self useTextLegibilityShadows];
  v8 = [(CEKDiscreteSlider *)self _shouldUseHighlightColor];
  if (v8)
  {
    [(CEKDiscreteSlider *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v9 = ;
  v10 = [(CEKDiscreteSlider *)self useTextLegibilityBackgrounds]|| v7;
  v11 = [MEMORY[0x1E69DC888] labelColor];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v13 = [v11 colorWithAlphaComponent:0.6];

    v12 = v13;
  }

  if (v8)
  {
    v14 = [(CEKDiscreteSlider *)self tintColor];
  }

  else
  {
    v14 = v12;
  }

  [v6 setTextColor:{v12, v14}];
  if (v7)
  {
    v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v16 = [v15 colorWithAlphaComponent:0.15];

    v17 = CEKPixelWidthForView(self);
    v18 = 0.0;
  }

  else
  {
    v16 = 0;
    v18 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  [v6 setShadowColor:v16];
  [v5 setShadowColor:v16];
  [v6 setShadowOffset:{v18, v17}];
  [v5 setShadowOffset:{v18, v17}];
  if (v3)
  {
    v19 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __43__CEKDiscreteSlider__updateColorsAnimated___block_invoke;
    v29[3] = &unk_1E7CC6688;
    v20 = v25;
    v30 = v25;
    v31 = v9;
    [v19 animateWithDuration:v29 animations:0.15];
    v21 = MEMORY[0x1E69DD250];
    v22 = [(CEKDiscreteSlider *)self _valueLabel];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__CEKDiscreteSlider__updateColorsAnimated___block_invoke_2;
    v26[3] = &unk_1E7CC6688;
    v27 = v5;
    v23 = v24;
    v28 = v24;
    [v21 transitionWithView:v22 duration:5242880 options:v26 animations:0 completion:0.15];
  }

  else
  {
    v20 = v25;
    [v25 setBackgroundColor:v9];
    v23 = v24;
    [v5 setTextColor:v24];
  }
}

- (void)_updateScrollViewContentOffset
{
  [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self selectedIndex]];
  v4 = v3;
  v6 = v5;
  v7 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v7 setContentOffset:0 animated:{v4, v6}];
}

- (void)_updateMarkedIndexViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKDiscreteSlider *)self _dotView];
  v6 = [(CEKDiscreteSlider *)self markedIndex];
  v7 = [(CEKDiscreteSlider *)self ticksStyle];
  v8 = [(CEKDiscreteSlider *)self markedIndex];
  v9 = [(CEKDiscreteSlider *)self indexCount];
  if (v7 == 1)
  {
    if (v8 < v9)
    {
LABEL_8:
      v11 = v6 != [(CEKDiscreteSlider *)self selectedIndex];
      goto LABEL_9;
    }
  }

  else if (v8 < v9)
  {
    if ([(CEKDiscreteSlider *)self _isScrollActive])
    {
      v10 = v5 != 0;
      v11 = 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
  v10 = v5 != 0;
  if (v11 || v5)
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

      if (!v3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = objc_alloc_init(CEKSliderDotView);
      v12 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
      -[CEKSliderDotView setUseLegibilityShadow:](v5, "setUseLegibilityShadow:", [v12 useTickMarkLegibilityShadows]);

      if ([(CEKDiscreteSlider *)self ticksStyle]== 1)
      {
        v13 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
        v14 = [v13 secondaryTickMarkColor];
        [(CEKSliderDotView *)v5 setDotColor:v14];
      }

      v15 = [(CEKDiscreteSlider *)self _contentScrollView];
      [v15 addSubview:v5];

      [(CEKDiscreteSlider *)self set_dotView:v5];
      [(CEKDiscreteSlider *)self setNeedsLayout];
      if (!v3)
      {
        v16 = 1.0;
        goto LABEL_24;
      }

      [(CEKSliderDotView *)v5 setAlpha:0.0];
      v16 = 1.0;
    }

    [(CEKSliderDotView *)v5 alpha];
    if (v17 != v16)
    {
      v18 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52__CEKDiscreteSlider__updateMarkedIndexViewAnimated___block_invoke;
      v19[3] = &unk_1E7CC6660;
      v20 = v5;
      v21 = v16;
      v5 = v5;
      [v18 animateWithDuration:v19 animations:0 completion:0.25];

LABEL_25:
      return;
    }

LABEL_24:
    [(CEKSliderDotView *)v5 setAlpha:v16];
    goto LABEL_25;
  }
}

- (void)_setOverscrolling:(BOOL)a3
{
  if (self->__overscrolling != a3)
  {
    v3 = a3;
    self->__overscrolling = a3;
    v5 = [(CEKDiscreteSlider *)self feedbackScope];
    if (v3)
    {
      if (v5)
      {
        v6 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v6 playOverscrollTickSound];

        v7 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v7 performFeedback];
      }
    }
  }
}

- (void)_updateTextLegibilityBackground
{
  v3 = [(CEKDiscreteSlider *)self useTextLegibilityBackgrounds];
  v15 = [(CEKDiscreteSlider *)self _valueBackground];
  v4 = [(CEKDiscreteSlider *)self _titleBackground];
  v5 = [(CEKDiscreteSlider *)self _indicatorBackground];
  if (v3)
  {
    v6 = v15;
    if (!v15 && !v4)
    {
      v7 = [(CEKDiscreteSlider *)self _createLegibilityImage];
      v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
      v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);

      v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v10 = [v9 colorWithAlphaComponent:0.15];
      [v8 setBackgroundColor:v10];

      v11 = [(CEKDiscreteSlider *)self _valueLabel];
      [(CEKDiscreteSlider *)self insertSubview:v16 belowSubview:v11];

      v12 = [(CEKDiscreteSlider *)self _titleLabel];
      [(CEKDiscreteSlider *)self insertSubview:v4 belowSubview:v12];

      v13 = [(CEKDiscreteSlider *)self _levelIndicatorView];
      [(CEKDiscreteSlider *)self insertSubview:v8 belowSubview:v13];

      [(CEKDiscreteSlider *)self set_valueBackground:v16];
      [(CEKDiscreteSlider *)self set_titleBackground:v4];
      [(CEKDiscreteSlider *)self set_indicatorBackground:v8];

      v6 = v16;
      v5 = v8;
    }
  }

  else
  {
    v6 = v15;
  }

  if (v3)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  v17 = v6;
  [v6 setAlpha:v14];
  [v4 setAlpha:v14];
  [v5 setAlpha:v14];
  [(CEKDiscreteSlider *)self setNeedsLayout];
}

- (id)_createLegibilityImage
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = [(CEKDiscreteSlider *)self traitCollection];
  [v4 displayScale];
  v6 = v5;
  v14.width = 25.0;
  v14.height = 25.0;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v6);

  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v9 = [v8 colorWithAlphaComponent:0.3];
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
  v3 = [(CEKDiscreteSlider *)self fontStyle];
  v4 = CEKFontOfSizeAndStyle(v3, 14.0);
  v5 = [(CEKDiscreteSlider *)self _titleLabel];
  [v5 setFont:v4];

  v7 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(v3, 14.0);
  v6 = [(CEKDiscreteSlider *)self _valueLabel];
  [v6 setFont:v7];
}

- (void)performWaveAnimation
{
  v2 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [v2 performWaveAnimation];
}

- (void)_setSelectedIndex:(unint64_t)a3 shouldDelegate:(BOOL)a4 wantsFeedbackEmitted:(BOOL)a5 shouldScroll:(BOOL)a6 scrollDuration:(double)a7 scrollCurve:(id)a8 scrollCompletion:(id)a9
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v16 = a8;
  v17 = a9;
  if (self->_selectedIndex == a3)
  {
    goto LABEL_24;
  }

  self->_selectedIndex = a3;
  [(CEKDiscreteSlider *)self updateValueLabel];
  [(CEKDiscreteSlider *)self _updateMarkedIndexViewAnimated:1];
  v18 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [v18 setSelectedTickMarkIndex:a3 animated:v13];

  if (v13)
  {
    [(CEKDiscreteSlider *)self sendActionsForControlEvents:4096];
  }

  if (v12)
  {
    v19 = [(CEKDiscreteSlider *)self feedbackScope];
    if ((v19 - 1) <= 1)
    {
      v20 = v19;
      if (a3)
      {
        v21 = [(CEKDiscreteSlider *)self indexCount]- 1 == a3;
      }

      else
      {
        v21 = 1;
      }

      v22 = [(CEKDiscreteSlider *)self _tickMarkIndexForIndex:a3];
      v23 = [(CEKDiscreteSlider *)self _tickMarksView];
      v24 = [v23 tickMarksModel];
      v25 = [v24 isMainTickMarkAtIndex:v22];

      if (v21)
      {
        v26 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v26 performFeedback];

        v27 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v27 playEndTickSound];
LABEL_15:

        goto LABEL_16;
      }

      if (v25)
      {
        v28 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v28 performFeedback];

        v27 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v27 playMajorTickSound];
        goto LABEL_15;
      }

      if (v20 == 2)
      {
        v29 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v29 performFeedback];

        v27 = [(CEKDiscreteSlider *)self _feedbackGenerator];
        [v27 playMinorTickSound];
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (a7 > 0.0 && v11)
  {
    v30 = [(CEKDiscreteSlider *)self _animationGenerator];

    if (!v30)
    {
      v31 = objc_alloc_init(CEKAnimationGenerator);
      [(CEKDiscreteSlider *)self _setAnimationGenerator:v31];
    }

    v32 = [(CEKDiscreteSlider *)self _contentScrollView];
    [v32 contentOffset];
    v34 = v33;
    v36 = v35;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:a3];
    v38 = v37;
    v40 = v39;
    v41 = [(CEKDiscreteSlider *)self _animationGenerator];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke;
    v51[3] = &unk_1E7CC66B0;
    v52 = v16;
    v54 = v34;
    v55 = v36;
    v56 = v38;
    v57 = v40;
    v53 = v32;
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __132__CEKDiscreteSlider__setSelectedIndex_shouldDelegate_wantsFeedbackEmitted_shouldScroll_scrollDuration_scrollCurve_scrollCompletion___block_invoke_2;
    v47 = &unk_1E7CC66D8;
    v48 = v53;
    v49 = self;
    v50 = v17;
    v42 = v53;
    [v41 startAnimationForIdentifier:@"CEKSelectionScrollingAnimationKey" duration:v51 updateHandler:&v44 completionHandler:a7];

    [v42 setScrollEnabled:{0, v44, v45, v46, v47}];
    [(CEKDiscreteSlider *)self _updateColorsAnimated:1];
  }

  else if (v11)
  {
    v43 = [(CEKDiscreteSlider *)self _animationGenerator];
    [v43 stopAnimationForIdentifier:@"CEKSelectionScrollingAnimationKey"];

    [(CEKDiscreteSlider *)self _updateScrollViewContentOffset];
    if (v17)
    {
      (*(v17 + 2))(v17, 1);
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

- (double)_interpolatedIndexForContentOffset:(CGPoint)a3
{
  x = a3.x;
  if (![(CEKDiscreteSlider *)self indexCount:a3.x])
  {
    return 0.0;
  }

  v5 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v5 contentInset];
  v7 = (x + v6) / CEKScrollableDistanceInScrollView(v5);
  v8 = v7 * ([(CEKDiscreteSlider *)self indexCount]- 1);

  return v8;
}

- (unint64_t)_biasedIndexForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = [(CEKDiscreteSlider *)self indexCount];
  if (result)
  {
    [(CEKDiscreteSlider *)self _interpolatedIndexForContentOffset:x, y];
    v8 = v7;
    v9 = [(CEKDiscreteSlider *)self selectedIndex];
    v10 = floor(v8);
    v11 = ceil(v8);
    if (v8 <= v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    if (v9 == v12)
    {
      v14 = v9;
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

- (unint64_t)_nearestIndexForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = [(CEKDiscreteSlider *)self indexCount];
  if (result)
  {
    [(CEKDiscreteSlider *)self _interpolatedIndexForContentOffset:x, y];
    return CEKClamp(round(v7), 0.0, ([(CEKDiscreteSlider *)self indexCount]- 1));
  }

  return result;
}

- (unint64_t)_indexForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CEKDiscreteSlider *)self biasScrollingToCurrentSelection])
  {

    return [(CEKDiscreteSlider *)self _biasedIndexForContentOffset:x, y];
  }

  else
  {

    return [(CEKDiscreteSlider *)self _nearestIndexForContentOffset:x, y];
  }
}

- (CGPoint)_contentOffsetForIndex:(unint64_t)a3
{
  if ([(CEKDiscreteSlider *)self indexCount])
  {
    CEKProgress(a3, 0.0, ([(CEKDiscreteSlider *)self indexCount]- 1));
    v5 = [(CEKDiscreteSlider *)self _contentScrollView];
    [v5 contentOffset];
    v7 = v6;
    CEKScrollableDistanceInScrollView(v5);
    [v5 contentInset];
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

- (unint64_t)indexForTickMarkAtPoint:(CGPoint)a3 in:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v8 convertPoint:v7 fromView:{x, y}];
  v10 = v9;

  v11 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v11 contentInset];
  v13 = v10 - v12;
  v14 = [(CEKDiscreteSlider *)self _contentScrollView];
  [v14 contentOffset];
  v16 = v15;

  return [(CEKDiscreteSlider *)self _nearestIndexForContentOffset:v13, v16];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CEKDiscreteSlider *)self _feedbackGenerator];
  [v4 prepareFeedback];

  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    v5 = [(CEKDiscreteSlider *)self delegate];
    [v5 sliderWillBeginScrolling:self];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];
  if (!a4)
  {

    [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(CEKDiscreteSlider *)self _updateAppearanceForActiveScrolling];

  [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
}

- (void)_sliderDidEndScrolling
{
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    v4 = [(CEKDiscreteSlider *)self delegate];
    [v4 sliderDidEndScrolling:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  v4 = [(CEKDiscreteSlider *)self _dynamicTickMarksView];
  [(CEKDiscreteSlider *)self bounds];
  [(CEKDiscreteSlider *)self convertRect:v4 toView:?];
  [v4 setVisibleBounds:?];
  if ([(CEKDiscreteSlider *)self _isScrollActive])
  {
    v5 = [(CEKDiscreteSlider *)self _animationGenerator];
    v6 = [v5 isAnimatingForIdentifier:@"CEKSelectionScrollingAnimationKey"];

    if ((v6 & 1) == 0)
    {
      [v13 contentOffset];
      [(CEKDiscreteSlider *)self _setSelectedIndex:[(CEKDiscreteSlider *)self _indexForContentOffset:?] shouldDelegate:1 wantsFeedbackEmitted:1 shouldScroll:0 scrollDuration:0 scrollCurve:0 scrollCompletion:0.0];
      [v13 contentOffset];
      v8 = v7;
      [v13 contentInset];
      v10 = v9;
      v11 = v8 > CEKScrollableDistanceInScrollView(v13) - v9 + 20.0 || v8 < -20.0 - v10;
      [(CEKDiscreteSlider *)self _setOverscrolling:v11];
    }
  }

  if (([v13 isTracking] & 1) != 0 || objc_msgSend(v13, "isDecelerating"))
  {
    v12 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [v12 invalidate];

    [(CEKDiscreteSlider *)self _setExternalScrollOffsetAnimator:0];
    [(CEKDiscreteSlider *)self contactEndedWithAction:0];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self _nearestIndexForContentOffset:a3, a5->x, a5->y]];
  a5->x = v6;
  a5->y = v7;
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  [(CEKDiscreteSlider *)self _sliderDidEndScrolling];
  [v4 contentOffset];
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
  v2 = [(CEKDiscreteSlider *)self _sliderDriver];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldUseStepwiseExternalScrolling
{
  v2 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [v2 tickMarkSpacing];
  v4 = v3 > 25.0;

  return v4;
}

- (void)_limitExternalScrollIndexesForCurrentSelectionIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = [a1 firstIndex];
  v6 = 2048;
  v7 = [a1 lastIndex];
  _os_log_debug_impl(&dword_1B7E93000, a2, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Limited range to [%lu-%lu]", &v4, 0x16u);
}

- (int64_t)_externalScrollingAllowedIndexForIndex:(int64_t)a3
{
  v4 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
  v5 = [v4 firstIndex];
  v6 = [v4 lastIndex];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)contactBeganWithAction:(id)a3
{
  v25 = a3;
  if (![(CEKDiscreteSlider *)self _isExternalScrollingAllowed]&& [(CEKDiscreteSlider *)self isEnabled])
  {
    [(CEKDiscreteSlider *)self _setExternalScrollingAllowed:1];
    [(CEKDiscreteSlider *)self _setExternalOverScroll:0.0];
    v4 = [(CEKDiscreteSlider *)self selectedIndex];
    v5 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    v6 = v5;
    if (v5)
    {
      [v5 value];
      v8 = v7;
      [v6 presentationValue];
      if (v8 != v9)
      {
        [v6 value];
        v4 = [(CEKDiscreteSlider *)self _indexForContentOffset:?];
      }
    }

    if ([(CEKDiscreteSlider *)self _shouldUseStepwiseExternalScrolling])
    {
      v10 = [MEMORY[0x1E696AD50] indexSetWithIndex:v4];
      [(CEKDiscreteSlider *)self _setExternalScrollAllowedIndexes:v10];

      v11 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
      v12 = v11;
      if (v4 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4;
      }

      [v11 addIndex:v13 - 1];

      v14 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
      v15 = [(CEKDiscreteSlider *)self indexCount];
      if (v15 - 1 >= v4 + 1)
      {
        v16 = v4 + 1;
      }

      else
      {
        v16 = v15 - 1;
      }

      [v14 addIndex:v16];
    }

    else
    {
      v14 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[CEKDiscreteSlider indexCount](self, "indexCount")}];
      [(CEKDiscreteSlider *)self _setExternalScrollAllowedIndexes:v14];
    }

    v17 = [(CEKDiscreteSlider *)self _hidPassthroughDriver];
    v18 = [(CEKDiscreteSlider *)self _shouldUseStepwiseExternalScrolling];
    if (v18)
    {
      v19 = 1.2;
      [v17 setScrollMultiplier:1.2];
    }

    else
    {
      +[_TtC13CameraEditKit34HIDPassthroughSliderPositionDriver defaultScrollMultiplier];
      [v17 setScrollMultiplier:?];
      +[_TtC13CameraEditKit34HIDPassthroughSliderPositionDriver defaultVelocityMultiplier];
      v19 = v20;
    }

    [v17 setVelocityMultiplier:v19];
    [v17 setAcceptsLowConfidenceScrolling:!v18];
    v21 = [(CEKDiscreteSlider *)self _sliderDriver];
    [v21 contactBeganWithAction:v25];

    v22 = [(CEKDiscreteSlider *)self _contentScrollView];
    [v22 contentOffset];
    v24 = v23;
    [v22 setContentOffset:0 animated:?];
    [(CEKDiscreteSlider *)self _applyExternalTarget:2 mode:v24];
  }
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  if ([(CEKDiscreteSlider *)self _isExternalScrollingAllowed])
  {
    v5 = [(CEKDiscreteSlider *)self _contentScrollView];
    if (![(CEKDiscreteSlider *)self _isExternallyScrolling])
    {
      [(CEKDiscreteSlider *)self _setExternallyScrolling:1];
      [(CEKDiscreteSlider *)self scrollViewWillBeginDragging:v5];
    }

    [(CEKDiscreteSlider *)self _createExternalScrollAnimatorIfNeeded];
    v6 = [(CEKDiscreteSlider *)self _sliderDriver];
    [v6 distanceTraveled];
    v8 = v7;
    [v6 contactUpdatedWithAction:v4];
    [v6 distanceTraveled];
    v10 = v9 - v8;
    v11 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [v11 value];
    v13 = v12;

    v14 = v10 + v13;
    if (![(CEKDiscreteSlider *)self indexCount])
    {
      goto LABEL_16;
    }

    [(CEKDiscreteSlider *)self _limitExternalScrollIndexesForCurrentSelectionIfNeeded];
    v15 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
    v16 = [v15 firstIndex];
    v17 = [v15 lastIndex];
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:v16];
    v19 = v18;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:v17];
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

- (void)contactEndedWithAction:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CEKDiscreteSlider *)self _isExternalScrollingAllowed])
  {
    goto LABEL_61;
  }

  [(CEKDiscreteSlider *)self _setExternalScrollingAllowed:0];
  [(CEKDiscreteSlider *)self _setExternallyScrolling:0];
  v5 = [(CEKDiscreteSlider *)self _sliderDriver];
  [v5 contactEndedWithAction:v4];
  [v5 velocity];
  v7 = v6;
  v8 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  [v8 value];
  v10 = v9;

  [v5 distanceToDecelerate];
  v12 = [(CEKDiscreteSlider *)self _indexForContentOffset:v10 + v11, 0.0];
  v13 = [(CEKDiscreteSlider *)self selectedIndex];
  v14 = [(CEKDiscreteSlider *)self _externalScrollAllowedIndexes];
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
      v74 = [v14 firstIndex];
      v75 = 2048;
      v76 = [v14 lastIndex];
      _os_log_debug_impl(&dword_1B7E93000, v17, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Clamping targetOffset from %ld to %ld based on allowed range [%lu-%lu]", buf, 0x2Au);
    }
  }

  [(CEKDiscreteSlider *)self _contentOffsetForIndex:v16];
  v19 = v18;
  v20 = [(CEKDiscreteSlider *)self magneticIndexes];
  if (v20)
  {
    v60 = v13;
    v62 = v4;
    v21 = v14;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:0];
    v23 = v22;
    [(CEKDiscreteSlider *)self _contentOffsetForIndex:[(CEKDiscreteSlider *)self indexCount]- 1];
    v25 = v24;
    v26 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [v26 value];
    v28 = v27;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61 = v20;
    v29 = v20;
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

        v35 = [*(*(&v64 + 1) + 8 * v34) unsignedIntegerValue];
        [(CEKDiscreteSlider *)self _contentOffsetForIndex:v35];
        if (v36 >= v28)
        {
          if (v36 > v28)
          {

            if (v7 <= 20.0)
            {
              goto LABEL_26;
            }

            v14 = v21;
            if (v35 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_27;
            }

            [(CEKDiscreteSlider *)self _contentOffsetForIndex:v35];
            v37 = [(CEKDiscreteSlider *)self traitCollection];
            [v37 displayScale];
            UIRoundToScale();
            v39 = v38;

            v19 = fmax(v23, fmin(v25, v39));
            v40 = os_log_create("com.apple.camera", "CameraEditKit");
            v4 = v62;
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v13 = v60;
              v20 = v61;
              goto LABEL_36;
            }

            *buf = 134218496;
            v70 = v60;
            v71 = 2048;
            v72 = v35;
            v13 = v60;
            v73 = 2048;
            v74 = *&v7;
LABEL_64:
            _os_log_debug_impl(&dword_1B7E93000, v40, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Decelerating from %ld to magnetic index %lu with velocity %.3f", buf, 0x20u);
            goto LABEL_30;
          }
        }

        else
        {
          v33 = v35;
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
    v14 = v21;
LABEL_27:
    v4 = v62;
    if (v7 >= -20.0 || v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = os_log_create("com.apple.camera", "CameraEditKit");
      v44 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
      v13 = v60;
      if (v19 == v10)
      {
        v20 = v61;
        if (v44)
        {
          [(CEKDiscreteSlider *)v40 contactEndedWithAction:v45, v46, v47, v48, v49, v50, v51];
        }
      }

      else
      {
        v20 = v61;
        if (v44)
        {
          *buf = 134218496;
          v70 = v60;
          v71 = 2048;
          v72 = v16;
          v73 = 2048;
          v74 = *&v7;
          _os_log_debug_impl(&dword_1B7E93000, v40, OS_LOG_TYPE_DEBUG, "ScrollDiagnostic: Decelerating without magnet from %ld to index %lu (velocity %.3f)", buf, 0x20u);
        }
      }
    }

    else
    {
      [(CEKDiscreteSlider *)self _contentOffsetForIndex:v33];
      v41 = [(CEKDiscreteSlider *)self traitCollection];
      [v41 displayScale];
      UIRoundToScale();
      v43 = v42;

      v19 = fmax(v23, fmin(v25, v43));
      v40 = os_log_create("com.apple.camera", "CameraEditKit");
      v13 = v60;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v70 = v60;
        v71 = 2048;
        v72 = v33;
        v73 = 2048;
        v74 = *&v7;
        goto LABEL_64;
      }

LABEL_30:
      v20 = v61;
    }

LABEL_36:
  }

  v52 = [(CEKDiscreteSlider *)self _hidPassthroughDriver];
  if (([v52 liftoffDidFlickUp] & 1) == 0)
  {
    v53 = [v52 liftoffDidFlickDown];
    if (!v53 || v16 != v13)
    {
      if (!v53)
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
    if ([v52 liftoffDidFlickUp])
    {
      v54 = v13 + 1;
    }

    else if ([v52 liftoffDidFlickDown])
    {
      v54 = v13 - 1;
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
    if (v56 == v13)
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

  if (v16 == v13)
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
    v59 = [(CEKDiscreteSlider *)self _contentScrollView];
    [(CEKDiscreteSlider *)self scrollViewDidEndDragging:v59 willDecelerate:1];

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
  v2 = self;
  v3 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  [v3 presentationValue];
  [v3 value];
  CEKPixelWidthForView(v2);
  LOBYTE(v2) = BSFloatApproximatelyEqualToFloat();

  return v2 ^ 1;
}

- (void)_applyExternalTarget:(double)a3 mode:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  UIRoundToViewScale();
  v10 = v9;
  if (!v8 || ([v8 value], v10 != v11))
  {
    [(CEKDiscreteSlider *)self _createExternalScrollAnimatorIfNeeded];
    v12 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
    [v12 value];
    v14 = v10 - v13;

    if (v14 != 0.0)
    {
      v15 = [(CEKDiscreteSlider *)self contactObserver];
      [v15 observeContactRecognitionDelta:v14];
    }

    v16 = MEMORY[0x1E69DD250];
    v17 = [(CEKDiscreteSlider *)self _externalScrollSettings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__CEKDiscreteSlider__applyExternalTarget_mode_completion___block_invoke;
    v18[3] = &unk_1E7CC6660;
    v18[4] = self;
    *&v18[5] = v10;
    [v16 cek_animateWithSettings:v17 mode:a4 animations:v18 completion:v7];
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
  v3 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];

  if (!v3)
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
  v3 = [(CEKDiscreteSlider *)self _externalScrollOffsetAnimator];
  if (v3)
  {
    v5 = v3;
    v4 = [(CEKDiscreteSlider *)self _contentScrollView];
    [v4 contentOffset];
    [v5 presentationValue];
    [v4 setContentOffset:?];

    v3 = v5;
  }
}

- (void)tickMarksViewDidChangeWidthForTickMarkCount:(id)a3
{
  [(CEKDiscreteSlider *)self _setNeedsUpdateContentOffset:1];

  [(CEKDiscreteSlider *)self setNeedsLayout];
}

- (void)setTextOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_textOrientation != a3)
  {
    if (a4)
    {
      [(CEKDiscreteSlider *)self layoutIfNeeded];
      self->_textOrientation = a3;
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
      self->_textOrientation = a3;

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