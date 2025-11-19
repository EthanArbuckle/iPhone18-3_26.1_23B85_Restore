@interface DBIconListPageControl
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)intrinsicContentSize;
- (DBIconListPageControl)initWithFrame:(CGRect)a3;
- (void)setAlpha:(double)a3;
- (void)setShowsButtons:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBIconListPageControl

- (DBIconListPageControl)initWithFrame:(CGRect)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = DBIconListPageControl;
  v3 = [(SBIconListPageControl *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] labelColor];
    v5 = [(DBIconListPageControl *)v3 traitCollection];
    v6 = [v4 resolvedColorWithTraitCollection:v5];
    [(UIPageControl *)v3 setCurrentPageIndicatorTintColor:v6];

    v7 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
    v8 = [(DBIconListPageControl *)v3 traitCollection];
    v9 = [v7 resolvedColorWithTraitCollection:v8];
    [(UIPageControl *)v3 setPageIndicatorTintColor:v9];

    [(UIPageControl *)v3 setAllowsContinuousInteraction:0];
    v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v10 setName:@"gaussianBlur"];
    [v10 setValue:&unk_285AA4AA8 forKey:@"inputRadius"];
    v11 = [(DBIconListPageControl *)v3 layer];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v11 setFilters:v12];

    v13 = [(DBIconListPageControl *)v3 layer];
    [v13 setShouldRasterize:0];
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DBIconListPageControl;
    v5 = [(SBIconListPageControl *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = DBIconListPageControl;
  [(DBIconListPageControl *)&v10 traitCollectionDidChange:a3];
  v4 = [MEMORY[0x277D75348] labelColor];
  v5 = [(DBIconListPageControl *)self traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection:v5];
  [(UIPageControl *)self setCurrentPageIndicatorTintColor:v6];

  v7 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  v8 = [(DBIconListPageControl *)self traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];
  [(UIPageControl *)self setPageIndicatorTintColor:v9];
}

- (CGSize)intrinsicContentSize
{
  v8.receiver = self;
  v8.super_class = DBIconListPageControl;
  [(UIPageControl *)&v8 intrinsicContentSize];
  v4 = v3;
  v5 = [(DBIconListPageControl *)self showsButtons];
  v6 = 21.0;
  if (!v5)
  {
    v6 = 10.0;
  }

  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setShowsButtons:(BOOL)a3
{
  if (self->_showsButtons != a3)
  {
    self->_showsButtons = a3;
    [(DBIconListPageControl *)self setNeedsLayout];
  }
}

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = DBIconListPageControl;
  [(DBIconListPageControl *)&v7 setAlpha:?];
  v5 = [(DBIconListPageControl *)self layer];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:(1.0 - a3) * 8.0];
  [v5 setValue:v6 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

@end