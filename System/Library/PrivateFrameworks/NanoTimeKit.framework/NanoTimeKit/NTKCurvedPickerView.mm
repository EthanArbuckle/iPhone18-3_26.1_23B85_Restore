@interface NTKCurvedPickerView
- (CGAffineTransform)_transformForAngle:(SEL)a3;
- (CGPoint)circleCenter;
- (NTKCurvedPickerView)init;
- (double)_alphaForIndex:(unint64_t)a3;
- (double)_angleForIndex:(unint64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)viewForSideAtIndex:(unint64_t)a3;
- (void)_setCurrentFraction:(double)a3;
- (void)enumerateSideViewsWithBlock:(id)a3;
- (void)layoutSubviews;
- (void)setCircleRadius:(double)a3 centerAngle:(double)a4 circleCenter:(CGPoint)a5 interior:(BOOL)a6;
- (void)setView:(id)a3 forSideAtIndex:(unint64_t)a4;
- (void)transitionToFraction:(double)a3 fromSideAtIndex:(unint64_t)a4 toSideAtIndex:(unint64_t)a5;
- (void)transitionToSideAtIndex:(unint64_t)a3;
@end

@implementation NTKCurvedPickerView

- (NTKCurvedPickerView)init
{
  v6.receiver = self;
  v6.super_class = NTKCurvedPickerView;
  v2 = [(NTKCurvedPickerView *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sideViews = v2->_sideViews;
    v2->_sideViews = v3;
  }

  return v2;
}

- (void)setCircleRadius:(double)a3 centerAngle:(double)a4 circleCenter:(CGPoint)a5 interior:(BOOL)a6
{
  self->_circleRadius = a3;
  self->_centerAngle = a4;
  self->_interior = a6;
  self->_circleCenter = a5;
  [(NTKCurvedPickerView *)self setNeedsLayout];
}

- (void)setView:(id)a3 forSideAtIndex:(unint64_t)a4
{
  v8 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v7 = [(NSMutableDictionary *)self->_sideViews objectForKeyedSubscript:v6];
  if (v7 != v8)
  {
    [v7 removeFromSuperview];
    if (v8)
    {
      [(NTKCurvedPickerView *)self addSubview:v8];
    }

    [(NSMutableDictionary *)self->_sideViews setObject:v8 forKeyedSubscript:v6];
  }
}

- (id)viewForSideAtIndex:(unint64_t)a3
{
  sideViews = self->_sideViews;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)sideViews objectForKeyedSubscript:v4];

  return v5;
}

- (void)enumerateSideViewsWithBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  [(NTKCurvedPickerView *)self numberOfSides];
  v5 = 0;
  do
  {
    sideViews = self->_sideViews;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v8 = [(NSMutableDictionary *)sideViews objectForKeyedSubscript:v7];

    if (v8)
    {
      v4[2](v4, v5, v8, &v10);
    }

    v9 = v10;

    if (v9 == 1)
    {
      break;
    }

    ++v5;
  }

  while (v5 <= [(NTKCurvedPickerView *)self numberOfSides]);
}

- (void)transitionToSideAtIndex:(unint64_t)a3
{
  self->_activeSide = a3;
  self->_transitioningSide = a3;
  [(NTKCurvedPickerView *)self _setCurrentFraction:0.0];
}

- (void)transitionToFraction:(double)a3 fromSideAtIndex:(unint64_t)a4 toSideAtIndex:(unint64_t)a5
{
  self->_activeSide = a4;
  self->_transitioningSide = a5;
  [(NTKCurvedPickerView *)self _setCurrentFraction:a3];
}

- (void)_setCurrentFraction:(double)a3
{
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  *&v6 = a3;
  [v5 _solveForInput:v6];
  self->_currentFraction = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__NTKCurvedPickerView__setCurrentFraction___block_invoke;
  v8[3] = &unk_2787872A0;
  v8[4] = self;
  [(NTKCurvedPickerView *)self enumerateSideViewsWithBlock:v8];
}

void __43__NTKCurvedPickerView__setCurrentFraction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _angleForIndex:a2];
  if (v5)
  {
    [v5 _transformForAngle:?];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v6 setTransform:v7];
  [*(a1 + 32) _alphaForIndex:a2];
  [v6 setAlpha:?];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = NTKCurvedPickerView;
  v5 = [(NTKCurvedPickerView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKCurvedPickerView;
  [(NTKCurvedPickerView *)&v22 layoutSubviews];
  [(NTKCurvedPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKCurvedPickerView *)self maskView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(NTKCurvedPickerView *)self convertPoint:0 fromView:self->_circleCenter.x, self->_circleCenter.y];
  v13 = v12;
  v15 = v14;
  v16 = -1.57079633;
  if (self->_interior)
  {
    v16 = 1.57079633;
  }

  circleRadius = self->_circleRadius;
  v18 = __sincos_stret(v16 - self->_centerAngle);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v19 = (v13 + circleRadius * v18.__cosval) / CGRectGetWidth(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Height = CGRectGetHeight(v24);
  v21[1] = 3221225472;
  v21[0] = MEMORY[0x277D85DD0];
  v21[2] = __37__NTKCurvedPickerView_layoutSubviews__block_invoke;
  v21[3] = &unk_2787869D8;
  *&v21[5] = v19;
  *&v21[6] = (v15 + circleRadius * v18.__sinval) / Height;
  *&v21[7] = v4;
  *&v21[8] = v6;
  *&v21[9] = v8;
  *&v21[10] = v10;
  v21[4] = self;
  [(NTKCurvedPickerView *)self enumerateSideViewsWithBlock:v21];
}

void __37__NTKCurvedPickerView_layoutSubviews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = [v5 layer];
  [v8 setAnchorPoint:{v6, v7}];

  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v16 = *MEMORY[0x277CBF2C0];
  v17 = v9;
  v18 = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setTransform:&v16];
  [v5 setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _angleForIndex:a2];
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 _transformForAngle:v10];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v16 = v13;
  v17 = v14;
  v18 = v15;
  [v5 setTransform:{&v16, v13, v14, v15}];
  [*(a1 + 32) _alphaForIndex:a2];
  [v5 setAlpha:?];
  if (objc_opt_respondsToSelector())
  {
    [v5 setCurvedAngle:-v11];
  }
}

- (CGAffineTransform)_transformForAngle:(SEL)a3
{
  [(NTKCurvedPickerView *)self bounds];
  result = CGRectIsEmpty(v20);
  if (result)
  {
    v8 = MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v9;
    v10 = *(v8 + 32);
  }

  else
  {
    v11 = -1.57079633;
    if (self->_interior)
    {
      v11 = 1.57079633;
    }

    circleRadius = self->_circleRadius;
    v13 = __sincos_stret(v11 - self->_centerAngle);
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    CGAffineTransformMakeTranslation(retstr, -(circleRadius * v13.__cosval), -(circleRadius * v13.__sinval));
    v14 = *&retstr->c;
    *&v18.a = *&retstr->a;
    *&v18.c = v14;
    *&v18.tx = *&retstr->tx;
    CGAffineTransformRotate(&v19, &v18, a4);
    v15 = *&v19.c;
    *&retstr->a = *&v19.a;
    *&retstr->c = v15;
    *&retstr->tx = *&v19.tx;
    v16 = *&retstr->c;
    *&v18.a = *&retstr->a;
    *&v18.c = v16;
    *&v18.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v19, &v18, circleRadius * v13.__cosval, circleRadius * v13.__sinval);
    v17 = *&v19.c;
    *&retstr->a = *&v19.a;
    *&retstr->c = v17;
    v10 = *&v19.tx;
  }

  *&retstr->tx = v10;
  return result;
}

- (double)_angleForIndex:(unint64_t)a3
{
  v5 = [(NTKCurvedPickerView *)self numberOfSides];
  activeSide = self->_activeSide;
  v7 = self->_circleRadius + self->_circleRadius;
  [(NTKCurvedPickerView *)self bounds];
  Width = CGRectGetWidth(v14);
  v9 = fabs(Width);
  v10 = 0.0;
  if (fabs(v7) >= 0.00000011920929 && v9 >= 0.00000011920929)
  {
    v12 = asin(Width / v7);
    return (v12 + v12) * (self->_currentFraction + ((v5 - a3 + v5 / 2 + activeSide) % v5 - v5 / 2));
  }

  return v10;
}

- (double)_alphaForIndex:(unint64_t)a3
{
  if (self->_activeSide == a3)
  {
    return 1.0 - self->_currentFraction;
  }

  result = 0.0;
  if (self->_transitioningSide == a3)
  {
    return self->_currentFraction;
  }

  return result;
}

- (CGPoint)circleCenter
{
  x = self->_circleCenter.x;
  y = self->_circleCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end