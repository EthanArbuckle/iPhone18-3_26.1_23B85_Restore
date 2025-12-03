@interface DBIconListPageControl
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)intrinsicContentSize;
- (DBIconListPageControl)initWithFrame:(CGRect)frame;
- (void)setAlpha:(double)alpha;
- (void)setShowsButtons:(BOOL)buttons;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBIconListPageControl

- (DBIconListPageControl)initWithFrame:(CGRect)frame
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = DBIconListPageControl;
  v3 = [(SBIconListPageControl *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    traitCollection = [(DBIconListPageControl *)v3 traitCollection];
    v6 = [labelColor resolvedColorWithTraitCollection:traitCollection];
    [(UIPageControl *)v3 setCurrentPageIndicatorTintColor:v6];

    _carSystemTertiaryColor = [MEMORY[0x277D75348] _carSystemTertiaryColor];
    traitCollection2 = [(DBIconListPageControl *)v3 traitCollection];
    v9 = [_carSystemTertiaryColor resolvedColorWithTraitCollection:traitCollection2];
    [(UIPageControl *)v3 setPageIndicatorTintColor:v9];

    [(UIPageControl *)v3 setAllowsContinuousInteraction:0];
    v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v10 setName:@"gaussianBlur"];
    [v10 setValue:&unk_285AA4AA8 forKey:@"inputRadius"];
    layer = [(DBIconListPageControl *)v3 layer];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [layer setFilters:v12];

    layer2 = [(DBIconListPageControl *)v3 layer];
    [layer2 setShouldRasterize:0];
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DBIconListPageControl;
    v5 = [(SBIconListPageControl *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = DBIconListPageControl;
  [(DBIconListPageControl *)&v10 traitCollectionDidChange:change];
  labelColor = [MEMORY[0x277D75348] labelColor];
  traitCollection = [(DBIconListPageControl *)self traitCollection];
  v6 = [labelColor resolvedColorWithTraitCollection:traitCollection];
  [(UIPageControl *)self setCurrentPageIndicatorTintColor:v6];

  _carSystemTertiaryColor = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  traitCollection2 = [(DBIconListPageControl *)self traitCollection];
  v9 = [_carSystemTertiaryColor resolvedColorWithTraitCollection:traitCollection2];
  [(UIPageControl *)self setPageIndicatorTintColor:v9];
}

- (CGSize)intrinsicContentSize
{
  v8.receiver = self;
  v8.super_class = DBIconListPageControl;
  [(UIPageControl *)&v8 intrinsicContentSize];
  v4 = v3;
  showsButtons = [(DBIconListPageControl *)self showsButtons];
  v6 = 21.0;
  if (!showsButtons)
  {
    v6 = 10.0;
  }

  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setShowsButtons:(BOOL)buttons
{
  if (self->_showsButtons != buttons)
  {
    self->_showsButtons = buttons;
    [(DBIconListPageControl *)self setNeedsLayout];
  }
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = DBIconListPageControl;
  [(DBIconListPageControl *)&v7 setAlpha:?];
  layer = [(DBIconListPageControl *)self layer];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:(1.0 - alpha) * 8.0];
  [layer setValue:v6 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

@end