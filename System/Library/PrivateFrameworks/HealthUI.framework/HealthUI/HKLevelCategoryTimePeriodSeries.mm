@interface HKLevelCategoryTimePeriodSeries
- (BOOL)_interiorCategoryLabels;
- (BOOL)drawSampleSpans;
- (BOOL)roundDaySamples;
- (HKLevelCategoryTimePeriodSeries)init;
- (NSString)specialMarkLegendLabel;
- (UIColor)categoryLevelColor;
- (UIColor)innerMarkColor;
- (UIColor)specialMarkColor;
- (UIFont)categoryLevelFont;
- (double)_coordinateForNow:(id)now pointTransform:(CGAffineTransform *)transform;
- (double)markerRadius;
- (double)offsetForEnumerationRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect;
- (void)_drawCategoryLabels:(CGContext *)labels axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate;
- (void)_drawMarkerWithContext:(CGContext *)context style:(int64_t)style color:(CGColor *)color innerColor:(CGColor *)innerColor specialColor:(CGColor *)specialColor location:(CGPoint)location radius:(double)radius;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setCategoryLevelColor:(id)color;
- (void)setCategoryLevelFont:(id)font;
- (void)setDrawSampleSpans:(BOOL)spans;
- (void)setInnerMarkColor:(id)color;
- (void)setMarkerRadius:(double)radius;
- (void)setRoundDaySamples:(BOOL)samples;
- (void)setSpecialMarkColor:(id)color;
- (void)setSpecialMarkLegendLabel:(id)label;
@end

@implementation HKLevelCategoryTimePeriodSeries

- (HKLevelCategoryTimePeriodSeries)init
{
  v12.receiver = self;
  v12.super_class = HKLevelCategoryTimePeriodSeries;
  v2 = [(HKHorizontalTimePeriodSeries *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKLevelCategoryTimePeriodSeriesLock"];
    v2->_markerRadiusStorage = 4.0;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    innerMarkColorStorage = v2->_innerMarkColorStorage;
    v2->_innerMarkColorStorage = systemBackgroundColor;

    categoryLevelFontStorage = v2->_categoryLevelFontStorage;
    v2->_categoryLevelFontStorage = 0;

    categoryLevelColorStorage = v2->_categoryLevelColorStorage;
    v2->_categoryLevelColorStorage = 0;

    specialMarkColorStorage = v2->_specialMarkColorStorage;
    v2->_specialMarkColorStorage = 0;

    specialMarkLegendLabelStorage = v2->_specialMarkLegendLabelStorage;
    v2->_specialMarkLegendLabelStorage = 0;

    v2->_drawSampleSpansStorage = 0;
    v2->_roundDaySamplesStorage = 0;
  }

  return v2;
}

- (double)markerRadius
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  markerRadiusStorage = self->_markerRadiusStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return markerRadiusStorage;
}

- (void)setMarkerRadius:(double)radius
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_markerRadiusStorage = radius;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)innerMarkColor
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_innerMarkColorStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInnerMarkColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  innerMarkColorStorage = self->_innerMarkColorStorage;
  self->_innerMarkColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIFont)categoryLevelFont
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_categoryLevelFontStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setCategoryLevelFont:(id)font
{
  fontCopy = font;
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  categoryLevelFontStorage = self->_categoryLevelFontStorage;
  self->_categoryLevelFontStorage = fontCopy;

  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)categoryLevelColor
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_categoryLevelColorStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setCategoryLevelColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  categoryLevelColorStorage = self->_categoryLevelColorStorage;
  self->_categoryLevelColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)specialMarkColor
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_specialMarkColorStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSpecialMarkColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  specialMarkColorStorage = self->_specialMarkColorStorage;
  self->_specialMarkColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSString)specialMarkLegendLabel
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_specialMarkLegendLabelStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSpecialMarkLegendLabel:(id)label
{
  labelCopy = label;
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  specialMarkLegendLabelStorage = self->_specialMarkLegendLabelStorage;
  self->_specialMarkLegendLabelStorage = labelCopy;

  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)drawSampleSpans
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_drawSampleSpansStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setDrawSampleSpans:(BOOL)spans
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_drawSampleSpansStorage = spans;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)roundDaySamples
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_roundDaySamplesStorage;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setRoundDaySamples:(BOOL)samples
{
  seriesMutableStateLock = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_roundDaySamplesStorage = samples;
  seriesMutableStateLock2 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)_interiorCategoryLabels
{
  valueLabels = [(HKHorizontalTimePeriodSeries *)self valueLabels];
  if (valueLabels)
  {
    categoryLevelFont = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelFont];
    if (categoryLevelFont)
    {
      categoryLevelColor = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
      v6 = categoryLevelColor != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKLevelCategoryTimePeriodSeries;
    v7 = [(HKHorizontalTimePeriodSeries *)&v9 findAxisLabelsInModelRange:rangeCopy zoomScale:scale];
  }

  return v7;
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKLevelCategoryTimePeriodSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__HKLevelCategoryTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81B6128;
  v25 = transform;
  selfCopy = self;
  v29 = *&path->index;
  resolution = path->resolution;
  v27 = transform2;
  v28 = v16;
  v17 = v16;
  v18 = transform2;
  v19 = transform;
  [chartPoints enumerateObjectsUsingBlock:v24];
  v22 = *&path->index;
  v23 = path->resolution;
  v20 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v17 blockPath:&v22];

  return v20;
}

void __77__HKLevelCategoryTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 yValue];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v24 startDate];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = *(a1 + 32);
    v9 = [v24 endDate];
    [v8 coordinateForValue:v9];
    v11 = v10;

    if ([*(a1 + 40) roundDaySamples])
    {
      v12 = floor(v7);
      v13 = ceil(v11);
      if (*(a1 + 72) == 6)
      {
        v7 = v12;
        v11 = v13;
      }
    }

    v14 = *(a1 + 48);
    v15 = [v24 yValue];
    [v14 coordinateForValue:v15];
    v17 = v16;

    v18 = [v24 pointStyle];
    if (v18 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v18 == 1;
    }

    v20 = *(a1 + 56);
    v21 = [HKStackedCategoryValueSeriesCoordinate alloc];
    v22 = [v24 userInfo];
    v23 = [(HKStackedCategoryValueSeriesCoordinate *)v21 initWithStart:v19 end:v22 pointStyle:v7 userInfo:v17, v11, v17];
    [v20 addObject:v23];
  }
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  if ([(HKLevelCategoryTimePeriodSeries *)self drawSampleSpans])
  {
    v20 = *&transform->c;
    v36 = *&transform->a;
    v37 = v20;
    v38 = *&transform->tx;
    [(HKLevelCategoryTimePeriodSeries *)self _coordinateForNow:delegateCopy pointTransform:&v36];
    v22 = v21;
  }

  else
  {
    v22 = 0xFFEFFFFFFFFFFFFFLL;
  }

  CGContextSaveGState(context);
  [(HKLevelCategoryTimePeriodSeries *)self _drawCategoryLabels:context axisRect:delegateCopy seriesRenderingDelegate:x, y, width, height];
  fillColor = [(HKHorizontalTimePeriodSeries *)self fillColor];
  cGColor = [fillColor CGColor];

  innerMarkColor = [(HKLevelCategoryTimePeriodSeries *)self innerMarkColor];
  if (innerMarkColor)
  {
    [(HKLevelCategoryTimePeriodSeries *)self innerMarkColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  }
  v26 = ;
  cGColor2 = [v26 CGColor];

  [(HKLevelCategoryTimePeriodSeries *)self markerRadius];
  v29 = v28;
  specialMarkColor = [(HKLevelCategoryTimePeriodSeries *)self specialMarkColor];

  cGColor3 = cGColor;
  if (specialMarkColor)
  {
    specialMarkColor2 = [(HKLevelCategoryTimePeriodSeries *)self specialMarkColor];
    cGColor3 = [specialMarkColor2 CGColor];
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __174__HKLevelCategoryTimePeriodSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v34[3] = &unk_1E81B6150;
  v34[4] = self;
  *&v34[5] = x;
  *&v34[6] = y;
  *&v34[7] = width;
  *&v34[8] = height;
  v34[9] = v22;
  v34[10] = context;
  v34[11] = v29;
  v35 = seriesDrawingDuringTiling;
  v34[12] = cGColor;
  v34[13] = cGColor2;
  v34[14] = cGColor3;
  v33 = *&transform->c;
  v36 = *&transform->a;
  v37 = v33;
  v38 = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:&v36 roundToViewScale:1 block:v34];
  CGContextRestoreGState(context);
}

void __174__HKLevelCategoryTimePeriodSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v6 = a4;
  [v20 start];
  v8 = v7;
  [v20 end];
  v10 = v9;
  [*(a1 + 32) offsetForCoordinate:v6 axisRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v12 = v11;

  if ([*(a1 + 32) drawSampleSpans])
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 96);
    if (v13 <= v8)
    {
      v16 = *(a1 + 80);
      v17 = *(a1 + 88) + *(a1 + 88);
      v19 = *(a1 + 120);
      v18 = v8;
      goto LABEL_7;
    }

    CGContextSetStrokeColorWithColor(*(a1 + 80), v14);
    CGContextSetLineWidth(*(a1 + 80), *(a1 + 88) + *(a1 + 88));
    CGContextSetLineCap(*(a1 + 80), kCGLineCapButt);
    CGContextMoveToPoint(*(a1 + 80), v8, v12);
    v15 = *(a1 + 80);
    if (v13 >= v8 && v13 <= v10)
    {
      CGContextAddLineToPoint(v15, *(a1 + 72), v12);
      CGContextStrokePath(*(a1 + 80));
      v16 = *(a1 + 80);
      v17 = *(a1 + 88) + *(a1 + 88);
      v18 = *(a1 + 72);
      v14 = *(a1 + 96);
      v19 = *(a1 + 120);
LABEL_7:
      DrawDiagonalSlashPatternLine(v16, v14, v19, v17, v18, v12, v10, v12);
      goto LABEL_9;
    }

    CGContextAddLineToPoint(v15, v10, v12);
    CGContextStrokePath(*(a1 + 80));
  }

LABEL_9:
  [*(a1 + 32) _drawMarkerWithContext:*(a1 + 80) style:objc_msgSend(v20 color:"pointStyle") innerColor:*(a1 + 96) specialColor:*(a1 + 104) location:*(a1 + 112) radius:{v8, v12, *(a1 + 88)}];
  if ([*(a1 + 32) drawSampleSpans])
  {
    [*(a1 + 32) _drawMarkerWithContext:*(a1 + 80) style:objc_msgSend(v20 color:"pointStyle") innerColor:*(a1 + 96) specialColor:*(a1 + 104) location:*(a1 + 112) radius:{v10, v12, *(a1 + 88)}];
  }
}

- (void)_drawMarkerWithContext:(CGContext *)context style:(int64_t)style color:(CGColor *)color innerColor:(CGColor *)innerColor specialColor:(CGColor *)specialColor location:(CGPoint)location radius:(double)radius
{
  if (style == 2)
  {
    colorCopy = specialColor;
LABEL_5:
    [HKGraphSeries drawFilledMarkerInContext:context color:colorCopy x:location.x y:location.y radius:radius];
    return;
  }

  if (style != 1)
  {
    if (style)
    {
      return;
    }

    colorCopy = color;
    goto LABEL_5;
  }

  [HKGraphSeries drawInnerDotMarkerInContext:context outColor:color inColor:innerColor x:location.x y:location.y radius:radius];
}

- (void)_drawCategoryLabels:(CGContext *)labels axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44[2] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    v43[0] = *MEMORY[0x1E69DB648];
    categoryLevelFont = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelFont];
    v44[0] = categoryLevelFont;
    v43[1] = *MEMORY[0x1E69DB650];
    categoryLevelColor = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
    v44[1] = categoryLevelColor;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];

    v36 = delegateCopy;
    [delegateCopy virtualMarginInsets];
    v16 = v15;
    categoryLevelColor2 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
    cGColor = [categoryLevelColor2 CGColor];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [(HKHorizontalTimePeriodSeries *)self enumerationValueOrdering];
    v19 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v39;
      v23 = v16 + 6.0;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v38 + 1) + 8 * v24);
          [(HKHorizontalTimePeriodSeries *)self enumerationRectForLevel:v21 axisRect:x, y, width, height];
          v27 = v26;
          v29 = v28;
          valueLabels = [(HKHorizontalTimePeriodSeries *)self valueLabels];
          v31 = [valueLabels objectForKeyedSubscript:v25];

          [v31 sizeWithAttributes:v14];
          [v31 drawInRect:v14 withAttributes:{v23, v27 + 3.0, v32, v33}];
          v34 = v27 + v29 + 0.0;
          CGContextSetStrokeColorWithColor(labels, cGColor);
          v35 = HKUIOnePixel();
          CGContextSetLineWidth(labels, v35);
          CGContextMoveToPoint(labels, x, v34);
          CGContextAddLineToPoint(labels, x + width, v34);
          CGContextStrokePath(labels);
          ++v21;

          ++v24;
        }

        while (v20 != v24);
        v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v20);
    }

    delegateCopy = v36;
  }
}

- (double)_coordinateForNow:(id)now pointTransform:(CGAffineTransform *)transform
{
  v5 = MEMORY[0x1E695DF00];
  nowCopy = now;
  v7 = [v5 now];
  seriesDrawingXAxis = [nowCopy seriesDrawingXAxis];

  transform = [seriesDrawingXAxis transform];
  [transform coordinateForValue:v7];
  v11 = transform->tx + transform->c * 0.0 + transform->a * v10;

  return v11;
}

- (double)offsetForEnumerationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    return y + (height + height) / 3.0;
  }

  v9.receiver = self;
  v9.super_class = HKLevelCategoryTimePeriodSeries;
  [(HKHorizontalTimePeriodSeries *)&v9 offsetForEnumerationRect:x, y, width, height];
  return result;
}

- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect
{
  v6 = [(HKHorizontalTimePeriodSeries *)self enumerationValueOrdering:axis];
  v7 = [v6 count];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v9 = [HKValueRange valueRangeWithMinValue:&unk_1F4382320 maxValue:v8];

  return v9;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKLevelCategoryTimePeriodSeries.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end