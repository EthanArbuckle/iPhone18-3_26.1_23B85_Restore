@interface CDRichComplicationShapeView
- (BOOL)_shouldReverseGradient;
- (CGPath)_generatePath;
- (CGPoint)_pointAtProgress:(float)progress;
- (CLKMonochromeFilterProvider)filterProvider;
- (double)_shapeLineWidth;
- (id)_normalizeGradientLocations:(id)locations;
- (id)_shapeStrokeColor;
- (id)initForDevice:(id)device withFilterStyle:(int64_t)style;
- (void)_setupGradientLayer:(id)layer;
- (void)_updateGradient;
- (void)_updatePath;
- (void)layoutSubviews;
- (void)setGradientColors:(id)colors;
- (void)setGradientColors:(id)colors locations:(id)locations;
- (void)setProgress:(double)progress;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)unfreezeForTransaction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationShapeView

- (id)initForDevice:(id)device withFilterStyle:(int64_t)style
{
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = CDRichComplicationShapeView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(CDRichComplicationShapeView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    v13->_progress = 1.0;
    v14 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    gradientLayer = v13->_gradientLayer;
    v13->_gradientLayer = v14;

    [(CDRichComplicationShapeView *)v13 _setupGradientLayer:v13->_gradientLayer];
    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA610]];
    [(CAGradientLayer *)v13->_gradientLayer setCompositingFilter:v16];

    v17 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    freezeLayer = v13->_freezeLayer;
    v13->_freezeLayer = v17;

    [(CALayer *)v13->_freezeLayer setShouldRasterize:1];
    [(CLKDevice *)v13->_device screenScale];
    [(CALayer *)v13->_freezeLayer setRasterizationScale:?];
    [(CALayer *)v13->_freezeLayer addSublayer:v13->_gradientLayer];
    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v8, v9, v10, v11}];
    filterView = v13->_filterView;
    v13->_filterView = v19;

    layer = [(UIView *)v13->_filterView layer];
    [layer addSublayer:v13->_freezeLayer];

    [(CDRichComplicationShapeView *)v13 addSubview:v13->_filterView];
    v13->_filterStyle = style;
  }

  return v13;
}

- (void)setProgress:(double)progress
{
  v3 = fmin(progress, 1.0);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 != self->_progress)
  {
    self->_progress = v3;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CDRichComplicationShapeView *)self unfreezeForTransaction];
    [(CAShapeLayer *)self->_shapeLayer setStrokeEnd:self->_progress];
    v5 = MEMORY[0x277CD9FF0];

    [v5 commit];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CDRichComplicationShapeView;
  [(CDRichComplicationShapeView *)&v14 layoutSubviews];
  [(CDRichComplicationShapeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  if (!CGRectEqualToRect(self->_previousBounds, v15))
  {
    [(CDRichComplicationShapeView *)self unfreezeForTransaction];
    self->_previousBounds.origin.x = v4;
    self->_previousBounds.origin.y = v6;
    self->_previousBounds.size.width = v8;
    self->_previousBounds.size.height = v10;
    [(CAShapeLayer *)self->_shapeLayer removeFromSuperlayer];
    v11 = objc_alloc_init(MEMORY[0x277CD9F90]);
    shapeLayer = self->_shapeLayer;
    self->_shapeLayer = v11;

    [(CAShapeLayer *)self->_shapeLayer setFrame:v4, v6, v8, v10];
    [(CAShapeLayer *)self->_shapeLayer setPath:[(CDRichComplicationShapeView *)self _generatePath]];
    [(CDRichComplicationShapeView *)self _shapeLineWidth];
    [(CAShapeLayer *)self->_shapeLayer setLineWidth:?];
    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_shapeLayer, "setFillColor:", [clearColor CGColor]);

    [(CAShapeLayer *)self->_shapeLayer setStrokeStart:0.0];
    [(CAShapeLayer *)self->_shapeLayer setStrokeEnd:self->_progress];
    [(CAShapeLayer *)self->_shapeLayer setLineCap:*MEMORY[0x277CDA780]];
    [(CALayer *)self->_freezeLayer insertSublayer:self->_shapeLayer below:self->_gradientLayer];
    [(CAGradientLayer *)self->_gradientLayer setFrame:v4, v6, v8, v10];
    [(CDRichComplicationShapeView *)self _updateGradient];
    [(CDRichComplicationShapeView *)self _setupShapeLayer:self->_shapeLayer];
  }
}

- (void)unfreezeForTransaction
{
  if (!self->_willUnfreezeForTransaction)
  {
    self->_willUnfreezeForTransaction = 1;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__CDRichComplicationShapeView_unfreezeForTransaction__block_invoke;
    v4[3] = &unk_278DF3558;
    v4[4] = self;
    [MEMORY[0x277CD9FF0] addCommitHandler:v4 forPhase:1];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __53__CDRichComplicationShapeView_unfreezeForTransaction__block_invoke_2;
    v3[3] = &unk_278DF3558;
    v3[4] = self;
    [MEMORY[0x277CD9FF0] addCommitHandler:v3 forPhase:2];
  }
}

- (void)setGradientColors:(id)colors
{
  colorsCopy = colors;
  if ([colorsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([colorsCopy count])
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithDouble:{v5 / objc_msgSend(colorsCopy, "count")}];
        [array addObject:v6];

        ++v5;
      }

      while ([colorsCopy count] > v5);
    }

    [(CDRichComplicationShapeView *)self setGradientColors:colorsCopy locations:array];
  }
}

- (void)setGradientColors:(id)colors locations:(id)locations
{
  v26[1] = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  locationsCopy = locations;
  objc_storeStrong(&self->_gradientColors, colors);
  if (self->_monochromeFraction == 1.0)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v26[0] = whiteColor;
    v10 = v26;
  }

  else
  {
    if ([colorsCopy count] < 2)
    {
      goto LABEL_5;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    whiteColor = colorsCopy;
    v14 = [whiteColor countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(whiteColor);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          firstObject = [whiteColor firstObject];
          LODWORD(v18) = [v18 isEqual:firstObject];

          if (!v18)
          {
            v11 = whiteColor;
            goto LABEL_4;
          }
        }

        v15 = [whiteColor countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    whiteColor = [whiteColor firstObject];
    v24 = whiteColor;
    v10 = &v24;
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:{1, v20}];

LABEL_4:
  colorsCopy = v11;
LABEL_5:
  if (colorsCopy | self->_filteredGradientColors && ![colorsCopy isEqualToArray:?] || (gradientLocations = self->_gradientLocations, locationsCopy | gradientLocations) && !-[NSArray isEqualToArray:](gradientLocations, "isEqualToArray:", locationsCopy))
  {
    objc_storeStrong(&self->_filteredGradientColors, colorsCopy);
    objc_storeStrong(&self->_gradientLocations, locations);
    [(CDRichComplicationShapeView *)self _updateGradient];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updatePath
{
  _generatePath = [(CDRichComplicationShapeView *)self _generatePath];
  if ([(CAShapeLayer *)self->_shapeLayer path]| _generatePath && !CGPathEqualToPath([(CAShapeLayer *)self->_shapeLayer path], _generatePath))
  {
    [(CDRichComplicationShapeView *)self unfreezeForTransaction];
    _generatePath2 = [(CDRichComplicationShapeView *)self _generatePath];
    shapeLayer = self->_shapeLayer;

    [(CAShapeLayer *)shapeLayer setPath:_generatePath2];
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(CDRichComplicationShapeView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:-[CDRichComplicationShapeView filterStyle](self fraction:{"filterStyle"), fraction}];

  if (v7)
  {
    layer = [(UIView *)self->_filterView layer];
    [layer setFilters:v7];
  }

  self->_monochromeFraction = fraction;
  [(CDRichComplicationShapeView *)self setGradientColors:self->_gradientColors locations:self->_gradientLocations];
}

- (void)updateMonochromeColor
{
  filterProvider = [(CDRichComplicationShapeView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:{-[CDRichComplicationShapeView filterStyle](self, "filterStyle")}];

  layer = [(UIView *)self->_filterView layer];
  v5 = layer;
  if (v7)
  {
    [layer setFilters:v7];
    v6 = 1.0;
  }

  else
  {
    [layer setFilters:0];
    v6 = 0.0;
  }

  self->_monochromeFraction = v6;
  [(CDRichComplicationShapeView *)self setGradientColors:self->_gradientColors locations:self->_gradientLocations];
}

- (void)_updateGradient
{
  v27 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CDRichComplicationShapeView *)self unfreezeForTransaction];
  if ([(NSArray *)self->_filteredGradientColors count]== 1)
  {
    _shapeStrokeColor = [(CDRichComplicationShapeView *)self _shapeStrokeColor];
    -[CAShapeLayer setStrokeColor:](self->_shapeLayer, "setStrokeColor:", [_shapeStrokeColor CGColor]);

    [(CAGradientLayer *)self->_gradientLayer setHidden:1];
    [(CAGradientLayer *)self->_gradientLayer setCompositingFilter:0];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = [(CDRichComplicationShapeView *)self _normalizeGradientLocations:self->_gradientLocations];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_filteredGradientColors;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          [array addObject:{objc_msgSend(v11, "CGColor", v22)}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    _shapeStrokeColor2 = [(CDRichComplicationShapeView *)self _shapeStrokeColor];
    -[CAShapeLayer setStrokeColor:](self->_shapeLayer, "setStrokeColor:", [_shapeStrokeColor2 CGColor]);

    [(CAGradientLayer *)self->_gradientLayer setHidden:0];
    v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA610]];
    [(CAGradientLayer *)self->_gradientLayer setCompositingFilter:v13];

    _shouldReverseGradient = [(CDRichComplicationShapeView *)self _shouldReverseGradient];
    gradientLayer = self->_gradientLayer;
    if (_shouldReverseGradient)
    {
      reverseObjectEnumerator = [array reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      [(CAGradientLayer *)gradientLayer setColors:allObjects];

      v18 = self->_gradientLayer;
      reverseObjectEnumerator2 = [v5 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];
      [(CAGradientLayer *)v18 setLocations:allObjects2];
    }

    else
    {
      [(CAGradientLayer *)self->_gradientLayer setColors:array];
      [(CAGradientLayer *)self->_gradientLayer setLocations:v5];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
  v21 = *MEMORY[0x277D85DE8];
}

- (id)_shapeStrokeColor
{
  if ([(NSArray *)self->_filteredGradientColors count]== 1)
  {
    [(NSArray *)self->_filteredGradientColors objectAtIndexedSubscript:0];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;

  return v3;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (void)_setupGradientLayer:(id)layer
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (double)_shapeLineWidth
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (CGPoint)_pointAtProgress:(float)progress
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_normalizeGradientLocations:(id)locations
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (CGPath)_generatePath
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_shouldReverseGradient
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

@end