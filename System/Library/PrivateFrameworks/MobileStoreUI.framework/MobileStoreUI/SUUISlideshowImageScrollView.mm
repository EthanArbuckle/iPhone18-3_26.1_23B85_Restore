@interface SUUISlideshowImageScrollView
- (CGRect)visibleRect;
- (SUUISlideshowImageScrollView)initWithFrame:(CGRect)a3;
- (void)_prepareToResize;
- (void)_recoverFromResize;
- (void)_resetMinMaxZoomScales;
- (void)layoutSubviews;
- (void)resetZoomScale;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)zoomIntoPoint:(CGPoint)a3;
@end

@implementation SUUISlideshowImageScrollView

- (SUUISlideshowImageScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUISlideshowImageScrollView;
  v3 = [(SUUISlideshowImageScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUISlideshowImageScrollView *)v3 setShowsHorizontalScrollIndicator:0];
    [(SUUISlideshowImageScrollView *)v4 setShowsVerticalScrollIndicator:0];
    [(SUUISlideshowImageScrollView *)v4 setBouncesZoom:1];
    [(SUUISlideshowImageScrollView *)v4 setDecelerationRate:*MEMORY[0x277D76EB8]];
    image = v4->_image;
    v4->_image = 0;

    v4->_centerPointBeforeResize = *MEMORY[0x277CBF348];
    v4->_scaleBeforeResize = 0.0;
  }

  return v4;
}

- (void)resetZoomScale
{
  [(SUUISlideshowImageScrollView *)self minimumZoomScale];

  [(SUUISlideshowImageScrollView *)self setZoomScale:?];
}

- (void)zoomIntoPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SUUISlideshowImageScrollView *)self zoomScale];
  v7 = v6;
  [(SUUISlideshowImageScrollView *)self minimumZoomScale];
  if (v7 == v8)
  {
    [(SUUISlideshowImageScrollView *)self maximumZoomScale];
    v10 = v9;
    [(SUUISlideshowImageScrollView *)self contentSize];
    v12 = v11;
    [(SUUISlideshowImageScrollView *)self zoomScale];
    v14 = v12 / v13;
    [(SUUISlideshowImageScrollView *)self contentSize];
    v16 = v15;
    [(SUUISlideshowImageScrollView *)self zoomScale];
    v18 = v16 / v17;
    [(SUUISlideshowImageScrollView *)self bounds];
    v20 = v14 * (x / v19);
    [(SUUISlideshowImageScrollView *)self bounds];
    v22 = v18 * (y / v21);
    [(SUUISlideshowImageScrollView *)self bounds];
    v24 = v23 / v10;
    [(SUUISlideshowImageScrollView *)self bounds];

    [(SUUISlideshowImageScrollView *)self zoomToRect:1 animated:v20 - v24 * 0.5, v22 - v25 / v10 * 0.5, v24];
  }

  else
  {
    [(SUUISlideshowImageScrollView *)self minimumZoomScale];

    [(SUUISlideshowImageScrollView *)self setZoomScale:1 animated:?];
  }
}

- (CGRect)visibleRect
{
  [(SUUISlideshowImageScrollView *)self contentOffset];
  v4 = v3;
  v6 = v5;
  [(SUUISlideshowImageScrollView *)self bounds];
  v8 = v7;
  v10 = v9;
  [(SUUISlideshowImageScrollView *)self zoomScale];
  v12 = v6 / v11;
  v13 = v8 / v11;
  v14 = v10 / v11;
  v15 = v4 / v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUISlideshowImageScrollView;
  [(SUUISlideshowImageScrollView *)&v9 layoutSubviews];
  if (self->_imageView)
  {
    [(SUUISlideshowImageScrollView *)self bounds];
    Width = CGRectGetWidth(v10);
    [(SUUISlideshowImageScrollView *)self bounds];
    Height = CGRectGetHeight(v11);
    [(UIImageView *)self->_imageView frame];
    v7 = (Width - v6) * 0.5;
    if (v6 >= Width)
    {
      v7 = 0.0;
    }

    v8 = (Height - v5) * 0.5;
    if (v5 >= Height)
    {
      v8 = 0.0;
    }

    [(UIImageView *)self->_imageView setFrame:v7, v8];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SUUISlideshowImageScrollView *)self frame];
  if (width == v9 && height == v8)
  {
    v11.receiver = self;
    v11.super_class = SUUISlideshowImageScrollView;
    [(SUUISlideshowImageScrollView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(SUUISlideshowImageScrollView *)self _prepareToResize];
    v11.receiver = self;
    v11.super_class = SUUISlideshowImageScrollView;
    [(SUUISlideshowImageScrollView *)&v11 setFrame:x, y, width, height];
    [(SUUISlideshowImageScrollView *)self _recoverFromResize];
  }
}

- (void)setImage:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_image, a3);
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView removeFromSuperview];
  }

  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
  v7 = self->_imageView;
  self->_imageView = v6;

  [(SUUISlideshowImageScrollView *)self addSubview:self->_imageView];
  [v8 size];
  [(SUUISlideshowImageScrollView *)self setContentSize:?];
  [(SUUISlideshowImageScrollView *)self _resetMinMaxZoomScales];
  [(SUUISlideshowImageScrollView *)self minimumZoomScale];
  [(SUUISlideshowImageScrollView *)self setZoomScale:?];
}

- (void)_prepareToResize
{
  [(SUUISlideshowImageScrollView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(SUUISlideshowImageScrollView *)self bounds];
  [(SUUISlideshowImageScrollView *)self convertPoint:self->_imageView toView:MidX, CGRectGetMidY(v8)];
  self->_centerPointBeforeResize.x = v4;
  self->_centerPointBeforeResize.y = v5;
  [(SUUISlideshowImageScrollView *)self zoomScale];
  self->_scaleBeforeResize = v6;
}

- (void)_recoverFromResize
{
  [(SUUISlideshowImageScrollView *)self _resetMinMaxZoomScales];
  [(SUUISlideshowImageScrollView *)self minimumZoomScale];
  if (scaleBeforeResize >= self->_scaleBeforeResize)
  {
    scaleBeforeResize = self->_scaleBeforeResize;
  }

  [(SUUISlideshowImageScrollView *)self setZoomScale:scaleBeforeResize];
  [(SUUISlideshowImageScrollView *)self convertPoint:self->_imageView fromView:self->_centerPointBeforeResize.x, self->_centerPointBeforeResize.y];
  v5 = v4;
  v7 = v6;
  [(SUUISlideshowImageScrollView *)self bounds];
  v9 = v5 - v8 * 0.5;
  [(SUUISlideshowImageScrollView *)self bounds];
  v11 = v7 - v10 * 0.5;
  [(SUUISlideshowImageScrollView *)self contentSize];
  v13 = v12;
  [(SUUISlideshowImageScrollView *)self bounds];
  v15 = v13 - v14;
  [(SUUISlideshowImageScrollView *)self contentSize];
  v17 = v16;
  [(SUUISlideshowImageScrollView *)self bounds];
  v19 = v17 - v18;
  if (v15 >= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = v15;
  }

  if (v19 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v19;
  }

  if (*MEMORY[0x277CBF348] >= v20)
  {
    v22 = *MEMORY[0x277CBF348];
  }

  else
  {
    v22 = v20;
  }

  if (*(MEMORY[0x277CBF348] + 8) >= v21)
  {
    v23 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v23 = v21;
  }

  [(SUUISlideshowImageScrollView *)self setContentOffset:v22, v23];
}

- (void)_resetMinMaxZoomScales
{
  [(SUUISlideshowImageScrollView *)self bounds];
  if (self->_image)
  {
    v7 = v5;
    v8 = v6;
    if (!CGRectIsEmpty(*&v3))
    {
      [(UIImage *)self->_image size];
      v11 = 0.0;
      if (v7 > 0.0 && v8 > 0.0 && v9 > 0.0 && v10 > 0.0)
      {
        v12 = v7 / v9;
        v13 = v8 / v10;
        if (v12 >= v13)
        {
          v11 = v13;
        }

        else
        {
          v11 = v12;
        }
      }

      [(SUUISlideshowImageScrollView *)self setMinimumZoomScale:v11];

      [(SUUISlideshowImageScrollView *)self setMaximumZoomScale:v11 + v11];
    }
  }
}

@end