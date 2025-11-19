@interface HKDistributionBlockPoint
- (CGPoint)maxPoint;
- (CGPoint)minPoint;
- (HKDistributionBlockPoint)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5 gapZeroCount:(int64_t)a6;
- (HKDistributionBlockPoint)initWithTransform:(CGAffineTransform *)a3 blockPoint:(id)a4;
- (NSString)description;
- (id)_applyTransformToSegments:(id)a3 transform:(CGAffineTransform *)a4;
- (id)_quickDate:(id)a3;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKDistributionBlockPoint

- (HKDistributionBlockPoint)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5 gapZeroCount:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28.receiver = self;
  v28.super_class = HKDistributionBlockPoint;
  v13 = [(HKDistributionBlockPoint *)&v28 init];
  if (v13)
  {
    v14 = [v10 xValueAsGenericType];
    [v11 coordinateForValue:v14];
    v16 = v15;
    v17 = [v10 minYValue];
    [v12 coordinateForValue:v17];
    v19 = v18;

    v20 = [v10 maxYValue];
    [v12 coordinateForValue:v20];
    v22 = v21;

    v13->_minPoint.x = v16;
    v13->_minPoint.y = v19;
    v13->_maxPoint.x = v16;
    v13->_maxPoint.y = v22;
    v23 = [HKQuantityDistributionSeries transformedSegmentsFromChartPoint:v10 forX:a6 minY:v16 maxY:v19 zeroCountForGap:v22];
    distributionSegments = v13->_distributionSegments;
    v13->_distributionSegments = v23;

    v25 = [v10 userInfo];
    userInfo = v13->_userInfo;
    v13->_userInfo = v25;
  }

  return v13;
}

- (HKDistributionBlockPoint)initWithTransform:(CGAffineTransform *)a3 blockPoint:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = HKDistributionBlockPoint;
  v7 = [(HKDistributionBlockPoint *)&v20 init];
  if (v7)
  {
    [v6 minPoint];
    *(v7 + 24) = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v8), *&a3->a, v9));
    [v6 maxPoint];
    *(v7 + 40) = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v10), *&a3->a, v11));
    v12 = [v6 distributionSegments];
    v13 = *&a3->c;
    v19[0] = *&a3->a;
    v19[1] = v13;
    v19[2] = *&a3->tx;
    v14 = [v7 _applyTransformToSegments:v12 transform:v19];
    v15 = *(v7 + 1);
    *(v7 + 1) = v14;

    v16 = [v6 userInfo];
    v17 = *(v7 + 2);
    *(v7 + 2) = v16;
  }

  return v7;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v6 = [HKDistributionBlockPoint alloc];
  v7 = *&a3->c;
  v9[0] = *&a3->a;
  v9[1] = v7;
  v9[2] = *&a3->tx;
  return [(HKDistributionBlockPoint *)v6 initWithTransform:v9 blockPoint:self];
}

- (id)_quickDate:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [v5 stringFromDate:v4];

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

- (id)_applyTransformToSegments:(id)a3 transform:(CGAffineTransform *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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
        v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v12), *&a4->a, v13))}];
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