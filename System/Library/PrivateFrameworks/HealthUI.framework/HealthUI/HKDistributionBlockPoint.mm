@interface HKDistributionBlockPoint
- (CGPoint)maxPoint;
- (CGPoint)minPoint;
- (HKDistributionBlockPoint)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform gapZeroCount:(int64_t)count;
- (HKDistributionBlockPoint)initWithTransform:(CGAffineTransform *)transform blockPoint:(id)point;
- (NSString)description;
- (id)_applyTransformToSegments:(id)segments transform:(CGAffineTransform *)transform;
- (id)_quickDate:(id)date;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKDistributionBlockPoint

- (HKDistributionBlockPoint)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform gapZeroCount:(int64_t)count
{
  pointCopy = point;
  transformCopy = transform;
  axisTransformCopy = axisTransform;
  v28.receiver = self;
  v28.super_class = HKDistributionBlockPoint;
  v13 = [(HKDistributionBlockPoint *)&v28 init];
  if (v13)
  {
    xValueAsGenericType = [pointCopy xValueAsGenericType];
    [transformCopy coordinateForValue:xValueAsGenericType];
    v16 = v15;
    minYValue = [pointCopy minYValue];
    [axisTransformCopy coordinateForValue:minYValue];
    v19 = v18;

    maxYValue = [pointCopy maxYValue];
    [axisTransformCopy coordinateForValue:maxYValue];
    v22 = v21;

    v13->_minPoint.x = v16;
    v13->_minPoint.y = v19;
    v13->_maxPoint.x = v16;
    v13->_maxPoint.y = v22;
    v23 = [HKQuantityDistributionSeries transformedSegmentsFromChartPoint:pointCopy forX:count minY:v16 maxY:v19 zeroCountForGap:v22];
    distributionSegments = v13->_distributionSegments;
    v13->_distributionSegments = v23;

    userInfo = [pointCopy userInfo];
    userInfo = v13->_userInfo;
    v13->_userInfo = userInfo;
  }

  return v13;
}

- (HKDistributionBlockPoint)initWithTransform:(CGAffineTransform *)transform blockPoint:(id)point
{
  pointCopy = point;
  v20.receiver = self;
  v20.super_class = HKDistributionBlockPoint;
  v7 = [(HKDistributionBlockPoint *)&v20 init];
  if (v7)
  {
    [pointCopy minPoint];
    *(v7 + 24) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v8), *&transform->a, v9));
    [pointCopy maxPoint];
    *(v7 + 40) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v10), *&transform->a, v11));
    distributionSegments = [pointCopy distributionSegments];
    v13 = *&transform->c;
    v19[0] = *&transform->a;
    v19[1] = v13;
    v19[2] = *&transform->tx;
    v14 = [v7 _applyTransformToSegments:distributionSegments transform:v19];
    v15 = *(v7 + 1);
    *(v7 + 1) = v14;

    userInfo = [pointCopy userInfo];
    v17 = *(v7 + 2);
    *(v7 + 2) = userInfo;
  }

  return v7;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v6 = [HKDistributionBlockPoint alloc];
  v7 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v7;
  v9[2] = *&transform->tx;
  return [(HKDistributionBlockPoint *)v6 initWithTransform:v9 blockPoint:self];
}

- (id)_quickDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_minPoint.x];
  v3 = [(HKDistributionBlockPoint *)self _quickDate:?];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_distributionSegments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * i) CGPointValue];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lg", v10];
        [v4 addObject:v11];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@""];;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"distribution_point{min %@ %lg min %lg, max %lg [%@]}", v3, *&self->_minPoint.x, *&self->_minPoint.y, *&self->_maxPoint.y, v12];

  return v13;
}

- (id)_applyTransformToSegments:(id)segments transform:(CGAffineTransform *)transform
{
  v21 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = segmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) CGPointValue];
        v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v12), *&transform->a, v13))}];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (CGPoint)minPoint
{
  x = self->_minPoint.x;
  y = self->_minPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)maxPoint
{
  x = self->_maxPoint.x;
  y = self->_maxPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end