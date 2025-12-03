@interface CAMUtilityBar
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_layoutFilterScrubberView;
- (void)_layoutPortraitApertureSlider;
- (void)_layoutSliderView:(id)view;
- (void)_updateVisibilityForUpdatedContent:(unint64_t)content contentView:(id)view;
- (void)_updateVisibleViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setApertureSlider:(id)slider;
- (void)setFilterScrubberView:(id)view;
- (void)setIntensitySlider:(id)slider;
- (void)setVisibleContent:(unint64_t)content animated:(BOOL)animated;
@end

@implementation CAMUtilityBar

- (void)setFilterScrubberView:(id)view
{
  viewCopy = view;
  filterScrubberView = self->_filterScrubberView;
  if (filterScrubberView != viewCopy)
  {
    v12 = viewCopy;
    [(CEKWheelScrubberView *)filterScrubberView removeFromSuperview];
    objc_storeStrong(&self->_filterScrubberView, view);
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
    v9 = CAMIsSmallPhone();
    v10 = 14.0;
    if (v9)
    {
      v10 = 12.5;
    }

    v11 = 15.0;
    if (v9)
    {
      v11 = 12.5;
    }

    [(CEKWheelScrubberView *)self->_filterScrubberView setThumbnailEdgeInsets:v10, v7, v11, v8];
    [(CAMUtilityBar *)self addSubview:v12];
    filterScrubberView = [(CAMUtilityBar *)self _updateVisibilityForUpdatedContent:1 contentView:v12];
    viewCopy = v12;
  }

  MEMORY[0x1EEE66BB8](filterScrubberView, viewCopy);
}

- (void)setApertureSlider:(id)slider
{
  sliderCopy = slider;
  apertureSlider = self->_apertureSlider;
  if (apertureSlider != sliderCopy)
  {
    v8 = sliderCopy;
    superview = [(CEKApertureSlider *)apertureSlider superview];

    if (superview == self)
    {
      [(CEKApertureSlider *)self->_apertureSlider removeFromSuperview];
    }

    objc_storeStrong(&self->_apertureSlider, slider);
    [(CAMUtilityBar *)self addSubview:v8];
    apertureSlider = [(CAMUtilityBar *)self _updateVisibilityForUpdatedContent:2 contentView:v8];
    sliderCopy = v8;
  }

  MEMORY[0x1EEE66BB8](apertureSlider, sliderCopy);
}

- (void)setIntensitySlider:(id)slider
{
  sliderCopy = slider;
  intensitySlider = self->_intensitySlider;
  if (intensitySlider != sliderCopy)
  {
    v8 = sliderCopy;
    superview = [(CEKSlider *)intensitySlider superview];

    if (superview == self)
    {
      [(CEKSlider *)self->_intensitySlider removeFromSuperview];
    }

    objc_storeStrong(&self->_intensitySlider, slider);
    [(CAMUtilityBar *)self addSubview:v8];
    intensitySlider = [(CAMUtilityBar *)self _updateVisibilityForUpdatedContent:3 contentView:v8];
    sliderCopy = v8;
  }

  MEMORY[0x1EEE66BB8](intensitySlider, sliderCopy);
}

- (void)_updateVisibilityForUpdatedContent:(unint64_t)content contentView:(id)view
{
  visibleContent = [(CAMUtilityBar *)self visibleContent];
  if (view)
  {
    if (visibleContent)
    {

      [(CAMUtilityBar *)self _updateVisibleViewAnimated:0];
      return;
    }

    selfCopy2 = self;
    contentCopy = content;
  }

  else
  {
    selfCopy2 = self;
    contentCopy = 0;
  }

  [(CAMUtilityBar *)selfCopy2 setVisibleContent:contentCopy];
}

- (void)setVisibleContent:(unint64_t)content animated:(BOOL)animated
{
  if (self->_visibleContent != content)
  {
    self->_visibleContent = content;
    [(CAMUtilityBar *)self _updateVisibleViewAnimated:animated];
  }
}

- (void)_updateVisibleViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  visibleContent = [(CAMUtilityBar *)self visibleContent];
  switch(visibleContent)
  {
    case 1uLL:
      filterScrubberView = [(CAMUtilityBar *)self filterScrubberView];
      break;
    case 3uLL:
      filterScrubberView = [(CAMUtilityBar *)self intensitySlider];
      break;
    case 2uLL:
      filterScrubberView = [(CAMUtilityBar *)self apertureSlider];
      break;
    default:
      filterScrubberView = 0;
      break;
  }

  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __44__CAMUtilityBar__updateVisibleViewAnimated___block_invoke;
  v9[3] = &unk_1E76F7960;
  if (animatedCopy)
  {
    v7 = 0.25;
  }

  else
  {
    v7 = 0.0;
  }

  v9[4] = self;
  v10 = filterScrubberView;
  v8 = filterScrubberView;
  [CAMView animateIfNeededWithDuration:v9 animations:v7];
}

void __44__CAMUtilityBar__updateVisibleViewAnimated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subviews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (v7 == *(a1 + 40))
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        [v7 setAlpha:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMUtilityBar;
  [(CAMUtilityBar *)&v4 layoutSubviews];
  [(CAMUtilityBar *)self _layoutFilterScrubberView];
  [(CAMUtilityBar *)self _layoutPortraitApertureSlider];
  intensitySlider = [(CAMUtilityBar *)self intensitySlider];
  [(CAMUtilityBar *)self _layoutSliderView:intensitySlider];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CAMUtilityBar;
  v5 = [(CAMUtilityBar *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)_layoutFilterScrubberView
{
  [(CAMUtilityBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  filterScrubberView = [(CAMUtilityBar *)self filterScrubberView];
  [filterScrubberView thumbnailSize];
  v12 = v11;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetMaxY(v16);
  UIRoundToViewScale();
  [filterScrubberView frameForAlignmentRect:{0.0, v13, v8, v12}];
  [filterScrubberView setFrame:?];
  [filterScrubberView selectedThumbnailBorderWidth];
  UIFloorToViewScale();
  [filterScrubberView setSelectionDotCenterTopSpacing:?];
}

- (void)_layoutPortraitApertureSlider
{
  apertureSlider = [(CAMUtilityBar *)self apertureSlider];
  [(CAMUtilityBar *)self _layoutSliderView:apertureSlider];

  [(CAMUtilityBar *)self bounds];
  v6 = 2 * (v4 < v5);
  apertureSlider2 = [(CAMUtilityBar *)self apertureSlider];
  [apertureSlider2 setTextOrientation:v6];
}

- (void)_layoutSliderView:(id)view
{
  viewCopy = view;
  [(CAMUtilityBar *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&v16.a = *MEMORY[0x1E695EFD0];
  *&v16.c = v11;
  *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
  v13 = v12;
  v14 = v9;
  if (v9 < v12)
  {
    CGAffineTransformMakeRotation(&v16, -1.57079633);
    v14 = 360.0;
    v13 = v10;
  }

  UIRectGetCenter();
  [viewCopy setCenter:?];
  [viewCopy setBounds:{v6, v8, v14, v13}];
  v15 = v16;
  [viewCopy setTransform:&v15];
}

@end