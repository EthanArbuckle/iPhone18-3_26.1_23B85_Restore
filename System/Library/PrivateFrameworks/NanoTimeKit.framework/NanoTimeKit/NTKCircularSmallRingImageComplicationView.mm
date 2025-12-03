@interface NTKCircularSmallRingImageComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
+ (double)_imageScaleForTemplate:(id)template;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_updateForTemplateChange;
- (void)layoutSubviews;
- (void)updateRingWithProgressProvider:(id)provider;
@end

@implementation NTKCircularSmallRingImageComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
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

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = NTKCircularSmallRingImageComplicationView;
  [(NTKCircularSmallRingComplicationView *)&v10 layoutSubviews];
  [(NTKCircularSmallRingImageComplicationView *)self bounds];
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  objc_opt_class();
  v4 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() _imageScaleForTemplate:complicationTemplate];
    v4 = v5;
  }

  [(CDComplicationImageView *)self->_imageView sizeToFit];
  imageView = self->_imageView;
  CGAffineTransformMakeScale(&v9, v4, v4);
  [(CDComplicationImageView *)imageView setTransform:&v9];
  v7 = self->_imageView;
  [(CDComplicationImageView *)v7 bounds];
  device = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(CDComplicationImageView *)v7 ntk_setBoundsAndPositionFromFrame:?];
}

+ (double)_imageScaleForTemplate:(id)template
{
  templateCopy = template;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke;
  v10[3] = &unk_27877DDA0;
  v11 = templateCopy;
  v4 = MEMORY[0x277CBBB68];
  v5 = templateCopy;
  sharedRenderingContext = [v4 sharedRenderingContext];
  device = [sharedRenderingContext device];
  __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke(v10, device);

  v8 = *&_imageScaleForTemplate___scale;
  return v8;
}

uint64_t __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock_3);
  if (_block_invoke_3___cachedDevice_3)
  {
    v4 = _block_invoke_3___cachedDevice_3 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke_3___previousCLKDeviceVersion_3))
  {
    _block_invoke_3___cachedDevice_3 = v3;
    _block_invoke_3___previousCLKDeviceVersion_3 = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v9 = *(a1 + 32);
    _block_invoke_3_value_3 = __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_2(v8, v3);
  }

  v6 = _block_invoke_3_value_3;
  os_unfair_lock_unlock(&_block_invoke_3_lock_3);

  return v6;
}

uint64_t __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_3;
  v4[3] = &unk_27877DD78;
  v5 = *(a1 + 32);
  (__68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_3)(v4, a2);

  return 1;
}

uint64_t __68__NTKCircularSmallRingImageComplicationView__imageScaleForTemplate___block_invoke_3(uint64_t a1)
{
  v5 = 0uLL;
  [*(a1 + 32) maxSDKSize:0 deviceSize:&v5 forImageProviderKey:@"imageProvider"];
  v4 = 0uLL;
  result = [MEMORY[0x277CBB740] _imageSDKSize:0 deviceSize:&v4 forSDKVersion:{objc_msgSend(*(a1 + 32), "sdkVersion")}];
  v3 = vdivq_f64(v4, v5);
  if (v3.f64[0] >= v3.f64[1])
  {
    v3.f64[0] = v3.f64[1];
  }

  _imageScaleForTemplate___scale = *&v3.f64[0];
  return result;
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  imageProvider = [complicationTemplate imageProvider];
  imageView = self->_imageView;
  imageProvider2 = [(CDComplicationImageView *)imageView imageProvider];
  v7 = [off_27877BE78 existingImageView:imageView supportsImageProvider:imageProvider2];

  v8 = self->_imageView;
  if ((v7 & 1) == 0)
  {
    [(CDComplicationImageView *)v8 removeFromSuperview];
    v9 = [off_27877BE78 viewForImageProvider:imageProvider];
    v10 = self->_imageView;
    self->_imageView = v9;

    if (self->_imageView)
    {
      [(NTKCircularSmallRingImageComplicationView *)self addSubview:?];
      v8 = self->_imageView;
    }

    else
    {
      v8 = 0;
    }
  }

  [(CDComplicationImageView *)v8 setImageProvider:imageProvider];
  [(NTKCircularComplicationView *)self _updateImageViewColor:self->_imageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    progressProvider = [complicationTemplate progressProvider];
    progressProvider = self->_progressProvider;
    if (progressProvider != progressProvider)
    {
      [(CLKProgressProvider *)progressProvider stopUpdatesForToken:self->_progressUpdateToken];
      objc_storeStrong(&self->_progressProvider, progressProvider);
      objc_initWeak(&location, self);
      objc_initWeak(&from, progressProvider);
      v13 = self->_progressProvider;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __69__NTKCircularSmallRingImageComplicationView__updateForTemplateChange__block_invoke;
      v21 = &unk_278780120;
      objc_copyWeak(&v22, &location);
      objc_copyWeak(&v23, &from);
      v14 = [(CLKProgressProvider *)v13 startUpdatesWithHandler:&v18];
      progressUpdateToken = self->_progressUpdateToken;
      self->_progressUpdateToken = v14;

      [(NTKCircularSmallRingImageComplicationView *)self updateRingWithProgressProvider:progressProvider, v18, v19, v20, v21];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v16 = [NTKRing alloc];
    [complicationTemplate fillFraction];
    progressProvider = -[NTKRing initWithFillFraction:style:](v16, "initWithFillFraction:style:", [complicationTemplate ringStyle], v17);
    [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:progressProvider];
  }

  [(NTKCircularSmallRingImageComplicationView *)self setNeedsLayout];
}

void __69__NTKCircularSmallRingImageComplicationView__updateForTemplateChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRingWithProgressProvider:v2];
}

- (void)updateRingWithProgressProvider:(id)provider
{
  providerCopy = provider;
  timeTravelDate = [(NTKCircularComplicationView *)self timeTravelDate];
  v5 = timeTravelDate;
  if (timeTravelDate)
  {
    complicationDate = timeTravelDate;
  }

  else
  {
    complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v7 = complicationDate;

  v8 = [NTKRing alloc];
  [providerCopy progressFractionForNow:v7];
  v10 = v9;
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  v12 = -[NTKRing initWithFillFraction:style:](v8, "initWithFillFraction:style:", [complicationTemplate ringStyle], v10);

  [providerCopy backgroundRingAlpha];
  if (v13 >= 0.0)
  {
    [providerCopy backgroundRingAlpha];
    [(NTKRing *)v12 setBackgroundRingAlpha:?];
  }

  [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:v12];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKCircularSmallRingImageComplicationView;
  blockCopy = block;
  [(NTKCircularSmallRingComplicationView *)&v5 _enumerateForegroundColoringViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_imageView);
}

@end