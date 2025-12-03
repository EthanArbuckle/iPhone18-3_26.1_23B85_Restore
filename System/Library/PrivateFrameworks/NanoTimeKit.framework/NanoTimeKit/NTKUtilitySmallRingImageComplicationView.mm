@interface NTKUtilitySmallRingImageComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (id)ringColor;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)block;
- (void)_enumerateColoringViewsWithBlock:(id)block;
- (void)_updateForTemplateChange;
- (void)_updateWithImageProvider:(id)provider;
- (void)layoutSubviews;
- (void)updateRingWithProgressProvider:(id)provider;
@end

@implementation NTKUtilitySmallRingImageComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
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

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKUtilitySmallRingImageComplicationView;
  [(NTKUtilitySmallRingComplicationView *)&v13 layoutSubviews];
  contentView = [(NTKUtilityCircularComplicationView *)self contentView];
  [contentView bounds];

  [(CDComplicationImageView *)self->_imageView sizeToFit];
  [(CDComplicationImageView *)self->_imageView frame];
  device = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CDComplicationImageView *)self->_imageView setFrame:v6, v8, v10, v12];
}

- (void)_updateWithImageProvider:(id)provider
{
  providerCopy = provider;
  v4 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:?];
  imageView = self->_imageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:providerCopy];
    v7 = self->_imageView;
    self->_imageView = v6;

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
  [(CDComplicationImageView *)self->_imageView setImageProvider:providerCopy];
  [(NTKUtilitySmallRingImageComplicationView *)self setNeedsLayout];
  displayObserver = [(NTKUtilityComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (void)_updateForTemplateChange
{
  v20.receiver = self;
  v20.super_class = NTKUtilitySmallRingImageComplicationView;
  [(NTKUtilityComplicationView *)&v20 _updateForTemplateChange];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  imageProvider = [complicationTemplate imageProvider];
  [(NTKUtilitySmallRingImageComplicationView *)self _updateWithImageProvider:imageProvider];

  [(NTKUtilityComplicationView *)self _updateImageViewAlpha:self->_imageView];
  [(NTKUtilityComplicationView *)self _updateImageViewColor:self->_imageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    progressProvider = [complicationTemplate progressProvider];
    progressProvider = self->_progressProvider;
    if (progressProvider != progressProvider)
    {
      [(CLKProgressProvider *)progressProvider stopUpdatesForToken:self->_progressUpdateToken];
      objc_storeStrong(&self->_progressProvider, progressProvider);
      objc_initWeak(&location, self);
      objc_initWeak(&from, progressProvider);
      v7 = self->_progressProvider;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __68__NTKUtilitySmallRingImageComplicationView__updateForTemplateChange__block_invoke;
      v15 = &unk_278780120;
      objc_copyWeak(&v16, &location);
      objc_copyWeak(&v17, &from);
      v8 = [(CLKProgressProvider *)v7 startUpdatesWithHandler:&v12];
      progressUpdateToken = self->_progressUpdateToken;
      self->_progressUpdateToken = v8;

      [(NTKUtilitySmallRingImageComplicationView *)self updateRingWithProgressProvider:progressProvider, v12, v13, v14, v15];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [NTKRing alloc];
    [complicationTemplate fillFraction];
    progressProvider = -[NTKRing initWithFillFraction:style:](v10, "initWithFillFraction:style:", [complicationTemplate ringStyle], v11);
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:progressProvider];
  }
}

void __68__NTKUtilitySmallRingImageComplicationView__updateForTemplateChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRingWithProgressProvider:v2];
}

- (void)updateRingWithProgressProvider:(id)provider
{
  providerCopy = provider;
  timeTravelDate = [(NTKUtilityComplicationView *)self timeTravelDate];
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
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  v12 = -[NTKRing initWithFillFraction:style:](v8, "initWithFillFraction:style:", [complicationTemplate ringStyle], v10);

  [providerCopy backgroundRingAlpha];
  if (v13 >= 0.0)
  {
    [providerCopy backgroundRingAlpha];
    v15 = v14;
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v18);
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v12 backgroundRingAlpha:v15 / v19];
  }

  else
  {
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v12];
  }
}

- (void)_enumerateColoringViewsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKUtilitySmallRingImageComplicationView;
  blockCopy = block;
  [(NTKUtilitySmallRingComplicationView *)&v5 _enumerateColoringViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_imageView);
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

- (id)ringColor
{
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    progressProvider = [complicationTemplate progressProvider];
    tintColor = [progressProvider tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

@end