@interface HKAnnotatedHorizontalLineSeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (CGRect)_boundsForString:(id)a3 coordinate:(id)a4 valueAttributes:(id)a5 rectsToAvoid:(id)a6;
- (HKAnnotatedHorizontalLineSeries)init;
- (NSDictionary)horizontalLineStyles;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)valueOutlineWidth;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_defaultLabelStyle;
- (id)_defaultLineStyle;
- (id)_horizontalLineSeriesStyleForBlockCoordinate:(id)a3;
- (id)_stringValueForCoordinate:(id)a3 valueStyle:(id)a4;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setHorizontalLineStyles:(id)a3;
- (void)setValueOutlineWidth:(double)a3;
@end

@implementation HKAnnotatedHorizontalLineSeries

- (HKAnnotatedHorizontalLineSeries)init
{
  v7.receiver = self;
  v7.super_class = HKAnnotatedHorizontalLineSeries;
  v2 = [(HKGraphSeries *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKAnnotatedHorizontalLineSeriesLock"];
    horizontalLineStylesStorage = v2->_horizontalLineStylesStorage;
    v2->_horizontalLineStylesStorage = MEMORY[0x1E695E0F8];

    v2->_valueOutlineWidthStorage = 0.0;
  }

  return v2;
}

- (NSDictionary)horizontalLineStyles
{
  v3 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_horizontalLineStylesStorage;
  v5 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHorizontalLineStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  horizontalLineStylesStorage = self->_horizontalLineStylesStorage;
  self->_horizontalLineStylesStorage = v6;

  v8 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (double)valueOutlineWidth
{
  v3 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  valueOutlineWidthStorage = self->_valueOutlineWidthStorage;
  v5 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return valueOutlineWidthStorage;
}

- (void)setValueOutlineWidth:(double)a3
{
  v5 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_valueOutlineWidthStorage = a3;
  v6 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  v87 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v64 = a9;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __174__HKAnnotatedHorizontalLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v82[3] = &unk_1E81BA4D0;
  v16 = v15;
  v83 = v16;
  v17 = *&a6->c;
  v81[0] = *&a6->a;
  v81[1] = v17;
  v81[2] = *&a6->tx;
  v65 = v13;
  [v13 enumerateCoordinatesWithTransform:v81 roundToViewScale:1 block:v82];
  [v16 sortUsingComparator:&__block_literal_global_73];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v78;
    v67 = *MEMORY[0x1E69DB648];
    v66 = *MEMORY[0x1E69DB650];
    v68 = *v78;
    v69 = v14;
    do
    {
      v21 = 0;
      v72 = v19;
      do
      {
        if (*v78 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v77 + 1) + 8 * v21);
        v23 = [v22 coordinate];
        v24 = [v22 originalCoordinate];
        if (([v14 containsObject:v23] & 1) == 0)
        {
          [v14 addObject:v23];
          CGContextSaveGState(a7);
          v25 = [(HKAnnotatedHorizontalLineSeries *)self _horizontalLineSeriesStyleForBlockCoordinate:v23];
          v76 = v25;
          if (v25)
          {
            v26 = v25;
            v27 = [v25 lineStrokeStyle];
            [v26 valueStyle];
          }

          else
          {
            v27 = [(HKAnnotatedHorizontalLineSeries *)self _defaultLineStyle];
            [(HKAnnotatedHorizontalLineSeries *)self _defaultLabelStyle];
          }
          v28 = ;
          v74 = v28;
          v75 = v27;
          [v27 applyToContext:a7];
          [v27 lineWidth];
          v30 = v29 * 0.5;
          [v23 startPoint];
          v32 = v31;
          [v23 endPoint];
          v34 = v32 + (v33 - v32) * 0.5;
          if (v34 >= v30 + v32)
          {
            v35 = v30 + v32;
          }

          else
          {
            v35 = v32 + (v33 - v32) * 0.5;
          }

          v36 = v33 - v30;
          if (v34 >= v36)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          [v23 startPoint];
          CGContextMoveToPoint(a7, v35, v38);
          [v23 endPoint];
          CGContextAddLineToPoint(a7, v37, v39);
          CGContextStrokePath(a7);
          CGContextRestoreGState(a7);
          [v23 startPoint];
          v41 = v40;
          [v23 endPoint];
          if (v41 >= v42)
          {
            v41 = v42;
          }

          if (v35 >= v37)
          {
            v43 = v37;
          }

          else
          {
            v43 = v35;
          }

          if (v35 >= v37)
          {
            v44 = v35;
          }

          else
          {
            v44 = v37;
          }

          v45 = v44 - v43;
          [v23 startPoint];
          v47 = v46;
          [v23 endPoint];
          if (v47 >= v48)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          [v23 startPoint];
          v51 = v50;
          [v23 endPoint];
          if (v51 >= v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = v51;
          }

          v54 = [MEMORY[0x1E696B098] valueWithCGRect:{v43, v41, v45, v49 - v53}];
          [v70 addObject:v54];

          v55 = [(HKAnnotatedHorizontalLineSeries *)self _stringValueForCoordinate:v24 valueStyle:v28];
          v84[0] = v67;
          v56 = [v28 font];
          v84[1] = v66;
          v85[0] = v56;
          [v28 textColor];
          v58 = v57 = self;
          v85[1] = v58;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
          v60 = v59 = a7;

          self = v57;
          [(HKAnnotatedHorizontalLineSeries *)v57 _boundsForString:v55 coordinate:v23 valueAttributes:v60 rectsToAvoid:v70];
          v61 = [HKStringDrawing stringDrawingWithText:v55 inRect:v60 withAttributes:?];
          [v71 addObject:v61];

          a7 = v59;
          v20 = v68;
          v14 = v69;
          v19 = v72;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v19);
  }

  if (([v64 seriesDrawingDuringTiling] & 1) != 0 || objc_msgSend(v64, "seriesDrawingDuringScrolling"))
  {
    v62 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  }

  else
  {
    v62 = [MEMORY[0x1E69DC888] clearColor];
  }

  v63 = v62;
  [(HKAnnotatedHorizontalLineSeries *)self valueOutlineWidth];
  [HKStringDrawing drawStrings:v71 outlineWidth:v63 outlineColor:a7 context:?];
}

void __174__HKAnnotatedHorizontalLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = objc_alloc_init(CoordinateTuple);
  [(CoordinateTuple *)v8 setCoordinate:v7];

  [(CoordinateTuple *)v8 setOriginalCoordinate:v6];
  [*(a1 + 32) addObject:v8];
}

uint64_t __174__HKAnnotatedHorizontalLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 coordinate];
  v6 = [v4 coordinate];

  [v5 endPoint];
  v8 = v7;
  [v6 endPoint];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    [v5 endPoint];
    v12 = v11;
    [v6 endPoint];
    if (v12 >= v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

- (id)_horizontalLineSeriesStyleForBlockCoordinate:(id)a3
{
  v4 = a3;
  v5 = [(HKAnnotatedHorizontalLineSeries *)self horizontalLineStyles];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 styleIdentifier];

  v8 = [v6 numberWithInteger:v7];
  v9 = [v5 objectForKeyedSubscript:v8];

  return v9;
}

- (id)_defaultLineStyle
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = [HKStrokeStyle strokeStyleWithColor:v2 lineWidth:2.0];

  return v3;
}

- (id)_defaultLabelStyle
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v4 = [HKAxisLabelStyle labelStyleWithColor:v2 font:v3 horizontalAlignment:2 verticalAlignment:2];

  return v4;
}

- (id)_stringValueForCoordinate:(id)a3 valueStyle:(id)a4
{
  v5 = a3;
  v6 = [a4 numberFormatter];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = HKDecimalFormatter(0);
  }

  v9 = v8;

  v10 = MEMORY[0x1E696AD98];
  [v5 startPoint];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  v14 = [v9 stringFromNumber:v13 displayType:0 unitController:0];

  return v14;
}

- (CGRect)_boundsForString:(id)a3 coordinate:(id)a4 valueAttributes:(id)a5 rectsToAvoid:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  [a3 sizeWithAttributes:a5];
  v12 = v11;
  v14 = v13;
  [v9 endPoint];
  v16 = v15 + -4.0 - v14;
  if (v16 < 0.0)
  {
    [v9 endPoint];
    v16 = v17 + 4.0;
  }

  if ([v9 styleIdentifier] == 2)
  {
    [v9 startPoint];
    v19 = v18;
  }

  else
  {
    [v9 endPoint];
    v19 = v20 - v12;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v35 + 1) + 8 * i) CGRectValue];
        v43.origin.x = v26;
        v43.origin.y = v27;
        v43.size.width = v28;
        v43.size.height = v29;
        v41.origin.x = v19;
        v41.origin.y = v16;
        v41.size.width = v12;
        v41.size.height = v14;
        if (CGRectIntersectsRect(v41, v43))
        {
          [v9 endPoint];
          v16 = v30 + 4.0;
          goto LABEL_16;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v31 = v19;
  v32 = v16;
  v33 = v12;
  v34 = v14;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKAnnotatedHorizontalLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__HKAnnotatedHorizontalLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BA518;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [v11 enumerateObjectsUsingBlock:v22];
  v20 = *&a4->index;
  resolution = a4->resolution;
  v18 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v15 blockPath:&v20];

  return v18;
}

void __77__HKAnnotatedHorizontalLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 yValue];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v19 minXValueAsGenericType];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = *(a1 + 32);
    v9 = [v19 maxXValueAsGenericType];
    [v8 coordinateForValue:v9];
    v11 = v10;

    v12 = *(a1 + 40);
    v13 = [v19 yValue];
    [v12 coordinateForValue:v13];
    v15 = v14;

    v16 = [v19 styleIdentifier];
    v17 = [v19 userInfo];
    v18 = [[_HKAnnotatedHorizontalLineBlockCoordinate alloc] initWithStartPoint:v16 endPoint:v17 styleIdentifier:v7 userInfo:v15, v11, v15];
    [*(a1 + 48) addObject:v18];
  }
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a4;
  [(HKAnnotatedHorizontalLineSeries *)self xAxisDistanceFromPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKAnnotatedHorizontalLineSeries *)self yAxisDifferenceToPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v8 = v7;
  v9 = [(HKGraphSeries *)self delegate];

  if (v9)
  {
    v10 = [(HKGraphSeries *)self delegate];
    [v10 snapScreenCoordinateToXAxisResolution:a3];
    a3 = v11;
  }

  [v8 startXValue];
  if (a3 >= v12)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  [v8 endXValue];
  v15 = v14;

  if (v13 < v15)
  {
    v15 = v13;
  }

  return v15;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  v7 = v6;
  [v7 startXValue];
  v9 = v8 - x;
  [v7 endXValue];
  v11 = v10;

  v12 = fmax(v9, 0.0);
  if (x - v11 <= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = x - v11;
  }

  return v13;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [v6 startPoint];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:lessThan:];
  }

  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:lessThan:];
  }

  v8 = v6;
  [v7 startPoint];
  v10 = v9;
  [v8 startPoint];
  v12 = v11;

  return v10 < v12;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:greaterThan:];
  }

  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:greaterThan:];
  }

  v8 = v6;
  [v7 startPoint];
  v10 = v9;
  [v8 startPoint];
  v12 = v11;

  return v10 > v12;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)xAxisSelectedCoordinate:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)xAxisDistanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)yAxisDifferenceToPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:lessThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:lessThan:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:greaterThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:greaterThan:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end