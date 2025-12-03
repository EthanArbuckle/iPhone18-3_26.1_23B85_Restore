@interface NTKBlackcombBackgroundView
- (CGRect)_tickLayoutBounds;
- (double)_innerDialRadiusAtLargeTick:(int64_t)tick verticalLength:(double)length horizontalLength:(double)horizontalLength;
- (double)_outerDialRadiusAtMediumTick:(int64_t)tick verticalLength:(double)length horizontalLength:(double)horizontalLength;
- (id)initForDevice:(id)device;
- (void)_applyBackgroundColor:(id)color;
- (void)_layoutTopLargeTick;
- (void)_setupTicks;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)applyTransitionFractionToUsesLongSideTicks:(double)ticks;
- (void)configureTicksForStatus:(BOOL)status;
- (void)setUsesLongSideTicks:(BOOL)ticks;
@end

@implementation NTKBlackcombBackgroundView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKBlackcombBackgroundView;
  v6 = [(NTKBlackcombBackgroundView *)&v11 init];
  p_isa = &v6->super.super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    layer = [p_isa layer];
    [p_isa[51] screenCornerRadius];
    [layer setCornerRadius:?];

    layer2 = [p_isa layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [p_isa _setupTicks];
    [p_isa _layoutTopLargeTick];
  }

  return p_isa;
}

- (CGRect)_tickLayoutBounds
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *dx = 0u;
  v10 = 0u;
  ___LayoutConstants_block_invoke_18(self->_device, dx);
  [(CLKDevice *)self->_device screenBounds];
  v7 = dx[0];
  v8 = dx[0];

  return CGRectInset(*&v3, v7, v8);
}

- (void)_setupTicks
{
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  ___LayoutConstants_block_invoke_18(self->_device, &v73);
  _tickLayoutBounds = [(NTKBlackcombBackgroundView *)self _tickLayoutBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x2318D8E70](_tickLayoutBounds);
  v14 = v13;
  layer = [MEMORY[0x277CD9ED0] layer];
  v66 = v5;
  [layer setBounds:{v5, v7, v9, v11}];
  [layer setPosition:{v12, v14}];
  [(CLKDevice *)self->_device screenCornerRadius];
  v17 = v16;
  [(CLKDevice *)self->_device screenBounds];
  v19 = v17 * (v18 + *&v73 * -2.0);
  [(CLKDevice *)self->_device screenBounds];
  [layer setCornerRadius:v19 / v20];
  v21 = *MEMORY[0x277CDA138];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];
  [layer setMasksToBounds:1];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    [layer setShouldRasterize:1];
    [(CLKDevice *)self->_device screenScale];
    [layer setRasterizationScale:?];
  }

  v22 = *(&v73 + 1);
  v71 = *(&v77 + 1);
  array = [MEMORY[0x277CBEB18] array];
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = *&v74;
    do
    {
      if (v23 % (v22 / v71))
      {
        layer2 = [MEMORY[0x277CD9ED0] layer];
        [layer2 setBounds:{0.0, 0.0, v11, v24}];
        [layer2 setAnchorPoint:{0.0, 0.5}];
        [layer2 setPosition:{v12, v14}];
        v26 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
        [layer2 setBackgroundColor:{objc_msgSend(v26, "CGColor")}];

        CGAffineTransformMakeRotation(&v82, v23 * (6.28318531 / v22) + -1.57079633);
        [layer2 setAffineTransform:&v82];
        [layer addSublayer:layer2];
        [array addObject:layer2];
      }

      ++v23;
    }

    while (v22 != v23);
  }

  v69 = v14;
  v70 = v12;
  v27 = [array copy];
  smallTicks = self->_smallTicks;
  self->_smallTicks = v27;

  layer3 = [MEMORY[0x277CD9ED0] layer];
  smallTickCoveringLayer = self->_smallTickCoveringLayer;
  self->_smallTickCoveringLayer = layer3;

  v31 = self->_smallTickCoveringLayer;
  MEMORY[0x2318D8E70](v66, v7, v9, v11);
  [(CALayer *)v31 setPosition:?];
  v32 = self->_smallTickCoveringLayer;
  v33 = *(&v74 + 1);
  v89.origin.x = v66;
  v89.origin.y = v7;
  v89.size.width = v9;
  v89.size.height = v11;
  v90 = CGRectInset(v89, *(&v74 + 1), *(&v74 + 1));
  [(CALayer *)v32 setBounds:v90.origin.x, v90.origin.y, v90.size.width, v90.size.height];
  v34 = self->_smallTickCoveringLayer;
  background = [(NTKBlackcombColorPalette *)self->_palette background];
  -[CALayer setBackgroundColor:](v34, "setBackgroundColor:", [background CGColor]);

  [(CLKDevice *)self->_device screenCornerRadius];
  [(CALayer *)self->_smallTickCoveringLayer setCornerRadius:v36 - v33];
  [(CALayer *)self->_smallTickCoveringLayer setCornerCurve:v21];
  [layer addSublayer:self->_smallTickCoveringLayer];
  layer4 = [(NTKBlackcombBackgroundView *)self layer];
  [layer4 addSublayer:layer];

  array2 = [MEMORY[0x277CBEB18] array];
  v39 = v71;
  v62 = v71;
  if (v71 >= 1)
  {
    v40 = 0;
    v41 = v75;
    v64 = *&v75 * 0.5;
    v67 = *(&v76 + 1) + *(&v76 + 1);
    v42 = 6.28318531 / v62;
    do
    {
      v43 = _LargeOrMediumTickLengthAtIndex(v40, self->_device, *(&v41 + 1), *(&v41 + 1), v67);
      layer5 = [MEMORY[0x277CD9ED0] layer];
      [layer5 setBounds:{0.0, 0.0, *&v41, v43}];
      [layer5 setCornerRadius:v64];
      CGAffineTransformMakeRotation(&v82, v40 * v42 + 3.14159265);
      [layer5 setAffineTransform:&v82];
      v45 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:1.0];
      [layer5 setBackgroundColor:{objc_msgSend(v45, "CGColor")}];
      [(NTKBlackcombBackgroundView *)self _outerDialRadiusAtMediumTick:v40 verticalLength:*(&v41 + 1) horizontalLength:*(&v41 + 1)];
      [layer5 setPosition:{_TickPosition(self->_device, v12, v14, v46, v40 * v42 + -1.57079633)}];
      layer6 = [(NTKBlackcombBackgroundView *)self layer];
      [layer6 addSublayer:layer5];

      [array2 addObject:layer5];
      v39 = v71;

      ++v40;
    }

    while (v71 != v40);
  }

  v48 = [array2 copy];
  mediumTicks = self->_mediumTicks;
  self->_mediumTicks = v48;

  array3 = [MEMORY[0x277CBEB18] array];
  if (v39 >= 1)
  {
    v51 = 0;
    v53 = *(&v78 + 1);
    v52 = *&v79;
    v65 = *&v78 * 0.5;
    v68 = *&v78;
    do
    {
      v54 = _LargeOrMediumTickLengthAtIndex(v51, self->_device, v52, v53, 0.0);
      layer7 = [MEMORY[0x277CD9ED0] layer];
      [layer7 setBounds:{0.0, 0.0, v68, v54}];
      [layer7 setCornerRadius:v65];
      device = self->_device;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      memset(&v82, 0, sizeof(v82));
      ___LayoutConstants_block_invoke_18(device, &v82);
      CGAffineTransformMakeRotation(&v72, v51 * (6.28318531 / *(&v84 + 1)) + 3.14159265);
      [layer7 setAffineTransform:&v72];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [layer7 setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];
      [(NTKBlackcombBackgroundView *)self _innerDialRadiusAtLargeTick:v51 verticalLength:v52 horizontalLength:v53];
      [layer7 setPosition:{_TickPosition(self->_device, v70, v69, v58, v51 * (6.28318531 / v62) + -1.57079633)}];
      layer8 = [(NTKBlackcombBackgroundView *)self layer];
      [layer8 addSublayer:layer7];

      [array3 addObject:layer7];
      ++v51;
    }

    while (v71 != v51);
  }

  v60 = [array3 copy];
  largeTicks = self->_largeTicks;
  self->_largeTicks = v60;
}

- (void)_applyBackgroundColor:(id)color
{
  v4 = MEMORY[0x277CD9FF0];
  colorCopy = color;
  [v4 begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(NTKBlackcombBackgroundView *)self setBackgroundColor:colorCopy];
  smallTickCoveringLayer = self->_smallTickCoveringLayer;
  cGColor = [colorCopy CGColor];

  [(CALayer *)smallTickCoveringLayer setBackgroundColor:cGColor];
  v8 = MEMORY[0x277CD9FF0];

  [v8 commit];
}

- (void)applyPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, palette);
  smallTicks = self->_smallTicks;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__NTKBlackcombBackgroundView_applyPalette___block_invoke;
  v17[3] = &unk_278781098;
  v7 = paletteCopy;
  v18 = v7;
  [(NSArray *)smallTicks enumerateObjectsUsingBlock:v17];
  mediumTicks = self->_mediumTicks;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__NTKBlackcombBackgroundView_applyPalette___block_invoke_2;
  v15[3] = &unk_278781098;
  v9 = v7;
  v16 = v9;
  [(NSArray *)mediumTicks enumerateObjectsUsingBlock:v15];
  largeTicks = self->_largeTicks;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__NTKBlackcombBackgroundView_applyPalette___block_invoke_3;
  v13[3] = &unk_278781098;
  v14 = v9;
  v11 = v9;
  [(NSArray *)largeTicks enumerateObjectsUsingBlock:v13];
  background = [(NTKBlackcombColorPalette *)self->_palette background];
  [(NTKBlackcombBackgroundView *)self _applyBackgroundColor:background];
}

void __43__NTKBlackcombBackgroundView_applyPalette___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 smallTick];
  v4 = v5;
  [v3 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

void __43__NTKBlackcombBackgroundView_applyPalette___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 largeTick];
  v4 = v5;
  [v3 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

void __43__NTKBlackcombBackgroundView_applyPalette___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 hourMarker];
  v4 = v5;
  [v3 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  identifier = [paletteCopy identifier];
  identifier2 = [toPaletteCopy identifier];
  v12 = [identifier isEqual:identifier2];

  if (v12)
  {
    [(NTKBlackcombBackgroundView *)self applyPalette:paletteCopy];
  }

  else
  {
    background = [paletteCopy background];
    background2 = [toPaletteCopy background];
    v15 = NTKInterpolateBetweenColors();
    [(NTKBlackcombBackgroundView *)self _applyBackgroundColor:v15];

    if (fraction <= 0.5)
    {
      v16 = paletteCopy;
    }

    else
    {
      v16 = toPaletteCopy;
    }

    objc_storeStrong(&self->_palette, v16);
    CLKCompressFraction();
    v18 = v17;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    memset(v54, 0, sizeof(v54));
    ___LayoutConstants_block_invoke_18(self->_device, v54);
    v19 = *(&v54[0] + 1);
    v20 = (v18 * *(&v54[0] + 1));
    v21 = [(NSArray *)self->_smallTicks count];
    smallTicks = self->_smallTicks;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke;
    v49[3] = &unk_2787810C0;
    v52 = v19 / v21;
    v53 = v20;
    v23 = toPaletteCopy;
    v50 = v23;
    v24 = paletteCopy;
    v51 = v24;
    [(NSArray *)smallTicks enumerateObjectsUsingBlock:v49];
    mediumTicks = self->_mediumTicks;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke_2;
    v44[3] = &unk_2787810C0;
    v26 = v19 / *(&v55 + 1);
    v47 = v26;
    v48 = v20;
    v27 = v23;
    v45 = v27;
    v28 = v24;
    v46 = v28;
    [(NSArray *)mediumTicks enumerateObjectsUsingBlock:v44];
    v29 = MEMORY[0x2318D8E70]([(NTKBlackcombBackgroundView *)self _tickLayoutBounds]);
    v31 = v30;
    hourMarker = [v28 hourMarker];
    hourMarker2 = [v27 hourMarker];
    largeTicks = self->_largeTicks;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke_3;
    v37[3] = &unk_2787810E8;
    v40 = v26;
    v41 = v20;
    v38 = hourMarker;
    v39 = hourMarker2;
    v42 = v29;
    v43 = v31;
    v35 = hourMarker2;
    v36 = hourMarker;
    [(NSArray *)largeTicks enumerateObjectsUsingBlock:v37];
  }
}

void __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 40;
  if (*(a1 + 48) * a3 < *(a1 + 56))
  {
    v3 = 32;
  }

  v4 = *(a1 + v3);
  v5 = a2;
  v7 = [v4 smallTick];
  v6 = v7;
  [v5 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
}

void __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 40;
  if (*(a1 + 48) * a3 < *(a1 + 56))
  {
    v3 = 32;
  }

  v4 = *(a1 + v3);
  v5 = a2;
  v7 = [v4 largeTick];
  v6 = v7;
  [v5 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
}

void __76__NTKBlackcombBackgroundView_applyTransitionFraction_fromPalette_toPalette___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v35[9] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = 32;
  if (*(a1 + 48) * a3 < *(a1 + 56))
  {
    v6 = 40;
  }

  v7 = [*(a1 + v6) CGColor];
  v8 = [v5 backgroundColor];
  [v5 setBackgroundColor:v7];
  if (!CGColorEqualToColor(v7, v8))
  {
    [v5 position];
    v10 = *(a1 + 64) - v9;
    v12 = *(a1 + 72) - v11;
    v13 = sqrt(v12 * v12 + v10 * v10);
    v14 = v10 / v13;
    v15 = v12 / v13;
    v16 = v10 / v13 * 5.0;
    v17 = v12 / v13 * 5.0;
    v33 = objc_opt_new();
    [v33 setDuration:0.5];
    v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"backgroundColor"];
    [v34 setDuration:0.5];
    [v34 setFromValue:v8];
    [v34 setToValue:v7];
    v32 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    [v32 setDuration:0.33];
    [v32 setByValue:&unk_284188498];
    [v32 setCumulative:1];
    v18 = *MEMORY[0x277CDA230];
    [v32 setFillMode:*MEMORY[0x277CDA230]];
    v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
    [v19 setDuration:0.33];
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [v19 setByValue:v20];

    [v19 setCumulative:1];
    [v19 setFillMode:v18];
    v31 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
    [v31 setDuration:0.33];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [v31 setByValue:v21];

    [v31 setCumulative:1];
    [v31 setFillMode:v18];
    v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v22 setDuration:0.33];
    [v22 setByValue:&unk_2841884A8];
    [v22 setCumulative:1];
    [v22 setFillMode:v18];
    v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    [v23 setDuration:0.17];
    [v23 setByValue:&unk_2841884B8];
    [v23 setBeginTime:0.33];
    [v23 setCumulative:1];
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
    [v24 setDuration:0.17];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:-(v14 * 5.0)];
    [v24 setByValue:v25];

    [v24 setBeginTime:0.33];
    [v24 setCumulative:1];
    v26 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
    [v26 setDuration:0.17];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:-(v15 * 5.0)];
    [v26 setByValue:v27];

    [v26 setBeginTime:0.33];
    [v26 setCumulative:1];
    [v26 setFillMode:v18];
    v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v28 setDuration:0.17];
    [v28 setByValue:&unk_2841884C8];
    [v28 setBeginTime:0.33];
    [v28 setCumulative:1];
    v35[0] = v34;
    v35[1] = v32;
    v35[2] = v19;
    v35[3] = v31;
    v35[4] = v22;
    v35[5] = v23;
    v35[6] = v24;
    v35[7] = v26;
    v35[8] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:9];
    [v33 setAnimations:v29];

    LODWORD(v30) = 2.0;
    [v33 setSpeed:v30];

    [v5 addAnimation:v33 forKey:@"Key"];
  }
}

- (void)_layoutTopLargeTick
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  ___LayoutConstants_block_invoke_18(self->_device, v12);
  v3 = *&v13;
  if (self->_showingStatus)
  {
    v4 = *&v14;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = MEMORY[0x2318D8E70]([(NTKBlackcombBackgroundView *)self _tickLayoutBounds]);
  v7 = v6;
  [(NTKBlackcombBackgroundView *)self _innerDialRadiusAtLargeTick:0 verticalLength:v3 horizontalLength:0.0];
  v9 = v8 + v4 * -0.5;
  v11 = [(NSArray *)self->_largeTicks objectAtIndexedSubscript:0];
  [v11 setPosition:{_TickPosition(self->_device, v5, v7, v9, -1.57079633)}];
  [v11 bounds];
  [v11 setBounds:{0.0, 0.0, v10, _LargeOrMediumTickLengthAtIndex(0, self->_device, v3 - v4, 0.0, 0.0)}];
}

- (void)setUsesLongSideTicks:(BOOL)ticks
{
  if (self->_usesLongSideTicks != ticks)
  {
    v37 = v6;
    v38 = v5;
    v39 = v3;
    v40 = v4;
    ticksCopy = ticks;
    self->_usesLongSideTicks = ticks;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    ___LayoutConstants_block_invoke_18(self->_device, &v28);
    v9 = v34;
    if (ticksCopy)
    {
      v10 = v34;
    }

    else
    {
      v10 = *(&v33 + 1);
    }

    v11 = MEMORY[0x2318D8E70]([(NTKBlackcombBackgroundView *)self _tickLayoutBounds]);
    largeTicks = self->_largeTicks;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v14[2] = __51__NTKBlackcombBackgroundView_setUsesLongSideTicks___block_invoke;
    v14[3] = &unk_278781110;
    v14[4] = self;
    v23 = v36;
    v15 = v28;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v13;
    [(NSArray *)largeTicks enumerateObjectsUsingBlock:v14];
  }
}

void __51__NTKBlackcombBackgroundView_setUsesLongSideTicks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = a3 * (6.28318531 / *(a1 + 112)) + -1.57079633;
    [*(a1 + 32) _innerDialRadiusAtLargeTick:a3 verticalLength:*(a1 + 176) horizontalLength:*(a1 + 184)];
    [v8 setPosition:{_TickPosition(*(*(a1 + 32) + 408), *(a1 + 192), *(a1 + 200), v6, v5)}];
    [v8 bounds];
    [v8 setBounds:{0.0, 0.0, v7, _LargeOrMediumTickLengthAtIndex(a3, *(*(a1 + 32) + 408), *(a1 + 176), *(a1 + 184), 0.0)}];
  }

  else
  {
    [*(a1 + 32) _layoutTopLargeTick];
  }
}

- (void)applyTransitionFractionToUsesLongSideTicks:(double)ticks
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  ___LayoutConstants_block_invoke_18(self->_device, &v24);
  v4 = v30;
  CLKInterpolateBetweenFloatsClipped();
  v6 = v5;
  v7 = MEMORY[0x2318D8E70]([(NTKBlackcombBackgroundView *)self _tickLayoutBounds]);
  largeTicks = self->_largeTicks;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v10[2] = __73__NTKBlackcombBackgroundView_applyTransitionFractionToUsesLongSideTicks___block_invoke;
  v10[3] = &unk_278781110;
  v10[4] = self;
  v19 = v32;
  v11 = v24;
  v20 = v4;
  v21 = v6;
  v22 = v7;
  v23 = v9;
  [(NSArray *)largeTicks enumerateObjectsUsingBlock:v10];
}

void __73__NTKBlackcombBackgroundView_applyTransitionFractionToUsesLongSideTicks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = a3 * (6.28318531 / *(a1 + 112)) + -1.57079633;
    [*(a1 + 32) _innerDialRadiusAtLargeTick:a3 verticalLength:*(a1 + 176) horizontalLength:*(a1 + 184)];
    [v8 setPosition:{_TickPosition(*(*(a1 + 32) + 408), *(a1 + 192), *(a1 + 200), v6, v5)}];
    [v8 bounds];
    [v8 setBounds:{0.0, 0.0, v7, _LargeOrMediumTickLengthAtIndex(a3, *(*(a1 + 32) + 408), *(a1 + 176), *(a1 + 184), 0.0)}];
  }

  else
  {
    [*(a1 + 32) _layoutTopLargeTick];
  }
}

- (void)configureTicksForStatus:(BOOL)status
{
  statusCopy = status;
  self->_showingStatus = status;
  firstObject = [(NSArray *)self->_mediumTicks firstObject];
  [firstObject setHidden:statusCopy];

  firstObject2 = [(NSArray *)self->_smallTicks firstObject];
  [firstObject2 setHidden:statusCopy];

  lastObject = [(NSArray *)self->_smallTicks lastObject];
  [lastObject setHidden:statusCopy];

  [(NTKBlackcombBackgroundView *)self _layoutTopLargeTick];
}

- (double)_outerDialRadiusAtMediumTick:(int64_t)tick verticalLength:(double)length horizontalLength:(double)horizontalLength
{
  [(NTKBlackcombBackgroundView *)self _tickLayoutBounds];
  v10 = (v9 - horizontalLength) * 0.5;
  v12 = (v11 - length) * 0.5;
  ___LayoutConstants_block_invoke_18(self->_device, v16);
  v13 = v17;
  ___LayoutConstants_block_invoke_18(self->_device, v15);
  result = 0.0;
  if (tick > 5)
  {
    if (tick <= 8)
    {
      if (tick == 6)
      {
        return v12 + v13;
      }

      if (tick != 7)
      {
        return v13 + v10 / 0.866025404;
      }

      return v12 / 0.866025404 - v15[8];
    }

    if (tick != 9)
    {
      if (tick == 10)
      {
        return v13 + v10 / 0.866025404;
      }

      if (tick != 11)
      {
        return result;
      }

      return v12 / 0.866025404 - v15[8];
    }

    return v10 + v13;
  }

  if (tick > 2)
  {
    if (tick != 3)
    {
      if (tick == 4)
      {
        return v13 + v10 / 0.866025404;
      }

      return v12 / 0.866025404 - v15[8];
    }

    return v10 + v13;
  }

  switch(tick)
  {
    case 0:
      return v12 + v13;
    case 1:
      return v12 / 0.866025404 - v15[8];
    case 2:
      return v13 + v10 / 0.866025404;
  }

  return result;
}

- (double)_innerDialRadiusAtLargeTick:(int64_t)tick verticalLength:(double)length horizontalLength:(double)horizontalLength
{
  [(NTKBlackcombBackgroundView *)self _tickLayoutBounds];
  v10 = v9;
  v12 = v11;
  ___LayoutConstants_block_invoke_18(self->_device, v20);
  v13 = (v10 - horizontalLength) * 0.5 - v21;
  v14 = (v12 - length) * 0.5 - v21;
  result = 0.0;
  if (tick > 5)
  {
    if (tick <= 8)
    {
      if (tick == 6)
      {
        goto LABEL_19;
      }

      if (tick != 7)
      {
        return v13 / 0.866025404;
      }

LABEL_17:
      ___LayoutConstants_block_invoke_18(self->_device, v16);
      return v14 / 0.866025404 - v17;
    }

    if (tick != 9)
    {
      if (tick == 10)
      {
        return v13 / 0.866025404;
      }

      if (tick != 11)
      {
        return result;
      }

      goto LABEL_17;
    }

    return v13;
  }

  if (tick > 2)
  {
    if (tick != 3)
    {
      if (tick == 4)
      {
        return v13 / 0.866025404;
      }

      goto LABEL_17;
    }

    return v13;
  }

  switch(tick)
  {
    case 0:
LABEL_19:
      ___LayoutConstants_block_invoke_18(self->_device, v18);
      return v14 + v19;
    case 1:
      goto LABEL_17;
    case 2:
      return v13 / 0.866025404;
  }

  return result;
}

@end