@interface HKChartPointRangeBuilder
- (HKChartPointRangeBuilder)init;
- (id)suggestedValueRangeWithRounding:(BOOL)a3;
- (void)visitChartPoint:(id)a3;
@end

@implementation HKChartPointRangeBuilder

- (HKChartPointRangeBuilder)init
{
  v3.receiver = self;
  v3.super_class = HKChartPointRangeBuilder;
  result = [(HKChartPointRangeBuilder *)&v3 init];
  if (result)
  {
    *&result->_maximumMax = xmmword_1C3D5DB50;
  }

  return result;
}

- (id)suggestedValueRangeWithRounding:(BOOL)a3
{
  if (self->_numChartPoints)
  {
    minimumMin = fmax(self->_uMin + sqrt(self->_vMin) * -1.25, 0.0);
    v4 = self->_uMax + sqrt(self->_vMax) * 1.25;
    if (minimumMin < self->_minimumMin)
    {
      minimumMin = self->_minimumMin;
    }

    maximumMax = fmax(v4, 0.0);
    if (maximumMax >= self->_maximumMax)
    {
      maximumMax = self->_maximumMax;
    }

    v6 = floor(minimumMin);
    v7 = ceil(maximumMax);
    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = maximumMax;
    }

    if (a3)
    {
      minimumMin = v6;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:minimumMin];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v11 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)visitChartPoint:(id)a3
{
  v4 = a3;
  v5 = [v4 maxYValue];
  [v5 doubleValue];
  v18 = v6;

  v7 = [v4 minYValue];

  [v7 doubleValue];
  v17 = v8;

  if (v18 > -1.79769313e308 && v17 < 1.79769313e308)
  {
    numChartPoints = self->_numChartPoints;
    v11 = *&self->_uMax;
    v12.f64[0] = v18;
    v12.f64[1] = v17;
    v13 = vdivq_f64(vmlaq_n_f64(v12, v11, numChartPoints), vdupq_lane_s64(COERCE__INT64((numChartPoints + 1)), 0));
    v14 = 0uLL;
    if (numChartPoints >= 2)
    {
      v14 = vdivq_f64(vmlaq_n_f64(vmulq_f64(vsubq_f64(v12, v11), vsubq_f64(v12, v13)), *&self->_vMax, (numChartPoints - 1)), vdupq_lane_s64(COERCE__INT64(numChartPoints), 0));
    }

    *&self->_uMax = v13;
    *&self->_vMax = v14;
    maximumMax = self->_maximumMax;
    minimumMin = self->_minimumMin;
    if (maximumMax < v18)
    {
      maximumMax = v18;
    }

    if (minimumMin >= v17)
    {
      minimumMin = v17;
    }

    self->_maximumMax = maximumMax;
    self->_minimumMin = minimumMin;
    self->_numChartPoints = numChartPoints + 1;
  }
}

@end