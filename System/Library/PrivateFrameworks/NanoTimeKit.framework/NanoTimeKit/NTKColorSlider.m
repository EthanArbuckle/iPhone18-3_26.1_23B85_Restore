@interface NTKColorSlider
- (BOOL)_valueIsInsideMidpoint:(float)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (NTKColorSlider)initWithFrame:(CGRect)a3;
- (NTKColorSliderDelegate)delegate;
- (double)_colorGradientStep;
- (id)createThumbView;
- (void)_setValue:(float)a3 animated:(BOOL)a4;
- (void)_touchEnded;
- (void)_updateThumbColor;
- (void)layoutSubviews;
- (void)setColors:(id)a3;
- (void)valueDidChange:(id)a3 forEvent:(id)a4;
@end

@implementation NTKColorSlider

- (NTKColorSlider)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = NTKColorSlider;
  v3 = [(NTKColorSlider *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKColorSlider *)v3 setMinimumValue:0.0];
    LODWORD(v5) = 1.0;
    [(NTKColorSlider *)v4 setMaximumValue:v5];
    LODWORD(v6) = 0.5;
    [(NTKColorSlider *)v4 setValue:v6];
    v4->_layoutDirection = CLKLayoutIsRTL();
    v7 = [objc_alloc(MEMORY[0x277D75F30]) initWithStyle:2];
    [(NTKColorSlider *)v4 _setEdgeFeedbackGenerator:v7];

    v8 = [(NTKColorSlider *)v4 _edgeFeedbackGenerator];
    [v8 setAxis:1];

    [(NTKColorSlider *)v4 maximumValue];
    v10 = v9;
    [(NTKColorSlider *)v4 minimumValue];
    v12 = (v10 - v11);
    v13 = [(NTKColorSlider *)v4 _edgeFeedbackGenerator];
    [v13 setDistance:v12];

    v14 = objc_alloc_init(MEMORY[0x277D75A10]);
    selectionFeedbackGenerator = v4->_selectionFeedbackGenerator;
    v4->_selectionFeedbackGenerator = v14;

    [(UISelectionFeedbackGenerator *)v4->_selectionFeedbackGenerator _setOutputMode:5];
    [(NTKColorSlider *)v4 addTarget:v4 action:sel_valueDidChange_forEvent_ forControlEvents:4096];
    if (_UISolariumEnabled())
    {
      [(NTKColorSlider *)v4 _setSliderStyle:120];
      [(NTKColorSlider *)v4 addTarget:v4 action:sel__touchEnded forControlEvents:192];
    }

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v16 = [MEMORY[0x277CD9EB0] layer];
      trackLayer = v4->_trackLayer;
      v4->_trackLayer = v16;

      [(CAGradientLayer *)v4->_trackLayer setCornerCurve:*MEMORY[0x277CDA138]];
      [(CAGradientLayer *)v4->_trackLayer setStartPoint:0.0, 0.5];
      [(CAGradientLayer *)v4->_trackLayer setEndPoint:1.0, 0.5];
      if (v4->_layoutDirection == 1)
      {
        CATransform3DMakeScale(&v26, -1.0, 1.0, 1.0);
      }

      else
      {
        v18 = *(MEMORY[0x277CD9DE8] + 80);
        *&v26.m31 = *(MEMORY[0x277CD9DE8] + 64);
        *&v26.m33 = v18;
        v19 = *(MEMORY[0x277CD9DE8] + 112);
        *&v26.m41 = *(MEMORY[0x277CD9DE8] + 96);
        *&v26.m43 = v19;
        v20 = *(MEMORY[0x277CD9DE8] + 16);
        *&v26.m11 = *MEMORY[0x277CD9DE8];
        *&v26.m13 = v20;
        v21 = *(MEMORY[0x277CD9DE8] + 48);
        *&v26.m21 = *(MEMORY[0x277CD9DE8] + 32);
        *&v26.m23 = v21;
      }

      v22 = v4->_trackLayer;
      v25 = v26;
      [(CAGradientLayer *)v22 setTransform:&v25];
      v23 = [(NTKColorSlider *)v4 layer];
      [v23 insertSublayer:v4->_trackLayer atIndex:0];

      [(NTKColorSlider *)v4 setClipsToBounds:0];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKColorSlider;
  [(NTKColorSlider *)&v14 layoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(NTKColorSlider *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIImageView *)self->_thumbView bounds];
    [(NTKColorSliderThumbView *)self->_thumbContent setFrame:?];
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    v16 = CGRectInset(v15, *MEMORY[0x277CBF3A8], 9.0);
    width = v16.size.width;
    height = v16.size.height;
    [(CAGradientLayer *)self->_trackLayer setFrame:v16.origin.x, v16.origin.y];
    if (width >= height)
    {
      v13 = height;
    }

    else
    {
      v13 = width;
    }

    [(CAGradientLayer *)self->_trackLayer setCornerRadius:v13 * 0.5];
  }
}

- (void)setColors:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_colors, a3);
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [(NTKColorSlider *)self _colorGradientStep];
  v9 = v8;
  colors = self->_colors;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __28__NTKColorSlider_setColors___block_invoke;
  v14[3] = &unk_278786770;
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v17 = v9;
  [(NSArray *)colors enumerateObjectsUsingBlock:v14];
  if (_UISolariumEnabled())
  {
    v13 = [objc_alloc(MEMORY[0x277D76248]) initWithColors:v5 locations:v12];
    [(NTKColorSlider *)self _setSliderConfiguration:v13];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [(CAGradientLayer *)self->_trackLayer setColors:v11];
    [(CAGradientLayer *)self->_trackLayer setLocations:v12];
    [(NTKColorSlider *)self _updateThumbColor];
    [MEMORY[0x277CD9FF0] commit];
  }
}

void __28__NTKColorSlider_setColors___block_invoke(uint64_t a1, id a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 addObject:{objc_msgSend(a2, "CGColor")}];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48) * a3];
  [v8 addObject:v9];
}

- (void)_updateThumbColor
{
  if ((_UISolariumEnabled() & 1) != 0 || ![(NSArray *)self->_colors count])
  {
    return;
  }

  [(NTKColorSlider *)self value];
  if (v3 == 0.0)
  {
    colors = self->_colors;
    v5 = 0;
  }

  else
  {
    [(NTKColorSlider *)self value];
    if (v6 != 1.0)
    {
      [(NTKColorSlider *)self _colorGradientStep];
      v10 = v9;
      [(NTKColorSlider *)self value];
      v12 = v11 / v10;
      v13 = [(NSArray *)self->_colors objectAtIndexedSubscript:v12];
      v14 = [(NSArray *)self->_colors objectAtIndexedSubscript:v12 + 1];
      v16 = NTKInterpolateBetweenColors();

      v8 = v16;
      goto LABEL_9;
    }

    v7 = self->_colors;
    v5 = [(NSArray *)v7 count]- 1;
    colors = v7;
  }

  v8 = [(NSArray *)colors objectAtIndexedSubscript:v5];
LABEL_9:
  v15 = v8;
  [(NTKColorSliderThumbView *)self->_thumbContent setColor:v8];
}

- (double)_colorGradientStep
{
  v3 = [(NSArray *)self->_colors count];
  result = 1.0;
  if (v3 >= 2)
  {
    return 1.0 / ([(NSArray *)self->_colors count]- 1);
  }

  return result;
}

- (id)createThumbView
{
  thumbView = self->_thumbView;
  if (!thumbView)
  {
    v4 = objc_opt_new();
    v5 = self->_thumbView;
    self->_thumbView = v4;

    v6 = objc_opt_new();
    thumbContent = self->_thumbContent;
    self->_thumbContent = v6;

    [(UIImageView *)self->_thumbView addSubview:self->_thumbContent];
    [(NTKColorSlider *)self _updateThumbColor];
    thumbView = self->_thumbView;
  }

  return thumbView;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19.receiver = self;
  v19.super_class = NTKColorSlider;
  [(NTKColorSlider *)&v19 trackRectForBounds:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v12 = CGRectGetWidth(v20) + 18.0;
    v8 = -9.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v22 = a3.origin.x;
  if (_UISolariumEnabled())
  {
    v23.receiver = self;
    v23.super_class = NTKColorSlider;
    [(NTKColorSlider *)&v23 thumbRectForBounds:v22 trackRect:v11 value:v10, v9, x, y, width, height, LODWORD(a5)];
  }

  else
  {
    [(NTKColorSliderThumbView *)self->_thumbContent sizeThatFits:v10, v9];
    v18 = v17;
    v20 = v19;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetWidth(v25);
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v18;
    v26.size.height = v20;
    CGRectGetWidth(v26);
    UIRectCenteredYInRectScale();
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setValue:(float)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = NTKColorSlider;
  [(NTKColorSlider *)&v5 setValue:a4 animated:?];
  [(NTKColorSlider *)self _updateThumbColor];
}

- (BOOL)_valueIsInsideMidpoint:(float)a3
{
  [(NTKColorSlider *)self maximumValue];
  v6 = v5;
  [(NTKColorSlider *)self minimumValue];
  v8 = a3 + ((v6 - v7) * -0.5);
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  return v8 + -0.01 < 0.0;
}

- (void)valueDidChange:(id)a3 forEvent:(id)a4
{
  v5 = a4;
  [(NTKColorSlider *)self value];
  v7 = v6;
  if ([(NTKColorSlider *)self _valueIsInsideMidpoint:?])
  {
    if (!self->_shouldTriggerMidpointFeedback)
    {
      goto LABEL_6;
    }

    [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator selectionChanged];
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  self->_shouldTriggerMidpointFeedback = v8;
LABEL_6:
  v9 = v7;
  [(NTKColorSlider *)self _updateThumbColor];
  v10 = [v5 allTouches];

  v26 = [v10 anyObject];

  if (!v26)
  {
    goto LABEL_18;
  }

  v11 = [v26 phase];
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator prepare];
      v18 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
      [v18 prepare];

      v19 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
      [v19 userInteractionStarted];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained colorSlider:self valueChanged:0 phase:v9];
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    v15 = self;
    v16 = v9;
    v17 = 1;
LABEL_16:
    [v13 colorSlider:v15 valueChanged:v17 phase:v16];

    goto LABEL_18;
  }

  if (v11 != 3)
  {
    if (v11 != 4)
    {
      goto LABEL_18;
    }

    v12 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
    [v12 userInteractionCancelled];

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = v13;
    v15 = self;
    v16 = v9;
    v17 = 3;
    goto LABEL_16;
  }

  [(NTKColorSlider *)self _touchEnded];
LABEL_18:
  v21 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
  v22 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
  [v22 distance];
  v24 = v23;
  [(NTKColorSlider *)self minimumValue];
  [v21 positionUpdated:v24 * (v9 - v25)];
}

- (void)_touchEnded
{
  [(NTKColorSlider *)self value];
  v4 = v3;
  v5 = v3;
  v6 = [(NTKColorSlider *)self _edgeFeedbackGenerator];
  [v6 userInteractionEnded];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained colorSlider:self valueChanged:2 phase:v5];

  *&v8 = v4;

  [(NTKColorSlider *)self setValue:0 animated:v8];
}

- (NTKColorSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end