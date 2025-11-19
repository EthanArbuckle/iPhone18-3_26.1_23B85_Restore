@interface CAMUtilityBar
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_layoutFilterScrubberView;
- (void)_layoutPortraitApertureSlider;
- (void)_layoutSliderView:(id)a3;
- (void)_updateVisibilityForUpdatedContent:(unint64_t)a3 contentView:(id)a4;
- (void)_updateVisibleViewAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setApertureSlider:(id)a3;
- (void)setFilterScrubberView:(id)a3;
- (void)setIntensitySlider:(id)a3;
- (void)setVisibleContent:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMUtilityBar

- (void)setFilterScrubberView:(id)a3
{
  v5 = a3;
  filterScrubberView = self->_filterScrubberView;
  if (filterScrubberView != v5)
  {
    v12 = v5;
    [(CEKWheelScrubberView *)filterScrubberView removeFromSuperview];
    objc_storeStrong(&self->_filterScrubberView, a3);
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
    v5 = v12;
  }

  MEMORY[0x1EEE66BB8](filterScrubberView, v5);
}

- (void)setApertureSlider:(id)a3
{
  v5 = a3;
  apertureSlider = self->_apertureSlider;
  if (apertureSlider != v5)
  {
    v8 = v5;
    v7 = [(CEKApertureSlider *)apertureSlider superview];

    if (v7 == self)
    {
      [(CEKApertureSlider *)self->_apertureSlider removeFromSuperview];
    }

    objc_storeStrong(&self->_apertureSlider, a3);
    [(CAMUtilityBar *)self addSubview:v8];
    apertureSlider = [(CAMUtilityBar *)self _updateVisibilityForUpdatedContent:2 contentView:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](apertureSlider, v5);
}

- (void)setIntensitySlider:(id)a3
{
  v5 = a3;
  intensitySlider = self->_intensitySlider;
  if (intensitySlider != v5)
  {
    v8 = v5;
    v7 = [(CEKSlider *)intensitySlider superview];

    if (v7 == self)
    {
      [(CEKSlider *)self->_intensitySlider removeFromSuperview];
    }

    objc_storeStrong(&self->_intensitySlider, a3);
    [(CAMUtilityBar *)self addSubview:v8];
    intensitySlider = [(CAMUtilityBar *)self _updateVisibilityForUpdatedContent:3 contentView:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](intensitySlider, v5);
}

- (void)_updateVisibilityForUpdatedContent:(unint64_t)a3 contentView:(id)a4
{
  v7 = [(CAMUtilityBar *)self visibleContent];
  if (a4)
  {
    if (v7)
    {

      [(CAMUtilityBar *)self _updateVisibleViewAnimated:0];
      return;
    }

    v8 = self;
    v9 = a3;
  }

  else
  {
    v8 = self;
    v9 = 0;
  }

  [(CAMUtilityBar *)v8 setVisibleContent:v9];
}

- (void)setVisibleContent:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_visibleContent != a3)
  {
    self->_visibleContent = a3;
    [(CAMUtilityBar *)self _updateVisibleViewAnimated:a4];
  }
}

- (void)_updateVisibleViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMUtilityBar *)self visibleContent];
  switch(v5)
  {
    case 1uLL:
      v6 = [(CAMUtilityBar *)self filterScrubberView];
      break;
    case 3uLL:
      v6 = [(CAMUtilityBar *)self intensitySlider];
      break;
    case 2uLL:
      v6 = [(CAMUtilityBar *)self apertureSlider];
      break;
    default:
      v6 = 0;
      break;
  }

  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __44__CAMUtilityBar__updateVisibleViewAnimated___block_invoke;
  v9[3] = &unk_1E76F7960;
  if (v3)
  {
    v7 = 0.25;
  }

  else
  {
    v7 = 0.0;
  }

  v9[4] = self;
  v10 = v6;
  v8 = v6;
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
  v3 = [(CAMUtilityBar *)self intensitySlider];
  [(CAMUtilityBar *)self _layoutSliderView:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CAMUtilityBar;
  v5 = [(CAMUtilityBar *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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
  v14 = [(CAMUtilityBar *)self filterScrubberView];
  [v14 thumbnailSize];
  v12 = v11;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetMaxY(v16);
  UIRoundToViewScale();
  [v14 frameForAlignmentRect:{0.0, v13, v8, v12}];
  [v14 setFrame:?];
  [v14 selectedThumbnailBorderWidth];
  UIFloorToViewScale();
  [v14 setSelectionDotCenterTopSpacing:?];
}

- (void)_layoutPortraitApertureSlider
{
  v3 = [(CAMUtilityBar *)self apertureSlider];
  [(CAMUtilityBar *)self _layoutSliderView:v3];

  [(CAMUtilityBar *)self bounds];
  v6 = 2 * (v4 < v5);
  v7 = [(CAMUtilityBar *)self apertureSlider];
  [v7 setTextOrientation:v6];
}

- (void)_layoutSliderView:(id)a3
{
  v4 = a3;
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
  [v4 setCenter:?];
  [v4 setBounds:{v6, v8, v14, v13}];
  v15 = v16;
  [v4 setTransform:&v15];
}

@end