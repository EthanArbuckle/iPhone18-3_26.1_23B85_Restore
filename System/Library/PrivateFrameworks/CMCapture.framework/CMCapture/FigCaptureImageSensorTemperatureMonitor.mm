@interface FigCaptureImageSensorTemperatureMonitor
- (FigCaptureImageSensorTemperatureMonitor)initWithPortType:(id)type sensorThermalLevelsByTemperature:(id)temperature;
- (void)dealloc;
- (void)startMonitoringImageSensorTemperatureUntilNominalWithQueue:(id)queue changeHandler:(id)handler;
- (void)updateWithImageSensorTemperature:(float)temperature;
@end

@implementation FigCaptureImageSensorTemperatureMonitor

- (FigCaptureImageSensorTemperatureMonitor)initWithPortType:(id)type sensorThermalLevelsByTemperature:(id)temperature
{
  v25.receiver = self;
  v25.super_class = FigCaptureImageSensorTemperatureMonitor;
  v6 = [(FigCaptureImageSensorTemperatureMonitor *)&v25 init];
  if (v6)
  {
    if (type && temperature)
    {
      v6->_portType = type;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Nominal", "objectForKeyedSubscript:", @"Min", "floatValue"}];
      v8 = v7;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Nominal", "objectForKeyedSubscript:", @"Max", "floatValue"}];
      v6->_systemPressureLevelByImageSensorTemperature[0].min = v8;
      v6->_systemPressureLevelByImageSensorTemperature[0].max = v9;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Fair", "objectForKeyedSubscript:", @"Min", "floatValue"}];
      v11 = v10;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Fair", "objectForKeyedSubscript:", @"Max", "floatValue"}];
      v6->_systemPressureLevelByImageSensorTemperature[1].min = v11;
      v6->_systemPressureLevelByImageSensorTemperature[1].max = v12;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Serious", "objectForKeyedSubscript:", @"Min", "floatValue"}];
      v14 = v13;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Serious", "objectForKeyedSubscript:", @"Max", "floatValue"}];
      v6->_systemPressureLevelByImageSensorTemperature[2].min = v14;
      v6->_systemPressureLevelByImageSensorTemperature[2].max = v15;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Critical", "objectForKeyedSubscript:", @"Min", "floatValue"}];
      v17 = v16;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Critical", "objectForKeyedSubscript:", @"Max", "floatValue"}];
      v6->_systemPressureLevelByImageSensorTemperature[3].min = v17;
      v6->_systemPressureLevelByImageSensorTemperature[3].max = v18;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Shutdown", "objectForKeyedSubscript:", @"Min", "floatValue"}];
      v20 = v19;
      [objc_msgSend(objc_msgSend(temperature objectForKeyedSubscript:{@"Shutdown", "objectForKeyedSubscript:", @"Max", "floatValue"}];
      v21 = 0;
      v6->_systemPressureLevelByImageSensorTemperature[4].min = v20;
      v6->_systemPressureLevelByImageSensorTemperature[4].max = v22;
      while (1)
      {
        min = v6->_systemPressureLevelByImageSensorTemperature[v21].min;
        if (min >= v6->_systemPressureLevelByImageSensorTemperature[v21].max || v21 * 8 && *(&v6->_portType + v21 * 8 + 4) <= min)
        {
          break;
        }

        if (++v21 == 5)
        {
          return v6;
        }
      }
    }

    else
    {
      [FigCaptureImageSensorTemperatureMonitor initWithPortType:sensorThermalLevelsByTemperature:];
    }

    return 0;
  }

  return v6;
}

- (void)startMonitoringImageSensorTemperatureUntilNominalWithQueue:(id)queue changeHandler:(id)handler
{
  if (!self->_nominalImageSensorTemperatureMonitorTimer)
  {
    v16[6] = v7;
    v16[7] = v6;
    v16[12] = v4;
    v16[13] = v5;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3052000000;
    v16[3] = __Block_byref_object_copy__45;
    v16[4] = __Block_byref_object_dispose__45;
    v16[5] = [handler copy];
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
    self->_nominalImageSensorTemperatureMonitorTimer = v10;
    v11 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v10, v11, 0x6FC23AC00uLL, 0xF4240uLL);
    nominalImageSensorTemperatureMonitorTimer = self->_nominalImageSensorTemperatureMonitorTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __116__FigCaptureImageSensorTemperatureMonitor_startMonitoringImageSensorTemperatureUntilNominalWithQueue_changeHandler___block_invoke;
    handler[3] = &unk_1E79904A0;
    handler[4] = self;
    handler[5] = v16;
    dispatch_source_set_event_handler(nominalImageSensorTemperatureMonitorTimer, handler);
    v13 = self->_nominalImageSensorTemperatureMonitorTimer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __116__FigCaptureImageSensorTemperatureMonitor_startMonitoringImageSensorTemperatureUntilNominalWithQueue_changeHandler___block_invoke_2;
    v14[3] = &unk_1E798FAF8;
    v14[4] = self;
    v14[5] = v16;
    dispatch_source_set_cancel_handler(v13, v14);
    dispatch_resume(self->_nominalImageSensorTemperatureMonitorTimer);
    _Block_object_dispose(v16, 8);
  }
}

void __116__FigCaptureImageSensorTemperatureMonitor_startMonitoringImageSensorTemperatureUntilNominalWithQueue_changeHandler___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = 0;

  *(*(a1 + 32) + 64) = 0;
}

- (void)dealloc
{
  if (self)
  {
    nominalImageSensorTemperatureMonitorTimer = self->_nominalImageSensorTemperatureMonitorTimer;
    if (nominalImageSensorTemperatureMonitorTimer)
    {
      dispatch_source_cancel(nominalImageSensorTemperatureMonitorTimer);
    }
  }

  v4.receiver = self;
  v4.super_class = FigCaptureImageSensorTemperatureMonitor;
  [(FigCaptureImageSensorTemperatureMonitor *)&v4 dealloc];
}

- (void)updateWithImageSensorTemperature:(float)temperature
{
  if (self)
  {
    nominalImageSensorTemperatureMonitorTimer = self->_nominalImageSensorTemperatureMonitorTimer;
    if (nominalImageSensorTemperatureMonitorTimer)
    {
      dispatch_source_cancel(nominalImageSensorTemperatureMonitorTimer);
    }
  }

  currentSystemPressureFromImageSensorTemperature = self->_currentSystemPressureFromImageSensorTemperature;
  v7 = &self->_systemPressureLevelByImageSensorTemperature[currentSystemPressureFromImageSensorTemperature];
  if (v7->min > temperature || v7->max < temperature)
  {
    v9 = v7->min <= temperature ? 1 : -1;
    v10 = currentSystemPressureFromImageSensorTemperature + v9;
    if ((currentSystemPressureFromImageSensorTemperature + v9) > 4)
    {
      goto LABEL_17;
    }

    do
    {
      v11 = &self->_systemPressureLevelByImageSensorTemperature[v10];
      if (v11->min <= temperature && v11->max >= temperature)
      {
        break;
      }

      v10 += v9;
    }

    while (v10 < 5);
    if (v10 != currentSystemPressureFromImageSensorTemperature)
    {
LABEL_17:
      self->_currentSystemPressureFromImageSensorTemperature = v10;
    }
  }
}

void __116__FigCaptureImageSensorTemperatureMonitor_startMonitoringImageSensorTemperatureUntilNominalWithQueue_changeHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {

      dispatch_source_cancel(v3);
    }
  }
}

@end