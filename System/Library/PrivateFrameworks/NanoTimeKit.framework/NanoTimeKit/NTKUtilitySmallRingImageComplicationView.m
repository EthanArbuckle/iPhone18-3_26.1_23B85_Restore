@interface NTKUtilitySmallRingImageComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)ringColor;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3;
- (void)_enumerateColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateWithImageProvider:(id)a3;
- (void)layoutSubviews;
- (void)updateRingWithProgressProvider:(id)a3;
@end

@implementation NTKUtilitySmallRingImageComplicationView

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

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKUtilitySmallRingImageComplicationView;
  [(NTKUtilitySmallRingComplicationView *)&v13 layoutSubviews];
  v3 = [(NTKUtilityCircularComplicationView *)self contentView];
  [v3 bounds];

  [(CDComplicationImageView *)self->_imageView sizeToFit];
  [(CDComplicationImageView *)self->_imageView frame];
  v4 = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CDComplicationImageView *)self->_imageView setFrame:v6, v8, v10, v12];
}

- (void)_updateWithImageProvider:(id)a3
{
  v10 = a3;
  v4 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:?];
  imageView = self->_imageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:v10];
    v7 = self->_imageView;
    self->_imageView = v6;

    imageView = self->_imageView;
    if (imageView)
    {
      [(NTKUtilityComplicationView *)self _updateImageViewAlpha:?];
      v8 = [(NTKUtilityCircularComplicationView *)self contentView];
      [v8 addSubview:self->_imageView];

      imageView = self->_imageView;
    }
  }

  [(NTKUtilityComplicationView *)self _updateImageViewColor:imageView];
  [(CDComplicationImageView *)self->_imageView setImageProvider:v10];
  [(NTKUtilitySmallRingImageComplicationView *)self setNeedsLayout];
  v9 = [(NTKUtilityComplicationView *)self displayObserver];
  [v9 complicationDisplayNeedsResize:self];
}

- (void)_updateForTemplateChange
{
  v20.receiver = self;
  v20.super_class = NTKUtilitySmallRingImageComplicationView;
  [(NTKUtilityComplicationView *)&v20 _updateForTemplateChange];
  v3 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v4 = [v3 imageProvider];
  [(NTKUtilitySmallRingImageComplicationView *)self _updateWithImageProvider:v4];

  [(NTKUtilityComplicationView *)self _updateImageViewAlpha:self->_imageView];
  [(NTKUtilityComplicationView *)self _updateImageViewColor:self->_imageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 progressProvider];
    progressProvider = self->_progressProvider;
    if (v5 != progressProvider)
    {
      [(CLKProgressProvider *)progressProvider stopUpdatesForToken:self->_progressUpdateToken];
      objc_storeStrong(&self->_progressProvider, v5);
      objc_initWeak(&location, self);
      objc_initWeak(&from, v5);
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

      [(NTKUtilitySmallRingImageComplicationView *)self updateRingWithProgressProvider:v5, v12, v13, v14, v15];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [NTKRing alloc];
    [v3 fillFraction];
    v5 = -[NTKRing initWithFillFraction:style:](v10, "initWithFillFraction:style:", [v3 ringStyle], v11);
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v5];
  }
}

void __68__NTKUtilitySmallRingImageComplicationView__updateForTemplateChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRingWithProgressProvider:v2];
}

- (void)updateRingWithProgressProvider:(id)a3
{
  v17 = a3;
  v4 = [(NTKUtilityComplicationView *)self timeTravelDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v7 = v6;

  v8 = [NTKRing alloc];
  [v17 progressFractionForNow:v7];
  v10 = v9;
  v11 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v12 = -[NTKRing initWithFillFraction:style:](v8, "initWithFillFraction:style:", [v11 ringStyle], v10);

  [v17 backgroundRingAlpha];
  if (v13 >= 0.0)
  {
    [v17 backgroundRingAlpha];
    v15 = v14;
    v16 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v16, v18);
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v12 backgroundRingAlpha:v15 / v19];
  }

  else
  {
    [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v12];
  }
}

- (void)_enumerateColoringViewsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKUtilitySmallRingImageComplicationView;
  v4 = a3;
  [(NTKUtilitySmallRingComplicationView *)&v5 _enumerateColoringViewsWithBlock:v4];
  v4[2](v4, self->_imageView);
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

- (id)ringColor
{
  v2 = [(NTKUtilityComplicationView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 progressProvider];
    v4 = [v3 tintColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end