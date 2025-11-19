@interface NTKCircularSmallSimpleComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (double)_imageScaleForTemplate:(id)a3 forDevice:(id)a4;
- (NTKCircularSmallSimpleComplicationView)initWithFrame:(CGRect)a3;
- (double)_baselineOffsetForDynamicSize:(int64_t)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateImageViewWithImageProvider:(id)a3;
- (void)_updateLabelWithTextProvider:(id)a3;
- (void)layoutSubviews;
- (void)updateImageViewWithImage:(id)a3;
- (void)updateLabelWithString:(id)a3;
@end

@implementation NTKCircularSmallSimpleComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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

- (NTKCircularSmallSimpleComplicationView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallSimpleComplicationView;
  result = [(NTKCircularComplicationView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_maxDynamicFontSize = 3.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = NTKCircularSmallSimpleComplicationView;
  [(NTKCircularComplicationView *)&v39 layoutSubviews];
  [(NTKCircularSmallSimpleComplicationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_label)
  {
    v11 = fmin(self->_maxDynamicFontSize, 3.0);
    [(NTKCircularComplicationView *)self _layoutConstants];
    v12 = 0;
    if (v38 >= 1.79769313e308 || v11 < 1)
    {
      v14 = v11;
    }

    else
    {
      v13 = 0;
      do
      {
        v12 = [(NTKCircularComplicationView *)self _fontForDynamicFontSize:v11];

        [(CLKUIColoringLabel *)self->_label widthForMaxWidth:v12 withFont:v38];
        v14 = v11 - 1;
        v16 = v15 > v38 && v11 > 1;
        v13 = v12;
        --v11;
      }

      while (v16);
    }

    [(CLKUIColoringLabel *)self->_label setFont:v12];
    label = self->_label;
    [(NTKCircularSmallSimpleComplicationView *)self bounds];
    [(CLKUIColoringLabel *)label setMaxWidth:v18];
    [(CLKUIColoringLabel *)self->_label sizeToFit];
    [(CLKUIColoringLabel *)self->_label frame];
    if (v19 > v38)
    {
      [(CLKUIColoringLabel *)self->_label setFrame:?];
    }

    NTKPositionSimpleTemperatureLabel(self->_label, v4, v6, v8, v10);
    [(CLKUIColoringLabel *)self->_label frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(NTKCircularSmallSimpleComplicationView *)self _baselineOffsetForDynamicSize:v14 + 1];
    v27 = v26;
    [(CLKUIColoringLabel *)self->_label _lastLineBaseline];
    [(CLKUIColoringLabel *)self->_label setFrame:v21, v27 - v28, v23, v25];
  }

  if (self->_imageView)
  {
    v29 = [(NTKCircularComplicationView *)self complicationTemplate];
    objc_opt_class();
    v30 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      v31 = objc_opt_class();
      v32 = [(NTKCircularComplicationView *)self device];
      [v31 _imageScaleForTemplate:v29 forDevice:v32];
      v30 = v33;
    }

    [(CDComplicationImageView *)self->_imageView sizeToFit];
    imageView = self->_imageView;
    CGAffineTransformMakeScale(&v37, v30, v30);
    [(CDComplicationImageView *)imageView setTransform:&v37];
    v35 = self->_imageView;
    [(CDComplicationImageView *)v35 bounds];
    v36 = [(NTKCircularComplicationView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    [(CDComplicationImageView *)v35 ntk_setBoundsAndPositionFromFrame:?];
  }
}

+ (double)_imageScaleForTemplate:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke;
  v9[3] = &unk_2787861E0;
  v10 = v5;
  v6 = v5;
  v7 = __75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke(v9, a4);

  return v7;
}

double __75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_10);
  if (_block_invoke_2___cachedDevice_10)
  {
    v4 = _block_invoke_2___cachedDevice_10 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke_2___previousCLKDeviceVersion_10))
  {
    _block_invoke_2___cachedDevice_10 = v3;
    _block_invoke_2___previousCLKDeviceVersion_10 = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke_2;
    v8[3] = &unk_2787861E0;
    v9 = *(a1 + 32);
    _block_invoke_2_value_8 = (__75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke_2)(v8, v3);
  }

  v6 = *&_block_invoke_2_value_8;
  os_unfair_lock_unlock(&_block_invoke_2_lock_10);

  return v6;
}

float64_t __75__NTKCircularSmallSimpleComplicationView__imageScaleForTemplate_forDevice___block_invoke_2(uint64_t a1)
{
  v5 = 0uLL;
  [*(a1 + 32) maxSDKSize:0 deviceSize:&v5 forImageProviderKey:@"imageProvider"];
  v4 = 0uLL;
  [MEMORY[0x277CBB748] _imageSDKSize:0 deviceSize:&v4 forSDKVersion:{objc_msgSend(*(a1 + 32), "sdkVersion")}];
  v2 = vdivq_f64(v4, v5);
  if (v2.f64[0] >= v2.f64[1])
  {
    v2.f64[0] = v2.f64[1];
  }

  return v2.f64[0];
}

- (double)_baselineOffsetForDynamicSize:(int64_t)a3
{
  [(NTKCircularComplicationView *)self _layoutConstants];
  if (a3 == 3)
  {
    return 0.0;
  }

  if (a3 == 2)
  {
    return 0.0;
  }

  result = 0.0;
  if (a3 == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)updateLabelWithString:(id)a3
{
  v4 = [MEMORY[0x277CBBB88] textProviderWithText:a3 shortText:0];
  [(NTKCircularSmallSimpleComplicationView *)self _updateLabelWithTextProvider:v4];
}

- (void)updateImageViewWithImage:(id)a3
{
  v4 = [MEMORY[0x277CBBB40] imageProviderWithOnePieceImage:a3];
  [(NTKCircularSmallSimpleComplicationView *)self _updateImageViewWithImageProvider:v4];
}

- (void)_updateLabelWithTextProvider:(id)a3
{
  v4 = a3;
  imageView = self->_imageView;
  if (imageView)
  {
    [(CDComplicationImageView *)imageView removeFromSuperview];
    v6 = self->_imageView;
    self->_imageView = 0;
  }

  label = self->_label;
  if (!label)
  {
    v8 = objc_opt_new();
    v9 = self->_label;
    self->_label = v8;

    v10 = self->_label;
    v11 = [(NTKCircularComplicationView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v10 setInTimeTravel:v11 != 0];

    objc_initWeak(&location, self);
    v12 = self->_label;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__NTKCircularSmallSimpleComplicationView__updateLabelWithTextProvider___block_invoke;
    v18[3] = &unk_27877DC30;
    objc_copyWeak(&v19, &location);
    [(CLKUIColoringLabel *)v12 setNowProvider:v18];
    v13 = self->_label;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__NTKCircularSmallSimpleComplicationView__updateLabelWithTextProvider___block_invoke_2;
    v16[3] = &unk_27877DC58;
    objc_copyWeak(&v17, &location);
    [(CLKUIColoringLabel *)v13 setNeedsResizeHandler:v16];
    v14 = self->_label;
    [(NTKCircularComplicationView *)self _layoutConstants];
    [(CLKUIColoringLabel *)v14 setMaxWidth:v15];
    [(NTKCircularSmallSimpleComplicationView *)self addSubview:self->_label];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    label = self->_label;
  }

  [(CLKUIColoringLabel *)label setTextProvider:v4];
  [(NTKCircularComplicationView *)self _updateLabelViewColor:self->_label];
  [(NTKCircularSmallSimpleComplicationView *)self setNeedsLayout];
}

id __71__NTKCircularSmallSimpleComplicationView__updateLabelWithTextProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained timeTravelDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v5 = v4;

  return v5;
}

void __71__NTKCircularSmallSimpleComplicationView__updateLabelWithTextProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)_updateImageViewWithImageProvider:(id)a3
{
  v4 = a3;
  label = self->_label;
  v11 = v4;
  if (label)
  {
    [(CLKUIColoringLabel *)label removeFromSuperview];
    v6 = self->_label;
    self->_label = 0;

    v4 = v11;
  }

  v7 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v4];
  imageView = self->_imageView;
  if ((v7 & 1) == 0)
  {
    [(CDComplicationImageView *)imageView removeFromSuperview];
    v9 = [off_27877BE78 viewForImageProvider:v11];
    v10 = self->_imageView;
    self->_imageView = v9;

    if (self->_imageView)
    {
      [(NTKCircularSmallSimpleComplicationView *)self addSubview:?];
      imageView = self->_imageView;
    }

    else
    {
      imageView = 0;
    }
  }

  [(CDComplicationImageView *)imageView setImageProvider:v11];
  [(NTKCircularComplicationView *)self _updateImageViewColor:self->_imageView];
  [(NTKCircularSmallSimpleComplicationView *)self setNeedsLayout];
}

- (void)_updateForTemplateChange
{
  v5 = [(NTKCircularComplicationView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [v5 textProvider];
    [(NTKCircularSmallSimpleComplicationView *)self _updateLabelWithTextProvider:v3];

    self->_maxDynamicFontSize = [v5 maxDynamicFontSize];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = [v5 imageProvider];
      [(NTKCircularSmallSimpleComplicationView *)self _updateImageViewWithImageProvider:v4];
    }
  }
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