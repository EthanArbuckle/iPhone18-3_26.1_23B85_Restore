@interface HKBloodPressureChartPoint
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValue;
- (void)setChartPoint:(id)point forType:(id)type;
@end

@implementation HKBloodPressureChartPoint

- (void)setChartPoint:(id)point forType:(id)type
{
  v16 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  typeCopy = type;
  if ([typeCopy code] == 16)
  {
    p_systolicChartPoint = &self->_systolicChartPoint;
LABEL_5:
    objc_storeStrong(p_systolicChartPoint, point);
    goto LABEL_6;
  }

  if ([typeCopy code] == 17)
  {
    p_systolicChartPoint = &self->_diastolicChartPoint;
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x1E696B990];
  if (os_log_type_enabled(*MEMORY[0x1E696B990], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = 138412546;
    v13 = pointCopy;
    v14 = 2048;
    code = [typeCopy code];
    _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "Attempt to insert chart point %@ for type %ld, this is probably a mistake", &v12, 0x16u);
  }

LABEL_6:
}

- (id)yValue
{
  systolicChartPoint = self->_systolicChartPoint;
  if (!systolicChartPoint)
  {
    systolicChartPoint = self->_diastolicChartPoint;
  }

  return [(HKHealthChartPoint *)systolicChartPoint yValue];
}

- (id)allYValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  systolicChartPoint = self->_systolicChartPoint;
  if (systolicChartPoint)
  {
    yValue = [(HKHealthChartPoint *)systolicChartPoint yValue];
    [v3 addObject:yValue];
  }

  diastolicChartPoint = self->_diastolicChartPoint;
  if (diastolicChartPoint)
  {
    yValue2 = [(HKHealthChartPoint *)diastolicChartPoint yValue];
    [v3 addObject:yValue2];
  }

  return v3;
}

- (id)minYValue
{
  diastolicChartPoint = self->_diastolicChartPoint;
  if (!diastolicChartPoint)
  {
    diastolicChartPoint = self->_systolicChartPoint;
  }

  return [(HKHealthChartPoint *)diastolicChartPoint minYValue];
}

- (id)maxYValue
{
  systolicChartPoint = self->_systolicChartPoint;
  if (!systolicChartPoint)
  {
    systolicChartPoint = self->_diastolicChartPoint;
  }

  return [(HKHealthChartPoint *)systolicChartPoint maxYValue];
}

@end