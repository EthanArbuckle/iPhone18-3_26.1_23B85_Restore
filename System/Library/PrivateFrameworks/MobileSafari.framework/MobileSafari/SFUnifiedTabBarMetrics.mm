@interface SFUnifiedTabBarMetrics
+ (double)_maximumActiveItemWidthForSizeClass:(unint64_t)class;
+ (double)minimumActiveItemWidthForSizeClass:(unint64_t)class;
+ (double)minimumInactiveItemWidthForSizeClass:(unint64_t)class;
+ (id)_maximumActiveItemWidthDefaultsKeyForSizeClass:(unint64_t)class;
- (SFUnifiedTabBarMetrics)initWithTraitCollection:(id)collection;
- (UIEdgeInsets)squishedGlassInsets;
- (double)maximumURLFieldWidthRatio;
- (double)minimumActiveItemWidth;
- (double)minimumActiveItemWidthRatio;
- (double)minimumInactiveItemWidth;
- (void)_sizeClassDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setSizeClass:(unint64_t)class;
@end

@implementation SFUnifiedTabBarMetrics

- (SFUnifiedTabBarMetrics)initWithTraitCollection:(id)collection
{
  v7.receiver = self;
  v7.super_class = SFUnifiedTabBarMetrics;
  v3 = [(SFUnifiedBarMetrics *)&v7 initWithTraitCollection:collection];
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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObserver:self forKeyPath:self->_maximumActiveItemWidthDefaultsKey context:&kvoContext];

  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarMetrics;
  [(SFUnifiedTabBarMetrics *)&v4 dealloc];
}

- (void)setSizeClass:(unint64_t)class
{
  if (self->_sizeClass != class)
  {
    self->_sizeClass = class;
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
      safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
      [safari_browserDefaults removeObserver:self forKeyPath:v6 context:&kvoContext];
    }

    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults2 addObserver:self forKeyPath:v3 options:4 context:&kvoContext];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kvoContext == context)
  {
    if ([path isEqualToString:{self->_maximumActiveItemWidthDefaultsKey, object, change}])
    {
      [objc_opt_class() _maximumActiveItemWidthForSizeClass:self->_sizeClass];
      self->_maximumActiveItemWidth = v7;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFUnifiedTabBarMetrics;
    [(SFUnifiedTabBarMetrics *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

+ (double)minimumActiveItemWidthForSizeClass:(unint64_t)class
{
  if (class <= 3)
  {
    v3 = off_1E721B758[class];
    v4 = dbl_18BC3DAF0[class];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults safari_doubleForKey:*v3 defaultValue:v4];
    v7 = v6;

    return v7;
  }

  return result;
}

+ (double)minimumInactiveItemWidthForSizeClass:(unint64_t)class
{
  if (class <= 3)
  {
    v3 = off_1E721B778[class];
    v4 = dbl_18BC3DB10[class];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults safari_doubleForKey:*v3 defaultValue:v4];
    v7 = v6;

    return v7;
  }

  return result;
}

+ (double)_maximumActiveItemWidthForSizeClass:(unint64_t)class
{
  v5 = [self _maximumActiveItemWidthDefaultsKeyForSizeClass:?];
  if (class <= 3)
  {
    v6 = dbl_18BC3DB30[class];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults safari_doubleForKey:v5 defaultValue:v6];
    v3 = v8;
  }

  return v3;
}

+ (id)_maximumActiveItemWidthDefaultsKeyForSizeClass:(unint64_t)class
{
  if (class <= 3)
  {
    self = *off_1E721B798[class];
  }

  return self;
}

- (double)minimumActiveItemWidth
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults safari_doubleForKey:@"DebugUnifiedBarMinimumActiveTabWidthRatio" defaultValue:0.67];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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