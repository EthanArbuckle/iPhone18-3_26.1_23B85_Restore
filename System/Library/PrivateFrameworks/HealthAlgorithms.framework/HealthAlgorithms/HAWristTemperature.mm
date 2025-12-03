@interface HAWristTemperature
- (HAWristTemperature)initWithComputedTemperatureErrorEstimate:(id)estimate computedTemperature:(id)temperature sensor1Temperature:(id)sensor1Temperature sensor2Temperature:(id)sensor2Temperature dataValidity:(unint64_t)validity timestamp:(id)timestamp;
@end

@implementation HAWristTemperature

- (HAWristTemperature)initWithComputedTemperatureErrorEstimate:(id)estimate computedTemperature:(id)temperature sensor1Temperature:(id)sensor1Temperature sensor2Temperature:(id)sensor2Temperature dataValidity:(unint64_t)validity timestamp:(id)timestamp
{
  estimateCopy = estimate;
  temperatureCopy = temperature;
  sensor1TemperatureCopy = sensor1Temperature;
  sensor2TemperatureCopy = sensor2Temperature;
  timestampCopy = timestamp;
  v24.receiver = self;
  v24.super_class = HAWristTemperature;
  v18 = [(HAWristTemperature *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_computedTemperatureErrorEstimate, estimate);
    objc_storeStrong(&v19->_computedTemperature, temperature);
    objc_storeStrong(&v19->_sensor1Temperature, sensor1Temperature);
    objc_storeStrong(&v19->_sensor2Temperature, sensor2Temperature);
    v19->_dataValidity = validity;
    objc_storeStrong(&v19->_timestamp, timestamp);
    v20 = v19;
  }

  return v19;
}

@end