@interface NTKRingsAndDotsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKRingsAndDotsView)initWithFrame:(CGRect)a3 diameter:(double)a4 ringWidth:(double)a5 ringGapWidth:(double)a6 overlapStrokeWidth:(double)a7;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setHidesOverlapShadow:(BOOL)a3;
- (void)setRingColors:(id)a3;
- (void)setRingsFillFractions:(id)a3;
- (void)setShouldUseMonochromeAccentColor:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
@end

@implementation NTKRingsAndDotsView

- (NTKRingsAndDotsView)initWithFrame:(CGRect)a3 diameter:(double)a4 ringWidth:(double)a5 ringGapWidth:(double)a6 overlapStrokeWidth:(double)a7
{
  v19.receiver = self;
  v19.super_class = NTKRingsAndDotsView;
  v10 = [(NTKRingsAndDotsView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v11 = v10;
  if (v10)
  {
    v12 = [(NTKRingsAndDotsView *)v10 layer];
    [v12 setNeedsDisplayOnBoundsChange:1];

    [(NTKRingsAndDotsView *)v11 setOpaque:0];
    [(NTKRingsAndDotsView *)v11 setRingWidth:a5];
    [(NTKRingsAndDotsView *)v11 setRingGapWidth:a6];
    [(NTKRingsAndDotsView *)v11 _setDiameter:a4];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    for (i = 0; i != 3; ++i)
    {
      [(NTKRingsAndDotsView *)v11 radiusForRingAtIndex:i];
      v15 = [NTKRingView alloc];
      [(NTKRingsAndDotsView *)v11 bounds];
      v16 = [NTKRingView initWithFrame:v15 radius:"initWithFrame:radius:ringWidth:overlapWidth:" ringWidth:? overlapWidth:?];
      [(NTKRingsAndDotsView *)v11 addSubview:v16];
      [(NSArray *)v13 addObject:v16];
    }

    ringViews = v11->_ringViews;
    v11->_ringViews = v13;

    [(NTKRingsAndDotsView *)v11 sizeToFit];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  diameter = self->_diameter;
  v4 = diameter;
  result.height = v4;
  result.width = diameter;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKRingsAndDotsView;
  [(NTKRingsAndDotsView *)&v5 layoutSubviews];
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__NTKRingsAndDotsView_layoutSubviews__block_invoke;
  v4[3] = &unk_278782408;
  v4[4] = self;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

void __37__NTKRingsAndDotsView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)setRingsFillFractions:(id)a3
{
  v4 = a3;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NTKRingsAndDotsView_setRingsFillFractions___block_invoke;
  v7[3] = &unk_278782408;
  v8 = v4;
  v6 = v4;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
}

void __45__NTKRingsAndDotsView_setRingsFillFractions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 objectAtIndexedSubscript:a3];
  [v7 floatValue];
  [v5 setFillFraction:v6];
}

- (void)setHidesOverlapShadow:(BOOL)a3
{
  self->_hidesOverlapShadow = a3;
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NTKRingsAndDotsView_setHidesOverlapShadow___block_invoke;
  v4[3] = &__block_descriptor_33_e28_v32__0__NTKRingView_8Q16_B24l;
  v5 = a3;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

- (void)setForegroundColor:(id)a3
{
  v4 = a3;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NTKRingsAndDotsView_setForegroundColor___block_invoke;
  v7[3] = &unk_278782408;
  v8 = v4;
  v6 = v4;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
}

- (void)setRingColors:(id)a3
{
  v5 = a3;
  if (self->_ringColors != v5)
  {
    objc_storeStrong(&self->_ringColors, a3);
    ringViews = self->_ringViews;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__NTKRingsAndDotsView_setRingColors___block_invoke;
    v7[3] = &unk_278782408;
    v8 = v5;
    [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
  }
}

void __37__NTKRingsAndDotsView_setRingColors___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 setColor:v6];
}

- (void)setShouldUseMonochromeAccentColor:(BOOL)a3
{
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NTKRingsAndDotsView_setShouldUseMonochromeAccentColor___block_invoke;
  v4[3] = &__block_descriptor_33_e28_v32__0__NTKRingView_8Q16_B24l;
  v5 = a3;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

- (void)setFilterProvider:(id)a3
{
  v4 = a3;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NTKRingsAndDotsView_setFilterProvider___block_invoke;
  v7[3] = &unk_278782408;
  v8 = v4;
  v6 = v4;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__NTKRingsAndDotsView_transitionToMonochromeWithFraction___block_invoke;
  v4[3] = &__block_descriptor_40_e28_v32__0__NTKRingView_8Q16_B24l;
  *&v4[4] = a3;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

@end