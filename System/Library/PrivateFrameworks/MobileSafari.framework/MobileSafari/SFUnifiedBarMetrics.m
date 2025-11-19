@interface SFUnifiedBarMetrics
+ (NSArray)traitsAffectingBarMetrics;
+ (double)minimumSquishScaleForStandaloneContent;
+ (double)squishedInlineBarHeight;
+ (double)transitioningItemScale;
- (BOOL)_updateWithContentSizeCategory:(id)a3 legibilityWeight:(int64_t)a4;
- (BOOL)updateWithTraitCollection:(id)a3;
- (SFUnifiedBarMetrics)initWithTraitCollection:(id)a3;
- (double)_scaledValueForValue:(double)a3;
- (double)defaultItemHeight;
- (double)defaultItemWidth;
- (double)itemCornerRadius;
- (double)leadingTabIconInset;
- (double)maximumItemSpacing;
- (double)minimumItemSpacing;
- (double)minimumItemWidth;
- (double)tabCloseButtonWidth;
- (void)_updateMetrics;
- (void)setMetricsCategory:(int64_t)a3;
@end

@implementation SFUnifiedBarMetrics

+ (NSArray)traitsAffectingBarMetrics
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (double)minimumSquishScaleForStandaloneContent
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 0.0;
  }

  [a1 minimumSquishScale];
  return result;
}

+ (double)squishedInlineBarHeight
{
  v2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 19.0;
  if (v2)
  {
    return 25.0;
  }

  return result;
}

+ (double)transitioningItemScale
{
  v2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 0.8;
  if (v2)
  {
    return 0.7;
  }

  return result;
}

- (SFUnifiedBarMetrics)initWithTraitCollection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFUnifiedBarMetrics;
  v5 = [(SFUnifiedBarMetrics *)&v8 init];
  if (v5)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v5->_metricsCategory = 2;
    }

    [(SFUnifiedBarMetrics *)v5 updateWithTraitCollection:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setMetricsCategory:(int64_t)a3
{
  if (self->_metricsCategory != a3)
  {
    self->_metricsCategory = a3;
    [(SFUnifiedBarMetrics *)self _updateMetrics];
  }
}

- (BOOL)updateWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v4 legibilityWeight];

  LOBYTE(self) = [(SFUnifiedBarMetrics *)self _updateWithContentSizeCategory:v5 legibilityWeight:v6];
  return self;
}

- (BOOL)_updateWithContentSizeCategory:(id)a3 legibilityWeight:(int64_t)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UITraitCollection *)self->_traitCollection preferredContentSizeCategory];
  if (!WBSIsEqual())
  {

    goto LABEL_5;
  }

  v8 = [(UITraitCollection *)self->_traitCollection legibilityWeight];

  if (v8 != a4)
  {
LABEL_5:
    v10 = MEMORY[0x1E69DD1B8];
    v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
    v17[0] = v11;
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:a4];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v10 traitCollectionWithTraitsFromCollections:v13];
    traitCollection = self->_traitCollection;
    self->_traitCollection = v14;

    [(SFUnifiedBarMetrics *)self _updateMetrics];
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)_updateMetrics
{
  [(SFUnifiedBarMetrics *)self defaultItemHeight];
  v4 = v3;
  [(SFUnifiedBarMetrics *)self _scaledValueForValue:?];
  self->_itemHeight = fmax(v5, v4);
  [objc_opt_class() squishedInlineBarHeight];
  [(SFUnifiedBarMetrics *)self _scaledValueForValue:?];
  self->_squishedInlineBarHeight = v6;
}

- (double)_scaledValueForValue:(double)a3
{
  v5 = [MEMORY[0x1E69DCA40] defaultMetrics];
  [v5 scaledValueForValue:self->_traitCollection compatibleWithTraitCollection:a3];
  v7 = v6;

  return v7;
}

- (double)defaultItemHeight
{
  metricsCategory = self->_metricsCategory;
  result = 36.0;
  if (metricsCategory == 1)
  {
    result = 32.0;
  }

  if (metricsCategory == 2)
  {
    return 44.0;
  }

  return result;
}

- (double)defaultItemWidth
{
  if (self->_metricsCategory != 2)
  {
    return 40.0;
  }

  [(SFUnifiedBarMetrics *)self itemHeight];
  return result;
}

- (double)itemCornerRadius
{
  v3 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 10.0;
  if (v3)
  {
    [(SFUnifiedBarMetrics *)self itemHeight];
    return v5 * 0.5;
  }

  return result;
}

- (double)leadingTabIconInset
{
  metricsCategory = self->_metricsCategory;
  result = 10.0;
  if (metricsCategory == 1)
  {
    result = 7.0;
  }

  if (metricsCategory == 2)
  {
    return 17.0;
  }

  return result;
}

- (double)maximumItemSpacing
{
  result = 34.0;
  if (self->_metricsCategory == 2)
  {
    return 12.0;
  }

  return result;
}

- (double)minimumItemSpacing
{
  result = 20.0;
  if (self->_metricsCategory == 2)
  {
    return 12.0;
  }

  return result;
}

- (double)minimumItemWidth
{
  if (self->_metricsCategory != 2)
  {
    return 0.0;
  }

  [(SFUnifiedBarMetrics *)self itemHeight];
  return result;
}

- (double)tabCloseButtonWidth
{
  metricsCategory = self->_metricsCategory;
  if (metricsCategory == 2)
  {
    [(SFUnifiedBarMetrics *)self itemHeight:v2];
    return v6 * 0.5;
  }

  else if (metricsCategory == 1)
  {
    return 33.0;
  }

  else
  {
    return 36.0;
  }
}

@end