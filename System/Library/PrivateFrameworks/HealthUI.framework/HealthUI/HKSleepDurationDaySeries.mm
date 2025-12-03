@interface HKSleepDurationDaySeries
- (HKSleepDurationDaySeries)init;
- (NSNumber)highlightedSleepValue;
- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)_rebuildFillStyles;
- (void)addGoalLinePathsToCoordinate:(id)coordinate goalLinePath:(id)path goalLineMarkerPoints:(id)points previousCoordinateGoal:(id)goal axisRect:(CGRect)rect;
- (void)setHighlightedSleepValue:(id)value;
@end

@implementation HKSleepDurationDaySeries

- (HKSleepDurationDaySeries)init
{
  v9.receiver = self;
  v9.super_class = HKSleepDurationDaySeries;
  v2 = [(HKSleepDurationSeries *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKSleepDurationDaySeriesLock"];
    highlightedSleepValueStorage = v2->_highlightedSleepValueStorage;
    v2->_highlightedSleepValueStorage = 0;

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v2->_currentCalendar;
    v2->_currentCalendar = currentCalendar;
  }

  return v2;
}

- (NSNumber)highlightedSleepValue
{
  seriesMutableStateLock = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_highlightedSleepValueStorage;
  seriesMutableStateLock2 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setHighlightedSleepValue:(id)value
{
  valueCopy = value;
  seriesMutableStateLock = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  highlightedSleepValueStorage = self->_highlightedSleepValueStorage;
  self->_highlightedSleepValueStorage = valueCopy;

  seriesMutableStateLock2 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKSleepDurationDaySeries *)self _rebuildFillStyles];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v73 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepDurationDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v51 = axisCopy;
  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];
  array = [MEMORY[0x1E695DF70] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = chartPoints;
  v58 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v58)
  {
    v53 = *v69;
    selfCopy = self;
    v55 = yAxisCopy;
    do
    {
      v13 = 0;
      do
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v68 + 1) + 8 * v13);
        currentCalendar = [(HKSleepDurationDaySeries *)self currentCalendar];
        xValue = [v14 xValue];
        v17 = [currentCalendar startOfDayForDate:xValue];

        [transform2 coordinateForValue:&unk_1F4382980];
        v19 = v18;
        goalValue = [v14 goalValue];

        v61 = v13;
        if (goalValue)
        {
          v21 = MEMORY[0x1E696AD98];
          goalValue2 = [v14 goalValue];
          [transform2 coordinateForValue:goalValue2];
          v64 = [v21 numberWithDouble:?];
        }

        else
        {
          v64 = 0;
        }

        userInfo = [v14 userInfo];
        currentCalendar2 = [(HKSleepDurationDaySeries *)self currentCalendar];
        v63 = [HKCategoricalDateAxis datePositionForCategoryIndex:0 categoryCount:2 startDate:v17 calendar:currentCalendar2];

        [transform coordinateForValue:v63];
        v25 = v24;
        array2 = [MEMORY[0x1E695DF70] array];
        v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v19}];
        [array2 addObject:v27];

        v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v19}];
        [array2 addObject:v28];

        v29 = MEMORY[0x1E696AD98];
        [v14 inBedValue];
        v30 = [v29 numberWithDouble:?];
        [transform2 coordinateForValue:v30];
        v32 = v31;

        v33 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v32}];
        [array2 addObject:v33];

        v62 = [userInfo copyWithAnnotationOptions:1];
        v60 = -[HKSleepDurationCoordinate initWithStackPoints:goalLineYValue:highlighted:userInfo:]([HKSleepDurationCoordinate alloc], "initWithStackPoints:goalLineYValue:highlighted:userInfo:", array2, 0, [v14 highlighted], v62);
        currentCalendar3 = [(HKSleepDurationDaySeries *)self currentCalendar];
        v35 = [HKCategoricalDateAxis datePositionForCategoryIndex:1 categoryCount:2 startDate:v17 calendar:currentCalendar3];

        [transform coordinateForValue:v35];
        v37 = v36;
        array3 = [MEMORY[0x1E695DF70] array];
        v39 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v19}];
        [array3 addObject:v39];

        v40 = MEMORY[0x1E696AD98];
        [v14 asleepValue];
        v41 = [v40 numberWithDouble:?];
        [transform2 coordinateForValue:v41];
        v43 = v42;

        v44 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v43}];
        [array3 addObject:v44];

        v45 = [userInfo copyWithAnnotationOptions:2];
        v46 = -[HKSleepDurationCoordinate initWithStackPoints:goalLineYValue:highlighted:userInfo:]([HKSleepDurationCoordinate alloc], "initWithStackPoints:goalLineYValue:highlighted:userInfo:", array3, v64, [v14 highlighted], v45);
        [array addObject:v60];
        [array addObject:v46];

        self = selfCopy;
        ++v13;
        yAxisCopy = v55;
      }

      while (v58 != v61 + 1);
      v58 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v58);
  }

  v66 = *v50;
  v67 = *(v50 + 2);
  v47 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v66];

  return v47;
}

- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing
{
  v5 = rect.size.width / count;
  spacingCopy = v5 * 0.5;
  if (v5 * 0.5 <= spacing)
  {
    spacingCopy = spacing;
  }

  return round(v5 - spacingCopy);
}

- (void)addGoalLinePathsToCoordinate:(id)coordinate goalLinePath:(id)path goalLineMarkerPoints:(id)points previousCoordinateGoal:(id)goal axisRect:(CGRect)rect
{
  width = rect.size.width;
  coordinateCopy = coordinate;
  pathCopy = path;
  goalLineYValue = [coordinateCopy goalLineYValue];

  if (goalLineYValue)
  {
    [coordinateCopy startXValue];
    v12 = v11 + width * -0.75;
    goalLineYValue2 = [coordinateCopy goalLineYValue];
    [goalLineYValue2 doubleValue];
    [pathCopy moveToPoint:{v12, v14}];

    [coordinateCopy startXValue];
    v16 = v15 + width * 0.25;
    goalLineYValue3 = [coordinateCopy goalLineYValue];
    [goalLineYValue3 doubleValue];
    [pathCopy addLineToPoint:{v16, v18}];
  }
}

- (void)_rebuildFillStyles
{
  v10[2] = *MEMORY[0x1E69E9840];
  highlightedSleepValue = [(HKSleepDurationDaySeries *)self highlightedSleepValue];
  integerValue = [highlightedSleepValue integerValue];
  if (highlightedSleepValue)
  {
    v5 = integerValue == 0;
    v6 = integerValue == _HKCategoryValueSleepAnalysisDefaultAsleepValue();
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  v7 = [HKSleepUtilities fillStyleForSleepCategoryValue:_HKCategoryValueSleepAnalysisDefaultAsleepValue() isActive:v6];
  v10[0] = v7;
  v8 = [HKSleepUtilities fillStyleForSleepCategoryValue:0 isActive:v5];
  v10[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  [(HKSleepDurationSeries *)self setInactiveFillStyles:v9];
  [(HKSleepDurationSeries *)self setHighlightedFillStyles:v9];
  [(HKSleepDurationSeries *)self setDefaultFillStyles:v9];
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepDurationDaySeries.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end