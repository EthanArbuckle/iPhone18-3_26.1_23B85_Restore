@interface MTLumaDodgePillView
+ (CGSize)suggestedSizeForContentWidth:(double)a3 withSettings:(id)a4;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)suggestedSizeForContentWidth:(double)a3;
- (MTLumaDodgePillBackgroundLuminanceObserver)backgroundLumninanceObserver;
- (MTLumaDodgePillView)initWithFrame:(CGRect)a3 settings:(id)a4 graphicsQuality:(int64_t)a5;
- (NSString)description;
- (unint64_t)_dodgeMode;
- (void)_configureLowQualityEffectViewForMode:(unint64_t)a3 path:(id)a4;
- (void)_updateBaseContentColor:(id)a3;
- (void)_updateLumaTracking;
- (void)_updateModeConfiguration;
- (void)_updatePowerAnalysisOverrideSettings;
- (void)_updateStyle;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4;
- (void)bounce;
- (void)dealloc;
- (void)layoutSubviews;
- (void)resetBackgroundLuminanceHysteresis;
- (void)setBackgroundLuminanceBias:(int64_t)a3;
- (void)setBackgroundLumninanceObserver:(id)a3;
- (void)setCustomPillShapePath:(id)a3 animated:(BOOL)a4;
- (void)setStyle:(int64_t)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation MTLumaDodgePillView

- (unint64_t)_dodgeMode
{
  v2 = (*(self + 461) >> 4) & 3;
  if (!v2)
  {
    return (*(self + 461) >> 2) & 3;
  }

  return v2;
}

- (void)_updateStyle
{
  v3 = [(MTLumaDodgePillView *)self _dodgeMode];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      v8 = (*(self + 460) << 28 >> 28) - 1;
      if (v8 > 3)
      {
        v10 = 0.0;
        v9 = 0.5;
      }

      else
      {
        v9 = dbl_21E612060[v8];
        v10 = dbl_21E612080[v8];
      }

      v27 = [(MTLumaDodgePillView *)self layer];
      v11 = [MEMORY[0x277D75348] colorWithWhite:v9 alpha:v10];
      [v27 setContentsMultiplyColor:{objc_msgSend(v11, "CGColor")}];
      goto LABEL_21;
    }

    settings = self->_settings;
    v5 = (*(self + 460) << 28 >> 28);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = [(MTLumaDodgePillSettings *)settings blackSettings];
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        v6 = [(MTLumaDodgePillSettings *)settings whiteSettings];
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(MTLumaDodgePillSettings *)settings thinSettings];
        goto LABEL_20;
      }

      if (v5 == 2)
      {
        v6 = [(MTLumaDodgePillSettings *)settings graySettings];
LABEL_20:
        v27 = v6;
        v11 = [(MTLumaDodgePillView *)self layer];
        v12 = MEMORY[0x277CCABB0];
        [(MTLumaDodgePillSettings *)self->_settings colorAddWhiteness];
        v14 = v13;
        [v27 colorAddOpacity];
        v16 = [v12 numberWithDouble:v14 * v15];
        [v11 setValue:v16 forKeyPath:@"filters.homeAffordanceBase.inputAddWhite"];

        v17 = MEMORY[0x277CCABB0];
        [v27 lumaMapPlusColorOpacity];
        v18 = [v17 numberWithDouble:?];
        [v11 setValue:v18 forKeyPath:@"filters.homeAffordanceBase.inputAmount"];

        v19 = MEMORY[0x277CCABB0];
        [v27 overlayBlendOpacity];
        v20 = [v19 numberWithDouble:?];
        [v11 setValue:v20 forKeyPath:@"filters.homeAffordanceBase.inputOverlayOpacity"];

        v21 = MEMORY[0x277CCABB0];
        [v27 blur];
        v22 = [v21 numberWithDouble:?];
        [v11 setValue:v22 forKeyPath:@"filters.gaussianBlur.inputRadius"];

        v23 = MEMORY[0x277CCABB0];
        [v27 brightness];
        v24 = [v23 numberWithDouble:?];
        [v11 setValue:v24 forKeyPath:@"filters.colorBrightness.inputAmount"];

        v25 = MEMORY[0x277CCABB0];
        [v27 saturation];
        v26 = [v25 numberWithDouble:?];
        [v11 setValue:v26 forKeyPath:@"filters.colorSaturate.inputAmount"];

LABEL_21:

        return;
      }
    }

    v6 = [(MTLumaDodgePillSettings *)settings noneSettings];
    goto LABEL_20;
  }

  baseContentColor = self->_baseContentColor;

  [(MTLumaDodgePillView *)self _updateBaseContentColor:baseContentColor];
}

- (void)_updateModeConfiguration
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [(MTLumaDodgePillView *)self _dodgeMode];
  [(MTLumaDodgePillView *)self _configureLowQualityEffectViewForMode:v3 path:self->_customPillShapePath];
  v4 = [(MTLumaDodgePillView *)self layer];
  v5 = v4;
  if (v3 == 2)
  {
    [v4 setFilters:0];

    v19 = [(MTLumaDodgePillView *)self layer];
    [v19 setContents:0];

    v20 = [(MTLumaDodgePillView *)self layer];
    [v20 setContentsMultiplyColor:0];

    v21 = [(MTLumaDodgePillView *)self layer];
    [v21 setEnabled:1];

    v22 = [(MTLumaDodgePillView *)self layer];
    [v22 setCaptureOnly:1];

    v28 = [(MTLumaDodgePillView *)self layer];
    [v28 setScale:0.5];
  }

  else
  {
    if (v3 == 1)
    {
      [v4 setContents:0];

      v6 = [(MTLumaDodgePillView *)self layer];
      [v6 setContentsMultiplyColor:0];

      v7 = [(MTLumaDodgePillView *)self layer];
      [v7 setScale:1.0];

      v8 = [(MTLumaDodgePillView *)self layer];
      [v8 setEnabled:1];

      v9 = [(MTLumaDodgePillView *)self layer];
      [v9 setCaptureOnly:0];

      v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA340]];
      [v10 setName:@"homeAffordanceBase"];
      v11 = MEMORY[0x277D755B8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v11 imageNamed:@"lumaDodgePillMap" inBundle:v12];
      [v10 setValue:objc_msgSend(v13 forKey:{"CGImage"), @"inputColorMap"}];

      v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v14 setName:@"gaussianBlur"];
      [v14 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
      v15 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
      [v15 setName:@"colorBrightness"];
      v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
      [v16 setName:@"colorSaturate"];
      v17 = [(MTLumaDodgePillView *)self layer];
      v29[0] = v10;
      v29[1] = v14;
      v29[2] = v15;
      v29[3] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
      [v17 setFilters:v18];

      return;
    }

    [v4 setScale:1.0];

    v23 = [(MTLumaDodgePillView *)self layer];
    [v23 setFilters:0];

    v24 = [(MTLumaDodgePillView *)self layer];
    [v24 setEnabled:0];

    v31.width = 1.0;
    v31.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v31, 1, 1.0);
    v25 = [MEMORY[0x277D75348] whiteColor];
    [v25 setFill];

    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 1.0;
    v32.size.height = 1.0;
    UIRectFill(v32);
    v28 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v26 = [(MTLumaDodgePillView *)self layer];
    v27 = v28;
    [v26 setContents:{objc_msgSend(v28, "CGImage")}];
  }
}

- (void)_updateLumaTracking
{
  v3 = [(MTLumaDodgePillView *)self _dodgeMode];
  v4 = v3;
  if (!self->_disableLumaTracking && (v3 == 2 || (WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver), WeakRetained, WeakRetained)))
  {
    v7 = [(MTLumaDodgePillView *)self layer];
    [v7 setTracksLuma:1];
  }

  else
  {
    v5 = [(MTLumaDodgePillView *)self layer];
    [v5 setTracksLuma:0];

    self->_lumaIsValid = 0;
    *(self + 460) &= 0x8Fu;
    if (v4 != 2)
    {
      return;
    }

    v7 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
    [(MTLumaDodgePillView *)self _updateBaseContentColor:?];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTLumaDodgePillView;
  [(MTLumaDodgePillView *)&v4 layoutSubviews];
  lowQualityEffectView = self->_lowQualityEffectView;
  [(MTLumaDodgePillView *)self bounds];
  [(_MTLumaDodgePillLowQualityEffectView *)lowQualityEffectView setFrame:?];
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p dealloc'ed", &v2, 0xCu);
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (MTLumaDodgePillView)initWithFrame:(CGRect)a3 settings:(id)a4 graphicsQuality:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  if (!v13)
  {
    [MTLumaDodgePillView initWithFrame:a2 settings:self graphicsQuality:?];
  }

  v23.receiver = self;
  v23.super_class = MTLumaDodgePillView;
  v14 = [(MTPillView *)&v23 initWithFrame:v13 settings:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    *(v14 + 460) &= 0xF0u;
    if (a5)
    {
      v16 = 8;
    }

    else
    {
      v16 = 4;
    }

    *(v14 + 461) = *(v14 + 461) & 0xF3 | v16;
    objc_storeStrong(&v14->_settings, a4);
    v17 = +[MTLumaDodgePillDomain rootSettings];
    v18 = *(v15 + 416);
    *(v15 + 416) = v17;

    [*(v15 + 416) addKeyObserver:v15];
    *(v15 + 481) = [*(v15 + 416) disableLumaTracking];
    *(v15 + 461) = *(v15 + 461) & 0xCF | (16 * ([*(v15 + 416) overrideDodgeMode] & 3));
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
    v20 = *(v15 + 472);
    *(v15 + 472) = v19;

    [v15 _updateModeConfiguration];
    [v15 _updateStyle];
    [v15 _updateLumaTracking];
    v21 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_DEBUG))
    {
      [MTLumaDodgePillView initWithFrame:v15 settings:v21 graphicsQuality:?];
    }
  }

  return v15;
}

- (void)_updateBaseContentColor:(id)a3
{
  objc_storeStrong(&self->_baseContentColor, a3);
  v5 = a3;
  v6 = v5;
  v7 = *(self + 460);
  if ((v7 & 0xF) == 3)
  {
    v8 = 0.25;
  }

  else
  {
    if ((v7 << 28 >> 28) != 4)
    {
      v16 = *(MEMORY[0x277CD9DA0] + 32);
      v17 = *(MEMORY[0x277CD9DA0] + 48);
      v18 = *(MEMORY[0x277CD9DA0] + 16);
      v14 = *MEMORY[0x277CD9DA0];
      v15 = *(MEMORY[0x277CD9DA0] + 64);
      goto LABEL_7;
    }

    v8 = 1.025;
  }

  *&v9 = LODWORD(v8) | 0xBD99168700000000;
  *(&v9 + 1) = 0xBCE978D5BE1645A2;
  *&v10 = 3169417429;
  v18 = v9;
  LODWORD(v9) = 0;
  *(&v9 + 1) = v8;
  *(&v9 + 1) = 0xBE1645A2BD991687;
  *(&v10 + 1) = LODWORD(v8);
  v16 = v9;
  v17 = v10;
  v15 = xmmword_21E612020;
  v14 = xmmword_21E612030;
LABEL_7:
  v19[0] = v14;
  v19[1] = v18;
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v15;
  v11 = MTCGColorByApplyingCAColorMatrix([v5 CGColor], v19, 0);
  lowQualityEffectView = self->_lowQualityEffectView;
  v13 = [MEMORY[0x277D75348] colorWithCGColor:v11];
  [(_MTLumaDodgePillLowQualityEffectView *)lowQualityEffectView setContentColor:v13];

  CGColorRelease(v11);
}

- (void)_configureLowQualityEffectViewForMode:(unint64_t)a3 path:(id)a4
{
  v6 = a4;
  v21 = v6;
  if (a3 != 2)
  {
    [(_MTLumaDodgePillLowQualityEffectView *)self->_lowQualityEffectView removeFromSuperview];
    lowQualityEffectView = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    goto LABEL_13;
  }

  v7 = v6;
  v8 = self->_lowQualityEffectView;
  if (v7)
  {
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_13;
      }

      v8 = self->_lowQualityEffectView;
    }

    [(_MTLumaDodgePillLowQualityEffectView *)v8 removeFromSuperview];
    v9 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    v10 = [_MTLumaDodgePillCustomShapeLowQualityEffectView alloc];
    [(MTLumaDodgePillView *)self bounds];
    v11 = [(_MTLumaDodgePillCustomShapeLowQualityEffectView *)v10 initWithFrame:?];
    v12 = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    v13 = [MEMORY[0x277D75348] blackColor];
    v14 = [v13 colorWithAlphaComponent:0.0];
    [v12 setFillColor:{objc_msgSend(v14, "CGColor")}];

    [v12 setLineCap:*MEMORY[0x277CDA780]];
    [v12 setLineJoin:*MEMORY[0x277CDA7A0]];
    [v12 setLineWidth:3.5];
    v15 = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    [v15 setPath:{objc_msgSend(v21, "CGPath")}];

    v16 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = v11;
  }

  else
  {
    if (v8)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = self->_lowQualityEffectView;
    }

    [(_MTLumaDodgePillLowQualityEffectView *)v8 removeFromSuperview];
    v18 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    v19 = [_MTLumaDodgePillLowQualityEffectView alloc];
    [(MTLumaDodgePillView *)self bounds];
    v20 = [(_MTLumaDodgePillLowQualityEffectView *)v19 initWithFrame:?];
    v12 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = v20;
  }

  [(MTLumaDodgePillView *)self _updateBaseContentColor:self->_baseContentColor];
  [(MTLumaDodgePillView *)self addSubview:self->_lowQualityEffectView];
LABEL_13:
}

- (void)_updatePowerAnalysisOverrideSettings
{
  self->_disableLumaTracking = [(MTLumaDodgePillSettings *)self->_domainSettings disableLumaTracking];
  v3 = (*(self + 461) >> 4) & 3;
  v4 = [(MTLumaDodgePillSettings *)self->_domainSettings overrideDodgeMode];
  *(self + 461) = (16 * (v4 & 3)) | *(self + 461) & 0xCF;
  if ((v4 & 3) != v3)
  {
    [(MTLumaDodgePillView *)self _updateModeConfiguration];
    [(MTLumaDodgePillView *)self _updateStyle];
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4
{
  v32 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v6 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_DEBUG))
  {
    [(MTLumaDodgePillView *)self backdropLayer:v6 didChangeLuma:a4];
  }

  v7 = *(self + 460);
  lumaIsValid = self->_lumaIsValid;
  self->_luma = a4;
  v9 = [(MTLumaDodgePillView *)self layer];
  v10 = [v9 tracksLuma];

  if (!v10)
  {
    v14 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = a4;
      _os_log_impl(&dword_21E600000, v14, OS_LOG_TYPE_INFO, "pill=%p unexpected luma change (%.2f) - reporting unknown", v30, 0x16u);
    }

    v11 = *(self + 460) & 0x8F;
    goto LABEL_13;
  }

  self->_lumaIsValid = 1;
  [(MTLumaDodgePillSettings *)self->_settings brightLumaThreshold];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v11 = *(self + 460);
    if ((v11 & 0x70) == 0x20)
    {
      goto LABEL_14;
    }

    v12 = MTLogLuma;
    if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *v30 = 134218240;
    *&v30[4] = self;
    *&v30[12] = 2048;
    *&v30[14] = a4;
    v13 = "pill=%p responding to light luma change (%.2f)";
    goto LABEL_8;
  }

  [(MTLumaDodgePillSettings *)self->_settings darkLumaThreshold];
  v21 = BSFloatLessThanOrEqualToFloat();
  v11 = *(self + 460);
  if (v21)
  {
    if ((v11 & 0x70) != 0x10)
    {
      v12 = MTLogLuma;
      if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        *v30 = 134218240;
        *&v30[4] = self;
        *&v30[12] = 2048;
        *&v30[14] = a4;
        v22 = "pill=%p responding to dark luma change (%.2f)";
LABEL_29:
        _os_log_impl(&dword_21E600000, v12, OS_LOG_TYPE_INFO, v22, v30, 0x16u);
        goto LABEL_30;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 0x70) == 0)
  {
    if ((*(self + 230) & 0x380) != 0)
    {
      v23 = MTLogLuma;
      if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        v24 = (*(self + 230) << 6) >> 13;
        v25 = v23;
        v26 = NSStringFromMTLumaDodgePillBackgroundLuminance(v24);
        *v30 = 134218498;
        *&v30[4] = self;
        *&v30[12] = 2048;
        *&v30[14] = a4;
        *&v30[22] = 2114;
        v31 = v26;
        _os_log_impl(&dword_21E600000, v25, OS_LOG_TYPE_INFO, "pill=%p ambiguous initial luma (%.2f) - biased %{public}@", v30, 0x20u);
      }

      v11 = (*(self + 230) >> 3) & 0x70 | *(self + 460) & 0x8F;
      goto LABEL_13;
    }

    v27 = *(self + 460);
    if ((v27 & 0xF) == 4)
    {
      v12 = MTLogLuma;
      if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = a4;
      v22 = "pill=%p ambiguous initial luma (%.2f) - assuming dark since current style is white";
      goto LABEL_29;
    }

    if ((v27 << 28 >> 28) == 3)
    {
      v12 = MTLogLuma;
      if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = a4;
      v13 = "pill=%p ambiguous initial luma (%.2f) - assuming light since current style is black";
LABEL_8:
      _os_log_impl(&dword_21E600000, v12, OS_LOG_TYPE_INFO, v13, v30, 0x16u);
LABEL_9:
      v11 = *(self + 460) & 0x8F | 0x20;
LABEL_13:
      *(self + 460) = v11;
      goto LABEL_14;
    }

    [(MTLumaDodgePillSettings *)self->_settings initialLumaThreshold];
    v28 = BSFloatGreaterThanOrEqualToFloat();
    v12 = MTLogLuma;
    v29 = os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_9;
      }

      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = a4;
      v13 = "pill=%p ambiguous initial luma (%.2f) - defaulting light";
      goto LABEL_8;
    }

    if (v29)
    {
      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = a4;
      v22 = "pill=%p ambiguous initial luma (%.2f) - defaulting dark";
      goto LABEL_29;
    }

LABEL_30:
    v11 = *(self + 460) & 0x8F | 0x10;
    goto LABEL_13;
  }

LABEL_14:
  if (((v11 ^ v7) & 0x70) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);
    [WeakRetained lumaDodgePillDidDetectBackgroundLuminanceChange:self];
  }

  if ([(MTLumaDodgePillView *)self _dodgeMode:*v30]== 2)
  {
    v16 = BSFloatEqualToFloat();
    v17 = self->_lumaIsValid;
    if (!v16 || v17 != lumaIsValid)
    {
      luma = 0.5;
      if (v17)
      {
        luma = self->_luma;
      }

      v20 = [MEMORY[0x277D75348] colorWithWhite:luma alpha:1.0];
      [(MTLumaDodgePillView *)self _updateBaseContentColor:v20];
    }
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if (__supportedAnimationPropertyKey(v4))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3
{
  v4 = a3;
  if (__supportedAnimationPropertyKey(v4))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:v4];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(MTLumaDodgePillSettings *)self->_settings maxWidth:a3.width];
  v6 = v5;
  [(MTLumaDodgePillSettings *)self->_settings minWidth];
  if (v7 < width)
  {
    v7 = width;
  }

  if (v6 <= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  [(MTLumaDodgePillSettings *)self->_settings height];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(MTLumaDodgePillView *)self frame];
  v5 = NSStringFromCGRect(v11);
  v6 = NSStringFromMTLumaDodgePillStyle((*(self + 460) << 60) >> 60);
  v7 = NSStringFromMTLumaDodgePillBackgroundLuminance((2 * *(self + 460)) >> 5);
  v8 = [v3 stringWithFormat:@"<%@:%p frame=%@ style=%@ backgroundLuminance=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  bounceAnimationsInFlight = self->_bounceAnimationsInFlight;
  if (bounceAnimationsInFlight < 2)
  {
    self->_bounceAnimationsInFlight = 0;
    v6 = [(MTLumaDodgePillView *)self layer];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_bounceAnimationKeys;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 removeAnimationForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    bounceAnimationKeys = self->_bounceAnimationKeys;
    self->_bounceAnimationKeys = 0;
  }

  else
  {
    self->_bounceAnimationsInFlight = bounceAnimationsInFlight - 1;
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_domainSettings == a3)
  {
    BSDispatchMain();
  }
}

- (void)setStyle:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (a3 != (*(self + 460) << 60) >> 60)
  {
    v5 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      v6 = (*(self + 460) << 60) >> 60;
      v7 = v5;
      v8 = NSStringFromMTLumaDodgePillStyle(v6);
      v9 = NSStringFromMTLumaDodgePillStyle(a3);
      v10 = 134218498;
      v11 = self;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21E600000, v7, OS_LOG_TYPE_INFO, "pill=%p changing style from %{public}@ to %{public}@", &v10, 0x20u);
    }

    *(self + 460) = *(self + 460) & 0xF0 | a3 & 0xF;
    [(MTLumaDodgePillView *)self _updateStyle];
  }
}

- (void)setBackgroundLumninanceObserver:(id)a3
{
  obj = a3;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_backgroundLumninanceObserver, obj);
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)setBackgroundLuminanceBias:(int64_t)a3
{
  v3 = a3;
  BSDispatchQueueAssertMain();
  *(self + 230) = *(self + 230) & 0xFC7F | ((v3 & 7) << 7);
}

- (void)resetBackgroundLuminanceHysteresis
{
  v7 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_21E600000, v3, OS_LOG_TYPE_INFO, "pill=%p resetting luma hysteresis by request", &v5, 0xCu);
  }

  *(self + 460) &= 0x8Fu;
  if (self->_lumaIsValid)
  {
    v4 = [(MTLumaDodgePillView *)self layer];
    [(MTLumaDodgePillView *)self backdropLayer:v4 didChangeLuma:self->_luma];
  }
}

- (void)bounce
{
  BSDispatchQueueAssertMain();
  v3 = ++bounce___unique;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"bounce-%u.up", bounce___unique];
  v15 = [v4 copy];

  v5 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.y"];
  [v5 setAdditive:1];
  [v5 setMass:1.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:13.0];
  [v5 setFromValue:&unk_282FA5C48];
  [v5 setToValue:&unk_282FA5C58];
  v6 = *MEMORY[0x277CDA238];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  [v5 setRemovedOnCompletion:0];
  [v5 setDelegate:self];
  [v5 settlingDuration];
  [v5 setDuration:?];
  v7 = *MEMORY[0x277CDA080];
  [v5 setBeginTimeMode:*MEMORY[0x277CDA080]];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bounce-%u.dn", v3];
  v9 = [v8 copy];

  v10 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position.y"];
  [v10 setAdditive:1];
  [v10 setMass:1.0];
  [v10 setStiffness:300.0];
  [v10 setDamping:13.0];
  [v10 setFromValue:&unk_282FA5C48];
  [v10 setToValue:&unk_282FA5C68];
  [v10 setFillMode:v6];
  [v10 setRemovedOnCompletion:0];
  [v10 setDelegate:self];
  [v10 settlingDuration];
  [v10 setDuration:?];
  [v10 setBeginTime:0.2];
  [v10 setBeginTimeMode:v7];
  self->_bounceAnimationsInFlight += 2;
  bounceAnimationKeys = self->_bounceAnimationKeys;
  if (!bounceAnimationKeys)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v13 = self->_bounceAnimationKeys;
    self->_bounceAnimationKeys = v12;

    bounceAnimationKeys = self->_bounceAnimationKeys;
  }

  [(NSMutableArray *)bounceAnimationKeys addObject:v15];
  [(NSMutableArray *)self->_bounceAnimationKeys addObject:v9];
  v14 = [(MTLumaDodgePillView *)self layer];
  [v14 addAnimation:v5 forKey:v15];
  [v14 addAnimation:v10 forKey:v9];
}

+ (CGSize)suggestedSizeForContentWidth:(double)a3 withSettings:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  v8 = v7;
  v10 = v9;

  if (v8 <= v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    [v5 minWidth];
  }

  else
  {
    if (v8 < v10)
    {
      v8 = v10;
    }

    if (!BSFloatGreaterThanOrEqualToFloat())
    {
      [v5 minWidth];
      v15 = v14;
      [v5 maxWidth];
      v13 = v15 + (a3 - v11) * ((v16 - v15) / (v8 - v11));
      goto LABEL_12;
    }

    [v5 maxWidth];
  }

  v13 = v12;
LABEL_12:
  [v5 height];
  v18 = v17;

  v19 = v13;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)suggestedSizeForContentWidth:(double)a3
{
  v5 = objc_opt_class();
  settings = self->_settings;

  [v5 suggestedSizeForContentWidth:settings withSettings:a3];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setCustomPillShapePath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  objc_storeStrong(&self->_customPillShapePath, a3);
  [(MTLumaDodgePillView *)self _configureLowQualityEffectViewForMode:[(MTLumaDodgePillView *)self _dodgeMode] path:v15];
  lowQualityEffectView = self->_lowQualityEffectView;
  v8 = objc_opt_class();
  v9 = lowQualityEffectView;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
  if (v12 && !CGPathEqualToPath([v15 CGPath], objc_msgSend(v12, "path")))
  {
    if (v4)
    {
      v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
      v14 = [v12 presentationLayer];
      [v13 setFromValue:{objc_msgSend(v14, "path")}];

      [v13 setToValue:{objc_msgSend(v15, "CGPath")}];
      [v12 removeAnimationForKey:@"path"];
      [v12 addAnimation:v13 forKey:@"path"];
    }

    [v12 setPath:{objc_msgSend(v15, "CGPath")}];
  }
}

- (MTLumaDodgePillBackgroundLuminanceObserver)backgroundLumninanceObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);

  return WeakRetained;
}

- (void)initWithFrame:(uint64_t)a1 settings:(uint64_t)a2 graphicsQuality:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTLumaDodgePillView.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"settings != nil"}];
}

- (void)initWithFrame:(uint64_t)a1 settings:(NSObject *)a2 graphicsQuality:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p initialized", &v2, 0xCu);
}

- (void)backdropLayer:(double)a3 didChangeLuma:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p luma change (%.2f)", &v3, 0x16u);
}

@end