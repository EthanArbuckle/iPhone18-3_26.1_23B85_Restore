@interface MPUMutableFontDescriptor
- (id)_copyAllowingGlobalCacheLookup:(BOOL)lookup;
- (void)_resetToDefaultValues;
- (void)setDefaultPointSizeAdjustment:(double)adjustment;
- (void)setLeadingAdjustment:(int64_t)adjustment;
- (void)setSystemFontSize:(double)size;
- (void)setTextStyle:(int64_t)style;
- (void)setUsesCondensedMetrics:(BOOL)metrics;
- (void)setUsesItalic:(BOOL)italic;
- (void)setWantsMonospaceNumbers:(BOOL)numbers;
- (void)setWeight:(int64_t)weight;
@end

@implementation MPUMutableFontDescriptor

- (void)setDefaultPointSizeAdjustment:(double)adjustment
{
  if (!MPUFloatEqualToFloat(self->super._defaultPointSizeAdjustment, adjustment))
  {
    self->super._defaultPointSizeAdjustment = adjustment;

    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setLeadingAdjustment:(int64_t)adjustment
{
  if (self->super._leadingAdjustment != adjustment)
  {
    self->super._leadingAdjustment = adjustment;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setSystemFontSize:(double)size
{
  if (!MPUFloatEqualToFloat(self->super._systemFontSize, size))
  {
    self->super._systemFontSize = size;

    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setTextStyle:(int64_t)style
{
  if (self->super._textStyle != style)
  {
    self->super._textStyle = style;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setWeight:(int64_t)weight
{
  if (self->super._weight != weight)
  {
    self->super._weight = weight;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setUsesItalic:(BOOL)italic
{
  if (self->super._usesItalic != italic)
  {
    self->super._usesItalic = italic;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setUsesCondensedMetrics:(BOOL)metrics
{
  if (self->super._usesCondensedMetrics != metrics)
  {
    self->super._usesCondensedMetrics = metrics;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setWantsMonospaceNumbers:(BOOL)numbers
{
  if (self->super._wantsMonospaceNumbers != numbers)
  {
    self->super._wantsMonospaceNumbers = numbers;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (id)_copyAllowingGlobalCacheLookup:(BOOL)lookup
{
  if (lookup)
  {
    v4 = +[MPUFontDescriptorCache sharedFontDescriptorCache];
    v5 = [v4 cachedImmutableFontDescriptorMatchingMutableFontDescriptor:self];
  }

  else
  {
    v6 = objc_alloc_init(MPUFontDescriptor);
    v5 = v6;
    if (v6)
    {
      v6->_textStyle = self->super._textStyle;
      v6->_weight = self->super._weight;
      v6->_defaultPointSizeAdjustment = self->super._defaultPointSizeAdjustment;
      v6->_leadingAdjustment = self->super._leadingAdjustment;
      v6->_usesItalic = self->super._usesItalic;
      v6->_usesCondensedMetrics = self->super._usesCondensedMetrics;
      v6->_wantsMonospaceNumbers = self->super._wantsMonospaceNumbers;
      objc_storeStrong(&v6->_preferredFont, self->super._preferredFont);
      *(v5 + 64) = *&self->super._preferredFontMetrics.ascender;
      v7 = *&self->super._preferredFontMetrics.bodyLeading;
      v8 = *&self->super._preferredFontMetrics.capHeight;
      v9 = *&self->super._preferredFontMetrics.lineHeight;
      *(v5 + 112) = *&self->super._preferredFontMetrics.descender;
      *(v5 + 128) = v9;
      *(v5 + 80) = v7;
      *(v5 + 96) = v8;
      objc_storeStrong((v5 + 144), self->super._defaultFont);
      *(v5 + 152) = *&self->super._defaultFontMetrics.ascender;
      v10 = *&self->super._defaultFontMetrics.bodyLeading;
      v11 = *&self->super._defaultFontMetrics.capHeight;
      v12 = *&self->super._defaultFontMetrics.descender;
      *(v5 + 216) = *&self->super._defaultFontMetrics.lineHeight;
      *(v5 + 200) = v12;
      *(v5 + 184) = v11;
      *(v5 + 168) = v10;
      *(v5 + 24) = self->super._systemFontSize;
    }
  }

  return v5;
}

- (void)_resetToDefaultValues
{
  v2.receiver = self;
  v2.super_class = MPUMutableFontDescriptor;
  [(MPUFontDescriptor *)&v2 _resetToDefaultValues];
}

@end