@interface HKSleepDurationDaySeries
- (HKSleepDurationDaySeries)init;
- (NSNumber)highlightedSleepValue;
- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)_rebuildFillStyles;
- (void)addGoalLinePathsToCoordinate:(id)a3 goalLinePath:(id)a4 goalLineMarkerPoints:(id)a5 previousCoordinateGoal:(id)a6 axisRect:(CGRect)a7;
- (void)setHighlightedSleepValue:(id)a3;
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

    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v2->_currentCalendar;
    v2->_currentCalendar = v6;
  }

  return v2;
}

- (NSNumber)highlightedSleepValue
{
  v3 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_highlightedSleepValueStorage;
  v5 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHighlightedSleepValue:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  highlightedSleepValueStorage = self->_highlightedSleepValueStorage;
  self->_highlightedSleepValueStorage = v4;

  v7 = [(HKSleepDurationDaySeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKSleepDurationDaySeries *)self _rebuildFillStyles];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [a3 chartPoints];
  if (!v12)
  {
    [HKSleepDurationDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v51 = v10;
  v57 = [v10 transform];
  v65 = [v11 transform];
  v56 = [MEMORY[0x1E695DF70] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v12;
  v58 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v58)
  {
    v53 = *v69;
    v54 = self;
    v55 = v11;
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
        v15 = [(HKSleepDurationDaySeries *)self currentCalendar];
        v16 = [v14 xValue];
        v17 = [v15 startOfDayForDate:v16];

        [v65 coordinateForValue:&unk_1F4382980];
        v19 = v18;
        v20 = [v14 goalValue];

        v61 = v13;
        if (v20)
        {
          v21 = MEMORY[0x1E696AD98];
          v22 = [v14 goalValue];
          [v65 coordinateForValue:v22];
          v64 = [v21 numberWithDouble:?];
        }

        else
        {
          v64 = 0;
        }

        v59 = [v14 userInfo];
        v23 = [(HKSleepDurationDaySeries *)self currentCalendar];
        v63 = [HKCategoricalDateAxis datePositionForCategoryIndex:0 categoryCount:2 startDate:v17 calendar:v23];

        [v57 coordinateForValue:v63];
        v25 = v24;
        v26 = [MEMORY[0x1E695DF70] array];
        v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v19}];
        [v26 addObject:v27];

        v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v19}];
        [v26 addObject:v28];

        v29 = MEMORY[0x1E696AD98];
        [v14 inBedValue];
        v30 = [v29 numberWithDouble:?];
        [v65 coordinateForValue:v30];
        v32 = v31;

        v33 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v32}];
        [v26 addObject:v33];

        v62 = [v59 copyWithAnnotationOptions:1];
        v60 = -[HKSleepDurationCoordinate initWithStackPoints:goalLineYValue:highlighted:userInfo:]([HKSleepDurationCoordinate alloc], "initWithStackPoints:goalLineYValue:highlighted:userInfo:", v26, 0, [v14 highlighted], v62);
        v34 = [(HKSleepDurationDaySeries *)self currentCalendar];
        v35 = [HKCategoricalDateAxis datePositionForCategoryIndex:1 categoryCount:2 startDate:v17 calendar:v34];

        [v57 coordinateForValue:v35];
        v37 = v36;
        v38 = [MEMORY[0x1E695DF70] array];
        v39 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v19}];
        [v38 addObject:v39];

        v40 = MEMORY[0x1E696AD98];
        [v14 asleepValue];
        v41 = [v40 numberWithDouble:?];
        [v65 coordinateForValue:v41];
        v43 = v42;

        v44 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v43}];
        [v38 addObject:v44];

        v45 = [v59 copyWithAnnotationOptions:2];
        v46 = -[HKSleepDurationCoordinate initWithStackPoints:goalLineYValue:highlighted:userInfo:]([HKSleepDurationCoordinate alloc], "initWithStackPoints:goalLineYValue:highlighted:userInfo:", v38, v64, [v14 highlighted], v45);
        [v56 addObject:v60];
        [v56 addObject:v46];

        self = v54;
        ++v13;
        v11 = v55;
      }

      while (v58 != v61 + 1);
      v58 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v58);
  }

  v66 = *v50;
  v67 = *(v50 + 2);
  v47 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v56 blockPath:&v66];

  return v47;
}

- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5
{
  v5 = a4.size.width / a3;
  v6 = v5 * 0.5;
  if (v5 * 0.5 <= a5)
  {
    v6 = a5;
  }

  return round(v5 - v6);
}

- (void)addGoalLinePathsToCoordinate:(id)a3 goalLinePath:(id)a4 goalLineMarkerPoints:(id)a5 previousCoordinateGoal:(id)a6 axisRect:(CGRect)a7
{
  width = a7.size.width;
  v19 = a3;
  v9 = a4;
  v10 = [v19 goalLineYValue];

  if (v10)
  {
    [v19 startXValue];
    v12 = v11 + width * -0.75;
    v13 = [v19 goalLineYValue];
    [v13 doubleValue];
    [v9 moveToPoint:{v12, v14}];

    [v19 startXValue];
    v16 = v15 + width * 0.25;
    v17 = [v19 goalLineYValue];
    [v17 doubleValue];
    [v9 addLineToPoint:{v16, v18}];
  }
}

- (void)_rebuildFillStyles
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKSleepDurationDaySeries *)self highlightedSleepValue];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4 == 0;
    v6 = v4 == _HKCategoryValueSleepAnalysisDefaultAsleepValue();
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