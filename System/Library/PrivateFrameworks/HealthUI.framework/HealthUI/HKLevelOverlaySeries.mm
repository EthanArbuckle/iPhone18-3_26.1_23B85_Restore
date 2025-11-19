@interface HKLevelOverlaySeries
+ (id)levelOverlaySeriesWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
+ (id)presentationStyleWithColor:(id)a3 options:(unint64_t)a4;
- (HKLevelOverlaySeries)initWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
- (id)_visibleBlockCoordinatesFromBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5 strict:(BOOL)a6;
- (void)_configureOverlaySeriesWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5;
- (void)_drawBoundAnnotationsWithCoordinates:(id)a3 displayUpperBound:(BOOL)a4 displayLowerBound:(BOOL)a5 axisAnnotationDelegate:(id)a6;
- (void)_drawLevelBoundsInContext:(CGContext *)a3 coordinates:(id)a4 pointTransform:(CGAffineTransform *)a5 seriesRect:(CGRect)a6 visibleValueRange:(id)a7 extendFirstPoint:(BOOL)a8 displayUpperBound:(BOOL)a9 displayUpperBoundPath:(BOOL)a10 displayLowerBound:(BOOL)a11 displayLowerBoundPath:(BOOL)a12 strokeStyle:(id)a13 seriesRenderingDelegate:(id)a14;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)drawSeriesWithVisibleCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9 axisAnnotationDelegate:(id)a10 shouldExtendFirstPoint:(BOOL)a11;
@end

@implementation HKLevelOverlaySeries

- (HKLevelOverlaySeries)initWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HKLevelOverlaySeries;
  v10 = [(HKLineSeries *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HKLevelOverlaySeries *)v10 _configureOverlaySeriesWithDisplayType:v8 dataSource:v9 options:a5];
  }

  return v11;
}

- (void)_configureOverlaySeriesWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  self->_options = a5;
  v8 = a3;
  [(HKGraphSeries *)self setDataSource:a4];
  [(HKGraphSeries *)self setAllowsSelection:0];
  v9 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:0];
  [(HKGraphSeries *)self setYAxis:v9];
  v10 = objc_opt_class();
  v11 = [v8 displayCategory];
  v12 = [v11 color];
  v13 = [v10 presentationStyleWithColor:v12 options:a5];

  v19[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(HKLineSeries *)self setUnhighlightedPresentationStyles:v14];

  v18 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(HKLineSeries *)self setHighlightedPresentationStyles:v15];

  [(HKLineSeries *)self setInactivePresentationStyle:v13];
  v16 = [v8 chartingRules];

  v17 = [v16 axisScalingRule];
  [(HKGraphSeries *)self setAxisScalingRule:v17];
}

+ (id)levelOverlaySeriesWithDisplayType:(id)a3 dataSource:(id)a4 options:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HKLevelOverlaySeries alloc] initWithDisplayType:v8 dataSource:v7 options:a5];

  return v9;
}

+ (id)presentationStyleWithColor:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = HKUICeilToScreenScale(1.0);
  v7 = v5;
  v8 = [HKStrokeStyle strokeStyleWithColor:v7 lineWidth:v6];
  [v8 setDashStyle:4];
  [v8 setLineCap:1];
  v9 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v9 setStrokeStyle:v8];
  [(HKLineSeriesPresentationStyle *)v9 setWaveForm:0];
  [(HKLineSeriesPresentationStyle *)v9 setShouldNegateAnnotationValue:(a4 >> 2) & 1];
  v10 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
  v11 = HKIntegerFormatter();
  v12 = [HKAxisLabelStyle labelStyleWithColor:v7 font:v10 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v11];

  [(HKLineSeriesPresentationStyle *)v9 setAxisAnnotationStyle:v12];

  return v9;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = a3;
  v22 = [v18 axisAnnotationDelegateForSeries:self];
  if (([v18 seriesDrawingDuringScrolling] & 1) != 0 || (objc_msgSend(v18, "seriesDrawingDuringTiling") & 1) != 0 || objc_msgSend(v18, "seriesDrawingDuringAutoscale"))
  {
    [v22 clearAxisAnnotations];
  }

  v23 = [v21 coordinates];
  v24 = *&a6->c;
  v36 = *&a6->a;
  v37 = v24;
  v38 = *&a6->tx;
  v25 = [(HKLevelOverlaySeries *)self _visibleBlockCoordinatesFromBlockCoordinates:v23 pointTransform:&v36 screenRect:0 strict:x, y, width, height];

  v26 = *(MEMORY[0x1E695EFD0] + 16);
  v36 = *MEMORY[0x1E695EFD0];
  v37 = v26;
  v38 = *(MEMORY[0x1E695EFD0] + 32);
  v27 = [v21 firstCoordinateWithTransform:&v36 roundToViewScale:0];

  v28 = [v25 firstObject];
  [v28 startXValue];
  v30 = v29;
  [v27 startXValue];
  v32 = v30 != v31;

  v33 = *&a6->c;
  v36 = *&a6->a;
  v37 = v33;
  v38 = *&a6->tx;
  LOBYTE(v34) = v32;
  [(HKLevelOverlaySeries *)self drawSeriesWithVisibleCoordinates:v25 axisRect:v20 zoomLevelConfiguration:&v36 pointTransform:a7 renderContext:v19 secondaryRenderContext:v18 seriesRenderingDelegate:x axisAnnotationDelegate:y shouldExtendFirstPoint:width, height, v22, v34];
}

- (void)drawSeriesWithVisibleCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9 axisAnnotationDelegate:(id)a10 shouldExtendFirstPoint:(BOOL)a11
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a10;
  v31 = a9;
  v20 = a3;
  [(HKLevelOverlaySeries *)self _drawBoundAnnotationsWithCoordinates:v20 displayUpperBound:[(HKLevelOverlaySeries *)self shouldDisplayUpperBound] displayLowerBound:[(HKLevelOverlaySeries *)self shouldDisplayLowerBound] axisAnnotationDelegate:v19];

  v21 = [(HKGraphSeries *)self visibleValueRange];
  v30 = [(HKLevelOverlaySeries *)self shouldDisplayUpperBound];
  v22 = [(HKLevelOverlaySeries *)self shouldDisplayUpperBound];
  v23 = [(HKLevelOverlaySeries *)self shouldDisplayLowerBound];
  v24 = [(HKLevelOverlaySeries *)self shouldDisplayLowerBound];
  v25 = [(HKLineSeries *)self unhighlightedPresentationStyles];
  v26 = [v25 firstObject];
  v27 = [v26 strokeStyle];
  v28 = *&a6->c;
  v33[0] = *&a6->a;
  v33[1] = v28;
  v33[2] = *&a6->tx;
  BYTE2(v29) = v24;
  BYTE1(v29) = v23;
  LOBYTE(v29) = v22;
  [(HKLevelOverlaySeries *)self _drawLevelBoundsInContext:a7 coordinates:v20 pointTransform:v33 seriesRect:v21 visibleValueRange:a11 extendFirstPoint:v30 displayUpperBound:x displayUpperBoundPath:y displayLowerBound:width displayLowerBoundPath:height strokeStyle:v29 seriesRenderingDelegate:v27, v31];
}

- (void)_drawBoundAnnotationsWithCoordinates:(id)a3 displayUpperBound:(BOOL)a4 displayLowerBound:(BOOL)a5 axisAnnotationDelegate:(id)a6
{
  v6 = a5;
  v7 = a4;
  v13 = a6;
  v10 = [(HKLevelOverlaySeries *)self _chartDataFromBlockCoordinates:a3];
  if ([v10 count])
  {
    v11 = [v10 lastObject];
    v12 = v11;
    if (v7)
    {
      [v11 maxValue];
      [(HKLineSeries *)self addAxisAnnotationForValue:v13 axisAnnotationDelegate:?];
    }

    if (v6)
    {
      [v12 minValue];
      [(HKLineSeries *)self addAxisAnnotationForValue:v13 axisAnnotationDelegate:?];
    }
  }
}

- (void)_drawLevelBoundsInContext:(CGContext *)a3 coordinates:(id)a4 pointTransform:(CGAffineTransform *)a5 seriesRect:(CGRect)a6 visibleValueRange:(id)a7 extendFirstPoint:(BOOL)a8 displayUpperBound:(BOOL)a9 displayUpperBoundPath:(BOOL)a10 displayLowerBound:(BOOL)a11 displayLowerBoundPath:(BOOL)a12 strokeStyle:(id)a13 seriesRenderingDelegate:(id)a14
{
  path = a9;
  v107 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v117 = *MEMORY[0x1E69E9840];
  v20 = a4;
  v21 = a7;
  v22 = a13;
  v23 = a14;
  if (![v20 count])
  {
    goto LABEL_68;
  }

  v99 = v23;
  [v23 seriesContentOffset];
  v25 = v24;
  v26 = malloc_type_calloc([v20 count] + 2, 0x10uLL, 0x1000040451B5BE8uLL);
  v27 = malloc_type_calloc([v20 count] + 2, 0x10uLL, 0x1000040451B5BE8uLL);
  v28 = [v20 count];
  v118.origin.x = x;
  v118.origin.y = y;
  v118.size.width = width;
  v118.size.height = height;
  MinY = CGRectGetMinY(v118);
  [v22 lineWidth];
  v109 = MinY - v30;
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = width;
  v119.size.height = height;
  MaxY = CGRectGetMaxY(v119);
  [v22 lineWidth];
  v108 = MaxY + v32;
  v33 = [v21 minValue];
  v34 = [v21 maxValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v34 floatValue];
      v36 = v35;
      [v33 floatValue];
      b = a5->b;
      d = a5->d;
      ty = a5->ty;
      v108 = ty + d * v37 + b * 0.0;
      v109 = ty + d * v36 + b * 0.0;
    }
  }

  v97 = v34;
  v98 = v33;
  v100 = v22;
  v101 = v21;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v102 = v20;
  obj = v20;
  v41 = [obj countByEnumeratingWithState:&v112 objects:v116 count:16];
  v105 = v25;
  if (!v41)
  {
    v43 = 0;
    v104 = v25;
    goto LABEL_60;
  }

  v42 = v41;
  v43 = 0;
  v44 = v28 - 1;
  v45 = *v113;
  v104 = v25;
  do
  {
    v46 = 0;
    do
    {
      if (*v113 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v112 + 1) + 8 * v46);
      v48 = [v47 userInfo];
      [v47 endXValue];
      v50 = v49;
      [v48 maxValue];
      v52 = a5->tx + v51 * a5->c + a5->a * v50;
      v53 = a5->ty + v51 * a5->d + a5->b * v50;
      [v47 endXValue];
      v55 = v54;
      [v48 minValue];
      v57 = a5->tx + v56 * a5->c + a5->a * v55;
      v58 = a5->ty + v56 * a5->d + a5->b * v55;
      if (path)
      {
        v59 = v53;
      }

      else
      {
        v59 = v109;
      }

      if (a11)
      {
        v60 = v58;
      }

      else
      {
        v60 = v108;
      }

      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = width;
      v120.size.height = height;
      MinX = CGRectGetMinX(v120);
      if (v43 || !v107 || v52 <= MinX)
      {
        if (v43 == 1)
        {
          v62 = v26->x;
          if (v26->x < MinX)
          {
            v63 = v26->y;
            v64 = v27->x;
            v65 = v27->y;
            v66 = v63 + (v59 - v63) * (1.0 - (v52 - MinX) / (v52 - v62));
            if (v63 >= v59)
            {
              v67 = v26->y;
            }

            else
            {
              v67 = v59;
            }

            if (v52 - v62 < 0.00000011920929)
            {
              v66 = v67;
            }

            if (v65 >= v60)
            {
              v68 = v27->y;
            }

            else
            {
              v68 = v60;
            }

            if (v57 - v64 < 0.00000011920929)
            {
              v69 = v68;
            }

            else
            {
              v69 = v65 + (v60 - v65) * (1.0 - (v57 - MinX) / (v57 - v64));
            }

            v26->x = MinX;
            v26->y = v66;
            v27->x = MinX;
            v27->y = v69;
            if (vabdd_f64(v63, v59) > 0.00000011920929)
            {
              v70 = MinX - v62;
              v71 = v66 - v63;
              v72 = v104 - v70;
              *&v70 = v71 * v71 + v70 * v70;
              v104 = v72 + fabsf(sqrtf(*&v70));
            }

            if (vabdd_f64(v65, v60) > 0.00000011920929)
            {
              v73 = MinX - v64;
              v74 = v69 - v65;
              v75 = v105 - v73;
              *&v73 = v74 * v74 + v73 * v73;
              v105 = v75 + fabsf(sqrtf(*&v73));
            }
          }

          v43 = 1;
        }
      }

      else
      {
        v26->x = MinX;
        v26->y = v59;
        ++v44;
        v43 = 1;
        v27->x = MinX;
        v27->y = v60;
      }

      v121.origin.x = x;
      v121.origin.y = y;
      v121.size.width = width;
      v121.size.height = height;
      MaxX = CGRectGetMaxX(v121);
      if (v43 == v44 && v52 < MaxX)
      {
        p_x = &v26[v44].x;
        *p_x = v52;
        p_x[1] = v59;
        v78 = &v27[v44].x;
        *v78 = v57;
        v78[1] = v60;
        ++v44;
LABEL_41:
        v52 = MaxX;
        v43 = v44;
        goto LABEL_54;
      }

      if (v43 == v44 && v52 > MaxX)
      {
        v79 = &v26[v44 - 1].x;
        v80 = v79[1];
        v81 = v52 - *v79;
        v82 = v80 + (v59 - v80) * (1.0 - (v52 - MaxX) / v81);
        if (v80 < v59)
        {
          v80 = v59;
        }

        if (v81 < 0.00000011920929)
        {
          v59 = v80;
        }

        else
        {
          v59 = v82;
        }

        v83 = &v27[v44 - 1].x;
        v84 = v83[1];
        v85 = v57 - *v83;
        if (v85 >= 0.00000011920929)
        {
          v60 = v84 + (v60 - v84) * (1.0 - (v57 - MaxX) / v85);
        }

        else if (v84 >= v60)
        {
          v60 = v83[1];
        }

        goto LABEL_41;
      }

      MaxX = v57;
LABEL_54:
      v86 = &v26[v43].x;
      *v86 = v52;
      v86[1] = v59;
      v87 = &v27[v43].x;
      *v87 = MaxX;
      v87[1] = v60;
      ++v43;

      ++v46;
    }

    while (v42 != v46);
    v88 = [obj countByEnumeratingWithState:&v112 objects:v116 count:16];
    v42 = v88;
  }

  while (v88);
LABEL_60:

  Mutable = CGPathCreateMutable();
  v90 = CGPathCreateMutable();
  v91 = CGPathCreateMutable();
  patha = Mutable;
  CGPathAddLines(Mutable, 0, v26, v43);
  CGPathAddLines(v90, 0, v27, v43);
  CGPathAddLines(v91, 0, v26, v43);
  if ((v43 - 1) >= 0)
  {
    p_y = &v27[v43 - 1].y;
    do
    {
      CGPathAddLineToPoint(v91, 0, *(p_y - 1), *p_y);
      p_y -= 2;
      --v43;
    }

    while (v43);
  }

  CGPathCloseSubpath(v91);
  v93 = [v100 strokeColor];
  v94 = [v93 colorWithAlphaComponent:0.1];
  v95 = [v93 colorWithAlphaComponent:0.3];
  v96 = HKUIDynamicColorWithColors(v94, v95);

  v22 = v100;
  CGContextSetFillColorWithColor(a3, [v96 CGColor]);
  CGContextSetStrokeColorWithColor(a3, [v93 CGColor]);
  if (a10)
  {
    CGContextAddPath(a3, Mutable);
    [v100 applyToContext:a3 dashPhase:v104];
    CGContextStrokePath(a3);
  }

  v21 = v101;
  v23 = v99;
  if (a12)
  {
    CGContextAddPath(a3, v90);
    [v100 applyToContext:a3 dashPhase:v105];
    CGContextStrokePath(a3);
  }

  CGContextAddPath(a3, v91);
  CGContextFillPath(a3);
  CGPathRelease(patha);
  CGPathRelease(v90);
  CGPathRelease(v91);
  free(v26);
  free(v27);

  v20 = v102;
LABEL_68:
}

- (id)_visibleBlockCoordinatesFromBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5 strict:(BOOL)a6
{
  width = a5.size.width;
  x = a5.origin.x;
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v37;
    v15 = x + width;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v17 = 0;
      v29 = v13;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        [v18 startXValue];
        v20 = a4->tx + a4->c * 0.0 + a4->a * v19;
        if (v20 >= x && v20 <= v15)
        {
          v22 = [v18 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v32 addObject:v18];
            if (!a6)
            {
              if (v16 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v16 = v13;
              }

              v30 = v13;
            }
          }
        }

        ++v13;
        ++v17;
      }

      while (v12 != v17);
      v13 = v29 + v12;
      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__HKLevelOverlaySeries__visibleBlockCoordinatesFromBlockCoordinates_pointTransform_screenRect_strict___block_invoke;
  aBlock[3] = &unk_1E81BA1C0;
  v34 = v10;
  v24 = v32;
  v35 = v24;
  v25 = v10;
  v26 = _Block_copy(aBlock);
  v26[2](v26, v16, 1);
  v26[2](v26, v30, 0);
  v27 = v24;

  return v24;
}

void __102__HKLevelOverlaySeries__visibleBlockCoordinatesFromBlockCoordinates_pointTransform_screenRect_strict___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a3 ? a2 - 1 : a2 + 1;
    if ((v4 & 0x8000000000000000) == 0 && v4 < [*(a1 + 32) count])
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      v6 = [v9 userInfo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = *(a1 + 40);
        if (a3)
        {
          [v8 insertObject:v9 atIndex:0];
        }

        else
        {
          [v8 addObject:v9];
        }
      }
    }
  }
}

id __55__HKLevelOverlaySeries__chartDataFromBlockCoordinates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 userInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end