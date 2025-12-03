@interface NTKCircularAnalogDialView
+ (id)_disabledLayerActions;
- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device hideHourTicks:(BOOL)ticks;
- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device smallTicksMatchingMinutes:(BOOL)minutes;
- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame options:(id *)options device:(id)device;
- (double)_tickOpactiyAtIndex:(int64_t)index bezelTextWidthInRadius:(double)radius invisibleTicksAlpha:(double)alpha visibleTicksAlpha:(double)ticksAlpha;
- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value;
- (void)_toggleRasterization:(BOOL)rasterization;
- (void)applyColorTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)applyColorTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette;
- (void)fillDialTransitionWithFraction:(double)fraction bezelTextWidthRadians:(double)radians;
- (void)layoutLayerTicks:(id)ticks rotationAngleInDegree:(double)degree smallTicks:(BOOL)smallTicks;
- (void)layoutSubviews;
- (void)setDialBackgroundColor:(id)color;
- (void)setHideHourTicks:(BOOL)ticks;
- (void)setHourTicksOpacity:(double)opacity bezelTextWidthRadians:(double)radians;
- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)radius invisbleTicksAlpha:(double)alpha;
- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)radius finalBezelTextWidthInRadius:(double)inRadius fraction:(double)fraction;
@end

@implementation NTKCircularAnalogDialView

- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  ___LayoutConstants_block_invoke_35(deviceCopy, &v15);
  v12 = 0;
  v13 = v15;
  v14 = v16;
  height = [(NTKCircularAnalogDialView *)self initWithFrame:&v12 options:deviceCopy device:x, y, width, height];

  return height;
}

- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device smallTicksMatchingMinutes:(BOOL)minutes
{
  minutesCopy = minutes;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  deviceCopy = device;
  ___LayoutConstants_block_invoke_35(deviceCopy, &v17);
  v15 = v17;
  v16 = v18;
  v14 = minutesCopy;
  height = [(NTKCircularAnalogDialView *)self initWithFrame:&v14 options:deviceCopy device:x, y, width, height];

  return height;
}

- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device hideHourTicks:(BOOL)ticks
{
  ticksCopy = ticks;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  deviceCopy = device;
  ___LayoutConstants_block_invoke_35(deviceCopy, &v18);
  v16 = v18;
  v17 = v19;
  v12 = 256;
  if (!ticksCopy)
  {
    v12 = 0;
  }

  v15 = v12;
  height = [(NTKCircularAnalogDialView *)self initWithFrame:&v15 options:deviceCopy device:x, y, width, height];

  return height;
}

- (NTKCircularAnalogDialView)initWithFrame:(CGRect)frame options:(id *)options device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v52.receiver = self;
  v52.super_class = NTKCircularAnalogDialView;
  height = [(NTKCircularAnalogDialView *)&v52 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    p_options = &height->_options;
    v16 = options->var3.height;
    v17 = *&options->var2.height;
    *&height->_options.smallTicksMatchingMinutes = *&options->var0;
    *&height->_options.hourTickSize.height = v17;
    height->_options.smallTickSize.height = v16;
    objc_storeStrong(&height->_device, device);
    v49 = deviceCopy;
    v18 = [[NTKWhistlerAnalogColorPalette alloc] initWithDevice:deviceCopy];
    colorPalette = v14->_colorPalette;
    v14->_colorPalette = v18;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NTKCircularAnalogDialView *)v14 setBackgroundColor:blackColor];

    layer = [(NTKCircularAnalogDialView *)v14 layer];
    [layer bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v26 * 0.5;
    v31 = v28 * 0.5;
    _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
    v33 = objc_opt_new();
    dialBackgroundLayer = v14->_dialBackgroundLayer;
    v14->_dialBackgroundLayer = v33;

    [(CALayer *)v14->_dialBackgroundLayer setPosition:v30, v31];
    [(CALayer *)v14->_dialBackgroundLayer setBounds:v23, v25, v27, v29];
    [(CALayer *)v14->_dialBackgroundLayer setActions:_disabledLayerActions];
    [(CALayer *)v14->_dialBackgroundLayer setCornerRadius:v30];
    [layer addSublayer:v14->_dialBackgroundLayer];
    v35 = objc_opt_new();
    ticksLayer = v14->_ticksLayer;
    v14->_ticksLayer = v35;

    [(CALayer *)v14->_ticksLayer setPosition:v30, v31];
    [(CALayer *)v14->_ticksLayer setBounds:v23, v25, v27, v29];
    [(CALayer *)v14->_ticksLayer setActions:_disabledLayerActions];
    [layer addSublayer:v14->_ticksLayer];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v38 = 0;
    v39 = 120;
    if (p_options->smallTicksMatchingMinutes)
    {
      v39 = 60;
    }

    v14->_numberOfTicks = v39;
    do
    {
      v40 = [(NTKCircularAnalogDialView *)v14 isTickIndexForHour:v38];
      v41 = objc_opt_new();
      [v41 setBounds:{0.0, 0.0, v14->_options.smallTickSize.width, v14->_options.smallTickSize.height}];
      [v41 setCornerRadius:v14->_options.smallTickSize.width * 0.5];
      [v41 setPosition:{v30, v14->_options.smallTickSize.height * 0.5}];
      [v41 setActions:_disabledLayerActions];
      [(CALayer *)v14->_ticksLayer addSublayer:v41];
      [(NSArray *)array2 addObject:v41];
      if (v40)
      {
        [v41 setHidden:!options->var1];
        [(NSArray *)array3 addObject:v41];
        if (!options->var1)
        {
          v42 = objc_opt_new();
          [v42 setBounds:{0.0, 0.0, v14->_options.hourTickSize.width, v14->_options.hourTickSize.height}];
          [v42 setCornerRadius:v14->_options.hourTickSize.width * 0.5];
          [v42 setPosition:{v30, v14->_options.hourTickSize.height * 0.5}];
          [v42 setActions:_disabledLayerActions];
          [(CALayer *)v14->_ticksLayer addSublayer:v42];
          [(NSArray *)array addObject:v42];
          [v42 setHidden:options->var1];
        }
      }

      ++v38;
    }

    while (v14->_numberOfTicks > v38);
    allHourTicks = v14->_allHourTicks;
    v14->_allHourTicks = array;
    v44 = array;

    allSmallTicks = v14->_allSmallTicks;
    v14->_allSmallTicks = array2;
    v46 = array2;

    smallMatchingHourTicks = v14->_smallMatchingHourTicks;
    v14->_smallMatchingHourTicks = array3;

    [(NTKCircularAnalogDialView *)v14 _toggleRasterization:1];
    deviceCopy = v49;
  }

  return v14;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKCircularAnalogDialView;
  [(NTKCircularAnalogDialView *)&v8 layoutSubviews];
  numberOfTicks = self->_numberOfTicks;
  if (numberOfTicks)
  {
    for (i = 0; i < numberOfTicks; ++i)
    {
      v5 = i / numberOfTicks * 360.0;
      v6 = [(NSArray *)self->_allSmallTicks objectAtIndexedSubscript:i];
      [(NTKCircularAnalogDialView *)self layoutLayerTicks:v6 rotationAngleInDegree:1 smallTicks:v5];
      if ([(NTKCircularAnalogDialView *)self isTickIndexForHour:i])
      {
        v7 = [(NSArray *)self->_allHourTicks objectAtIndexedSubscript:i / (self->_numberOfTicks / 0xC)];
        [(NTKCircularAnalogDialView *)self layoutLayerTicks:v7 rotationAngleInDegree:0 smallTicks:v5];
      }

      numberOfTicks = self->_numberOfTicks;
    }
  }
}

- (void)layoutLayerTicks:(id)ticks rotationAngleInDegree:(double)degree smallTicks:(BOOL)smallTicks
{
  smallTicksCopy = smallTicks;
  ticksCopy = ticks;
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *&v19.a = *MEMORY[0x277CBF2C0];
  *&v19.c = v16;
  *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(NTKCircularAnalogDialView *)self bounds];
  v9 = v8;
  height = self->_options.hourTickSize.height;
  v11 = self->_options.smallTickSize.height;
  tickPadding = self->_tickPadding;
  *&v18.a = *&v19.a;
  *&v18.c = v16;
  *&v18.tx = *&v19.tx;
  CGAffineTransformTranslate(&v19, &v18, 0.0, tickPadding);
  [ticksCopy size];
  v14 = v9 * 0.5 - v13 * 0.5 - self->_tickPadding;
  v17 = v19;
  CGAffineTransformTranslate(&v18, &v17, 0.0, v14);
  v19 = v18;
  CLKDegreesToRadians();
  v17 = v19;
  CGAffineTransformRotate(&v18, &v17, v15);
  v19 = v18;
  v17 = v18;
  CGAffineTransformTranslate(&v18, &v17, 0.0, -v14);
  v19 = v18;
  if (smallTicksCopy)
  {
    v17 = v19;
    CGAffineTransformTranslate(&v18, &v17, 0.0, (height - v11) * 0.5);
    v19 = v18;
  }

  v18 = v19;
  [ticksCopy setAffineTransform:&v18];
}

- (void)setDialBackgroundColor:(id)color
{
  dialBackgroundLayer = self->_dialBackgroundLayer;
  colorCopy = color;
  cGColor = [color CGColor];

  [(CALayer *)dialBackgroundLayer setBackgroundColor:cGColor];
}

- (void)applyColorTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  circularDialFillColor = [paletteCopy circularDialFillColor];
  circularDialFillColor2 = [colorPaletteCopy circularDialFillColor];
  v34 = circularDialFillColor;
  v11 = NTKInterpolateBetweenColors();
  dialBackgroundLayer = self->_dialBackgroundLayer;
  v32 = v11;
  -[CALayer setBackgroundColor:](dialBackgroundLayer, "setBackgroundColor:", [v32 CGColor]);
  if ([paletteCopy isMulticolorPalette])
  {
    isMulticolorPalette = 1;
  }

  else
  {
    isMulticolorPalette = [colorPaletteCopy isMulticolorPalette];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke;
  aBlock[3] = &unk_278782B10;
  aBlock[4] = self;
  v14 = paletteCopy;
  v50 = v14;
  v15 = colorPaletteCopy;
  v51 = v15;
  fractionCopy = fraction;
  v16 = _Block_copy(aBlock);
  circularDialSubtickColor = [v14 circularDialSubtickColor];
  circularDialSubtickColor2 = [v15 circularDialSubtickColor];
  v18 = NTKInterpolateBetweenColors();
  allSmallTicks = self->_allSmallTicks;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_2;
  v45[3] = &unk_278782B38;
  v48 = isMulticolorPalette;
  v46 = v18;
  v47 = v16;
  v30 = v18;
  v29 = v16;
  [(NSArray *)allSmallTicks enumerateObjectsUsingBlock:v45];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_3;
  v41[3] = &unk_278782B60;
  v42 = v14;
  v43 = v15;
  fractionCopy2 = fraction;
  v20 = v15;
  v21 = v14;
  v22 = _Block_copy(v41);
  circularDialTickColor = [v21 circularDialTickColor];
  circularDialTickColor2 = [v20 circularDialTickColor];
  v25 = NTKInterpolateBetweenColors();
  allHourTicks = self->_allHourTicks;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_4;
  v37[3] = &unk_278782B38;
  v40 = isMulticolorPalette;
  v38 = v25;
  v39 = v22;
  v27 = v25;
  v28 = v22;
  [(NSArray *)allHourTicks enumerateObjectsUsingBlock:v37];
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  ___LayoutConstants_block_invoke_35(self->_device, v35);
  *&self->_tickPadding = v36;
  [(NTKCircularAnalogDialView *)self setNeedsLayout];
}

id __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(*(a1 + 32) + 416);
  if (v4 >= 0x3D)
  {
    if (v4 != 120)
    {
      __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_cold_1();
    }

    v2 = a2 >> 1;
  }

  v5 = [*(a1 + 40) colorForCircularTicksForMinute:v2];
  v6 = [*(a1 + 48) colorForCircularTicksForMinute:v2];
  v7 = NTKInterpolateBetweenColors();

  return v7;
}

void __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    v7 = a2;
    v10 = v6(v5, a3);
    [v7 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = a2;
    [v10 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];
  }
}

id __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) colorForCircularTicksForHour:a2];
  v5 = [*(a1 + 40) colorForCircularTicksForHour:a2];
  v6 = NTKInterpolateBetweenColors();

  return v6;
}

void __90__NTKCircularAnalogDialView_applyColorTransitionFraction_fromColorPalette_toColorPalette___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    v7 = a2;
    v10 = v6(v5, a3);
    [v7 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = v8;
    v10 = a2;
    [v10 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];
  }
}

- (void)applyColorTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette
{
  v53 = *MEMORY[0x277D85DE8];
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  v9 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette dialFillColorForColorPalette:paletteCopy];
  v33 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette dialFillColorForColorPalette:colorPaletteCopy];
  v34 = v9;
  v10 = NTKInterpolateBetweenColors();
  dialBackgroundLayer = self->_dialBackgroundLayer;
  v32 = v10;
  -[CALayer setBackgroundColor:](dialBackgroundLayer, "setBackgroundColor:", [v32 CGColor]);
  v12 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette minuteTicksColorForColorPalette:paletteCopy];
  v30 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette minuteTicksColorForColorPalette:colorPaletteCopy];
  v31 = v12;
  v13 = NTKInterpolateBetweenColors();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = self->_allSmallTicks;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      v18 = 0;
      do
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v47 + 1) + 8 * v18++) setBackgroundColor:{objc_msgSend(v13, "CGColor")}];
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  v35 = paletteCopy;
  v19 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette hourTicksColorForColorPalette:paletteCopy];
  v20 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette hourTicksColorForColorPalette:colorPaletteCopy];
  v29 = v19;
  v21 = NTKInterpolateBetweenColors();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = self->_allHourTicks;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      v26 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v43 + 1) + 8 * v26++) setBackgroundColor:{objc_msgSend(v21, "CGColor")}];
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v24);
  }

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  ___LayoutConstants_block_invoke_35(self->_device, &v40);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__NTKCircularAnalogDialView_applyColorTransitionFraction_fromFaceColorPalette_toFaceColorPalette___block_invoke;
  aBlock[3] = &__block_descriptor_80_e29_d16__0__NTKFaceColorPalette_8l;
  v37 = v40;
  v38 = v41;
  v39 = v42;
  v27 = _Block_copy(aBlock);
  v27[2](v27, v35);
  v27[2](v27, colorPaletteCopy);
  CLKInterpolateBetweenFloatsClipped();
  self->_tickPadding = v28;
  [(NTKCircularAnalogDialView *)self setNeedsLayout];
}

double __98__NTKCircularAnalogDialView_applyColorTransitionFraction_fromFaceColorPalette_toFaceColorPalette___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 isWhiteColor];
  v4 = 64;
  if (v3)
  {
    v4 = 72;
  }

  return *(a1 + v4);
}

- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value
{
  v4 = MEMORY[0x277CD9E10];
  valueCopy = value;
  v6 = [v4 animationWithKeyPath:@"instanceDelay"];
  [v6 setFromValue:valueCopy];
  [v6 setToValue:valueCopy];

  [v6 setBeginTime:0.00000011920929];
  [v6 setDuration:0.00001];
  [v6 setFillMode:*MEMORY[0x277CDA238]];

  return v6;
}

- (void)setHideHourTicks:(BOOL)ticks
{
  self->_options.hideHourTicks = ticks;
  allHourTicks = self->_allHourTicks;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__NTKCircularAnalogDialView_setHideHourTicks___block_invoke;
  v9[3] = &__block_descriptor_33_e24_v32__0__CALayer_8Q16_B24l;
  ticksCopy = ticks;
  [(NSArray *)allHourTicks enumerateObjectsUsingBlock:v9];
  smallMatchingHourTicks = self->_smallMatchingHourTicks;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__NTKCircularAnalogDialView_setHideHourTicks___block_invoke_2;
  v7[3] = &__block_descriptor_33_e24_v32__0__CALayer_8Q16_B24l;
  ticksCopy2 = ticks;
  [(NSArray *)smallMatchingHourTicks enumerateObjectsUsingBlock:v7];
}

- (void)setHourTicksOpacity:(double)opacity bezelTextWidthRadians:(double)radians
{
  allHourTicks = self->_allHourTicks;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NTKCircularAnalogDialView_setHourTicksOpacity_bezelTextWidthRadians___block_invoke;
  v10[3] = &unk_278782BC8;
  v10[4] = self;
  *&v10[5] = radians;
  *&v10[6] = opacity;
  [(NSArray *)allHourTicks enumerateObjectsUsingBlock:v10];
  smallMatchingHourTicks = self->_smallMatchingHourTicks;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NTKCircularAnalogDialView_setHourTicksOpacity_bezelTextWidthRadians___block_invoke_2;
  v9[3] = &unk_278782BC8;
  v9[4] = self;
  *&v9[5] = radians;
  *&v9[6] = opacity;
  [(NSArray *)smallMatchingHourTicks enumerateObjectsUsingBlock:v9];
}

void __71__NTKCircularAnalogDialView_setHourTicksOpacity_bezelTextWidthRadians___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [v6 setHidden:0];
  [*(a1 + 32) _tickOpactiyAtIndex:*(*(a1 + 32) + 416) / 0xCuLL * a3 bezelTextWidthInRadius:*(a1 + 40) invisibleTicksAlpha:0.0 visibleTicksAlpha:*(a1 + 48)];
  *&v5 = v5;
  [v6 setOpacity:v5];
}

void __71__NTKCircularAnalogDialView_setHourTicksOpacity_bezelTextWidthRadians___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [v6 setHidden:0];
  [*(a1 + 32) _tickOpactiyAtIndex:*(*(a1 + 32) + 416) / 0xCuLL * a3 bezelTextWidthInRadius:*(a1 + 40) invisibleTicksAlpha:0.0 visibleTicksAlpha:1.0 - *(a1 + 48)];
  *&v5 = v5;
  [v6 setOpacity:v5];
}

- (void)fillDialTransitionWithFraction:(double)fraction bezelTextWidthRadians:(double)radians
{
  v6 = ([(NSArray *)self->_allSmallTicks count]* fraction);
  v7 = [(NSArray *)self->_allSmallTicks count];
  v8 = [(NSArray *)self->_allHourTicks count];
  allSmallTicks = self->_allSmallTicks;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__NTKCircularAnalogDialView_fillDialTransitionWithFraction_bezelTextWidthRadians___block_invoke;
  v10[3] = &unk_278782BF0;
  v10[4] = self;
  *&v10[5] = radians;
  v10[6] = v6;
  v10[7] = v7 / v8;
  [(NSArray *)allSmallTicks enumerateObjectsUsingBlock:v10];
}

void __82__NTKCircularAnalogDialView_fillDialTransitionWithFraction_bezelTextWidthRadians___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  [*(a1 + 32) _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:*(a1 + 40) invisibleTicksAlpha:0.0];
  *&v5 = v5;
  if (*(a1 + 48) <= a3)
  {
    *&v5 = 0.0;
  }

  [v8 setOpacity:v5];
  if (!(a3 % *(a1 + 56)))
  {
    v6 = *(a1 + 32);
    if ((*(v6 + 481) & 1) == 0)
    {
      v7 = [*(v6 + 448) objectAtIndexedSubscript:?];
      [v8 opacity];
      [v7 setOpacity:?];
    }
  }
}

- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)radius finalBezelTextWidthInRadius:(double)inRadius fraction:(double)fraction
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__NTKCircularAnalogDialView_transitTicksWithInitialBezelTextWidthInRadius_finalBezelTextWidthInRadius_fraction___block_invoke;
  aBlock[3] = &unk_278782BF0;
  aBlock[4] = self;
  *&aBlock[5] = radius;
  *&aBlock[6] = inRadius;
  *&aBlock[7] = fraction;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (!self->_options.hideHourTicks)
  {
    allHourTicks = self->_allHourTicks;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __112__NTKCircularAnalogDialView_transitTicksWithInitialBezelTextWidthInRadius_finalBezelTextWidthInRadius_fraction___block_invoke_2;
    v12 = &unk_278782C18;
    selfCopy = self;
    v14 = v6;
    [(NSArray *)allHourTicks enumerateObjectsUsingBlock:&v9];
  }

  [(NSArray *)self->_allSmallTicks enumerateObjectsUsingBlock:v7, v9, v10, v11, v12];
}

void __112__NTKCircularAnalogDialView_transitTicksWithInitialBezelTextWidthInRadius_finalBezelTextWidthInRadius_fraction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a2;
  [v5 _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:v6 invisibleTicksAlpha:0.0];
  [*(a1 + 32) _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:*(a1 + 48) invisibleTicksAlpha:0.0];
  CLKInterpolateBetweenFloatsClipped();
  *&v7 = v7;
  [v8 setOpacity:v7];
}

- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)radius invisbleTicksAlpha:(double)alpha
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__NTKCircularAnalogDialView_transitInvisibleTicksAlphaWithBezelTextWidthInRadius_invisbleTicksAlpha___block_invoke;
  aBlock[3] = &unk_278782BC8;
  aBlock[4] = self;
  *&aBlock[5] = radius;
  *&aBlock[6] = alpha;
  v5 = _Block_copy(aBlock);
  allHourTicks = self->_allHourTicks;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__NTKCircularAnalogDialView_transitInvisibleTicksAlphaWithBezelTextWidthInRadius_invisbleTicksAlpha___block_invoke_2;
  v8[3] = &unk_278782C18;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(NSArray *)allHourTicks enumerateObjectsUsingBlock:v8];
  [(NSArray *)self->_allSmallTicks enumerateObjectsUsingBlock:v7];
}

void __101__NTKCircularAnalogDialView_transitInvisibleTicksAlphaWithBezelTextWidthInRadius_invisbleTicksAlpha___block_invoke(double *a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2;
  [v4 _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:v5 invisibleTicksAlpha:v6];
  *&v7 = v7;
  [v8 setOpacity:v7];
}

+ (id)_disabledLayerActions
{
  if (_disabledLayerActions_onceToken_2 != -1)
  {
    +[NTKCircularAnalogDialView _disabledLayerActions];
  }

  v3 = _disabledLayerActions__dictionary_2;

  return v3;
}

void __50__NTKCircularAnalogDialView__disabledLayerActions__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v3[0] = @"instanceTransform";
  v3[1] = @"contentsMultiplyColor";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"transform";
  v3[3] = @"hidden";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"position";
  v3[5] = @"opacity";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"instanceCount";
  v3[7] = @"instanceDelay";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"backgroundColor";
  v4[8] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = _disabledLayerActions__dictionary_2;
  _disabledLayerActions__dictionary_2 = v1;
}

- (double)_tickOpactiyAtIndex:(int64_t)index bezelTextWidthInRadius:(double)radius invisibleTicksAlpha:(double)alpha visibleTicksAlpha:(double)ticksAlpha
{
  v8 = radius * 0.5;
  CLKDegreesToRadians();
  if (v9 >= v8)
  {
    return ticksAlpha;
  }

  else
  {
    return alpha;
  }
}

- (void)_toggleRasterization:(BOOL)rasterization
{
  rasterizationCopy = rasterization;
  layer = [(NTKCircularAnalogDialView *)self layer];
  v6 = layer;
  if (rasterizationCopy)
  {
    [layer setShouldRasterize:1];
    [(CLKDevice *)self->_device screenScale];
    [v6 setRasterizationScale:?];
  }

  else
  {
    [layer setShouldRasterize:0];
  }
}

@end