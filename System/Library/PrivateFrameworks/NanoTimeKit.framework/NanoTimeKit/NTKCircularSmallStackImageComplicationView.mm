@interface NTKCircularSmallStackImageComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (double)_imageScaleForTemplate:(id)a3;
- (NTKCircularSmallStackImageComplicationView)initWithFrame:(CGRect)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateLabelsForFontChange;
- (void)layoutSubviews;
@end

@implementation NTKCircularSmallStackImageComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NTKCircularSmallStackImageComplicationView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NTKCircularSmallStackImageComplicationView;
  v3 = [(NTKCircularComplicationView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKCircularComplicationView *)v3 _fontForDynamicFontSize:1];
    v6 = [(NTKCircularComplicationView *)v4 _newLabelSubviewWithFont:v5];
    label = v4->_label;
    v4->_label = v6;

    v8 = v4->_label;
    [(NTKCircularComplicationView *)v4 _layoutConstants];
    [(CLKUIColoringLabel *)v8 setMaxWidth:v10];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = NTKCircularSmallStackImageComplicationView;
  [(NTKCircularComplicationView *)&v21 layoutSubviews];
  [(NTKCircularSmallStackImageComplicationView *)self bounds];
  memset(v20, 0, 152);
  v3 = [(NTKCircularComplicationView *)self device];
  _LayoutConstants_11(v3, [(NTKCircularComplicationView *)self usesMediumLayout], v20);

  [(CDComplicationImageView *)self->_imageView sizeToFit];
  [(CLKUIColoringLabel *)self->_label sizeToFit];
  v4 = [(NTKCircularComplicationView *)self complicationTemplate];
  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() _imageScaleForTemplate:v4];
    v5 = v6;
  }

  [(CDComplicationImageView *)self->_imageView bounds];
  imageView = self->_imageView;
  v8 = [(NTKCircularComplicationView *)self device];
  CLKRectIntegralForDevice();
  [(CDComplicationImageView *)imageView ntk_setBoundsAndPositionFromFrame:?];

  v9 = self->_imageView;
  CGAffineTransformMakeScale(&v19, v5, v5);
  [(CDComplicationImageView *)v9 setTransform:&v19];
  [(CLKUIColoringLabel *)self->_label frame];
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(CLKUIColoringLabel *)self->_label _lastLineBaseline];
  v10 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(CLKUIColoringLabel *)self->_label setFrame:v12, v14, v16, v18];
}

+ (double)_imageScaleForTemplate:(id)a3
{
  v3 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke;
  v10[3] = &unk_27877DDA0;
  v11 = v3;
  v4 = MEMORY[0x277CBBB68];
  v5 = v3;
  v6 = [v4 sharedRenderingContext];
  v7 = [v6 device];
  __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke(v10, v7);

  v8 = *&_imageScaleForTemplate___scale_359;
  return v8;
}

uint64_t __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_4_lock_1);
  if (_block_invoke_4___cachedDevice_1)
  {
    v4 = _block_invoke_4___cachedDevice_1 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke_4___previousCLKDeviceVersion_1))
  {
    _block_invoke_4___cachedDevice_1 = v3;
    _block_invoke_4___previousCLKDeviceVersion_1 = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v9 = *(a1 + 32);
    _block_invoke_4_value_1 = __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_2(v8, v3);
  }

  v6 = _block_invoke_4_value_1;
  os_unfair_lock_unlock(&_block_invoke_4_lock_1);

  return v6;
}

uint64_t __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_3;
  v4[3] = &unk_27877DD78;
  v5 = *(a1 + 32);
  (__69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_3)(v4, a2);

  return 1;
}

uint64_t __69__NTKCircularSmallStackImageComplicationView__imageScaleForTemplate___block_invoke_3(uint64_t a1)
{
  v5 = 0uLL;
  [*(a1 + 32) maxSDKSize:0 deviceSize:&v5 forImageProviderKey:@"line1ImageProvider"];
  v4 = 0uLL;
  result = [MEMORY[0x277CBB758] _imageSDKSize:0 deviceSize:&v4 forSDKVersion:{objc_msgSend(*(a1 + 32), "sdkVersion")}];
  v3 = vdivq_f64(v4, v5);
  if (v3.f64[0] >= v3.f64[1])
  {
    v3.f64[0] = v3.f64[1];
  }

  _imageScaleForTemplate___scale_359 = *&v3.f64[0];
  return result;
}

- (void)_updateForTemplateChange
{
  v3 = [(NTKCircularComplicationView *)self complicationTemplate];
  label = self->_label;
  v13 = v3;
  v5 = [v3 line2TextProvider];
  [(CLKUIColoringLabel *)label setTextProvider:v5];

  if ([(NTKCircularComplicationView *)self usesMediumLayout])
  {
    [(NTKCircularSmallStackImageComplicationView *)self _updateLabelsForFontChange];
  }

  v6 = [v13 line1ImageProvider];
  imageView = self->_imageView;
  v8 = [(CDComplicationImageView *)imageView imageProvider];
  v9 = [off_27877BE78 existingImageView:imageView supportsImageProvider:v8];

  v10 = self->_imageView;
  if ((v9 & 1) == 0)
  {
    [(CDComplicationImageView *)v10 removeFromSuperview];
    v11 = [off_27877BE78 viewForImageProvider:v6];
    v12 = self->_imageView;
    self->_imageView = v11;

    if (self->_imageView)
    {
      [(NTKCircularSmallStackImageComplicationView *)self addSubview:?];
      v10 = self->_imageView;
    }

    else
    {
      v10 = 0;
    }
  }

  [(CDComplicationImageView *)v10 setImageProvider:v6];
  [(NTKCircularComplicationView *)self _updateImageViewColor:self->_imageView];
  [(NTKCircularSmallStackImageComplicationView *)self setNeedsLayout];
}

- (void)_updateLabelsForFontChange
{
  if ([(NTKCircularComplicationView *)self usesMediumLayout])
  {
    v3 = [(CLKUIColoringLabel *)self->_label text];
    v4 = [(NTKCircularComplicationView *)self _mediumStackFontForText:v3];
  }

  else
  {
    v4 = [(NTKCircularComplicationView *)self _fontForDynamicFontSize:1];
  }

  [(CLKUIColoringLabel *)self->_label setFont:v4];
  label = self->_label;
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(CLKUIColoringLabel *)label setMaxWidth:v6];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_imageView);
}

@end