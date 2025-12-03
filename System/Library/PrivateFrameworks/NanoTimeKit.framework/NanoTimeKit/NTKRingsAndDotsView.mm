@interface NTKRingsAndDotsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKRingsAndDotsView)initWithFrame:(CGRect)frame diameter:(double)diameter ringWidth:(double)width ringGapWidth:(double)gapWidth overlapStrokeWidth:(double)strokeWidth;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)provider;
- (void)setForegroundColor:(id)color;
- (void)setHidesOverlapShadow:(BOOL)shadow;
- (void)setRingColors:(id)colors;
- (void)setRingsFillFractions:(id)fractions;
- (void)setShouldUseMonochromeAccentColor:(BOOL)color;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation NTKRingsAndDotsView

- (NTKRingsAndDotsView)initWithFrame:(CGRect)frame diameter:(double)diameter ringWidth:(double)width ringGapWidth:(double)gapWidth overlapStrokeWidth:(double)strokeWidth
{
  v19.receiver = self;
  v19.super_class = NTKRingsAndDotsView;
  v10 = [(NTKRingsAndDotsView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v11 = v10;
  if (v10)
  {
    layer = [(NTKRingsAndDotsView *)v10 layer];
    [layer setNeedsDisplayOnBoundsChange:1];

    [(NTKRingsAndDotsView *)v11 setOpaque:0];
    [(NTKRingsAndDotsView *)v11 setRingWidth:width];
    [(NTKRingsAndDotsView *)v11 setRingGapWidth:gapWidth];
    [(NTKRingsAndDotsView *)v11 _setDiameter:diameter];
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

- (CGSize)sizeThatFits:(CGSize)fits
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

- (void)setRingsFillFractions:(id)fractions
{
  fractionsCopy = fractions;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NTKRingsAndDotsView_setRingsFillFractions___block_invoke;
  v7[3] = &unk_278782408;
  v8 = fractionsCopy;
  v6 = fractionsCopy;
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

- (void)setHidesOverlapShadow:(BOOL)shadow
{
  self->_hidesOverlapShadow = shadow;
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NTKRingsAndDotsView_setHidesOverlapShadow___block_invoke;
  v4[3] = &__block_descriptor_33_e28_v32__0__NTKRingView_8Q16_B24l;
  shadowCopy = shadow;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NTKRingsAndDotsView_setForegroundColor___block_invoke;
  v7[3] = &unk_278782408;
  v8 = colorCopy;
  v6 = colorCopy;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
}

- (void)setRingColors:(id)colors
{
  colorsCopy = colors;
  if (self->_ringColors != colorsCopy)
  {
    objc_storeStrong(&self->_ringColors, colors);
    ringViews = self->_ringViews;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__NTKRingsAndDotsView_setRingColors___block_invoke;
    v7[3] = &unk_278782408;
    v8 = colorsCopy;
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

- (void)setShouldUseMonochromeAccentColor:(BOOL)color
{
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NTKRingsAndDotsView_setShouldUseMonochromeAccentColor___block_invoke;
  v4[3] = &__block_descriptor_33_e28_v32__0__NTKRingView_8Q16_B24l;
  colorCopy = color;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

- (void)setFilterProvider:(id)provider
{
  providerCopy = provider;
  ringViews = self->_ringViews;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NTKRingsAndDotsView_setFilterProvider___block_invoke;
  v7[3] = &unk_278782408;
  v8 = providerCopy;
  v6 = providerCopy;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v7];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  ringViews = self->_ringViews;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__NTKRingsAndDotsView_transitionToMonochromeWithFraction___block_invoke;
  v4[3] = &__block_descriptor_40_e28_v32__0__NTKRingView_8Q16_B24l;
  *&v4[4] = fraction;
  [(NSArray *)ringViews enumerateObjectsUsingBlock:v4];
}

@end