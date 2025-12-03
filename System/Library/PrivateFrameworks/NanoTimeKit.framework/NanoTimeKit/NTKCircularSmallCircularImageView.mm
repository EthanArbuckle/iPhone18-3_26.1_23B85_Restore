@interface NTKCircularSmallCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKCircularSmallCircularImageView)initWithFrame:(CGRect)frame;
- (void)_updateForTemplateChange;
- (void)layoutSubviews;
- (void)setUsesMediumLayout:(BOOL)layout;
@end

@implementation NTKCircularSmallCircularImageView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKCircularSmallCircularImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKCircularSmallCircularImageView;
  v3 = [(NTKCircularComplicationView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKCircularComplicationView *)v3 setWantsPlatter:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKCircularSmallCircularImageView;
  [(NTKCircularComplicationView *)&v12 layoutSubviews];
  [(NTKCircularSmallCircularImageView *)self bounds];
  [(CDComplicationImageView *)self->_imageView sizeToFit];
  [(CDComplicationImageView *)self->_imageView frame];
  device = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CDComplicationImageView *)self->_imageView setFrame:v5, v7, v9, v11];
}

- (void)setUsesMediumLayout:(BOOL)layout
{
  v3.receiver = self;
  v3.super_class = NTKCircularSmallCircularImageView;
  [(NTKCircularComplicationView *)&v3 setUsesMediumLayout:layout];
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  imageProvider = [complicationTemplate imageProvider];
  imageView = self->_imageView;
  imageProvider2 = [(CDComplicationImageView *)imageView imageProvider];
  v6 = [off_27877BE78 existingImageView:imageView supportsImageProvider:imageProvider2];

  v7 = self->_imageView;
  if ((v6 & 1) == 0)
  {
    [(CDComplicationImageView *)v7 removeFromSuperview];
    v8 = [off_27877BE78 viewForImageProvider:imageProvider];
    v9 = self->_imageView;
    self->_imageView = v8;

    if (self->_imageView)
    {
      [(NTKCircularSmallCircularImageView *)self addSubview:?];
      v7 = self->_imageView;
    }

    else
    {
      v7 = 0;
    }
  }

  [(CDComplicationImageView *)v7 setImageProvider:imageProvider];
  [(NTKCircularComplicationView *)self _updateImageViewColor:self->_imageView];
  [(NTKCircularSmallCircularImageView *)self setNeedsLayout];
}

@end