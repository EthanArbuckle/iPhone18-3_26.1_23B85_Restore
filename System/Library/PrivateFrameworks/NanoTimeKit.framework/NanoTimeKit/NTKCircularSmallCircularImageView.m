@interface NTKCircularSmallCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKCircularSmallCircularImageView)initWithFrame:(CGRect)a3;
- (void)_updateForTemplateChange;
- (void)layoutSubviews;
- (void)setUsesMediumLayout:(BOOL)a3;
@end

@implementation NTKCircularSmallCircularImageView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKCircularSmallCircularImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKCircularSmallCircularImageView;
  v3 = [(NTKCircularComplicationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CDComplicationImageView *)self->_imageView setFrame:v5, v7, v9, v11];
}

- (void)setUsesMediumLayout:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = NTKCircularSmallCircularImageView;
  [(NTKCircularComplicationView *)&v3 setUsesMediumLayout:a3];
}

- (void)_updateForTemplateChange
{
  v10 = [(NTKCircularComplicationView *)self complicationTemplate];
  v3 = [v10 imageProvider];
  imageView = self->_imageView;
  v5 = [(CDComplicationImageView *)imageView imageProvider];
  v6 = [off_27877BE78 existingImageView:imageView supportsImageProvider:v5];

  v7 = self->_imageView;
  if ((v6 & 1) == 0)
  {
    [(CDComplicationImageView *)v7 removeFromSuperview];
    v8 = [off_27877BE78 viewForImageProvider:v3];
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

  [(CDComplicationImageView *)v7 setImageProvider:v3];
  [(NTKCircularComplicationView *)self _updateImageViewColor:self->_imageView];
  [(NTKCircularSmallCircularImageView *)self setNeedsLayout];
}

@end