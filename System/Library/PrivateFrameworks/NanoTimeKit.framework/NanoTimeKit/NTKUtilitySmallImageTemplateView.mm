@interface NTKUtilitySmallImageTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKUtilitySmallImageTemplateView)initWithFrame:(CGRect)a3;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_setNeedsLayoutContent;
- (void)_updateForTemplateChange;
@end

@implementation NTKUtilitySmallImageTemplateView

- (NTKUtilitySmallImageTemplateView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKUtilitySmallImageTemplateView;
  result = [(NTKUtilityCircularComplicationView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_needsLayoutContent = 1;
  }

  return result;
}

- (void)_layoutContentView
{
  if (self->_needsLayoutContent)
  {
    v3 = [(NTKUtilityCircularComplicationView *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [(CDComplicationImageView *)self->_imageView sizeThatFits:v5, v7];
    v8 = [(NTKUtilityComplicationView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(CDComplicationImageView *)self->_imageView setFrame:v10, v12, v14, v16];
    self->_needsLayoutContent = 0;
  }
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateForTemplateChange
{
  v12.receiver = self;
  v12.super_class = NTKUtilitySmallImageTemplateView;
  [(NTKUtilityComplicationView *)&v12 _updateForTemplateChange];
  v3 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v4 = [v3 imageProvider];
  v5 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v4];
  imageView = self->_imageView;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:v4];
    v8 = self->_imageView;
    self->_imageView = v7;

    imageView = self->_imageView;
    if (imageView)
    {
      [(NTKUtilityComplicationView *)self _updateImageViewAlpha:?];
      v9 = [(NTKUtilityCircularComplicationView *)self contentView];
      [v9 addSubview:self->_imageView];

      imageView = self->_imageView;
    }
  }

  [(NTKUtilityComplicationView *)self _updateImageViewColor:imageView];
  v10 = self->_imageView;
  v11 = [v3 imageProvider];
  [(CDComplicationImageView *)v10 setImageProvider:v11];

  [(NTKUtilitySmallImageTemplateView *)self _setNeedsLayoutContent];
}

- (void)_setNeedsLayoutContent
{
  self->_needsLayoutContent = 1;
  v3 = [(NTKUtilityCircularComplicationView *)self contentView];
  [v3 setNeedsLayout];

  v4 = [(NTKUtilityComplicationView *)self displayObserver];
  [v4 complicationDisplayNeedsResize:self];
}

- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4[2](v4, self->_imageView);
  }
}

@end