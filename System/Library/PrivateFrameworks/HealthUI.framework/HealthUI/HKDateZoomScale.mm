@interface HKDateZoomScale
- (BOOL)isEqual:(id)equal;
- (HKDateZoomScale)initWithCurrentCalendar:(id)calendar;
- (double)zoomScaleForRange:(HKRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)maxDate;
- (id)minDate;
- (int64_t)zoomForZoomScale:(double)scale;
- (void)setUnitZoomScaleValueRangeForTimeInterval:(double)interval;
@end

@implementation HKDateZoomScale

- (HKDateZoomScale)initWithCurrentCalendar:(id)calendar
{
  calendarCopy = calendar;
  v9.receiver = self;
  v9.super_class = HKDateZoomScale;
  v6 = [(HKDateZoomScale *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentCalendar, calendar);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (equalCopy == self)
    {
      v6 = 1;
    }

    else
    {
      v7 = equalCopy;
      unitZoomScaleValueRange = [(HKDateZoomScale *)self unitZoomScaleValueRange];
      unitZoomScaleValueRange2 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
      if (unitZoomScaleValueRange == unitZoomScaleValueRange2)
      {
        v6 = 1;
      }

      else
      {
        unitZoomScaleValueRange3 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
        if (unitZoomScaleValueRange3)
        {
          unitZoomScaleValueRange4 = [(HKDateZoomScale *)self unitZoomScaleValueRange];
          unitZoomScaleValueRange5 = [(HKDateZoomScale *)v7 unitZoomScaleValueRange];
          v6 = [unitZoomScaleValueRange4 isEqual:unitZoomScaleValueRange5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HKDateZoomScale allocWithZone:?]];
  v5 = [(HKValueRange *)self->_unitZoomScaleValueRange copy];
  unitZoomScaleValueRange = v4->_unitZoomScaleValueRange;
  v4->_unitZoomScaleValueRange = v5;

  return v4;
}

- (id)minDate
{
  unitZoomScaleValueRange = [(HKDateZoomScale *)self unitZoomScaleValueRange];
  startDate = [unitZoomScaleValueRange startDate];

  return startDate;
}

- (id)maxDate
{
  unitZoomScaleValueRange = [(HKDateZoomScale *)self unitZoomScaleValueRange];
  endDate = [unitZoomScaleValueRange endDate];

  return endDate;
}

- (int64_t)zoomForZoomScale:(double)scale
{
  if (HKUIEqualCGFloats(scale, self->_previousZoomScale))
  {
    return self->_previousZoom;
  }

  minDate = [(HKDateZoomScale *)self minDate];
  [minDate timeIntervalSinceReferenceDate];
  v8 = v7;

  maxDate = [(HKDateZoomScale *)self maxDate];
  [maxDate timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = 0;
  v13 = (v11 - v8) / scale;
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
  self->_previousZoomScale = scale;
  return result;
}

- (double)zoomScaleForRange:(HKRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  minDate = [(HKDateZoomScale *)self minDate];
  [minDate timeIntervalSinceReferenceDate];
  v8 = v7;

  maxDate = [(HKDateZoomScale *)self maxDate];
  [maxDate timeIntervalSinceReferenceDate];
  v11 = v10;

  return (v11 - v8) / (var0 + var1 - var0);
}

- (void)setUnitZoomScaleValueRangeForTimeInterval:(double)interval
{
  currentCalendar = [(HKDateZoomScale *)self currentCalendar];
  v6 = [currentCalendar hk_dateWithDurationSinceReferenceDate:16 calendarUnit:0.0];
  currentCalendar2 = [(HKDateZoomScale *)self currentCalendar];
  v8 = [currentCalendar2 hk_dateWithDurationSinceReferenceDate:16 calendarUnit:interval];
  v9 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v8];
  unitZoomScaleValueRange = self->_unitZoomScaleValueRange;
  self->_unitZoomScaleValueRange = v9;

  self->_previousZoomScale = 0.0;
}

@end