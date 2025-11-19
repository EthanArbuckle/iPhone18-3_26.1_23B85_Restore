@interface HKBloodPressureChartPoint
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValue;
- (void)setChartPoint:(id)a3 forType:(id)a4;
@end

@implementation HKBloodPressureChartPoint

- (void)setChartPoint:(id)a3 forType:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 code] == 16)
  {
    p_systolicChartPoint = &self->_systolicChartPoint;
LABEL_5:
    objc_storeStrong(p_systolicChartPoint, a3);
    goto LABEL_6;
  }

  if ([v8 code] == 17)
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
    v13 = v7;
    v14 = 2048;
    v15 = [v8 code];
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
    v5 = [(HKHealthChartPoint *)systolicChartPoint yValue];
    [v3 addObject:v5];
  }

  diastolicChartPoint = self->_diastolicChartPoint;
  if (diastolicChartPoint)
  {
    v7 = [(HKHealthChartPoint *)diastolicChartPoint yValue];
    [v3 addObject:v7];
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