@interface CAFInteriorConditions
+ (void)load;
- (BOOL)aqiInvalid;
- (BOOL)hasAqi;
- (BOOL)registeredForAQI;
- (CAFFloatRange)aqiRange;
- (CAFMeasurementCharacteristic)aqiCharacteristic;
- (CAFMeasurementRange)aqiMeasurementRange;
- (NSMeasurement)aqi;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFInteriorConditions

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFInteriorConditions;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFInteriorConditions;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFInteriorConditions;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)aqiCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000010"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSMeasurement)aqi
{
  v2 = [(CAFInteriorConditions *)self aqiCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)aqiRange
{
  v2 = [(CAFInteriorConditions *)self aqiCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)aqiMeasurementRange
{
  v3 = [(CAFInteriorConditions *)self aqiRange];
  v4 = [(CAFInteriorConditions *)self aqi];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasAqi
{
  v2 = [(CAFInteriorConditions *)self aqiCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)aqiInvalid
{
  v2 = [(CAFInteriorConditions *)self aqiCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForAQI
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000010"];

  return v10;
}

@end