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
- (double)_coordinateForNow:(id)a3 pointTransform:(CGAffineTransform *)a4;
- (double)markerRadius;
- (double)offsetForEnumerationRect:(CGRect)a3;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6;
- (void)_drawCategoryLabels:(CGContext *)a3 axisRect:(CGRect)a4 seriesRenderingDelegate:(id)a5;
- (void)_drawMarkerWithContext:(CGContext *)a3 style:(int64_t)a4 color:(CGColor *)a5 innerColor:(CGColor *)a6 specialColor:(CGColor *)a7 location:(CGPoint)a8 radius:(double)a9;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setCategoryLevelColor:(id)a3;
- (void)setCategoryLevelFont:(id)a3;
- (void)setDrawSampleSpans:(BOOL)a3;
- (void)setInnerMarkColor:(id)a3;
- (void)setMarkerRadius:(double)a3;
- (void)setRoundDaySamples:(BOOL)a3;
- (void)setSpecialMarkColor:(id)a3;
- (void)setSpecialMarkLegendLabel:(id)a3;
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
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    innerMarkColorStorage = v2->_innerMarkColorStorage;
    v2->_innerMarkColorStorage = v5;

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
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  markerRadiusStorage = self->_markerRadiusStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return markerRadiusStorage;
}

- (void)setMarkerRadius:(double)a3
{
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_markerRadiusStorage = a3;
  v6 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (UIColor)innerMarkColor
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_innerMarkColorStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInnerMarkColor:(id)a3
{
  v4 = a3;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  innerMarkColorStorage = self->_innerMarkColorStorage;
  self->_innerMarkColorStorage = v4;

  v7 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIFont)categoryLevelFont
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_categoryLevelFontStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setCategoryLevelFont:(id)a3
{
  v4 = a3;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  categoryLevelFontStorage = self->_categoryLevelFontStorage;
  self->_categoryLevelFontStorage = v4;

  v7 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIColor)categoryLevelColor
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_categoryLevelColorStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setCategoryLevelColor:(id)a3
{
  v4 = a3;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  categoryLevelColorStorage = self->_categoryLevelColorStorage;
  self->_categoryLevelColorStorage = v4;

  v7 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIColor)specialMarkColor
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_specialMarkColorStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSpecialMarkColor:(id)a3
{
  v4 = a3;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  specialMarkColorStorage = self->_specialMarkColorStorage;
  self->_specialMarkColorStorage = v4;

  v7 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (NSString)specialMarkLegendLabel
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_specialMarkLegendLabelStorage;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSpecialMarkLegendLabel:(id)a3
{
  v4 = a3;
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  specialMarkLegendLabelStorage = self->_specialMarkLegendLabelStorage;
  self->_specialMarkLegendLabelStorage = v4;

  v7 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (BOOL)drawSampleSpans
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_drawSampleSpansStorage;
  v4 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setDrawSampleSpans:(BOOL)a3
{
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_drawSampleSpansStorage = a3;
  v6 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)roundDaySamples
{
  v3 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_roundDaySamplesStorage;
  v4 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setRoundDaySamples:(BOOL)a3
{
  v5 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_roundDaySamplesStorage = a3;
  v6 = [(HKLevelCategoryTimePeriodSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)_interiorCategoryLabels
{
  v3 = [(HKHorizontalTimePeriodSeries *)self valueLabels];
  if (v3)
  {
    v4 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelFont];
    if (v4)
    {
      v5 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
      v6 = v5 != 0;
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

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v6 = a3;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKLevelCategoryTimePeriodSeries;
    v7 = [(HKHorizontalTimePeriodSeries *)&v9 findAxisLabelsInModelRange:v6 zoomScale:a4];
  }

  return v7;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a3 chartPoints];
  if (!v13)
  {
    [HKLevelCategoryTimePeriodSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v14 = [v11 transform];
  v15 = [v12 transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__HKLevelCategoryTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81B6128;
  v25 = v14;
  v26 = self;
  v29 = *&a4->index;
  resolution = a4->resolution;
  v27 = v15;
  v28 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  [v13 enumerateObjectsUsingBlock:v24];
  v22 = *&a4->index;
  v23 = a4->resolution;
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

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a9;
  v19 = [v18 seriesDrawingDuringTiling];
  if ([(HKLevelCategoryTimePeriodSeries *)self drawSampleSpans])
  {
    v20 = *&a6->c;
    v36 = *&a6->a;
    v37 = v20;
    v38 = *&a6->tx;
    [(HKLevelCategoryTimePeriodSeries *)self _coordinateForNow:v18 pointTransform:&v36];
    v22 = v21;
  }

  else
  {
    v22 = 0xFFEFFFFFFFFFFFFFLL;
  }

  CGContextSaveGState(a7);
  [(HKLevelCategoryTimePeriodSeries *)self _drawCategoryLabels:a7 axisRect:v18 seriesRenderingDelegate:x, y, width, height];
  v23 = [(HKHorizontalTimePeriodSeries *)self fillColor];
  v24 = [v23 CGColor];

  v25 = [(HKLevelCategoryTimePeriodSeries *)self innerMarkColor];
  if (v25)
  {
    [(HKLevelCategoryTimePeriodSeries *)self innerMarkColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  }
  v26 = ;
  v27 = [v26 CGColor];

  [(HKLevelCategoryTimePeriodSeries *)self markerRadius];
  v29 = v28;
  v30 = [(HKLevelCategoryTimePeriodSeries *)self specialMarkColor];

  v31 = v24;
  if (v30)
  {
    v32 = [(HKLevelCategoryTimePeriodSeries *)self specialMarkColor];
    v31 = [v32 CGColor];
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
  v34[10] = a7;
  v34[11] = v29;
  v35 = v19;
  v34[12] = v24;
  v34[13] = v27;
  v34[14] = v31;
  v33 = *&a6->c;
  v36 = *&a6->a;
  v37 = v33;
  v38 = *&a6->tx;
  [v17 enumerateCoordinatesWithTransform:&v36 roundToViewScale:1 block:v34];
  CGContextRestoreGState(a7);
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

- (void)_drawMarkerWithContext:(CGContext *)a3 style:(int64_t)a4 color:(CGColor *)a5 innerColor:(CGColor *)a6 specialColor:(CGColor *)a7 location:(CGPoint)a8 radius:(double)a9
{
  if (a4 == 2)
  {
    v9 = a7;
LABEL_5:
    [HKGraphSeries drawFilledMarkerInContext:a3 color:v9 x:a8.x y:a8.y radius:a9];
    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    v9 = a5;
    goto LABEL_5;
  }

  [HKGraphSeries drawInnerDotMarkerInContext:a3 outColor:a5 inColor:a6 x:a8.x y:a8.y radius:a9];
}

- (void)_drawCategoryLabels:(CGContext *)a3 axisRect:(CGRect)a4 seriesRenderingDelegate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v44[2] = *MEMORY[0x1E69E9840];
  v11 = a5;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    v43[0] = *MEMORY[0x1E69DB648];
    v12 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelFont];
    v44[0] = v12;
    v43[1] = *MEMORY[0x1E69DB650];
    v13 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
    v44[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];

    v36 = v11;
    [v11 virtualMarginInsets];
    v16 = v15;
    v17 = [(HKLevelCategoryTimePeriodSeries *)self categoryLevelColor];
    v18 = [v17 CGColor];

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
          v30 = [(HKHorizontalTimePeriodSeries *)self valueLabels];
          v31 = [v30 objectForKeyedSubscript:v25];

          [v31 sizeWithAttributes:v14];
          [v31 drawInRect:v14 withAttributes:{v23, v27 + 3.0, v32, v33}];
          v34 = v27 + v29 + 0.0;
          CGContextSetStrokeColorWithColor(a3, v18);
          v35 = HKUIOnePixel();
          CGContextSetLineWidth(a3, v35);
          CGContextMoveToPoint(a3, x, v34);
          CGContextAddLineToPoint(a3, x + width, v34);
          CGContextStrokePath(a3);
          ++v21;

          ++v24;
        }

        while (v20 != v24);
        v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v20);
    }

    v11 = v36;
  }
}

- (double)_coordinateForNow:(id)a3 pointTransform:(CGAffineTransform *)a4
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v7 = [v5 now];
  v8 = [v6 seriesDrawingXAxis];

  v9 = [v8 transform];
  [v9 coordinateForValue:v7];
  v11 = a4->tx + a4->c * 0.0 + a4->a * v10;

  return v11;
}

- (double)offsetForEnumerationRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(HKLevelCategoryTimePeriodSeries *)self _interiorCategoryLabels])
  {
    return y + (height + height) / 3.0;
  }

  v9.receiver = self;
  v9.super_class = HKLevelCategoryTimePeriodSeries;
  [(HKHorizontalTimePeriodSeries *)&v9 offsetForEnumerationRect:x, y, width, height];
  return result;
}

- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6
{
  v6 = [(HKHorizontalTimePeriodSeries *)self enumerationValueOrdering:a3];
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