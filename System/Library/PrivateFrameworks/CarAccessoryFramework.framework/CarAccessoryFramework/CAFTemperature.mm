@interface CAFTemperature
+ (void)load;
- (BOOL)currentTemperatureInvalid;
- (BOOL)hasCurrentTemperature;
- (BOOL)hasOn;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForCurrentTemperature;
- (BOOL)registeredForOn;
- (BOOL)registeredForTargetTemperature;
- (BOOL)registeredForVehicleLayoutKey;
- (BOOL)targetTemperatureDisabled;
- (BOOL)targetTemperatureInvalid;
- (BOOL)targetTemperatureRestricted;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFFloatRange)currentTemperatureRange;
- (CAFFloatRange)targetTemperatureRange;
- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic;
- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic;
- (CAFMeasurementRange)currentTemperatureMeasurementRange;
- (CAFMeasurementRange)targetTemperatureMeasurementRange;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSMeasurement)currentTemperature;
- (NSMeasurement)targetTemperature;
- (NSString)vehicleLayoutKey;
- (id)name;
- (void)registerObserver:(id)observer;
- (void)setTargetTemperature:(id)temperature;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTemperature

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTemperature;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTemperature;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTemperature;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000019"];
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

- (NSMeasurement)currentTemperature
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  measurementValue = [currentTemperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)currentTemperatureRange
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  range = [currentTemperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)currentTemperatureMeasurementRange
{
  currentTemperatureRange = [(CAFTemperature *)self currentTemperatureRange];
  currentTemperature = [(CAFTemperature *)self currentTemperature];
  unit = [currentTemperature unit];
  v6 = [currentTemperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasCurrentTemperature
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = currentTemperatureCharacteristic != 0;

  return v3;
}

- (BOOL)currentTemperatureInvalid
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  isInvalid = [currentTemperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000017"];
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

- (NSMeasurement)targetTemperature
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  measurementValue = [targetTemperatureCharacteristic measurementValue];

  return measurementValue;
}

- (void)setTargetTemperature:(id)temperature
{
  temperatureCopy = temperature;
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  [targetTemperatureCharacteristic setMeasurementValue:temperatureCopy];
}

- (CAFFloatRange)targetTemperatureRange
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  range = [targetTemperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)targetTemperatureMeasurementRange
{
  targetTemperatureRange = [(CAFTemperature *)self targetTemperatureRange];
  targetTemperature = [(CAFTemperature *)self targetTemperature];
  unit = [targetTemperature unit];
  v6 = [targetTemperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)targetTemperatureDisabled
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isDisabled = [targetTemperatureCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)targetTemperatureInvalid
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isInvalid = [targetTemperatureCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)targetTemperatureRestricted
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isRestricted = [targetTemperatureCharacteristic isRestricted];

  return isRestricted;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  isRestricted = [onCharacteristic isRestricted];

  return isRestricted;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000065"];
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

- (NSString)vehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (BOOL)registeredForCurrentTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000019"];

  return v10;
}

- (BOOL)registeredForTargetTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000017"];

  return v10;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  return v10;
}

@end