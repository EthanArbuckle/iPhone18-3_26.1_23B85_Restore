@interface MPUMutableFontDescriptor
- (id)_copyAllowingGlobalCacheLookup:(BOOL)a3;
- (void)_resetToDefaultValues;
- (void)setDefaultPointSizeAdjustment:(double)a3;
- (void)setLeadingAdjustment:(int64_t)a3;
- (void)setSystemFontSize:(double)a3;
- (void)setTextStyle:(int64_t)a3;
- (void)setUsesCondensedMetrics:(BOOL)a3;
- (void)setUsesItalic:(BOOL)a3;
- (void)setWantsMonospaceNumbers:(BOOL)a3;
- (void)setWeight:(int64_t)a3;
@end

@implementation MPUMutableFontDescriptor

- (void)setDefaultPointSizeAdjustment:(double)a3
{
  if (!MPUFloatEqualToFloat(self->super._defaultPointSizeAdjustment, a3))
  {
    self->super._defaultPointSizeAdjustment = a3;

    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setLeadingAdjustment:(int64_t)a3
{
  if (self->super._leadingAdjustment != a3)
  {
    self->super._leadingAdjustment = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setSystemFontSize:(double)a3
{
  if (!MPUFloatEqualToFloat(self->super._systemFontSize, a3))
  {
    self->super._systemFontSize = a3;

    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setTextStyle:(int64_t)a3
{
  if (self->super._textStyle != a3)
  {
    self->super._textStyle = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setWeight:(int64_t)a3
{
  if (self->super._weight != a3)
  {
    self->super._weight = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setUsesItalic:(BOOL)a3
{
  if (self->super._usesItalic != a3)
  {
    self->super._usesItalic = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setUsesCondensedMetrics:(BOOL)a3
{
  if (self->super._usesCondensedMetrics != a3)
  {
    self->super._usesCondensedMetrics = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (void)setWantsMonospaceNumbers:(BOOL)a3
{
  if (self->super._wantsMonospaceNumbers != a3)
  {
    self->super._wantsMonospaceNumbers = a3;
    [(MPUFontDescriptor *)self _invalidateCachedFontsAndMetrics];
  }
}

- (id)_copyAllowingGlobalCacheLookup:(BOOL)a3
{
  if (a3)
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