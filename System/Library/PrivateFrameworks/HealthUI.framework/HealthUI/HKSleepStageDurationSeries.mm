@interface HKSleepStageDurationSeries
- (HKSleepStageDurationSeries)init;
- (NSArray)sleepStageFillStyles;
- (NSNumber)highlightedSleepStage;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)_rebuildFillStyles;
- (void)setHighlightedSleepStage:(id)stage;
- (void)setSleepStageFillStyles:(id)styles;
@end

@implementation HKSleepStageDurationSeries

- (HKSleepStageDurationSeries)init
{
  v8.receiver = self;
  v8.super_class = HKSleepStageDurationSeries;
  v2 = [(HKSleepDurationSeries *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKSleepStageDurationSeriesLock"];
    highlightedSleepStageStorage = v2->_highlightedSleepStageStorage;
    v2->_highlightedSleepStageStorage = 0;

    sleepStageFillStylesStorage = v2->_sleepStageFillStylesStorage;
    v2->_sleepStageFillStylesStorage = 0;
  }

  return v2;
}

- (NSNumber)highlightedSleepStage
{
  seriesMutableStateLock = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_highlightedSleepStageStorage;
  seriesMutableStateLock2 = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setHighlightedSleepStage:(id)stage
{
  stageCopy = stage;
  seriesMutableStateLock = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  highlightedSleepStageStorage = self->_highlightedSleepStageStorage;
  self->_highlightedSleepStageStorage = stageCopy;

  seriesMutableStateLock2 = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKSleepStageDurationSeries *)self _rebuildFillStyles];
}

- (NSArray)sleepStageFillStyles
{
  seriesMutableStateLock = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_sleepStageFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSleepStageFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  sleepStageFillStylesStorage = self->_sleepStageFillStylesStorage;
  self->_sleepStageFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepStageDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKSleepStageDurationSeries *)self _rebuildFillStyles];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v64 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepStageDurationSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v49 = axisCopy;
  transform = [axisCopy transform];
  v48 = yAxisCopy;
  transform2 = [yAxisCopy transform];
  selfCopy = self;
  highlightedSleepStage = [(HKSleepStageDurationSeries *)self highlightedSleepStage];
  array = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = chartPoints;
  v15 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v51 = *v58;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v57 + 1) + 8 * i);
        xValueAsGenericType = [v18 xValueAsGenericType];
        [transform coordinateForValue:xValueAsGenericType];
        v21 = v20;

        v22 = v21 + -0.25;
        [transform2 coordinateForValue:&unk_1F4382950];
        v24 = v23;
        array2 = [MEMORY[0x1E695DF70] array];
        v26 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v24}];
        [array2 addObject:v26];

        if (highlightedSleepStage)
        {
          intValue = [highlightedSleepStage intValue];
          if (intValue > 2)
          {
            switch(intValue)
            {
              case 3:
                v29 = MEMORY[0x1E696AD98];
                [v18 asleepCoreValue];
                break;
              case 4:
                v29 = MEMORY[0x1E696AD98];
                [v18 asleepDeepValue];
                break;
              case 5:
                v29 = MEMORY[0x1E696AD98];
                [v18 asleepRemValue];
                break;
              default:
                goto LABEL_22;
            }

LABEL_21:
            v30 = [v29 numberWithDouble:?];
            [transform2 coordinateForValue:v30];
            v24 = v31;

            goto LABEL_22;
          }

          if (intValue >= 2)
          {
            if (intValue != 2)
            {
              goto LABEL_22;
            }

            v29 = MEMORY[0x1E696AD98];
            [v18 awakeValue];
            goto LABEL_21;
          }

          _HKInitializeLogging();
          v28 = *MEMORY[0x1E696B998];
          if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_ERROR))
          {
            [HKSleepStageDurationSeries coordinatesForBlock:v61 blockPath:v28 xAxis:selfCopy yAxis:&v62];
          }
        }

LABEL_22:
        v32 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v24}];
        [array2 addObject:v32];

        v33 = MEMORY[0x1E696AD98];
        [v18 totalDurationValue];
        v34 = [v33 numberWithDouble:?];
        [transform2 coordinateForValue:v34];
        v36 = v35;

        v37 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v36}];
        [array2 addObject:v37];

        highlightedSleepStage2 = [(HKSleepStageDurationSeries *)selfCopy highlightedSleepStage];
        v39 = HKSleepChartPointFormatterOptionsForSleepAnalysis(highlightedSleepStage2);
        userInfo = [v18 userInfo];
        [userInfo setAnnotationOptions:v39];

        v41 = [HKSleepDurationCoordinate alloc];
        userInfo2 = [v18 userInfo];
        v43 = [(HKSleepDurationCoordinate *)v41 initWithStackPoints:array2 goalLineYValue:0 highlighted:1 userInfo:userInfo2];

        [array addObject:v43];
      }

      v16 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v16);
  }

  v55 = *v47;
  v56 = *(v47 + 2);
  v44 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v55];

  return v44;
}

- (void)_rebuildFillStyles
{
  v6 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1C3942000, selfCopy, OS_LOG_TYPE_ERROR, "%{public}@: Asked to create fill style for unsupported sleep category value", &v4, 0xCu);
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepStageDurationSeries.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

- (void)coordinatesForBlock:(uint8_t *)a1 blockPath:(void *)a2 xAxis:(uint64_t)a3 yAxis:(void *)a4 .cold.2(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_1C3942000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Asked to create coordinate for unsupported sleep category value", a1, 0xCu);
}

@end