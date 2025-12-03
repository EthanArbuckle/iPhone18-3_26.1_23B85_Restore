@interface NTKUtilitySmallImageTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKUtilitySmallImageTemplateView)initWithFrame:(CGRect)frame;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_setNeedsLayoutContent;
- (void)_updateForTemplateChange;
@end

@implementation NTKUtilitySmallImageTemplateView

- (NTKUtilitySmallImageTemplateView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NTKUtilitySmallImageTemplateView;
  result = [(NTKUtilityCircularComplicationView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(NTKUtilityCircularComplicationView *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    [(CDComplicationImageView *)self->_imageView sizeThatFits:v5, v7];
    device = [(NTKUtilityComplicationView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(CDComplicationImageView *)self->_imageView setFrame:v10, v12, v14, v16];
    self->_needsLayoutContent = 0;
  }
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateForTemplateChange
{
  v12.receiver = self;
  v12.super_class = NTKUtilitySmallImageTemplateView;
  [(NTKUtilityComplicationView *)&v12 _updateForTemplateChange];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  imageProvider = [complicationTemplate imageProvider];
  v5 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:imageProvider];
  imageView = self->_imageView;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:imageProvider];
    v8 = self->_imageView;
    self->_imageView = v7;

    imageView = self->_imageView;
    if (imageView)
    {
      [(NTKUtilityComplicationView *)self _updateImageViewAlpha:?];
      contentView = [(NTKUtilityCircularComplicationView *)self contentView];
      [contentView addSubview:self->_imageView];

      imageView = self->_imageView;
    }
  }

  [(NTKUtilityComplicationView *)self _updateImageViewColor:imageView];
  v10 = self->_imageView;
  imageProvider2 = [complicationTemplate imageProvider];
  [(CDComplicationImageView *)v10 setImageProvider:imageProvider2];

  [(NTKUtilitySmallImageTemplateView *)self _setNeedsLayoutContent];
}

- (void)_setNeedsLayoutContent
{
  self->_needsLayoutContent = 1;
  contentView = [(NTKUtilityCircularComplicationView *)self contentView];
  [contentView setNeedsLayout];

  displayObserver = [(NTKUtilityComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    blockCopy[2](blockCopy, self->_imageView);
  }
}

@end