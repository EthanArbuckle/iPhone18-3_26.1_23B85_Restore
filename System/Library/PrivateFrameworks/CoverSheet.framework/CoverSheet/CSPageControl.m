@interface CSPageControl
+ (CGRect)suggestedFrameForPageBounds:(CGRect)a3;
+ (CGRect)suggestedFrameForPageBounds:(CGRect)a3 desiredSize:(CGSize)a4;
+ (CGSize)defaultSize;
- (CGSize)sizeForNumberOfPages:(int64_t)a3;
- (CSPageControl)initWithFrame:(CGRect)a3;
- (id)_cameraIndicator;
- (id)_pageIndicatorColor;
- (void)_rebuildIndicators;
- (void)_updateForLegibility;
- (void)setCameraPageIndex:(unint64_t)a3;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation CSPageControl

- (CSPageControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CSPageControl;
  v3 = [(UIPageControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_cameraPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(UIPageControl *)v3 setBackgroundStyle:2];
    [(CSPageControl *)v4 _updateForLegibility];
    [(UIPageControl *)v4 _setCustomIndicatorSpacing:5.5];
  }

  return v4;
}

- (CGSize)sizeForNumberOfPages:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSPageControl;
  [(UIPageControl *)&v5 sizeForNumberOfPages:a3];
  v4 = 10.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)defaultSize
{
  if (defaultSize_onceToken != -1)
  {
    +[CSPageControl defaultSize];
  }

  v2 = *&defaultSize___DefaultSize_0;
  v3 = *&defaultSize___DefaultSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __28__CSPageControl_defaultSize__block_invoke()
{
  v0 = [CSPageControl alloc];
  v2 = [(CSPageControl *)v0 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(UIPageControl *)v2 setNumberOfPages:3];
  [(CSPageControl *)v2 sizeForNumberOfPages:3];
  defaultSize___DefaultSize_0 = v1;
  defaultSize___DefaultSize_1 = 0x4028000000000000;
}

+ (CGRect)suggestedFrameForPageBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a1 defaultSize];

  [a1 suggestedFrameForPageBounds:x desiredSize:{y, width, height, v8, v9}];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (CGRect)suggestedFrameForPageBounds:(CGRect)a3 desiredSize:(CGSize)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) <= 1)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    [v8 userInterfaceIdiom];
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetMidX(v15);
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)setCameraPageIndex:(unint64_t)a3
{
  if (self->_cameraPageIndex != a3)
  {
    self->_cameraPageIndex = a3;
    [(CSPageControl *)self _rebuildIndicators];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_sbLegibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_sbLegibilitySettings, a3);
    [(CSPageControl *)self _updateForLegibility];
  }
}

- (void)_rebuildIndicators
{
  [(UIPageControl *)self _invalidateIndicators];
  [(UIPageControl *)self setPreferredIndicatorImage:0];
  if (self->_cameraPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(CSPageControl *)self _cameraIndicator];
    [(UIPageControl *)self setIndicatorImage:v3 forPage:self->_cameraPageIndex];
  }

  [(CSPageControl *)self _updateForLegibility];
}

- (void)_updateForLegibility
{
  v3 = [(CSPageControl *)self _pageIndicatorColor];
  [(UIPageControl *)self setPageIndicatorTintColor:v3];

  v4 = [(CSPageControl *)self _currentPageIndicatorColor];
  [(UIPageControl *)self setCurrentPageIndicatorTintColor:v4];
}

- (id)_cameraIndicator
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:12.25];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"camera.fill" withConfiguration:v3];
  [(CSPageControl *)self setContentVerticalAlignment:2];

  return v4;
}

- (id)_pageIndicatorColor
{
  v2 = [(_UILegibilitySettings *)self->_sbLegibilitySettings primaryColor];
  v3 = [v2 colorWithAlphaComponent:0.45];

  return v3;
}

@end