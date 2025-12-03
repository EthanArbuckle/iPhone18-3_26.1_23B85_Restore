@interface HKAnnotatedHorizontalLineSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (CGRect)_boundsForString:(id)string coordinate:(id)coordinate valueAttributes:(id)attributes rectsToAvoid:(id)avoid;
- (HKAnnotatedHorizontalLineSeries)init;
- (NSDictionary)horizontalLineStyles;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)valueOutlineWidth;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_defaultLabelStyle;
- (id)_defaultLineStyle;
- (id)_horizontalLineSeriesStyleForBlockCoordinate:(id)coordinate;
- (id)_stringValueForCoordinate:(id)coordinate valueStyle:(id)style;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setHorizontalLineStyles:(id)styles;
- (void)setValueOutlineWidth:(double)width;
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
  seriesMutableStateLock = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_horizontalLineStylesStorage;
  seriesMutableStateLock2 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setHorizontalLineStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  horizontalLineStylesStorage = self->_horizontalLineStylesStorage;
  self->_horizontalLineStylesStorage = v6;

  seriesMutableStateLock2 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)valueOutlineWidth
{
  seriesMutableStateLock = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  valueOutlineWidthStorage = self->_valueOutlineWidthStorage;
  seriesMutableStateLock2 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return valueOutlineWidthStorage;
}

- (void)setValueOutlineWidth:(double)width
{
  seriesMutableStateLock = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_valueOutlineWidthStorage = width;
  seriesMutableStateLock2 = [(HKAnnotatedHorizontalLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  v87 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
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
  v17 = *&transform->c;
  v81[0] = *&transform->a;
  v81[1] = v17;
  v81[2] = *&transform->tx;
  v65 = coordinatesCopy;
  [coordinatesCopy enumerateCoordinatesWithTransform:v81 roundToViewScale:1 block:v82];
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
        coordinate = [v22 coordinate];
        originalCoordinate = [v22 originalCoordinate];
        if (([v14 containsObject:coordinate] & 1) == 0)
        {
          [v14 addObject:coordinate];
          CGContextSaveGState(context);
          v25 = [(HKAnnotatedHorizontalLineSeries *)self _horizontalLineSeriesStyleForBlockCoordinate:coordinate];
          v76 = v25;
          if (v25)
          {
            v26 = v25;
            lineStrokeStyle = [v25 lineStrokeStyle];
            [v26 valueStyle];
          }

          else
          {
            lineStrokeStyle = [(HKAnnotatedHorizontalLineSeries *)self _defaultLineStyle];
            [(HKAnnotatedHorizontalLineSeries *)self _defaultLabelStyle];
          }
          v28 = ;
          v74 = v28;
          v75 = lineStrokeStyle;
          [lineStrokeStyle applyToContext:context];
          [lineStrokeStyle lineWidth];
          v30 = v29 * 0.5;
          [coordinate startPoint];
          v32 = v31;
          [coordinate endPoint];
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

          [coordinate startPoint];
          CGContextMoveToPoint(context, v35, v38);
          [coordinate endPoint];
          CGContextAddLineToPoint(context, v37, v39);
          CGContextStrokePath(context);
          CGContextRestoreGState(context);
          [coordinate startPoint];
          v41 = v40;
          [coordinate endPoint];
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
          [coordinate startPoint];
          v47 = v46;
          [coordinate endPoint];
          if (v47 >= v48)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          [coordinate startPoint];
          v51 = v50;
          [coordinate endPoint];
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

          v55 = [(HKAnnotatedHorizontalLineSeries *)self _stringValueForCoordinate:originalCoordinate valueStyle:v28];
          v84[0] = v67;
          font = [v28 font];
          v84[1] = v66;
          v85[0] = font;
          [v28 textColor];
          v58 = v57 = self;
          v85[1] = v58;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
          v60 = v59 = context;

          self = v57;
          [(HKAnnotatedHorizontalLineSeries *)v57 _boundsForString:v55 coordinate:coordinate valueAttributes:v60 rectsToAvoid:v70];
          v61 = [HKStringDrawing stringDrawingWithText:v55 inRect:v60 withAttributes:?];
          [v71 addObject:v61];

          context = v59;
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

  if (([delegateCopy seriesDrawingDuringTiling] & 1) != 0 || objc_msgSend(delegateCopy, "seriesDrawingDuringScrolling"))
  {
    hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  }

  else
  {
    hk_chartBackgroundColor = [MEMORY[0x1E69DC888] clearColor];
  }

  v63 = hk_chartBackgroundColor;
  [(HKAnnotatedHorizontalLineSeries *)self valueOutlineWidth];
  [HKStringDrawing drawStrings:v71 outlineWidth:v63 outlineColor:context context:?];
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

- (id)_horizontalLineSeriesStyleForBlockCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  horizontalLineStyles = [(HKAnnotatedHorizontalLineSeries *)self horizontalLineStyles];
  v6 = MEMORY[0x1E696AD98];
  styleIdentifier = [coordinateCopy styleIdentifier];

  v8 = [v6 numberWithInteger:styleIdentifier];
  v9 = [horizontalLineStyles objectForKeyedSubscript:v8];

  return v9;
}

- (id)_defaultLineStyle
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v3 = [HKStrokeStyle strokeStyleWithColor:blackColor lineWidth:2.0];

  return v3;
}

- (id)_defaultLabelStyle
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v4 = [HKAxisLabelStyle labelStyleWithColor:blackColor font:v3 horizontalAlignment:2 verticalAlignment:2];

  return v4;
}

- (id)_stringValueForCoordinate:(id)coordinate valueStyle:(id)style
{
  coordinateCopy = coordinate;
  numberFormatter = [style numberFormatter];
  v7 = numberFormatter;
  if (numberFormatter)
  {
    v8 = numberFormatter;
  }

  else
  {
    v8 = HKDecimalFormatter(0);
  }

  v9 = v8;

  v10 = MEMORY[0x1E696AD98];
  [coordinateCopy startPoint];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  v14 = [v9 stringFromNumber:v13 displayType:0 unitController:0];

  return v14;
}

- (CGRect)_boundsForString:(id)string coordinate:(id)coordinate valueAttributes:(id)attributes rectsToAvoid:(id)avoid
{
  v40 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  avoidCopy = avoid;
  [string sizeWithAttributes:attributes];
  v12 = v11;
  v14 = v13;
  [coordinateCopy endPoint];
  v16 = v15 + -4.0 - v14;
  if (v16 < 0.0)
  {
    [coordinateCopy endPoint];
    v16 = v17 + 4.0;
  }

  if ([coordinateCopy styleIdentifier] == 2)
  {
    [coordinateCopy startPoint];
    v19 = v18;
  }

  else
  {
    [coordinateCopy endPoint];
    v19 = v20 - v12;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = avoidCopy;
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
          [coordinateCopy endPoint];
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

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKAnnotatedHorizontalLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__HKAnnotatedHorizontalLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BA518;
  v23 = transform;
  v24 = transform2;
  v25 = v14;
  v15 = v14;
  v16 = transform2;
  v17 = transform;
  [chartPoints enumerateObjectsUsingBlock:v22];
  v20 = *&path->index;
  resolution = path->resolution;
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  coordinateCopy = coordinate;
  [(HKAnnotatedHorizontalLineSeries *)self xAxisDistanceFromPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKAnnotatedHorizontalLineSeries *)self yAxisDifferenceToPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect
{
  blockCoordinateCopy = blockCoordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v8 = blockCoordinateCopy;
  delegate = [(HKGraphSeries *)self delegate];

  if (delegate)
  {
    delegate2 = [(HKGraphSeries *)self delegate];
    [delegate2 snapScreenCoordinateToXAxisResolution:coordinate];
    coordinate = v11;
  }

  [v8 startXValue];
  if (coordinate >= v12)
  {
    coordinateCopy = coordinate;
  }

  else
  {
    coordinateCopy = v12;
  }

  [v8 endXValue];
  v15 = v14;

  if (coordinateCopy < v15)
  {
    v15 = coordinateCopy;
  }

  return v15;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  v7 = coordinateCopy;
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

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy startPoint];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:lessThan:];
  }

  v7 = coordinateCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:lessThan:];
  }

  v8 = thanCopy;
  [v7 startPoint];
  v10 = v9;
  [v8 startPoint];
  v12 = v11;

  return v10 < v12;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:greaterThan:];
  }

  v7 = coordinateCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAnnotatedHorizontalLineSeries blockCoordinate:greaterThan:];
  }

  v8 = thanCopy;
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