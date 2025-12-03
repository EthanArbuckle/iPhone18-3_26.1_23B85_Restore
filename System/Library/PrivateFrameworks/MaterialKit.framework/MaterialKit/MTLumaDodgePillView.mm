@interface MTLumaDodgePillView
+ (CGSize)suggestedSizeForContentWidth:(double)width withSettings:(id)settings;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)suggestedSizeForContentWidth:(double)width;
- (MTLumaDodgePillBackgroundLuminanceObserver)backgroundLumninanceObserver;
- (MTLumaDodgePillView)initWithFrame:(CGRect)frame settings:(id)settings graphicsQuality:(int64_t)quality;
- (NSString)description;
- (unint64_t)_dodgeMode;
- (void)_configureLowQualityEffectViewForMode:(unint64_t)mode path:(id)path;
- (void)_updateBaseContentColor:(id)color;
- (void)_updateLumaTracking;
- (void)_updateModeConfiguration;
- (void)_updatePowerAnalysisOverrideSettings;
- (void)_updateStyle;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
- (void)bounce;
- (void)dealloc;
- (void)layoutSubviews;
- (void)resetBackgroundLuminanceHysteresis;
- (void)setBackgroundLuminanceBias:(int64_t)bias;
- (void)setBackgroundLumninanceObserver:(id)observer;
- (void)setCustomPillShapePath:(id)path animated:(BOOL)animated;
- (void)setStyle:(int64_t)style;
- (void)settings:(id)settings changedValueForKey:(id)key;
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
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  if (_dodgeMode != 2)
  {
    if (_dodgeMode != 1)
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

      layer = [(MTLumaDodgePillView *)self layer];
      layer2 = [MEMORY[0x277D75348] colorWithWhite:v9 alpha:v10];
      [layer setContentsMultiplyColor:{objc_msgSend(layer2, "CGColor")}];
      goto LABEL_21;
    }

    settings = self->_settings;
    v5 = (*(self + 460) << 28 >> 28);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings blackSettings];
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings whiteSettings];
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 1)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings thinSettings];
        goto LABEL_20;
      }

      if (v5 == 2)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings graySettings];
LABEL_20:
        layer = blackSettings;
        layer2 = [(MTLumaDodgePillView *)self layer];
        v12 = MEMORY[0x277CCABB0];
        [(MTLumaDodgePillSettings *)self->_settings colorAddWhiteness];
        v14 = v13;
        [layer colorAddOpacity];
        v16 = [v12 numberWithDouble:v14 * v15];
        [layer2 setValue:v16 forKeyPath:@"filters.homeAffordanceBase.inputAddWhite"];

        v17 = MEMORY[0x277CCABB0];
        [layer lumaMapPlusColorOpacity];
        v18 = [v17 numberWithDouble:?];
        [layer2 setValue:v18 forKeyPath:@"filters.homeAffordanceBase.inputAmount"];

        v19 = MEMORY[0x277CCABB0];
        [layer overlayBlendOpacity];
        v20 = [v19 numberWithDouble:?];
        [layer2 setValue:v20 forKeyPath:@"filters.homeAffordanceBase.inputOverlayOpacity"];

        v21 = MEMORY[0x277CCABB0];
        [layer blur];
        v22 = [v21 numberWithDouble:?];
        [layer2 setValue:v22 forKeyPath:@"filters.gaussianBlur.inputRadius"];

        v23 = MEMORY[0x277CCABB0];
        [layer brightness];
        v24 = [v23 numberWithDouble:?];
        [layer2 setValue:v24 forKeyPath:@"filters.colorBrightness.inputAmount"];

        v25 = MEMORY[0x277CCABB0];
        [layer saturation];
        v26 = [v25 numberWithDouble:?];
        [layer2 setValue:v26 forKeyPath:@"filters.colorSaturate.inputAmount"];

LABEL_21:

        return;
      }
    }

    blackSettings = [(MTLumaDodgePillSettings *)settings noneSettings];
    goto LABEL_20;
  }

  baseContentColor = self->_baseContentColor;

  [(MTLumaDodgePillView *)self _updateBaseContentColor:baseContentColor];
}

- (void)_updateModeConfiguration
{
  v29[4] = *MEMORY[0x277D85DE8];
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  [(MTLumaDodgePillView *)self _configureLowQualityEffectViewForMode:_dodgeMode path:self->_customPillShapePath];
  layer = [(MTLumaDodgePillView *)self layer];
  v5 = layer;
  if (_dodgeMode == 2)
  {
    [layer setFilters:0];

    layer2 = [(MTLumaDodgePillView *)self layer];
    [layer2 setContents:0];

    layer3 = [(MTLumaDodgePillView *)self layer];
    [layer3 setContentsMultiplyColor:0];

    layer4 = [(MTLumaDodgePillView *)self layer];
    [layer4 setEnabled:1];

    layer5 = [(MTLumaDodgePillView *)self layer];
    [layer5 setCaptureOnly:1];

    layer6 = [(MTLumaDodgePillView *)self layer];
    [layer6 setScale:0.5];
  }

  else
  {
    if (_dodgeMode == 1)
    {
      [layer setContents:0];

      layer7 = [(MTLumaDodgePillView *)self layer];
      [layer7 setContentsMultiplyColor:0];

      layer8 = [(MTLumaDodgePillView *)self layer];
      [layer8 setScale:1.0];

      layer9 = [(MTLumaDodgePillView *)self layer];
      [layer9 setEnabled:1];

      layer10 = [(MTLumaDodgePillView *)self layer];
      [layer10 setCaptureOnly:0];

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
      layer11 = [(MTLumaDodgePillView *)self layer];
      v29[0] = v10;
      v29[1] = v14;
      v29[2] = v15;
      v29[3] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
      [layer11 setFilters:v18];

      return;
    }

    [layer setScale:1.0];

    layer12 = [(MTLumaDodgePillView *)self layer];
    [layer12 setFilters:0];

    layer13 = [(MTLumaDodgePillView *)self layer];
    [layer13 setEnabled:0];

    v31.width = 1.0;
    v31.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v31, 1, 1.0);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 1.0;
    v32.size.height = 1.0;
    UIRectFill(v32);
    layer6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    layer14 = [(MTLumaDodgePillView *)self layer];
    v27 = layer6;
    [layer14 setContents:{objc_msgSend(layer6, "CGImage")}];
  }
}

- (void)_updateLumaTracking
{
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  v4 = _dodgeMode;
  if (!self->_disableLumaTracking && (_dodgeMode == 2 || (WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver), WeakRetained, WeakRetained)))
  {
    layer = [(MTLumaDodgePillView *)self layer];
    [layer setTracksLuma:1];
  }

  else
  {
    layer2 = [(MTLumaDodgePillView *)self layer];
    [layer2 setTracksLuma:0];

    self->_lumaIsValid = 0;
    *(self + 460) &= 0x8Fu;
    if (v4 != 2)
    {
      return;
    }

    layer = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
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
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p dealloc'ed", &v2, 0xCu);
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (MTLumaDodgePillView)initWithFrame:(CGRect)frame settings:(id)settings graphicsQuality:(int64_t)quality
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  if (!settingsCopy)
  {
    [MTLumaDodgePillView initWithFrame:a2 settings:self graphicsQuality:?];
  }

  v23.receiver = self;
  v23.super_class = MTLumaDodgePillView;
  height = [(MTPillView *)&v23 initWithFrame:settingsCopy settings:x, y, width, height];
  v15 = height;
  if (height)
  {
    *(height + 460) &= 0xF0u;
    if (quality)
    {
      v16 = 8;
    }

    else
    {
      v16 = 4;
    }

    *(height + 461) = *(height + 461) & 0xF3 | v16;
    objc_storeStrong(&height->_settings, settings);
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

- (void)_updateBaseContentColor:(id)color
{
  objc_storeStrong(&self->_baseContentColor, color);
  colorCopy = color;
  v6 = colorCopy;
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
  v11 = MTCGColorByApplyingCAColorMatrix([colorCopy CGColor], v19, 0);
  lowQualityEffectView = self->_lowQualityEffectView;
  v13 = [MEMORY[0x277D75348] colorWithCGColor:v11];
  [(_MTLumaDodgePillLowQualityEffectView *)lowQualityEffectView setContentColor:v13];

  CGColorRelease(v11);
}

- (void)_configureLowQualityEffectViewForMode:(unint64_t)mode path:(id)path
{
  pathCopy = path;
  v21 = pathCopy;
  if (mode != 2)
  {
    [(_MTLumaDodgePillLowQualityEffectView *)self->_lowQualityEffectView removeFromSuperview];
    lowQualityEffectView = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    goto LABEL_13;
  }

  v7 = pathCopy;
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
    shapeLayer = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v14 = [blackColor colorWithAlphaComponent:0.0];
    [shapeLayer setFillColor:{objc_msgSend(v14, "CGColor")}];

    [shapeLayer setLineCap:*MEMORY[0x277CDA780]];
    [shapeLayer setLineJoin:*MEMORY[0x277CDA7A0]];
    [shapeLayer setLineWidth:3.5];
    shapeLayer2 = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    [shapeLayer2 setPath:{objc_msgSend(v21, "CGPath")}];

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
    shapeLayer = self->_lowQualityEffectView;
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
  overrideDodgeMode = [(MTLumaDodgePillSettings *)self->_domainSettings overrideDodgeMode];
  *(self + 461) = (16 * (overrideDodgeMode & 3)) | *(self + 461) & 0xCF;
  if ((overrideDodgeMode & 3) != v3)
  {
    [(MTLumaDodgePillView *)self _updateModeConfiguration];
    [(MTLumaDodgePillView *)self _updateStyle];
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  v32 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v6 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_DEBUG))
  {
    [(MTLumaDodgePillView *)self backdropLayer:v6 didChangeLuma:luma];
  }

  v7 = *(self + 460);
  lumaIsValid = self->_lumaIsValid;
  self->_luma = luma;
  layer = [(MTLumaDodgePillView *)self layer];
  tracksLuma = [layer tracksLuma];

  if (!tracksLuma)
  {
    v14 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = luma;
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
    *&v30[14] = luma;
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
        *&v30[14] = luma;
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
        *&v30[14] = luma;
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
      *&v30[14] = luma;
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
      *&v30[14] = luma;
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
      *&v30[14] = luma;
      v13 = "pill=%p ambiguous initial luma (%.2f) - defaulting light";
      goto LABEL_8;
    }

    if (v29)
    {
      *v30 = 134218240;
      *&v30[4] = self;
      *&v30[12] = 2048;
      *&v30[14] = luma;
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(MTLumaDodgePillSettings *)self->_settings maxWidth:fits.width];
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v18 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  bounceAnimationsInFlight = self->_bounceAnimationsInFlight;
  if (bounceAnimationsInFlight < 2)
  {
    self->_bounceAnimationsInFlight = 0;
    layer = [(MTLumaDodgePillView *)self layer];
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

          [layer removeAnimationForKey:{*(*(&v13 + 1) + 8 * i), v13}];
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_domainSettings == settings)
  {
    BSDispatchMain();
  }
}

- (void)setStyle:(int64_t)style
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (style != (*(self + 460) << 60) >> 60)
  {
    v5 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      v6 = (*(self + 460) << 60) >> 60;
      v7 = v5;
      v8 = NSStringFromMTLumaDodgePillStyle(v6);
      v9 = NSStringFromMTLumaDodgePillStyle(style);
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21E600000, v7, OS_LOG_TYPE_INFO, "pill=%p changing style from %{public}@ to %{public}@", &v10, 0x20u);
    }

    *(self + 460) = *(self + 460) & 0xF0 | style & 0xF;
    [(MTLumaDodgePillView *)self _updateStyle];
  }
}

- (void)setBackgroundLumninanceObserver:(id)observer
{
  obj = observer;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_backgroundLumninanceObserver, obj);
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)setBackgroundLuminanceBias:(int64_t)bias
{
  biasCopy = bias;
  BSDispatchQueueAssertMain();
  *(self + 230) = *(self + 230) & 0xFC7F | ((biasCopy & 7) << 7);
}

- (void)resetBackgroundLuminanceHysteresis
{
  v7 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21E600000, v3, OS_LOG_TYPE_INFO, "pill=%p resetting luma hysteresis by request", &v5, 0xCu);
  }

  *(self + 460) &= 0x8Fu;
  if (self->_lumaIsValid)
  {
    layer = [(MTLumaDodgePillView *)self layer];
    [(MTLumaDodgePillView *)self backdropLayer:layer didChangeLuma:self->_luma];
  }
}

- (void)bounce
{
  BSDispatchQueueAssertMain();
  v3 = ++bounce___unique;
  bounce___unique = [MEMORY[0x277CCACA8] stringWithFormat:@"bounce-%u.up", bounce___unique];
  v15 = [bounce___unique copy];

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
  layer = [(MTLumaDodgePillView *)self layer];
  [layer addAnimation:v5 forKey:v15];
  [layer addAnimation:v10 forKey:v9];
}

+ (CGSize)suggestedSizeForContentWidth:(double)width withSettings:(id)settings
{
  settingsCopy = settings;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
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
    [settingsCopy minWidth];
  }

  else
  {
    if (v8 < v10)
    {
      v8 = v10;
    }

    if (!BSFloatGreaterThanOrEqualToFloat())
    {
      [settingsCopy minWidth];
      v15 = v14;
      [settingsCopy maxWidth];
      v13 = v15 + (width - v11) * ((v16 - v15) / (v8 - v11));
      goto LABEL_12;
    }

    [settingsCopy maxWidth];
  }

  v13 = v12;
LABEL_12:
  [settingsCopy height];
  v18 = v17;

  v19 = v13;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)suggestedSizeForContentWidth:(double)width
{
  v5 = objc_opt_class();
  settings = self->_settings;

  [v5 suggestedSizeForContentWidth:settings withSettings:width];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setCustomPillShapePath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  objc_storeStrong(&self->_customPillShapePath, path);
  [(MTLumaDodgePillView *)self _configureLowQualityEffectViewForMode:[(MTLumaDodgePillView *)self _dodgeMode] path:pathCopy];
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

  shapeLayer = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
  if (shapeLayer && !CGPathEqualToPath([pathCopy CGPath], objc_msgSend(shapeLayer, "path")))
  {
    if (animatedCopy)
    {
      v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
      presentationLayer = [shapeLayer presentationLayer];
      [v13 setFromValue:{objc_msgSend(presentationLayer, "path")}];

      [v13 setToValue:{objc_msgSend(pathCopy, "CGPath")}];
      [shapeLayer removeAnimationForKey:@"path"];
      [shapeLayer addAnimation:v13 forKey:@"path"];
    }

    [shapeLayer setPath:{objc_msgSend(pathCopy, "CGPath")}];
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