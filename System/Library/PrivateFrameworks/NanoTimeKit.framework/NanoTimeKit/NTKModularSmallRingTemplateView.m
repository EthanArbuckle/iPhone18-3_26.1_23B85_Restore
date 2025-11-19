@interface NTKModularSmallRingTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (id)supportedTemplateClasses;
- (NTKModularSmallRingTemplateView)initWithFrame:(CGRect)a3;
- (void)_configureContentSubviews;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_refreshRingImage;
- (void)_refreshRingImageWithRing:(id)a3;
- (void)_update;
- (void)_updateRingWithRingDescription:(id)a3;
- (void)setIsXL:(BOOL)a3;
- (void)updateRingWithProgressProvider:(id)a3;
@end

@implementation NTKModularSmallRingTemplateView

- (NTKModularSmallRingTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallRingTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallRingTemplateView *)v3 _configureContentSubviews];
    v4->_level = INFINITY;
  }

  return v4;
}

- (void)_configureContentSubviews
{
  v3 = [(CLKUIColoringLabel *)self->_label textProvider];
  [(CLKUIColoringImageView *)self->_stateRing removeFromSuperview];
  [(CLKUIColoringLabel *)self->_label removeFromSuperview];
  v24 = 0.0;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NTKModuleView *)self device];
  _LayoutConstants_0(v4, [(NTKComplicationModuleView *)self isXL], &v22);

  v5 = [off_27877BEF0 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *(&v22 + 1), *&v23}];
  stateRing = self->_stateRing;
  self->_stateRing = v6;

  v8 = [(NTKModuleView *)self contentView];
  [v8 addSubview:self->_stateRing];

  v9 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v22];
  v10 = objc_alloc_init(off_27877BEF8);
  label = self->_label;
  self->_label = v10;

  [(CLKUIColoringLabel *)self->_label setFont:v9];
  [(CLKUIColoringLabel *)self->_label setTextProvider:v3];
  [(CLKUIColoringLabel *)self->_label setMaxWidth:v24];
  v12 = self->_label;
  v13 = [(NTKModularTemplateView *)self timeTravelDate];
  [(CLKUIColoringLabel *)v12 setInTimeTravel:v13 != 0];

  objc_initWeak(&location, self);
  v14 = self->_label;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__NTKModularSmallRingTemplateView__configureContentSubviews__block_invoke;
  v19[3] = &unk_27877DC30;
  objc_copyWeak(&v20, &location);
  [(CLKUIColoringLabel *)v14 setNowProvider:v19];
  v15 = self->_label;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NTKModularSmallRingTemplateView__configureContentSubviews__block_invoke_2;
  v17[3] = &unk_27877DC58;
  objc_copyWeak(&v18, &location);
  [(CLKUIColoringLabel *)v15 setNeedsResizeHandler:v17];
  v16 = [(NTKModuleView *)self contentView];
  [v16 addSubview:self->_label];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

id __60__NTKModularSmallRingTemplateView__configureContentSubviews__block_invoke(uint64_t a1)
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

void __60__NTKModularSmallRingTemplateView__configureContentSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (void)setIsXL:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKModularSmallRingTemplateView;
  [(NTKComplicationModuleView *)&v4 setIsXL:a3];
  [(NTKModularSmallRingTemplateView *)self _configureContentSubviews];
  [(NTKModuleView *)self _updateColors];
  [(NTKModularSmallRingTemplateView *)self _refreshRingImage];
  [(NTKModularSmallRingTemplateView *)self _layoutContentView];
}

- (void)_update
{
  v3 = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(CDComplicationImageView *)self->_imageView setHidden:1];
    [(CLKUIColoringLabel *)self->_label setHidden:0];
    label = self->_label;
    v5 = [v3 textProvider];
    [(CLKUIColoringLabel *)label setTextProvider:v5];
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(CLKUIColoringLabel *)self->_label setHidden:1];
    v5 = [v3 imageProvider];
    v6 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v5];
    imageView = self->_imageView;
    if ((v6 & 1) == 0)
    {
      [(CDComplicationImageView *)imageView removeFromSuperview];
      v8 = [off_27877BE78 viewForImageProvider:v5];
      v9 = self->_imageView;
      self->_imageView = v8;

      v10 = self->_imageView;
      if (v10)
      {
        v11 = [(NTKModuleView *)self foregroundColor];
        [(CDComplicationImageView *)v10 setColor:v11];

        v12 = [(NTKModuleView *)self contentView];
        [v12 addSubview:self->_imageView];

        imageView = self->_imageView;
      }

      else
      {
        imageView = 0;
      }
    }

    [(CDComplicationImageView *)imageView setHidden:0];
    [(CDComplicationImageView *)self->_imageView setImageProvider:v5];
    goto LABEL_13;
  }

LABEL_14:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [v3 progressProvider];
    progressProvider = self->_progressProvider;
    if (v13 != progressProvider)
    {
      [(CLKProgressProvider *)progressProvider stopUpdatesForToken:self->_progressUpdateToken];
      objc_storeStrong(&self->_progressProvider, v13);
      v15 = [(NTKRing *)v13 tintColor];

      if (v15)
      {
        v16 = [(NTKRing *)v13 tintColor];
        [(CLKUIColoringImageView *)self->_stateRing setOverrideColor:v16];
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, v13);
      v17 = self->_progressProvider;
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __42__NTKModularSmallRingTemplateView__update__block_invoke;
      v26 = &unk_278780120;
      objc_copyWeak(&v27, &location);
      objc_copyWeak(&v28, &from);
      v18 = [(CLKProgressProvider *)v17 startUpdatesWithHandler:&v23];
      progressUpdateToken = self->_progressUpdateToken;
      self->_progressUpdateToken = v18;

      [(NTKModularSmallRingTemplateView *)self updateRingWithProgressProvider:v13, v23, v24, v25, v26];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = [NTKRing alloc];
    [v3 fillFraction];
    v13 = -[NTKRing initWithFillFraction:style:](v20, "initWithFillFraction:style:", [v3 ringStyle], v21);
    [(NTKModularSmallRingTemplateView *)self _updateRingWithRingDescription:v13];
  }

  v22 = [(NTKModuleView *)self contentView];
  [v22 setNeedsLayout];
}

void __42__NTKModularSmallRingTemplateView__update__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRingWithProgressProvider:v2];
}

- (void)updateRingWithProgressProvider:(id)a3
{
  v14 = a3;
  v4 = [(NTKModularTemplateView *)self timeTravelDate];
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
  [v14 progressFractionForNow:v7];
  v10 = v9;
  v11 = [(NTKModularTemplateView *)self complicationTemplate];
  v12 = -[NTKRing initWithFillFraction:style:](v8, "initWithFillFraction:style:", [v11 ringStyle], v10);

  [v14 backgroundRingAlpha];
  if (v13 >= 0.0)
  {
    [v14 backgroundRingAlpha];
    [(NTKRing *)v12 setBackgroundRingAlpha:?];
  }

  [(NTKModularSmallRingTemplateView *)self _updateRingWithRingDescription:v12];
}

- (void)_updateRingWithRingDescription:(id)a3
{
  v8 = a3;
  [v8 fillFraction];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v8 fillFraction];
    *&v4 = v4;
    self->_level = *&v4;
    v5 = [(NTKModuleView *)self device];
    _LayoutConstants_0(v5, [(NTKComplicationModuleView *)self isXL], v11);
    [v8 setRadius:v12 * 0.5];

    v6 = [(NTKModuleView *)self device];
    _LayoutConstants_0(v6, [(NTKComplicationModuleView *)self isXL], v9);
    [v8 setStrokeWidth:v10];

    v7 = [v8 ringImage];
    [(CLKUIColoringImageView *)self->_stateRing setImage:v7];
  }
}

- (void)_layoutContentView
{
  v3 = [(NTKModuleView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CLKUIColoringImageView *)self->_stateRing sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v12 = [(NTKModuleView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(CLKUIColoringImageView *)self->_stateRing setFrame:v14, v16, v18, v20];
  if (([(CLKUIColoringLabel *)self->_label isHidden]& 1) == 0)
  {
    [(CLKUIColoringLabel *)self->_label sizeToFit];
    [(CLKUIColoringLabel *)self->_label frame];
    v21 = [(NTKModuleView *)self device];
    _LayoutConstants_0(v21, [(NTKComplicationModuleView *)self isXL], v26);

    label = self->_label;
    v23 = [(NTKModuleView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    [(CLKUIColoringLabel *)label setFrame:?];
  }

  if (([(CDComplicationImageView *)self->_imageView isHidden]& 1) == 0)
  {
    v24 = [(CDComplicationImageView *)self->_imageView sizeToFit];
    imageView = self->_imageView;
    MEMORY[0x2318D8E70](v24, v5, v7, v9, v11);

    [(CDComplicationImageView *)imageView setCenter:?];
  }
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_stateRing);
  (*v4)(v6, self->_imageView);
}

- (void)_refreshRingImage
{
  v14 = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [(NTKModularTemplateView *)self timeTravelDate];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x277CBBAD8] complicationDate];
    }

    v6 = v5;

    v7 = [NTKRing alloc];
    [(CLKProgressProvider *)self->_progressProvider progressFractionForNow:v6];
    v9 = v8;
    v10 = [(NTKModularTemplateView *)self complicationTemplate];
    v11 = -[NTKRing initWithFillFraction:style:](v7, "initWithFillFraction:style:", [v10 ringStyle], v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [NTKRing alloc];
      [v14 fillFraction];
      v11 = -[NTKRing initWithFillFraction:style:](v12, "initWithFillFraction:style:", [v14 ringStyle], v13);
    }

    else
    {
      v11 = 0;
    }
  }

  [(NTKModularSmallRingTemplateView *)self _refreshRingImageWithRing:v11];
}

- (void)_refreshRingImageWithRing:(id)a3
{
  v4 = a3;
  [v4 fillFraction];
  *&v5 = v5;
  self->_level = *&v5;
  v6 = [(NTKModuleView *)self device];
  _LayoutConstants_0(v6, [(NTKComplicationModuleView *)self isXL], v11);
  [v4 setRadius:v12 * 0.5];

  v7 = [(NTKModuleView *)self device];
  _LayoutConstants_0(v7, [(NTKComplicationModuleView *)self isXL], v9);
  [v4 setStrokeWidth:v10];

  v8 = [v4 ringImage];

  [(CLKUIColoringImageView *)self->_stateRing setImage:v8];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 supportedTemplateClasses];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)supportedTemplateClasses
{
  if (supportedTemplateClasses_onceToken != -1)
  {
    +[NTKModularSmallRingTemplateView supportedTemplateClasses];
  }

  v3 = supportedTemplateClasses__supportedClasses;

  return v3;
}

void __59__NTKModularSmallRingTemplateView_supportedTemplateClasses__block_invoke()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:6];
  v1 = supportedTemplateClasses__supportedClasses;
  supportedTemplateClasses__supportedClasses = v0;
}

@end