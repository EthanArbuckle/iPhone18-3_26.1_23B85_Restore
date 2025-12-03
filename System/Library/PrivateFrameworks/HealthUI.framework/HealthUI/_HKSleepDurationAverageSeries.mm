@interface _HKSleepDurationAverageSeries
- (NSNumber)averageValueType;
- (_HKSleepDurationAverageSeries)init;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawOverlayInContext:(CGContext *)context seriesOverlayData:(id)data;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setAverageValue:(double)value;
- (void)setAverageValueType:(id)type;
@end

@implementation _HKSleepDurationAverageSeries

- (_HKSleepDurationAverageSeries)init
{
  v7.receiver = self;
  v7.super_class = _HKSleepDurationAverageSeries;
  v2 = [(HKSleepDurationSeries *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"_HKSleepDurationAverageSeriesLock"];
    v2->_averageValueStorage = -1.0;
    averageValueTypeStorage = v2->_averageValueTypeStorage;
    v2->_averageValueTypeStorage = 0;
  }

  return v2;
}

- (void)setAverageValue:(double)value
{
  seriesMutableStateLock = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_averageValueStorage = value;
  seriesMutableStateLock2 = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSNumber)averageValueType
{
  seriesMutableStateLock = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_averageValueTypeStorage;
  seriesMutableStateLock2 = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setAverageValueType:(id)type
{
  typeCopy = type;
  seriesMutableStateLock = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  averageValueTypeStorage = self->_averageValueTypeStorage;
  self->_averageValueTypeStorage = typeCopy;

  seriesMutableStateLock2 = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v12.receiver = self;
  v12.super_class = _HKSleepDurationAverageSeries;
  v11 = *path;
  v7 = [(HKSleepDurationSeries *)&v12 coordinatesForBlock:block blockPath:&v11 xAxis:axis yAxis:yAxis];
  coordinates = [v7 coordinates];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___HKSleepDurationAverageSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v10[3] = &unk_1E81BACD8;
  v10[4] = self;
  [coordinates enumerateObjectsUsingBlock:v10];

  return v7;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  delegateCopy = delegate;
  seriesMutableStateLock = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  averageValueStorage = self->_averageValueStorage;
  seriesMutableStateLock2 = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  v13 = [delegateCopy axisAnnotationDelegateForSeries:self];
  if (([delegateCopy seriesDrawingDuringScrolling] & 1) != 0 || (objc_msgSend(delegateCopy, "seriesDrawingDuringTiling") & 1) != 0 || averageValueStorage < 0.0)
  {
    [v13 clearAxisAnnotations];
  }

  else
  {
    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
    strokeColor = [goalLineStrokeStyle strokeColor];
    goalLineStrokeStyle2 = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
    strokeColor2 = [goalLineStrokeStyle2 strokeColor];
    v19 = [HKAttributedDurationFormatter formattedValueWithDuration:1 unitsStyle:hk_chartAxisLabelFont font:strokeColor valueColor:strokeColor2 unitColor:averageValueStorage];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:averageValueStorage];
    [v13 addAxisAnnotation:v19 forSeries:self modelCoordinate:v20];
  }
}

- (void)drawOverlayInContext:(CGContext *)context seriesOverlayData:(id)data
{
  dataCopy = data;
  if ([dataCopy count] == 1)
  {
    firstObject = [dataCopy firstObject];
    seriesMutableStateLock = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock lock];

    averageValueStorage = self->_averageValueStorage;
    seriesMutableStateLock2 = [(_HKSleepDurationAverageSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock2 unlock];

    graphSeries = [firstObject graphSeries];

    if (graphSeries == self && averageValueStorage >= 0.0)
    {
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      if (firstObject)
      {
        [firstObject graphSeriesPointTransform];
        v14 = v21;
        v13 = v22;
        v12 = v23;
      }

      v15 = v12 + averageValueStorage * v13 + v14 * 0.0;
      goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
      [goalLineStrokeStyle applyToContext:context];

      [firstObject graphSeriesScreenRect];
      CGContextMoveToPoint(context, v17, v15);
      [firstObject graphSeriesScreenRect];
      v19 = v18;
      [firstObject graphSeriesScreenRect];
      CGContextAddLineToPoint(context, v19 + v20, v15);
      CGContextStrokePath(context);
    }
  }
}

@end