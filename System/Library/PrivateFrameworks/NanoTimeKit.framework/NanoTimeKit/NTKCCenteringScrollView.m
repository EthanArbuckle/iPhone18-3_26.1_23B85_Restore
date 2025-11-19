@interface NTKCCenteringScrollView
- (CGRect)cropRect;
- (CGSize)minimumDisplaySize;
- (NTKCCenteringScrollView)initWithFrame:(CGRect)a3;
- (NTKCCenteringScrollViewDelegate)ntk_delegate;
- (void)_centerOnCrop;
- (void)_updateCrop;
- (void)_updateInsets;
- (void)_updateZoomScales;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCenteredView:(id)a3;
- (void)setCropRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMaximumZoomRatio:(double)a3;
- (void)setMinimumDisplaySize:(CGSize)a3 withCropRectCushion:(double)a4;
@end

@implementation NTKCCenteringScrollView

- (NTKCCenteringScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NTKCCenteringScrollView;
  v3 = [(NTKCCenteringScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKCCenteringScrollView *)v3 setAlwaysBounceVertical:1];
    [(NTKCCenteringScrollView *)v4 setAlwaysBounceHorizontal:1];
    [(NTKCCenteringScrollView *)v4 setShowsVerticalScrollIndicator:0];
    [(NTKCCenteringScrollView *)v4 setShowsHorizontalScrollIndicator:0];
    [(NTKCCenteringScrollView *)v4 setBouncesZoom:1];
    [(NTKCCenteringScrollView *)v4 setDecelerationRate:*MEMORY[0x277D76EB8]];
    [(NTKCCenteringScrollView *)v4 setDelegate:v4];
    v5 = [MEMORY[0x277D75348] blackColor];
    [(NTKCCenteringScrollView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)setCenteredView:(id)a3
{
  v5 = a3;
  centeredView = self->_centeredView;
  if (centeredView != v5)
  {
    [(UIView *)centeredView removeFromSuperview];
    objc_storeStrong(&self->_centeredView, a3);
    v7 = self->_centeredView;
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v11[0] = *MEMORY[0x277CBF2C0];
    v11[1] = v8;
    v11[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)v7 setTransform:v11];
    [(NTKCCenteringScrollView *)self addSubview:self->_centeredView];
    [(UIView *)self->_centeredView bounds];
    [(NTKCCenteringScrollView *)self setContentSize:v9, v10];
    [(NTKCCenteringScrollView *)self _updateZoomScales];
    [(NTKCCenteringScrollView *)self _updateInsets];
    [(NTKCCenteringScrollView *)self _centerOnCrop];
  }
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_cropRect = &self->_cropRect;
  if (!CGRectEqualToRect(a3, self->_cropRect))
  {
    p_cropRect->origin.x = x;
    p_cropRect->origin.y = y;
    p_cropRect->size.width = width;
    p_cropRect->size.height = height;
    size = p_cropRect->size;
    self->_originalCrop.origin = p_cropRect->origin;
    self->_originalCrop.size = size;

    [(NTKCCenteringScrollView *)self _centerOnCrop];
  }
}

- (void)setMinimumDisplaySize:(CGSize)a3 withCropRectCushion:(double)a4
{
  self->_minimumDisplaySize = a3;
  if (a4 > 0.0 && self->_cropRectCushion != a4)
  {
    self->_cropRectCushion = a4;
  }

  [(NTKCCenteringScrollView *)self _updateZoomScales];
  [(NTKCCenteringScrollView *)self _updateInsets];

  [(NTKCCenteringScrollView *)self _centerOnCrop];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKCCenteringScrollView;
  [(NTKCCenteringScrollView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NTKCCenteringScrollView *)self _updateZoomScales];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKCCenteringScrollView;
  [(NTKCCenteringScrollView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NTKCCenteringScrollView *)self _updateZoomScales];
}

- (void)setMaximumZoomRatio:(double)a3
{
  if (self->_maximumZoomRatio != a3)
  {
    self->_maximumZoomRatio = fmax(a3, 1.0);
    [(NTKCCenteringScrollView *)self _updateZoomScales];
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v5 = [(NTKCCenteringScrollView *)self ntk_delegate:a3];
  [v5 scrollViewWillBeginInteraction:self];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(NTKCCenteringScrollView *)self ntk_delegate];
  [v4 scrollViewWillBeginInteraction:self];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  [(NTKCCenteringScrollView *)self _updateCrop:a3];
  v6 = [(NTKCCenteringScrollView *)self ntk_delegate];
  [v6 scrollViewDidSettleFromInteracting:self];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v9 = v6;
    [(NTKCCenteringScrollView *)self _updateCrop];
    v7 = [v9 isZoomBouncing];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      v8 = [(NTKCCenteringScrollView *)self ntk_delegate];
      [v8 scrollViewDidSettleFromInteracting:self];

      v6 = v9;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [(NTKCCenteringScrollView *)self _updateCrop];
  v5 = [v4 isZoomBouncing];

  if ((v5 & 1) == 0)
  {
    v6 = [(NTKCCenteringScrollView *)self ntk_delegate];
    [v6 scrollViewDidSettleFromInteracting:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(NTKCCenteringScrollView *)self ntk_delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    [(NTKCCenteringScrollView *)self _updateCrop];
    v6 = [(NTKCCenteringScrollView *)self ntk_delegate];
    [v6 scrollViewDidScroll:self];
  }
}

- (void)_updateZoomScales
{
  width = self->_minimumDisplaySize.width;
  height = self->_minimumDisplaySize.height;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (width == *MEMORY[0x277CBF3A8] && height == v6)
  {
    [(NTKCCenteringScrollView *)self bounds];
    v10 = v11;
    v9 = v12;
  }

  else
  {
    v8 = self->_cropRectCushion + 1.0;
    v9 = height * v8;
    v10 = width * v8;
  }

  [(UIView *)self->_centeredView bounds];
  if (v13 == v5 && v14 == v6)
  {
    [(NTKCCenteringScrollView *)self setMinimumZoomScale:1.0];
    maximumZoomRatio = self->_maximumZoomRatio;
  }

  else
  {
    if (v10 / v13 >= v9 / v14)
    {
      v16 = v10 / v13;
    }

    else
    {
      v16 = v9 / v14;
    }

    [(NTKCCenteringScrollView *)self setMinimumZoomScale:v16];
    maximumZoomRatio = v16 * self->_maximumZoomRatio;
  }

  [(NTKCCenteringScrollView *)self setMaximumZoomScale:maximumZoomRatio];
}

- (void)_updateInsets
{
  p_minimumDisplaySize = &self->_minimumDisplaySize;
  v3 = self->_minimumDisplaySize.width == *MEMORY[0x277CBF3A8] && self->_minimumDisplaySize.height == *(MEMORY[0x277CBF3A8] + 8);
  if (!v3 && self->_centeredView)
  {
    [(NTKCCenteringScrollView *)self zoomScale];
    v36 = v5;
    [(NTKCCenteringScrollView *)self setZoomScale:1.0];
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    [(NTKCCenteringScrollView *)self bounds];
    rect_16 = v9;
    rect_24 = v8;
    UIRectCenteredIntegralRectScale();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v29 = v14;
    v17 = v16;
    [(NTKCCenteringScrollView *)self safeAreaInsets];
    v19 = v18;
    [(NTKCCenteringScrollView *)self safeAreaInsets];
    v21 = v19 - v20;
    rect_8 = v19 - v20;
    v38.origin.x = v11;
    v38.origin.y = v13;
    v38.size.width = v15;
    v38.size.height = v17;
    MinY = CGRectGetMinY(v38);
    [(NTKCCenteringScrollView *)self _systemContentInset];
    v35 = v21 + MinY - v23;
    v39.origin.x = v11;
    v39.origin.y = v13;
    v39.size.width = v15;
    v39.size.height = v17;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v6;
    v40.origin.y = v7;
    v40.size.width = rect_24;
    v40.size.height = rect_16;
    Height = CGRectGetHeight(v40);
    v41.origin.x = v11;
    v41.origin.y = v13;
    v41.size.width = v29;
    v41.size.height = v17;
    v25 = Height - CGRectGetMaxY(v41);
    [(NTKCCenteringScrollView *)self _systemContentInset];
    rect_8a = v25 - v26 - rect_8;
    v42.origin.x = v6;
    v42.origin.y = v7;
    v42.size.width = rect_24;
    v42.size.height = rect_16;
    Width = CGRectGetWidth(v42);
    v43.origin.x = v11;
    v43.origin.y = v13;
    v43.size.width = v29;
    v43.size.height = v17;
    MaxX = CGRectGetMaxX(v43);
    self->_minimumDisplayInsets.top = v35;
    self->_minimumDisplayInsets.left = MinX;
    self->_minimumDisplayInsets.bottom = rect_8a;
    self->_minimumDisplayInsets.right = Width - MaxX;
    [(NTKCCenteringScrollView *)self setContentInset:v35 - self->_cropRectCushion * p_minimumDisplaySize->height * 0.5, MinX - p_minimumDisplaySize->width * self->_cropRectCushion * 0.5, rect_8a - self->_cropRectCushion * p_minimumDisplaySize->height * 0.5, Width - MaxX - p_minimumDisplaySize->width * self->_cropRectCushion * 0.5];

    [(NTKCCenteringScrollView *)self setZoomScale:v36];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = NTKCCenteringScrollView;
  [(NTKCCenteringScrollView *)&v3 safeAreaInsetsDidChange];
  [(NTKCCenteringScrollView *)self _updateInsets];
  [(NTKCCenteringScrollView *)self _updateCrop];
  [(NTKCCenteringScrollView *)self _centerOnCrop];
}

- (void)_centerOnCrop
{
  p_originalCrop = &self->_originalCrop;
  if (CGRectIsEmpty(self->_originalCrop) || (self->_minimumDisplaySize.width == *MEMORY[0x277CBF3A8] ? (v4 = self->_minimumDisplaySize.height == *(MEMORY[0x277CBF3A8] + 8)) : (v4 = 0), v4 || !self->_centeredView))
  {

    [(NTKCCenteringScrollView *)self setUserInteractionEnabled:0];
  }

  else
  {
    [(NTKCCenteringScrollView *)self setUserInteractionEnabled:1];
    width = self->_minimumDisplaySize.width;
    v6 = CGRectGetWidth(*p_originalCrop);
    height = self->_minimumDisplaySize.height;
    v8 = width / v6;
    v9 = height / CGRectGetHeight(*p_originalCrop);
    if (v8 >= v9)
    {
      v8 = v9;
    }

    [(NTKCCenteringScrollView *)self setZoomScale:v8];
    v10 = -(self->_minimumDisplayInsets.left - CGRectGetMinX(*p_originalCrop) * v8);
    v11 = -(self->_minimumDisplayInsets.top - CGRectGetMinY(*p_originalCrop) * v8);
    [(NTKCCenteringScrollView *)self _systemContentInset];

    [(NTKCCenteringScrollView *)self setContentOffset:v10, v11 - v12];
  }
}

- (void)_updateCrop
{
  [(NTKCCenteringScrollView *)self zoomScale];
  v12 = v3;
  top = self->_minimumDisplayInsets.top;
  left = self->_minimumDisplayInsets.left;
  [(NTKCCenteringScrollView *)self contentOffset];
  v8 = top + v7;
  v9 = (left + v6) / *&v12;
  [(NTKCCenteringScrollView *)self _systemContentInset];
  v11 = vdivq_f64(self->_minimumDisplaySize, vdupq_lane_s64(v12, 0));
  self->_cropRect.origin.x = v9;
  self->_cropRect.origin.y = (v8 + v10) / *&v12;
  self->_cropRect.size = v11;
}

- (NTKCCenteringScrollViewDelegate)ntk_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ntk_delegate);

  return WeakRetained;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)minimumDisplaySize
{
  width = self->_minimumDisplaySize.width;
  height = self->_minimumDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end