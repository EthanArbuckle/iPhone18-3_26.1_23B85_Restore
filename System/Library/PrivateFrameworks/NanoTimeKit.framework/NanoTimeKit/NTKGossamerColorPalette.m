@interface NTKGossamerColorPalette
- ($1AB5FA073B851C12C2339EC22442E995)approximateComplicationPositions;
- (BOOL)isCuratedColor;
- (BOOL)isSeasonalGradientColor;
- (NSArray)backgroundGradientColors;
- (NSNumber)editingComplicationsFraction;
- (NSNumber)foregroundGradientFraction;
- (NSNumber)imageViewFraction;
- (NSNumber)monochromeFraction;
- (NSNumber)scaleFactor;
- (NSNumber)tintedFraction;
- (NTKGossamerColorPalette)init;
- (UIColor)accentColor;
- (UIColor)bottomAccentColor;
- (UIColor)bottomApproximateBackgroundColor;
- (UIColor)centerAccentColor;
- (UIColor)centerApproximateBackgroundColor;
- (UIColor)dateLabelAccentColor;
- (UIColor)dateLabelTextColor;
- (UIColor)dialColor;
- (UIColor)digitalTimeLabelColor;
- (UIColor)foregroundColor;
- (UIColor)hourMinuteHandFillColor;
- (UIColor)hourTickColor;
- (UIColor)largeTimeTritiumFillColor;
- (UIColor)largeTimeTritiumOutlineColor;
- (UIColor)minuteTickColor;
- (UIColor)secondHandColor;
- (UIColor)secondTickActiveColor;
- (UIColor)secondTickInactiveColor;
- (UIColor)smallTimeTritiumOutlineColor;
- (UIColor)swatchComplicationPlaceholderColor;
- (UIColor)timeLabelColor;
- (UIColor)topAccentColor;
- (UIColor)topApproximateBackgroundColor;
- (id)_starlightBackgroundColors;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)swatchImageForSize:(CGSize)a3;
- (int64_t)curatedNumber;
- (void)_setApproximateComplicationBackgroundColors;
- (void)configurationDidChange:(id)a3;
- (void)invalidateCachedValues;
- (void)resolveColorsIfNeeded;
@end

@implementation NTKGossamerColorPalette

- (NTKGossamerColorPalette)init
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = NTKGossamerColorPalette;
  v4 = [(NTKFaceColorPalette *)&v7 initWithFaceClass:v3];
  v5 = v4;
  if (v4)
  {
    [(NTKGossamerColorPalette *)v4 invalidateCachedValues];
  }

  return v5;
}

- (void)invalidateCachedValues
{
  self->_isDirty = 1;
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f-%f-%f", *&self->_approximateComplicationPositions.top, *&self->_approximateComplicationPositions.center, *&self->_approximateComplicationPositions.bottom];
    v5 = MEMORY[0x277CCACA8];
    v10.receiver = self;
    v10.super_class = NTKGossamerColorPalette;
    v6 = [(NTKFaceColorPalette *)&v10 identifier];
    v7 = [v5 stringWithFormat:@"%@-%lu-%lu-%@", v6, self->_backgroundStyle, self->_isEditingComplications, v4];
    v8 = self->_cachedIdentifier;
    self->_cachedIdentifier = v7;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NTKGossamerColorPalette;
  v4 = [(NTKFaceColorPalette *)&v7 copyWithZone:a3];
  [v4 setBackgroundStyle:self->_backgroundStyle];
  [v4 setIsEditingComplications:self->_isEditingComplications];
  bottom = self->_approximateComplicationPositions.bottom;
  *(v4 + 360) = *&self->_approximateComplicationPositions.top;
  *(v4 + 47) = bottom;
  [v4 invalidateCachedValues];
  return v4;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKGossamerColorPalette *)self isCuratedColor])
  {
    if (swatchImageForSize__onceToken != -1)
    {
      [NTKGossamerColorPalette swatchImageForSize:];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [(NTKFaceColorPalette *)self configuration];
    v8 = [v7 uniqueId];
    v17.width = width;
    v17.height = height;
    v9 = NSStringFromCGSize(v17);
    v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];

    v11 = [swatchImageForSize__swatches objectForKey:v10];
    if (!v11)
    {
      v12 = [(NTKGossamerColorPalette *)self gradientTopColor];
      v13 = [(NTKGossamerColorPalette *)self gradientBottomColor];
      v11 = NTKSwatchTwoColorGradientImage(v12, v13, 0, 0.0, 1.0, width, height);
      [swatchImageForSize__swatches setObject:v11 forKey:v10];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKGossamerColorPalette;
    v11 = [(NTKFaceColorPalette *)&v15 swatchImageForSize:width, height];
  }

  return v11;
}

void __46__NTKGossamerColorPalette_swatchImageForSize___block_invoke()
{
  v0 = objc_opt_new();
  v1 = swatchImageForSize__swatches;
  swatchImageForSize__swatches = v0;
}

- (BOOL)isCuratedColor
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 collectionName];
  v4 = [v3 hasPrefix:@"gossamer"];

  return v4;
}

- (BOOL)isSeasonalGradientColor
{
  v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v4 = [v3 collectionName];
  if ([v4 isEqualToString:@"seasons.fall2023"])
  {
    v5 = [(NTKFaceColorPalette *)self pigmentEditOption];
    v6 = [v5 fullname];
    v7 = [v6 containsString:@"seasons.fall2019.alaskanBlue"] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int64_t)curatedNumber
{
  if (!curatedNumber_formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v4 = curatedNumber_formatter;
    curatedNumber_formatter = v3;
  }

  v5 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v6 = [v5 identifier];

  if ([v6 hasPrefix:@"gossamer.color"])
  {
    v7 = [v6 substringFromIndex:{objc_msgSend(@"gossamer.color", "length")}];
    v8 = [curatedNumber_formatter numberFromString:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 integerValue];
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

  return v10;
}

- (id)_starlightBackgroundColors
{
  if (_starlightBackgroundColors_onceToken[0] != -1)
  {
    [NTKGossamerColorPalette _starlightBackgroundColors];
  }

  v3 = _starlightBackgroundColors___colors;

  return v3;
}

void __53__NTKGossamerColorPalette__starlightBackgroundColors__block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithRed:0.77254902 green:0.658823529 blue:0.443137255 alpha:1.0];
  v6[0] = v0;
  v1 = [MEMORY[0x277D75348] colorWithRed:0.741176471 green:0.611764706 blue:0.4 alpha:1.0];
  v6[1] = v1;
  v2 = [MEMORY[0x277D75348] colorWithRed:0.682352941 green:0.51372549 blue:0.278431373 alpha:1.0];
  v6[2] = v2;
  v3 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.521568627 blue:0.309803922 alpha:1.0];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v5 = _starlightBackgroundColors___colors;
  _starlightBackgroundColors___colors = v4;
}

- (void)configurationDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKGossamerColorPalette;
  [(NTKFaceColorPalette *)&v4 configurationDidChange:a3];
  [(NTKGossamerColorPalette *)self invalidateCachedValues];
}

- (void)resolveColorsIfNeeded
{
  v132[1] = *MEMORY[0x277D85DE8];
  if (!self->_isDirty)
  {
    return;
  }

  self->_isDirty = 0;
  v3 = [(NTKFaceColorPalette *)self isTritium];
  backgroundStyle = self->_backgroundStyle;
  v120 = v3;
  if (backgroundStyle)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1;
  }

  isEditingComplications = self->_isEditingComplications;
  v6 = [(NTKGossamerColorPalette *)self isCuratedColor];
  v125 = [(NTKGossamerColorPalette *)self isSeasonalGradientColor];
  v128 = v6;
  if (v6)
  {
    v118 = [(NTKGossamerColorPalette *)self curatedNumber];
  }

  else
  {
    v118 = 0;
  }

  v127 = [(NTKFaceColorPalette *)self isMulticolor];
  v7 = [(NTKFaceColorPalette *)self hasPrimaryColorRange];
  if (v5)
  {
    v8 = &unk_284189998;
  }

  else
  {
    v8 = &unk_284189988;
  }

  objc_storeStrong(&self->_tintedFraction, v8);
  v9 = [(NTKGossamerColorPalette *)self inputColor];
  if (!v7)
  {
    if (!isEditingComplications)
    {
      v15 = [MEMORY[0x277D75348] whiteColor];
      CLKContrastRatioForColors();
      v12 = v16;

      v122 = 0;
      v124 = 0;
      v13 = 2.7;
      goto LABEL_18;
    }

    v122 = 0;
    v124 = 0;
LABEL_16:
    v14 = 1;
    goto LABEL_19;
  }

  v10 = [(NTKGossamerColorPalette *)self rangeLightColor];
  [(NTKGossamerColorPalette *)self rangeDarkColor];
  v124 = v122 = v10;
  if (isEditingComplications)
  {
    goto LABEL_16;
  }

  CLKContrastRatioForColors();
  v12 = v11;
  CLKContrastRatioForColors();
LABEL_18:
  v14 = v12 > v13;
LABEL_19:
  v123 = v14;
  if (v5)
  {
    if (self->_isSwatchPreview)
    {
      [MEMORY[0x277D75348] colorWithWhite:0.0666666667 alpha:1.0];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v18 = ;
    objc_storeStrong(&self->_backgroundColor, v18);

    v19 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    foregroundColor = self->_foregroundColor;
    self->_foregroundColor = v19;

    if (v128)
    {
      v21 = MEMORY[0x277D75348];
    }

    else
    {
      if (!v125 && !v127)
      {
        v22 = v9;
        goto LABEL_32;
      }

      v21 = MEMORY[0x277D75348];
    }

    v22 = [v21 whiteColor];
LABEL_32:
    accentColor = self->_accentColor;
    self->_accentColor = v22;
    v24 = 0.05;
    goto LABEL_44;
  }

  objc_storeStrong(&self->_backgroundColor, v9);
  if (v128 || v127 || v125)
  {
    v17 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    if (v123)
    {
      v25 = 0.9;
    }

    else
    {
      v25 = 0.1;
    }

    v17 = [MEMORY[0x277D75348] colorWithWhite:v25 alpha:1.0];
  }

  v26 = self->_foregroundColor;
  self->_foregroundColor = v17;

  if (v127)
  {
    v27 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
LABEL_43:
    accentColor = self->_accentColor;
    self->_accentColor = v27;
    v24 = 0.3;
    goto LABEL_44;
  }

  if (v128 || v125)
  {
    v27 = v9;
    goto LABEL_43;
  }

  if (!v7)
  {
    v27 = NTKInterpolateBetweenColors();
    goto LABEL_43;
  }

  if (v123)
  {
    v60 = v122;
  }

  else
  {
    v60 = v124;
  }

  v116 = v60;
  accentColor = self->_accentColor;
  self->_accentColor = v116;
  v24 = 0.3;
LABEL_44:

  v28 = [(UIColor *)self->_foregroundColor colorWithAlphaComponent:v24];
  swatchComplicationPlaceholderColor = self->_swatchComplicationPlaceholderColor;
  self->_swatchComplicationPlaceholderColor = v28;

  if (self->_isSwatchPreview)
  {
    v30 = MEMORY[0x277CCABB0];
    +[NTKGossamerColorPalette contentScaleForTintedBackground];
    v31 = [v30 numberWithDouble:?];
  }

  else
  {
    if (backgroundStyle)
    {
      v32 = MEMORY[0x277CCABB0];
      +[NTKGossamerColorPalette contentScaleForTintedBackground];
      v33 = [v32 numberWithDouble:?];
      scaleFactor = self->_scaleFactor;
      self->_scaleFactor = v33;

      v35 = !v127;
      goto LABEL_53;
    }

    v31 = &unk_284189988;
  }

  v36 = self->_scaleFactor;
  self->_scaleFactor = v31;

  v37 = v127;
  v35 = !v127;
  if (backgroundStyle)
  {
    v37 = 0;
  }

  if (v37)
  {
    v119 = 0;
    v38 = &unk_284189998;
    goto LABEL_54;
  }

LABEL_53:
  v119 = 1;
  v38 = &unk_284189988;
LABEL_54:
  monochromeFraction = self->_monochromeFraction;
  self->_monochromeFraction = v38;

  if ((v5 | v35))
  {
    v40 = &unk_284189998;
  }

  else
  {
    v40 = &unk_284189988;
  }

  imageViewFraction = self->_imageViewFraction;
  self->_imageViewFraction = v40;

  if (self->_isEditingComplications)
  {
    v42 = &unk_284189988;
  }

  else
  {
    v42 = &unk_284189998;
  }

  objc_storeStrong(&self->_editingComplicationsFraction, v42);
  v121 = v9;
  if ((v128 & v5) == 1)
  {
    foregroundGradientFraction = self->_foregroundGradientFraction;
LABEL_63:
    self->_foregroundGradientFraction = &unk_284189988;
    goto LABEL_65;
  }

  foregroundGradientFraction = self->_foregroundGradientFraction;
  if ((v125 & v5) == 1)
  {
    goto LABEL_63;
  }

  self->_foregroundGradientFraction = &unk_284189998;
LABEL_65:

  v132[0] = self->_backgroundColor;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:1];
  backgroundGradientColors = self->_backgroundGradientColors;
  self->_backgroundGradientColors = v44;

  objc_storeStrong(&self->_topAccentColor, self->_accentColor);
  objc_storeStrong(&self->_centerAccentColor, self->_accentColor);
  objc_storeStrong(&self->_bottomAccentColor, self->_accentColor);
  if (v128)
  {
    if ((v5 & 1) == 0)
    {
      if (v118 == 2)
      {
        v46 = [(NTKGossamerColorPalette *)self _starlightBackgroundColors];
        v47 = self->_backgroundGradientColors;
        self->_backgroundGradientColors = v46;
      }

      else
      {
        v47 = [(NTKGossamerColorPalette *)self gradientTopColor];
        v131[0] = v47;
        v54 = [(NTKGossamerColorPalette *)self gradientMidColor];
        v131[1] = v54;
        v55 = [(NTKGossamerColorPalette *)self gradientBottomColor];
        v131[2] = v55;
        v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:3];
        v57 = self->_backgroundGradientColors;
        self->_backgroundGradientColors = v56;
      }

      goto LABEL_83;
    }

LABEL_71:
    v48 = [(NTKGossamerColorPalette *)self backgroundOffGradientTopColor];
    topAccentColor = self->_topAccentColor;
    self->_topAccentColor = v48;

    v50 = [(NTKGossamerColorPalette *)self backgroundOffGradientMidColor];
    centerAccentColor = self->_centerAccentColor;
    self->_centerAccentColor = v50;

    v52 = [(NTKGossamerColorPalette *)self backgroundOffGradientBottomColor];
    bottomAccentColor = self->_bottomAccentColor;
    self->_bottomAccentColor = v52;

LABEL_85:
    [(NTKGossamerColorPalette *)self _setApproximateComplicationBackgroundColors];
    v69 = v9;
    v70 = v122;
    v71 = 0x277D75000;
    goto LABEL_87;
  }

  if (!v125)
  {
    goto LABEL_84;
  }

  if (v5)
  {
    goto LABEL_71;
  }

  v58 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v59 = [v58 fullname];
  if ([v59 isEqualToString:@"seasons.fall2023.mulberry"])
  {
  }

  else
  {
    v61 = [(NTKFaceColorPalette *)self pigmentEditOption];
    v62 = [v61 fullname];
    v117 = [v62 isEqualToString:@"seasons.fall2023.winterBlue"];

    if (!v117)
    {
      v47 = [(NTKGossamerColorPalette *)self gradientTopColor];
      v129[0] = v47;
      v63 = [(NTKGossamerColorPalette *)self gradientMidColor];
      v129[1] = v63;
      v66 = [(NTKGossamerColorPalette *)self gradientBottomColor];
      v129[2] = v66;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:3];
      v68 = self->_backgroundGradientColors;
      self->_backgroundGradientColors = v67;

      goto LABEL_82;
    }
  }

  v47 = [(NTKGossamerColorPalette *)self gradientTopColor];
  v130[0] = v47;
  v63 = [(NTKGossamerColorPalette *)self gradientBottomColor];
  v130[1] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
  v65 = self->_backgroundGradientColors;
  self->_backgroundGradientColors = v64;

LABEL_82:
LABEL_83:

LABEL_84:
  if ((v35 | v5))
  {
    goto LABEL_85;
  }

  v71 = 0x277D75000uLL;
  v72 = [MEMORY[0x277D75348] grayColor];
  topApproximateBackgroundColor = self->_topApproximateBackgroundColor;
  self->_topApproximateBackgroundColor = v72;

  v74 = [MEMORY[0x277D75348] grayColor];
  centerApproximateBackgroundColor = self->_centerApproximateBackgroundColor;
  self->_centerApproximateBackgroundColor = v74;

  v76 = [MEMORY[0x277D75348] grayColor];
  bottomApproximateBackgroundColor = self->_bottomApproximateBackgroundColor;
  self->_bottomApproximateBackgroundColor = v76;

  v69 = v121;
  v70 = v122;
LABEL_87:
  if (!(v5 & 1 | !isEditingComplications))
  {
    v78 = [*(v71 + 840) blackColor];
    v79 = NTKInterpolateBetweenColors();
    v80 = self->_topApproximateBackgroundColor;
    self->_topApproximateBackgroundColor = v79;

    v81 = [*(v71 + 840) blackColor];
    v82 = NTKInterpolateBetweenColors();
    v83 = self->_centerApproximateBackgroundColor;
    self->_centerApproximateBackgroundColor = v82;

    v84 = [*(v71 + 840) blackColor];
    v85 = NTKInterpolateBetweenColors();
    v86 = self->_bottomApproximateBackgroundColor;
    self->_bottomApproximateBackgroundColor = v85;
  }

  if (v5 & 1 | !v7)
  {
    v87 = [(UIColor *)self->_foregroundColor colorWithAlphaComponent:0.2];
    modularCompactDialBackgroundColor = self->_modularCompactDialBackgroundColor;
    self->_modularCompactDialBackgroundColor = v87;

    objc_storeStrong(&self->_modularCompactDialForegroundPrimaryColor, self->_foregroundColor);
    v89 = self->_foregroundColor;
    modularCompactDialDigitalTimeColor = self->_modularCompactDialDigitalTimeColor;
    self->_modularCompactDialDigitalTimeColor = v89;
  }

  else
  {
    if (v123)
    {
      v91 = v70;
    }

    else
    {
      v91 = v124;
    }

    if (v123)
    {
      v92 = v124;
    }

    else
    {
      v92 = v70;
    }

    objc_storeStrong(&self->_modularCompactDialBackgroundColor, v91);
    objc_storeStrong(&self->_modularCompactDialForegroundPrimaryColor, v92);
    v93 = *(v71 + 840);
    if (v123)
    {
      [v93 blackColor];
    }

    else
    {
      [v93 whiteColor];
    }
    modularCompactDialDigitalTimeColor = ;
    objc_storeStrong(&self->_modularCompactDialDigitalTimeColor, modularCompactDialDigitalTimeColor);
  }

  v94 = [(UIColor *)self->_modularCompactDialForegroundPrimaryColor colorWithAlphaComponent:0.4];
  p_modularCompactDialForegroundSecondaryColor = &self->_modularCompactDialForegroundSecondaryColor;
  modularCompactDialForegroundSecondaryColor = self->_modularCompactDialForegroundSecondaryColor;
  self->_modularCompactDialForegroundSecondaryColor = v94;

  if (v120)
  {
    v97 = [*(v71 + 840) colorWithWhite:0.4 alpha:1.0];
    p_modularCompactDialForegroundSecondaryColor = &self->_modularCompactSecondTickActiveColor;
  }

  else
  {
    v97 = self->_modularCompactDialForegroundPrimaryColor;
  }

  modularCompactSecondTickActiveColor = self->_modularCompactSecondTickActiveColor;
  self->_modularCompactSecondTickActiveColor = v97;

  objc_storeStrong(&self->_modularCompactSecondTickInactiveColor, *p_modularCompactDialForegroundSecondaryColor);
  if (v127)
  {
    v99 = [*(v71 + 840) systemOrangeColor];
  }

  else
  {
    v99 = self->_accentColor;
  }

  modularCompactDialSecondHandColor = self->_modularCompactDialSecondHandColor;
  self->_modularCompactDialSecondHandColor = v99;

  if ((v119 & 1) == 0)
  {
    v101 = [*(v71 + 840) systemRedColor];
    goto LABEL_112;
  }

  if (!(v5 & 1 | !v128) && (v118 | 4) == 6)
  {
    v101 = [*(v71 + 840) whiteColor];
LABEL_112:
    infographModularDateLabelColor = self->_infographModularDateLabelColor;
    self->_infographModularDateLabelColor = v101;
    goto LABEL_114;
  }

  v103 = self->_topAccentColor;
  infographModularDateLabelColor = self->_infographModularDateLabelColor;
  self->_infographModularDateLabelColor = v103;
LABEL_114:

  if (v125)
  {
    v104 = *(v71 + 840);
  }

  else
  {
    v104 = *(v71 + 840);
    if (((v5 | (v128 || v127 || v123)) & 1) == 0)
    {
      v105 = [v104 blackColor];
      goto LABEL_119;
    }
  }

  v105 = [v104 whiteColor];
LABEL_119:
  infographModularTimeLabelColor = self->_infographModularTimeLabelColor;
  self->_infographModularTimeLabelColor = v105;

  if (isEditingComplications)
  {
    v107 = [*(v71 + 840) blackColor];
    v108 = NTKInterpolateBetweenColors();
    v109 = self->_infographModularTimeLabelColor;
    self->_infographModularTimeLabelColor = v108;
  }

  objc_storeStrong(&self->_infographModularDateAccentColor, self->_foregroundColor);
  v110 = [*(v71 + 840) whiteColor];
  v111 = NTKInterpolateBetweenColors();
  xLargeSmallTimeTritiumOutlineColor = self->_xLargeSmallTimeTritiumOutlineColor;
  self->_xLargeSmallTimeTritiumOutlineColor = v111;

  objc_storeStrong(&self->_xLargeLargeTimeTritiumOutlineColor, self->_accentColor);
  v113 = [*(v71 + 840) blackColor];
  v114 = NTKInterpolateBetweenColors();
  xLargeLargeTimeTritiumFillColor = self->_xLargeLargeTimeTritiumFillColor;
  self->_xLargeLargeTimeTritiumFillColor = v114;
}

- (void)_setApproximateComplicationBackgroundColors
{
  v3 = [(NSArray *)self->_backgroundGradientColors count];
  if (v3 == 1)
  {
    v4 = [(NSArray *)self->_backgroundGradientColors firstObject];
    objc_storeStrong(&self->_topApproximateBackgroundColor, v4);
    objc_storeStrong(&self->_centerApproximateBackgroundColor, v4);
    bottomApproximateBackgroundColor = self->_bottomApproximateBackgroundColor;
    self->_bottomApproximateBackgroundColor = v4;
  }

  else
  {
    v6 = v3;
    v7 = objc_opt_new();
    backgroundGradientColors = self->_backgroundGradientColors;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__NTKGossamerColorPalette__setApproximateComplicationBackgroundColors__block_invoke;
    v25[3] = &unk_278789600;
    v26 = v7;
    v27 = v6;
    v9 = v7;
    [(NSArray *)backgroundGradientColors enumerateObjectsUsingBlock:v25];
    v10 = [NTKColorCurve alloc];
    v11 = [v9 copy];
    v12 = [(NTKColorCurve *)v10 initWithColorCurveElements:v11];

    [(NSNumber *)self->_scaleFactor doubleValue];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__NTKGossamerColorPalette__setApproximateComplicationBackgroundColors__block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    aBlock[4] = v13;
    v14 = _Block_copy(aBlock);
    v15 = v14[2](self->_approximateComplicationPositions.top);
    *&v15 = v15;
    v16 = [(NTKColorCurve *)v12 colorForFraction:v15];
    topApproximateBackgroundColor = self->_topApproximateBackgroundColor;
    self->_topApproximateBackgroundColor = v16;

    v18 = (v14[2])(v14, self->_approximateComplicationPositions.center);
    *&v18 = v18;
    v19 = [(NTKColorCurve *)v12 colorForFraction:v18];
    centerApproximateBackgroundColor = self->_centerApproximateBackgroundColor;
    self->_centerApproximateBackgroundColor = v19;

    v21 = (v14[2])(v14, self->_approximateComplicationPositions.bottom);
    *&v21 = v21;
    v22 = [(NTKColorCurve *)v12 colorForFraction:v21];
    v23 = self->_bottomApproximateBackgroundColor;
    self->_bottomApproximateBackgroundColor = v22;
  }
}

void __70__NTKGossamerColorPalette__setApproximateComplicationBackgroundColors__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a3 / (*(a1 + 40) - 1);
  v5 = a2;
  v6 = [NTKColorCurveElement alloc];
  *&v7 = v4;
  v8 = [(NTKColorCurveElement *)v6 initWithColor:v5 fraction:v7];

  [*(a1 + 32) addObject:v8];
}

- (UIColor)accentColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  accentColor = self->_accentColor;

  return accentColor;
}

- (UIColor)foregroundColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  foregroundColor = self->_foregroundColor;

  return foregroundColor;
}

- (UIColor)topAccentColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  topAccentColor = self->_topAccentColor;

  return topAccentColor;
}

- (UIColor)centerAccentColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  centerAccentColor = self->_centerAccentColor;

  return centerAccentColor;
}

- (UIColor)bottomAccentColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  bottomAccentColor = self->_bottomAccentColor;

  return bottomAccentColor;
}

- (UIColor)swatchComplicationPlaceholderColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  swatchComplicationPlaceholderColor = self->_swatchComplicationPlaceholderColor;

  return swatchComplicationPlaceholderColor;
}

- (UIColor)dialColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactDialBackgroundColor = self->_modularCompactDialBackgroundColor;

  return modularCompactDialBackgroundColor;
}

- (UIColor)hourTickColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactDialForegroundPrimaryColor = self->_modularCompactDialForegroundPrimaryColor;

  return modularCompactDialForegroundPrimaryColor;
}

- (UIColor)minuteTickColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactDialForegroundSecondaryColor = self->_modularCompactDialForegroundSecondaryColor;

  return modularCompactDialForegroundSecondaryColor;
}

- (UIColor)secondTickActiveColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactSecondTickActiveColor = self->_modularCompactSecondTickActiveColor;

  return modularCompactSecondTickActiveColor;
}

- (UIColor)secondTickInactiveColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactSecondTickInactiveColor = self->_modularCompactSecondTickInactiveColor;

  return modularCompactSecondTickInactiveColor;
}

- (UIColor)hourMinuteHandFillColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  foregroundColor = self->_foregroundColor;

  return foregroundColor;
}

- (UIColor)secondHandColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactDialSecondHandColor = self->_modularCompactDialSecondHandColor;

  return modularCompactDialSecondHandColor;
}

- (UIColor)digitalTimeLabelColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  modularCompactDialDigitalTimeColor = self->_modularCompactDialDigitalTimeColor;

  return modularCompactDialDigitalTimeColor;
}

- (UIColor)dateLabelAccentColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  infographModularDateAccentColor = self->_infographModularDateAccentColor;

  return infographModularDateAccentColor;
}

- (UIColor)dateLabelTextColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  infographModularDateLabelColor = self->_infographModularDateLabelColor;

  return infographModularDateLabelColor;
}

- (UIColor)timeLabelColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  infographModularTimeLabelColor = self->_infographModularTimeLabelColor;

  return infographModularTimeLabelColor;
}

- (UIColor)smallTimeTritiumOutlineColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  xLargeSmallTimeTritiumOutlineColor = self->_xLargeSmallTimeTritiumOutlineColor;

  return xLargeSmallTimeTritiumOutlineColor;
}

- (UIColor)largeTimeTritiumOutlineColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  xLargeLargeTimeTritiumOutlineColor = self->_xLargeLargeTimeTritiumOutlineColor;

  return xLargeLargeTimeTritiumOutlineColor;
}

- (UIColor)largeTimeTritiumFillColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  xLargeLargeTimeTritiumFillColor = self->_xLargeLargeTimeTritiumFillColor;

  return xLargeLargeTimeTritiumFillColor;
}

- (NSNumber)scaleFactor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  scaleFactor = self->_scaleFactor;

  return scaleFactor;
}

- (NSNumber)monochromeFraction
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  monochromeFraction = self->_monochromeFraction;

  return monochromeFraction;
}

- (NSNumber)imageViewFraction
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  imageViewFraction = self->_imageViewFraction;

  return imageViewFraction;
}

- (NSNumber)editingComplicationsFraction
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  editingComplicationsFraction = self->_editingComplicationsFraction;

  return editingComplicationsFraction;
}

- (NSNumber)foregroundGradientFraction
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  foregroundGradientFraction = self->_foregroundGradientFraction;

  return foregroundGradientFraction;
}

- (NSNumber)tintedFraction
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  tintedFraction = self->_tintedFraction;

  return tintedFraction;
}

- (NSArray)backgroundGradientColors
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  backgroundGradientColors = self->_backgroundGradientColors;

  return backgroundGradientColors;
}

- (UIColor)topApproximateBackgroundColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  topApproximateBackgroundColor = self->_topApproximateBackgroundColor;

  return topApproximateBackgroundColor;
}

- (UIColor)centerApproximateBackgroundColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  centerApproximateBackgroundColor = self->_centerApproximateBackgroundColor;

  return centerApproximateBackgroundColor;
}

- (UIColor)bottomApproximateBackgroundColor
{
  [(NTKGossamerColorPalette *)self resolveColorsIfNeeded];
  bottomApproximateBackgroundColor = self->_bottomApproximateBackgroundColor;

  return bottomApproximateBackgroundColor;
}

- ($1AB5FA073B851C12C2339EC22442E995)approximateComplicationPositions
{
  top = self->_approximateComplicationPositions.top;
  center = self->_approximateComplicationPositions.center;
  bottom = self->_approximateComplicationPositions.bottom;
  result.var2 = bottom;
  result.var1 = center;
  result.var0 = top;
  return result;
}

@end