@interface MPUFontDescriptor
+ (double)_layoutInterpolatorReferenceMetricForContentSizeCategory:(id)category;
+ (id)_adjustedNativeFontDescriptorWithBaseNativeFontDescriptor:(id)descriptor forCustomTextStyle:(int64_t)style;
+ (id)_baseNativeTextStyleForTextStyle:(int64_t)style;
+ (id)_fontDescriptorWithTextStyle:(int64_t)style leadingAdjustment:(int64_t)adjustment weight:(int64_t)weight systemFontSize:(double)size defaultPointSizeAdjustment:(double)sizeAdjustment;
+ (id)_fontPointSizeLayoutInterpolatorForTextStyle:(int64_t)style;
+ (unsigned)_nativeFontDescriptorSymbolicTraitsForLeadingAdjustment:(int64_t)adjustment;
+ (unsigned)_nativeFontDescriptorSymbolicTraitsForUsingItalic:(BOOL)italic isCondensedMetrics:(BOOL)metrics;
+ (void)_getNativeFontDescriptorSymbolicTraits:(unsigned int *)traits nativeTextStyleAttribute:(id *)attribute forWeight:(int64_t)weight textStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (MPUFontDescriptor)init;
- (UIFont)defaultFont;
- (UIFont)preferredFont;
- (double)defaultFontAscender;
- (double)defaultFontBodyLeading;
- (double)defaultFontCapHeight;
- (double)defaultFontDescender;
- (double)defaultFontLineHeight;
- (double)preferredFontAscender;
- (double)preferredFontBodyLeading;
- (double)preferredFontCapHeight;
- (double)preferredFontDescender;
- (double)preferredFontLineHeight;
- (double)scaledValueForValue:(double)value;
- (id)_defaultFontDescriptorForTextStyle:(int64_t)style;
- (id)_fontPointSizeLayoutInterpolator;
- (id)_fontWithBaseNativeFontDescriptorProvider:(id)provider;
- (id)_preferredFontDescriptorForTextStyle:(int64_t)style;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_invalidateCachedFontsAndMetrics;
- (void)_resetToDefaultValues;
- (void)dealloc;
@end

@implementation MPUFontDescriptor

+ (id)_fontDescriptorWithTextStyle:(int64_t)style leadingAdjustment:(int64_t)adjustment weight:(int64_t)weight systemFontSize:(double)size defaultPointSizeAdjustment:(double)sizeAdjustment
{
  if (objc_opt_class() == self)
  {
    v14 = +[MPUFontDescriptorCache sharedFontDescriptorCache];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __117__MPUFontDescriptor__fontDescriptorWithTextStyle_leadingAdjustment_weight_systemFontSize_defaultPointSizeAdjustment___block_invoke;
    v16[3] = &__block_descriptor_72_e34_v16__0__MPUMutableFontDescriptor_8l;
    v16[4] = style;
    v16[5] = adjustment;
    v16[6] = weight;
    *&v16[7] = size;
    *&v16[8] = sizeAdjustment;
    v13 = [v14 cachedImmutableFontDescriptorForConfigurationBlock:v16];
  }

  else
  {
    v13 = objc_alloc_init(self);
    *(v13 + 4) = style;
    *(v13 + 2) = adjustment;
    *(v13 + 6) = weight;
    v13[3] = size;
    v13[1] = sizeAdjustment;
  }

  return v13;
}

void __117__MPUFontDescriptor__fontDescriptorWithTextStyle_leadingAdjustment_weight_systemFontSize_defaultPointSizeAdjustment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTextStyle:v3];
  [v4 setLeadingAdjustment:*(a1 + 40)];
  [v4 setWeight:*(a1 + 48)];
  [v4 setSystemFontSize:*(a1 + 56)];
  [v4 setDefaultPointSizeAdjustment:*(a1 + 64)];
}

- (MPUFontDescriptor)init
{
  v7.receiver = self;
  v7.super_class = MPUFontDescriptor;
  v2 = [(MPUFontDescriptor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MPUFontDescriptor *)v2 _resetToDefaultValues];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    invalidationHandler = [objc_opt_class() invalidationHandler];
    [defaultCenter addObserver:v3 selector:sel__handleFontDescriptorDidInvalidateCachedFontsAndMetricsNotification_ name:@"_MPUFontDescriptorDidInvalidateCachedFontsAndMetricsNotification" object:invalidationHandler];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  invalidationHandler = [objc_opt_class() invalidationHandler];
  [defaultCenter removeObserver:self name:@"_MPUFontDescriptorDidInvalidateCachedFontsAndMetricsNotification" object:invalidationHandler];

  v5.receiver = self;
  v5.super_class = MPUFontDescriptor;
  [(MPUFontDescriptor *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v14 = 0;
  v7 = _MPUFontTextStyleGetDescriptionAndCustomStyleStatus(self->_textStyle, &v14);
  [v6 appendFormat:@"; textStyle = %@", v7];
  if (v14 == 1)
  {
    [v6 appendFormat:@"; isCustomTextStyle = YES"];
  }

  weight = self->_weight;
  if (weight)
  {
    v9 = MPUFontWeightGetDescription(weight);
    v10 = v9;
    if (v9)
    {
      [v6 appendFormat:@"; weight = %@", v9];
    }
  }

  leadingAdjustment = self->_leadingAdjustment;
  if (leadingAdjustment == 1)
  {
    v12 = @"shorter";
  }

  else
  {
    if (leadingAdjustment != 2)
    {
      goto LABEL_12;
    }

    v12 = @"taller";
  }

  [v6 appendFormat:@"; leadingAdjustment = %@", v12];
LABEL_12:
  if (!MPUFloatEqualToFloat(self->_defaultPointSizeAdjustment, 0.0))
  {
    [v6 appendFormat:@"; defaultPointSizeAdjustment = %f", *&self->_defaultPointSizeAdjustment];
  }

  if (self->_usesItalic)
  {
    [v6 appendString:@"; usesItalic = YES"];
  }

  if (self->_usesCondensedMetrics)
  {
    [v6 appendString:@"; usesCondensedMetrics = YES"];
  }

  if (self->_wantsMonospaceNumbers)
  {
    [v6 appendString:@"; wantsMonospaceNumbers = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      v7 = self->_textStyle == v5->_textStyle && self->_weight == v5->_weight && self->_leadingAdjustment == v5->_leadingAdjustment && self->_usesItalic == v5->_usesItalic && self->_usesCondensedMetrics == v5->_usesCondensedMetrics && self->_wantsMonospaceNumbers == v5->_wantsMonospaceNumbers && MPUFloatEqualToFloat(self->_systemFontSize, v5->_systemFontSize) && MPUFloatEqualToFloat(self->_defaultPointSizeAdjustment, v6[1]);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPUMutableFontDescriptor);
  v5 = v4;
  if (v4)
  {
    v4->super._textStyle = self->_textStyle;
    v4->super._weight = self->_weight;
    v4->super._leadingAdjustment = self->_leadingAdjustment;
    v4->super._usesItalic = self->_usesItalic;
    v4->super._usesCondensedMetrics = self->_usesCondensedMetrics;
    v4->super._wantsMonospaceNumbers = self->_wantsMonospaceNumbers;
    v4->super._systemFontSize = self->_systemFontSize;
    v4->super._defaultPointSizeAdjustment = self->_defaultPointSizeAdjustment;
    objc_storeStrong(&v4->super._preferredFont, self->_preferredFont);
    *&v5->super._preferredFontMetrics.ascender = *&self->_preferredFontMetrics.ascender;
    v6 = *&self->_preferredFontMetrics.bodyLeading;
    v7 = *&self->_preferredFontMetrics.capHeight;
    v8 = *&self->_preferredFontMetrics.lineHeight;
    *&v5->super._preferredFontMetrics.descender = *&self->_preferredFontMetrics.descender;
    *&v5->super._preferredFontMetrics.lineHeight = v8;
    *&v5->super._preferredFontMetrics.bodyLeading = v6;
    *&v5->super._preferredFontMetrics.capHeight = v7;
    objc_storeStrong(&v5->super._defaultFont, self->_defaultFont);
    *&v5->super._defaultFontMetrics.ascender = *&self->_defaultFontMetrics.ascender;
    v9 = *&self->_defaultFontMetrics.bodyLeading;
    v10 = *&self->_defaultFontMetrics.capHeight;
    v11 = *&self->_defaultFontMetrics.descender;
    *&v5->super._defaultFontMetrics.lineHeight = *&self->_defaultFontMetrics.lineHeight;
    *&v5->super._defaultFontMetrics.descender = v11;
    *&v5->super._defaultFontMetrics.capHeight = v10;
    *&v5->super._defaultFontMetrics.bodyLeading = v9;
  }

  return v5;
}

- (UIFont)preferredFont
{
  preferredFont = self->_preferredFont;
  if (!preferredFont)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__MPUFontDescriptor_preferredFont__block_invoke;
    v7[3] = &unk_27984C600;
    v7[4] = self;
    v4 = [(MPUFontDescriptor *)self _fontWithBaseNativeFontDescriptorProvider:v7];
    v5 = self->_preferredFont;
    self->_preferredFont = v4;

    preferredFont = self->_preferredFont;
  }

  return preferredFont;
}

- (double)preferredFontAscender
{
  if (!self->_preferredFontMetrics.isAscenderInitialized)
  {
    preferredFont = [(MPUFontDescriptor *)self preferredFont];
    [preferredFont ascender];
    self->_preferredFontMetrics.ascender = v4;

    self->_preferredFontMetrics.isAscenderInitialized = 1;
  }

  return self->_preferredFontMetrics.ascender;
}

- (double)preferredFontBodyLeading
{
  if (!self->_preferredFontMetrics.isBodyLeadingInitialized)
  {
    preferredFont = [(MPUFontDescriptor *)self preferredFont];
    [preferredFont _bodyLeading];
    self->_preferredFontMetrics.bodyLeading = v4;

    self->_preferredFontMetrics.isBodyLeadingInitialized = 1;
  }

  return self->_preferredFontMetrics.bodyLeading;
}

- (double)preferredFontLineHeight
{
  if (!self->_preferredFontMetrics.isLineHeightInitialized)
  {
    preferredFont = [(MPUFontDescriptor *)self preferredFont];
    [preferredFont lineHeight];
    self->_preferredFontMetrics.lineHeight = v4;

    self->_preferredFontMetrics.isLineHeightInitialized = 1;
  }

  return self->_preferredFontMetrics.lineHeight;
}

- (double)preferredFontCapHeight
{
  if (!self->_preferredFontMetrics.isCapHeightInitialized)
  {
    preferredFont = [(MPUFontDescriptor *)self preferredFont];
    [preferredFont capHeight];
    self->_preferredFontMetrics.capHeight = v4;

    self->_preferredFontMetrics.isCapHeightInitialized = 1;
  }

  return self->_preferredFontMetrics.capHeight;
}

- (double)preferredFontDescender
{
  if (!self->_preferredFontMetrics.isDescenderInitialized)
  {
    preferredFont = [(MPUFontDescriptor *)self preferredFont];
    [preferredFont descender];
    self->_preferredFontMetrics.descender = v4;

    self->_preferredFontMetrics.isDescenderInitialized = 1;
  }

  return self->_preferredFontMetrics.descender;
}

- (UIFont)defaultFont
{
  defaultFont = self->_defaultFont;
  if (!defaultFont)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__MPUFontDescriptor_defaultFont__block_invoke;
    v7[3] = &unk_27984C600;
    v7[4] = self;
    v4 = [(MPUFontDescriptor *)self _fontWithBaseNativeFontDescriptorProvider:v7];
    v5 = self->_defaultFont;
    self->_defaultFont = v4;

    defaultFont = self->_defaultFont;
  }

  return defaultFont;
}

- (double)defaultFontAscender
{
  if (!self->_defaultFontMetrics.isAscenderInitialized)
  {
    defaultFont = [(MPUFontDescriptor *)self defaultFont];
    [defaultFont ascender];
    self->_defaultFontMetrics.ascender = v4;

    self->_defaultFontMetrics.isAscenderInitialized = 1;
  }

  return self->_defaultFontMetrics.ascender;
}

- (double)defaultFontBodyLeading
{
  if (!self->_defaultFontMetrics.isBodyLeadingInitialized)
  {
    defaultFont = [(MPUFontDescriptor *)self defaultFont];
    [defaultFont _bodyLeading];
    self->_defaultFontMetrics.bodyLeading = v4;

    self->_defaultFontMetrics.isBodyLeadingInitialized = 1;
  }

  return self->_defaultFontMetrics.bodyLeading;
}

- (double)defaultFontCapHeight
{
  if (!self->_defaultFontMetrics.isCapHeightInitialized)
  {
    defaultFont = [(MPUFontDescriptor *)self defaultFont];
    [defaultFont capHeight];
    self->_defaultFontMetrics.capHeight = v4;

    self->_defaultFontMetrics.isCapHeightInitialized = 1;
  }

  return self->_defaultFontMetrics.capHeight;
}

- (double)defaultFontDescender
{
  if (!self->_defaultFontMetrics.isDescenderInitialized)
  {
    defaultFont = [(MPUFontDescriptor *)self defaultFont];
    [defaultFont descender];
    self->_defaultFontMetrics.descender = v4;

    self->_defaultFontMetrics.isDescenderInitialized = 1;
  }

  return self->_defaultFontMetrics.descender;
}

- (double)defaultFontLineHeight
{
  if (!self->_defaultFontMetrics.isLineHeightInitialized)
  {
    defaultFont = [(MPUFontDescriptor *)self defaultFont];
    [defaultFont lineHeight];
    self->_defaultFontMetrics.lineHeight = v4;

    self->_defaultFontMetrics.isLineHeightInitialized = 1;
  }

  return self->_defaultFontMetrics.bodyLeading;
}

- (double)scaledValueForValue:(double)value
{
  [(MPUFontDescriptor *)self preferredFontBodyLeading];
  v6 = v5;
  [(MPUFontDescriptor *)self defaultFontBodyLeading];
  v8 = v7;
  if (!MPUFloatEqualToFloat(v7, 0.0))
  {
    return v6 / v8 * value;
  }

  return value;
}

+ (id)_adjustedNativeFontDescriptorWithBaseNativeFontDescriptor:(id)descriptor forCustomTextStyle:(int64_t)style
{
  v25[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v6 = descriptorCopy;
  if (style == 18)
  {
    v16 = *MEMORY[0x277D74350];
    v17 = [descriptorCopy objectForKey:*MEMORY[0x277D74350]];
    [v17 floatValue];
    v19 = v18;

    v22 = v16;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:round(v19 * 1.88235294)];
    v23 = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v23;
    v15 = &v22;
  }

  else
  {
    v7 = descriptorCopy;
    if (style != 17)
    {
      goto LABEL_6;
    }

    v8 = *MEMORY[0x277D74350];
    v9 = [descriptorCopy objectForKey:*MEMORY[0x277D74350]];
    [v9 floatValue];
    v11 = v10;

    v24 = v8;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:round(v11 * 0.933333333)];
    v25[0] = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v25;
    v15 = &v24;
  }

  v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  v7 = [v6 fontDescriptorByAddingAttributes:v20];

LABEL_6:

  return v7;
}

+ (id)_baseNativeTextStyleForTextStyle:(int64_t)style
{
  v4 = MEMORY[0x277D76918];
  switch(style)
  {
    case 0:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      goto LABEL_22;
    case 1:
      v4 = MEMORY[0x277D76988];
      goto LABEL_22;
    case 2:
    case 17:
      v4 = MEMORY[0x277D769D0];
      goto LABEL_22;
    case 3:
      v4 = MEMORY[0x277D76968];
      goto LABEL_22;
    case 4:
      v4 = MEMORY[0x277D76938];
      goto LABEL_22;
    case 5:
      v4 = MEMORY[0x277D76940];
      goto LABEL_22;
    case 6:
      v4 = MEMORY[0x277D76A00];
      goto LABEL_22;
    case 7:
    case 18:
      v4 = MEMORY[0x277D76A08];
      goto LABEL_22;
    case 8:
    case 19:
    case 20:
      v4 = MEMORY[0x277D76A20];
      goto LABEL_22;
    case 9:
      v4 = MEMORY[0x277D76A28];
      goto LABEL_22;
    case 10:
      v4 = MEMORY[0x277D76998];
      goto LABEL_22;
    case 11:
      v4 = MEMORY[0x277D769A0];
      goto LABEL_22;
    case 12:
      v4 = MEMORY[0x277D769D8];
      goto LABEL_22;
    case 13:
      v4 = MEMORY[0x277D769E0];
      goto LABEL_22;
    case 14:
      v4 = MEMORY[0x277D76920];
      goto LABEL_22;
    case 15:
      v4 = MEMORY[0x277D76978];
      goto LABEL_22;
    case 16:
      v4 = MEMORY[0x277D76980];
      goto LABEL_22;
    default:
      if (style == 1000)
      {
LABEL_22:
        v5 = *v4;
      }

      else
      {
        v5 = 0;
      }

      return v5;
  }
}

+ (void)_getNativeFontDescriptorSymbolicTraits:(unsigned int *)traits nativeTextStyleAttribute:(id *)attribute forWeight:(int64_t)weight textStyle:(int64_t)style
{
  v8 = 0;
  v9 = 0;
  if (weight > 4)
  {
LABEL_10:
    if (weight > 6)
    {
LABEL_23:
      if (weight == 7)
      {
LABEL_41:
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v10 = getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr;
        v23 = getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr;
        if (!getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr)
        {
          v18 = CoreTextLibrary_0();
          v21[3] = dlsym(v18, "kCTFontDescriptorTextStyleUltraLight");
          getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr = v21[3];
          v10 = v21[3];
        }

        _Block_object_dispose(&v20, 8);
        if (!v10)
        {
          v19 = [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
          _Block_object_dispose(&v20, 8);
          _Unwind_Resume(v19);
        }

        goto LABEL_44;
      }

      if (weight != 8)
      {
        goto LABEL_45;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v10 = getkCTFontDescriptorTextStyleThinSymbolLoc_ptr;
      v23 = getkCTFontDescriptorTextStyleThinSymbolLoc_ptr;
      if (!getkCTFontDescriptorTextStyleThinSymbolLoc_ptr)
      {
        v14 = CoreTextLibrary_0();
        v21[3] = dlsym(v14, "kCTFontDescriptorTextStyleThin");
        getkCTFontDescriptorTextStyleThinSymbolLoc_ptr = v21[3];
        v10 = v21[3];
      }

      _Block_object_dispose(&v20, 8);
      if (v10)
      {
LABEL_44:
        v8 = *v10;
        v9 = 0;
LABEL_45:
        if (!traits)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
      goto LABEL_29;
    }

    if (weight == 5)
    {
LABEL_33:
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v10 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0;
      v23 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0;
      if (!getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0)
      {
        v16 = CoreTextLibrary_0();
        v21[3] = dlsym(v16, "kCTFontDescriptorTextStyleRegular");
        getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0 = v21[3];
        v10 = v21[3];
      }

      _Block_object_dispose(&v20, 8);
      if (v10)
      {
        goto LABEL_44;
      }

      [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
      goto LABEL_37;
    }

    if (weight != 6)
    {
      goto LABEL_45;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v10 = getkCTFontDescriptorTextStyleLightSymbolLoc_ptr;
    v23 = getkCTFontDescriptorTextStyleLightSymbolLoc_ptr;
    if (!getkCTFontDescriptorTextStyleLightSymbolLoc_ptr)
    {
      v12 = CoreTextLibrary_0();
      v21[3] = dlsym(v12, "kCTFontDescriptorTextStyleLight");
      getkCTFontDescriptorTextStyleLightSymbolLoc_ptr = v21[3];
      v10 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (v10)
    {
      goto LABEL_44;
    }

    v8 = [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
LABEL_17:
    if (weight == 3)
    {
LABEL_37:
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v10 = getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr;
      v23 = getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr;
      if (!getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr)
      {
        v17 = CoreTextLibrary_0();
        v21[3] = dlsym(v17, "kCTFontDescriptorTextStyleSemibold");
        getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr = v21[3];
        v10 = v21[3];
      }

      _Block_object_dispose(&v20, 8);
      if (v10)
      {
        goto LABEL_44;
      }

      [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
      goto LABEL_41;
    }

    if (weight != 4)
    {
      goto LABEL_45;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v10 = getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr;
    v23 = getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr;
    if (!getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr)
    {
      v13 = CoreTextLibrary_0();
      v21[3] = dlsym(v13, "kCTFontDescriptorTextStyleMedium");
      getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr = v21[3];
      v10 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (v10)
    {
      goto LABEL_44;
    }

    v8 = [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    goto LABEL_23;
  }

  if (weight > 2)
  {
    goto LABEL_17;
  }

  if (weight == 1)
  {
LABEL_29:
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v10 = getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr;
    v23 = getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr;
    if (!getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr)
    {
      v15 = CoreTextLibrary_0();
      v21[3] = dlsym(v15, "kCTFontDescriptorTextStyleHeavy");
      getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr = v21[3];
      v10 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (v10)
    {
      goto LABEL_44;
    }

    [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    goto LABEL_33;
  }

  if (weight != 2)
  {
    goto LABEL_45;
  }

  if (style == 19)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v10 = getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr;
    v23 = getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr;
    if (!getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr)
    {
      v11 = CoreTextLibrary_0();
      v21[3] = dlsym(v11, "kCTFontDescriptorTextStyleBold");
      getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr = v21[3];
      v10 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (v10)
    {
      goto LABEL_44;
    }

    v8 = [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 2;
  if (traits)
  {
LABEL_46:
    *traits = v9;
  }

LABEL_47:
  if (attribute)
  {
    v8 = v8;
    *attribute = v8;
  }
}

+ (unsigned)_nativeFontDescriptorSymbolicTraitsForLeadingAdjustment:(int64_t)adjustment
{
  if (adjustment == 2)
  {
    return 0x10000;
  }

  else
  {
    return (adjustment == 1) << 15;
  }
}

+ (unsigned)_nativeFontDescriptorSymbolicTraitsForUsingItalic:(BOOL)italic isCondensedMetrics:(BOOL)metrics
{
  if (metrics)
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  if (italic)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (id)_fontPointSizeLayoutInterpolatorForTextStyle:(int64_t)style
{
  if (style == 19)
  {
    v3 = 28.0;
    v4 = 26.0;
    v5 = 24.0;
    v6 = 22.0;
    v7 = 21.0;
    v8 = 20.0;
    v29 = 65.0;
    v28 = 57.0;
    v27 = 48.0;
    v9 = 19.0;
    v26 = 41.0;
    v10 = 0x4041000000000000;
    goto LABEL_5;
  }

  if (style == 20)
  {
    v3 = 26.0;
    v4 = 24.0;
    v5 = 22.0;
    v6 = 20.0;
    v7 = 19.0;
    v8 = 18.0;
    v29 = 63.0;
    v28 = 55.0;
    v27 = 46.0;
    v9 = 17.0;
    v26 = 39.0;
    v10 = 0x4040000000000000;
LABEL_5:
    v11 = *&v10;
    v12 = objc_alloc_init(MPULayoutInterpolator);
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76830]];
    [(MPULayoutInterpolator *)v12 addValue:v9 forReferenceMetric:v13];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76858]];
    [(MPULayoutInterpolator *)v12 addValue:v8 forReferenceMetric:v14];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76840]];
    [(MPULayoutInterpolator *)v12 addValue:v7 forReferenceMetric:v15];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76838]];
    [(MPULayoutInterpolator *)v12 addValue:v6 forReferenceMetric:v16];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76828]];
    [(MPULayoutInterpolator *)v12 addValue:v5 forReferenceMetric:v17];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76820]];
    [(MPULayoutInterpolator *)v12 addValue:v4 forReferenceMetric:v18];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76818]];
    [(MPULayoutInterpolator *)v12 addValue:v3 forReferenceMetric:v19];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76808]];
    [(MPULayoutInterpolator *)v12 addValue:v11 forReferenceMetric:v20];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D76800]];
    [(MPULayoutInterpolator *)v12 addValue:v26 forReferenceMetric:v21];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D767F8]];
    [(MPULayoutInterpolator *)v12 addValue:v27 forReferenceMetric:v22];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D767F0]];
    [(MPULayoutInterpolator *)v12 addValue:v28 forReferenceMetric:v23];
    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:*MEMORY[0x277D767E8]];
    [(MPULayoutInterpolator *)v12 addValue:v29 forReferenceMetric:v24];
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

+ (double)_layoutInterpolatorReferenceMetricForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = 1.0;
  if (([categoryCopy isEqualToString:*MEMORY[0x277D76830]] & 1) == 0)
  {
    v4 = 2.0;
    if (([categoryCopy isEqualToString:*MEMORY[0x277D76858]] & 1) == 0)
    {
      v4 = 3.0;
      if (([categoryCopy isEqualToString:*MEMORY[0x277D76840]] & 1) == 0)
      {
        v4 = 5.0;
        if (([categoryCopy isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
        {
          v4 = 6.0;
          if (([categoryCopy isEqualToString:*MEMORY[0x277D76820]] & 1) == 0)
          {
            v4 = 7.0;
            if (([categoryCopy isEqualToString:*MEMORY[0x277D76818]] & 1) == 0)
            {
              v4 = 8.0;
              if (([categoryCopy isEqualToString:*MEMORY[0x277D76808]] & 1) == 0)
              {
                v4 = 9.0;
                if (([categoryCopy isEqualToString:*MEMORY[0x277D76800]] & 1) == 0)
                {
                  v4 = 10.0;
                  if (([categoryCopy isEqualToString:*MEMORY[0x277D767F8]] & 1) == 0)
                  {
                    v4 = 11.0;
                    if (([categoryCopy isEqualToString:*MEMORY[0x277D767F0]] & 1) == 0)
                    {
                      v4 = 12.0;
                      if (([categoryCopy isEqualToString:*MEMORY[0x277D767E8]] & 1) == 0)
                      {
                        v4 = 4.0;
                        if (([categoryCopy isEqualToString:*MEMORY[0x277D76838]] & 1) == 0)
                        {
                          block[0] = MEMORY[0x277D85DD0];
                          block[1] = 3221225472;
                          block[2] = __78__MPUFontDescriptor__layoutInterpolatorReferenceMetricForContentSizeCategory___block_invoke;
                          block[3] = &unk_27984C628;
                          v7 = categoryCopy;
                          if (_layoutInterpolatorReferenceMetricForContentSizeCategory__sOnceToken != -1)
                          {
                            dispatch_once(&_layoutInterpolatorReferenceMetricForContentSizeCategory__sOnceToken, block);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)_defaultFontDescriptorForTextStyle:(int64_t)style
{
  if (style <= 23)
  {
    if (style > 20)
    {
      if (style == 21)
      {
        v3 = MEMORY[0x277D74300];
        v4 = 0x4044000000000000;
      }

      else
      {
        v3 = MEMORY[0x277D74300];
        if (style == 22)
        {
          v4 = 0x4049000000000000;
        }

        else
        {
          v4 = 0x404E000000000000;
        }
      }

      goto LABEL_21;
    }

    if (style != 19)
    {
      if (style == 20)
      {
        v3 = MEMORY[0x277D74300];
        systemFontSize = 20.0;
        goto LABEL_22;
      }

      goto LABEL_26;
    }

LABEL_16:
    v3 = MEMORY[0x277D74300];
    systemFontSize = 22.0;
    goto LABEL_22;
  }

  if (style <= 25)
  {
    if (style != 24)
    {
      v3 = MEMORY[0x277D74300];
      systemFontSize = 13.0;
      goto LABEL_22;
    }

    v3 = MEMORY[0x277D74300];
    v4 = 0x4040000000000000;
LABEL_21:
    systemFontSize = *&v4;
    goto LABEL_22;
  }

  switch(style)
  {
    case 26:
      goto LABEL_16;
    case 27:
      v3 = MEMORY[0x277D74300];
      v4 = 0x4048000000000000;
      goto LABEL_21;
    case 1000:
      systemFontSize = self->_systemFontSize;
      v3 = MEMORY[0x277D74300];
LABEL_22:
      v6 = [v3 systemFontOfSize:systemFontSize];
      fontDescriptor = [v6 fontDescriptor];
      goto LABEL_23;
  }

LABEL_26:
  v6 = [objc_opt_class() _baseNativeTextStyleForTextStyle:style];
  fontDescriptor = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:v6];
LABEL_23:
  v8 = fontDescriptor;

  return v8;
}

- (id)_fontWithBaseNativeFontDescriptorProvider:(id)provider
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = (*(provider + 2))(provider, self->_textStyle);
  v5 = objc_opt_class();
  v6 = [v5 _adjustedNativeFontDescriptorWithBaseNativeFontDescriptor:v4 forCustomTextStyle:self->_textStyle];
  v42 = 0;
  v41 = 0;
  [v5 _getNativeFontDescriptorSymbolicTraits:&v42 nativeTextStyleAttribute:&v41 forWeight:self->_weight textStyle:self->_textStyle];
  v7 = v41;
  v8 = v7;
  if (v7)
  {
    v50 = *MEMORY[0x277D74378];
    v51[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  }

  else
  {
    v9 = 0;
  }

  if (self->_wantsMonospaceNumbers)
  {
    v48 = *MEMORY[0x277D74338];
    v10 = *MEMORY[0x277D74388];
    v45[0] = *MEMORY[0x277D74398];
    v45[1] = v10;
    v46[0] = &unk_2868EA2A0;
    v46[1] = &unk_2868EA2B8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v47 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v49 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

    if (v9)
    {
      v14 = [v9 mutableCopy];
      [v14 addEntriesFromDictionary:v13];

      v9 = v14;
    }

    else
    {
      v9 = v13;
    }
  }

  if (!MPUFloatEqualToFloat(self->_defaultPointSizeAdjustment, 0.0))
  {
    v15 = [(MPUFontDescriptor *)self _defaultFontDescriptorForTextStyle:self->_textStyle];
    v16 = [v5 _adjustedNativeFontDescriptorWithBaseNativeFontDescriptor:v15 forCustomTextStyle:self->_textStyle];
    v17 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
    [v17 _bodyLeading];
    v19 = v18;

    v20 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    [v20 _bodyLeading];
    v22 = v21;

    v23 = MPUFloatEqualToFloat(v19, 0.0);
    defaultPointSizeAdjustment = self->_defaultPointSizeAdjustment;
    if (!v23)
    {
      defaultPointSizeAdjustment = v22 / v19 * defaultPointSizeAdjustment;
    }

    v25 = round(defaultPointSizeAdjustment);
    [v6 pointSize];
    v27 = v26 + v25;
    if (v9)
    {
      v28 = [v9 mutableCopy];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      [v28 setObject:v29 forKey:*MEMORY[0x277D74350]];
    }

    else
    {
      v43 = *MEMORY[0x277D74350];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      v44 = v9;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    }

    v9 = v28;
  }

  v30 = [v5 _nativeFontDescriptorSymbolicTraitsForLeadingAdjustment:self->_leadingAdjustment];
  v31 = [v5 _nativeFontDescriptorSymbolicTraitsForUsingItalic:self->_usesItalic isCondensedMetrics:self->_usesCondensedMetrics];
  v32 = v6;
  v33 = v32;
  v34 = v31 | v30 | v42;
  v35 = v32;
  if (v9)
  {
    v35 = [v32 fontDescriptorByAddingAttributes:v9];
  }

  if (v34)
  {
    v36 = [v35 fontDescriptorWithSymbolicTraits:{objc_msgSend(v35, "symbolicTraits") | v34}];
    v37 = v36;
    if (v36)
    {
      v38 = v36;

      v35 = v38;
    }
  }

  v39 = [MEMORY[0x277D74300] fontWithDescriptor:v35 size:0.0];

  return v39;
}

- (void)_invalidateCachedFontsAndMetrics
{
  preferredFont = self->_preferredFont;
  self->_preferredFont = 0;

  self->_preferredFontMetrics.isAscenderInitialized = 0;
  self->_preferredFontMetrics.isBodyLeadingInitialized = 0;
  self->_preferredFontMetrics.isCapHeightInitialized = 0;
  self->_preferredFontMetrics.isDescenderInitialized = 0;
  defaultFont = self->_defaultFont;
  self->_defaultFont = 0;

  self->_defaultFontMetrics.isAscenderInitialized = 0;
  self->_defaultFontMetrics.isBodyLeadingInitialized = 0;
  self->_defaultFontMetrics.isCapHeightInitialized = 0;
  self->_defaultFontMetrics.isDescenderInitialized = 0;
  customFontPointSizeLayoutInterpolator = self->_customFontPointSizeLayoutInterpolator;
  self->_customFontPointSizeLayoutInterpolator = 0;
}

- (id)_fontPointSizeLayoutInterpolator
{
  customFontPointSizeLayoutInterpolator = self->_customFontPointSizeLayoutInterpolator;
  if (!customFontPointSizeLayoutInterpolator)
  {
    v4 = [objc_opt_class() _fontPointSizeLayoutInterpolatorForTextStyle:self->_textStyle];
    v5 = self->_customFontPointSizeLayoutInterpolator;
    self->_customFontPointSizeLayoutInterpolator = v4;

    customFontPointSizeLayoutInterpolator = self->_customFontPointSizeLayoutInterpolator;
  }

  return customFontPointSizeLayoutInterpolator;
}

- (id)_preferredFontDescriptorForTextStyle:(int64_t)style
{
  if ((style - 21) < 7)
  {
    goto LABEL_2;
  }

  if ((style - 19) >= 2)
  {
    if (style == 1000)
    {
LABEL_2:
      fontDescriptor = [(MPUFontDescriptor *)self _defaultFontDescriptorForTextStyle:style];
      goto LABEL_8;
    }

    _fontPointSizeLayoutInterpolator = [objc_opt_class() _baseNativeTextStyleForTextStyle:style];
    fontDescriptor = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:_fontPointSizeLayoutInterpolator];
  }

  else
  {
    _fontPointSizeLayoutInterpolator = [(MPUFontDescriptor *)self _fontPointSizeLayoutInterpolator];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

    [objc_opt_class() _layoutInterpolatorReferenceMetricForContentSizeCategory:preferredContentSizeCategory];
    [_fontPointSizeLayoutInterpolator valueForReferenceMetric:?];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:?];
    fontDescriptor = [v7 fontDescriptor];
  }

LABEL_8:

  return fontDescriptor;
}

- (void)_resetToDefaultValues
{
  self->_weight = 0;
  self->_leadingAdjustment = 0;
  self->_textStyle = 0;
  *(&self->_textStyle + 7) = 0;
  customFontPointSizeLayoutInterpolator = self->_customFontPointSizeLayoutInterpolator;
  self->_customFontPointSizeLayoutInterpolator = 0;

  self->_systemFontSize = 0.0;
  self->_defaultPointSizeAdjustment = 0.0;
}

@end