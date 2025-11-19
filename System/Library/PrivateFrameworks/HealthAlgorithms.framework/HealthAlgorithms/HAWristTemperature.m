@interface HAWristTemperature
- (HAWristTemperature)initWithComputedTemperatureErrorEstimate:(id)a3 computedTemperature:(id)a4 sensor1Temperature:(id)a5 sensor2Temperature:(id)a6 dataValidity:(unint64_t)a7 timestamp:(id)a8;
@end

@implementation HAWristTemperature

- (HAWristTemperature)initWithComputedTemperatureErrorEstimate:(id)a3 computedTemperature:(id)a4 sensor1Temperature:(id)a5 sensor2Temperature:(id)a6 dataValidity:(unint64_t)a7 timestamp:(id)a8
{
  v23 = a3;
  v22 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HAWristTemperature;
  v18 = [(HAWristTemperature *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_computedTemperatureErrorEstimate, a3);
    objc_storeStrong(&v19->_computedTemperature, a4);
    objc_storeStrong(&v19->_sensor1Temperature, a5);
    objc_storeStrong(&v19->_sensor2Temperature, a6);
    v19->_dataValidity = a7;
    objc_storeStrong(&v19->_timestamp, a8);
    v20 = v19;
  }

  return v19;
}

@end