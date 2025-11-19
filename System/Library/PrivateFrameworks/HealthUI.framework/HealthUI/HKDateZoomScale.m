@interface HKDateZoomScale
- (BOOL)isEqual:(id)a3;
- (HKDateZoomScale)initWithCurrentCalendar:(id)a3;
- (double)zoomScaleForRange:(HKRange)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)maxDate;
- (id)minDate;
- (int64_t)zoomForZoomScale:(double)a3;
- (void)setUnitZoomScaleValueRangeForTimeInterval:(double)a3;
@end

@implementation HKDateZoomScale

- (HKDateZoomScale)initWithCurrentCalendar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKDateZoomScale;
  v6 = [(HKDateZoomScale *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentCalendar, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v7 = v4;
      v8 = [(HKDateZoomScale *)self unitZoomScaleValueRange];
      v9 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
      if (v8 == v9)
      {
        v6 = 1;
      }

      else
      {
        v10 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
        if (v10)
        {
          v11 = [(HKDateZoomScale *)self unitZoomScaleValueRange];
          v12 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
          v6 = [v11 isEqual:v12];
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HKDateZoomScale allocWithZone:?]];
  v5 = [(HKValueRange *)self->_unitZoomScaleValueRange copy];
  unitZoomScaleValueRange = v4->_unitZoomScaleValueRange;
  v4->_unitZoomScaleValueRange = v5;

  return v4;
}

- (id)minDate
{
  v2 = [(HKDateZoomScale *)self unitZoomScaleValueRange];
  v3 = [v2 startDate];

  return v3;
}

- (id)maxDate
{
  v2 = [(HKDateZoomScale *)self unitZoomScaleValueRange];
  v3 = [v2 endDate];

  return v3;
}

- (int64_t)zoomForZoomScale:(double)a3
{
  if (HKUIEqualCGFloats(a3, self->_previousZoomScale))
  {
    return self->_previousZoom;
  }

  v6 = [(HKDateZoomScale *)self minDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [(HKDateZoomScale *)self maxDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = 0;
  v13 = (v11 - v8) / a3;
  do
  {
    v14 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:v12];
    [v14 zoomLevelThreshold];
    v16 = v15;

    if (v13 >= v16)
    {
      break;
    }

    ++v12;
  }

  while (v12 != 8);
  if (v12 >= 7)
  {
    result = 7;
  }

  else
  {
    result = v12;
  }

  self->_previousZoom = result;
  self->_previousZoomScale = a3;
  return result;
}

- (double)zoomScaleForRange:(HKRange)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(HKDateZoomScale *)self minDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [(HKDateZoomScale *)self maxDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  return (v11 - v8) / (var0 + var1 - var0);
}

- (void)setUnitZoomScaleValueRangeForTimeInterval:(double)a3
{
  v5 = [(HKDateZoomScale *)self currentCalendar];
  v6 = [v5 hk_dateWithDurationSinceReferenceDate:16 calendarUnit:0.0];
  v7 = [(HKDateZoomScale *)self currentCalendar];
  v8 = [v7 hk_dateWithDurationSinceReferenceDate:16 calendarUnit:a3];
  v9 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v8];
  unitZoomScaleValueRange = self->_unitZoomScaleValueRange;
  self->_unitZoomScaleValueRange = v9;

  self->_previousZoomScale = 0.0;
}

@end