@interface SFUnifiedTabBarMetrics
+ (double)_maximumActiveItemWidthForSizeClass:(unint64_t)a3;
+ (double)minimumActiveItemWidthForSizeClass:(unint64_t)a3;
+ (double)minimumInactiveItemWidthForSizeClass:(unint64_t)a3;
+ (id)_maximumActiveItemWidthDefaultsKeyForSizeClass:(unint64_t)a3;
- (SFUnifiedTabBarMetrics)initWithTraitCollection:(id)a3;
- (UIEdgeInsets)squishedGlassInsets;
- (double)maximumURLFieldWidthRatio;
- (double)minimumActiveItemWidth;
- (double)minimumActiveItemWidthRatio;
- (double)minimumInactiveItemWidth;
- (void)_sizeClassDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setSizeClass:(unint64_t)a3;
@end

@implementation SFUnifiedTabBarMetrics

- (SFUnifiedTabBarMetrics)initWithTraitCollection:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFUnifiedTabBarMetrics;
  v3 = [(SFUnifiedBarMetrics *)&v7 initWithTraitCollection:a3];
  v4 = v3;
  if (v3)
  {
    [(SFUnifiedTabBarMetrics *)v3 _sizeClassDidChange];
    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 removeObserver:self forKeyPath:self->_maximumActiveItemWidthDefaultsKey context:&kvoContext];

  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarMetrics;
  [(SFUnifiedTabBarMetrics *)&v4 dealloc];
}

- (void)setSizeClass:(unint64_t)a3
{
  if (self->_sizeClass != a3)
  {
    self->_sizeClass = a3;
    [(SFUnifiedTabBarMetrics *)self _sizeClassDidChange];
  }
}

- (void)_sizeClassDidChange
{
  v6 = self->_maximumActiveItemWidthDefaultsKey;
  v3 = [objc_opt_class() _maximumActiveItemWidthDefaultsKeyForSizeClass:self->_sizeClass];
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_maximumActiveItemWidthDefaultsKey, v3);
    if (v6)
    {
      v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [v4 removeObserver:self forKeyPath:v6 context:&kvoContext];
    }

    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v5 addObserver:self forKeyPath:v3 options:4 context:&kvoContext];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kvoContext == a6)
  {
    if ([a3 isEqualToString:{self->_maximumActiveItemWidthDefaultsKey, a4, a5}])
    {
      [objc_opt_class() _maximumActiveItemWidthForSizeClass:self->_sizeClass];
      self->_maximumActiveItemWidth = v7;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFUnifiedTabBarMetrics;
    [(SFUnifiedTabBarMetrics *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

+ (double)minimumActiveItemWidthForSizeClass:(unint64_t)a3
{
  if (a3 <= 3)
  {
    v3 = off_1E721B758[a3];
    v4 = dbl_18BC3DAF0[a3];
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v5 safari_doubleForKey:*v3 defaultValue:v4];
    v7 = v6;

    return v7;
  }

  return result;
}

+ (double)minimumInactiveItemWidthForSizeClass:(unint64_t)a3
{
  if (a3 <= 3)
  {
    v3 = off_1E721B778[a3];
    v4 = dbl_18BC3DB10[a3];
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v5 safari_doubleForKey:*v3 defaultValue:v4];
    v7 = v6;

    return v7;
  }

  return result;
}

+ (double)_maximumActiveItemWidthForSizeClass:(unint64_t)a3
{
  v5 = [a1 _maximumActiveItemWidthDefaultsKeyForSizeClass:?];
  if (a3 <= 3)
  {
    v6 = dbl_18BC3DB30[a3];
    v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v7 safari_doubleForKey:v5 defaultValue:v6];
    v3 = v8;
  }

  return v3;
}

+ (id)_maximumActiveItemWidthDefaultsKeyForSizeClass:(unint64_t)a3
{
  if (a3 <= 3)
  {
    a1 = *off_1E721B798[a3];
  }

  return a1;
}

- (double)minimumActiveItemWidth
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 bounds];
    v5 = v4;

    result = 360.0;
    if (v5 > 1133.0)
    {
      return 320.0;
    }
  }

  else
  {
    v7 = objc_opt_class();
    sizeClass = self->_sizeClass;

    [v7 minimumActiveItemWidthForSizeClass:sizeClass];
  }

  return result;
}

- (double)minimumActiveItemWidthRatio
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v2 safari_doubleForKey:@"DebugUnifiedBarMinimumActiveTabWidthRatio" defaultValue:0.67];
  v4 = v3;

  return v4;
}

- (double)minimumInactiveItemWidth
{
  v3 = objc_opt_class();
  sizeClass = self->_sizeClass;

  [v3 minimumInactiveItemWidthForSizeClass:sizeClass];
  return result;
}

- (double)maximumURLFieldWidthRatio
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3 > 1133.0;

  return dbl_18BC3DAE0[v4];
}

- (UIEdgeInsets)squishedGlassInsets
{
  v2 = 8.0;
  v3 = -16.0;
  v4 = 8.0;
  v5 = -16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end