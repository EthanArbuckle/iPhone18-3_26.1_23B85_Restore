@interface LNMeasurementValueType
+ (LNMeasurementValueType)accelerationValueType;
+ (LNMeasurementValueType)angleValueType;
+ (LNMeasurementValueType)areaValueType;
+ (LNMeasurementValueType)concentrationMassValueType;
+ (LNMeasurementValueType)dispersionValueType;
+ (LNMeasurementValueType)durationValueType;
+ (LNMeasurementValueType)electricChargeValueType;
+ (LNMeasurementValueType)electricCurrentValueType;
+ (LNMeasurementValueType)electricPotentialDifferenceValueType;
+ (LNMeasurementValueType)electricResistanceValueType;
+ (LNMeasurementValueType)energyValueType;
+ (LNMeasurementValueType)frequencyValueType;
+ (LNMeasurementValueType)fuelEfficiencyValueType;
+ (LNMeasurementValueType)illuminanceValueType;
+ (LNMeasurementValueType)informationStorageValueType;
+ (LNMeasurementValueType)lengthValueType;
+ (LNMeasurementValueType)massValueType;
+ (LNMeasurementValueType)powerValueType;
+ (LNMeasurementValueType)pressureValueType;
+ (LNMeasurementValueType)speedValueType;
+ (LNMeasurementValueType)temperatureValueType;
+ (LNMeasurementValueType)unsupportedMeasurementValueType;
+ (LNMeasurementValueType)volumeValueType;
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (LNMeasurementValueType)initWithCoder:(id)coder;
- (LNMeasurementValueType)initWithUnitType:(int64_t)type;
- (id)description;
- (id)typeIdentifierAsString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNMeasurementValueType

+ (LNMeasurementValueType)areaValueType
{
  if (areaValueType_onceToken != -1)
  {
    dispatch_once(&areaValueType_onceToken, &__block_literal_global_6_6637);
  }

  v3 = areaValueType_value;

  return v3;
}

uint64_t __52__LNMeasurementValueType_concentrationMassValueType__block_invoke()
{
  concentrationMassValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:11];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __45__LNMeasurementValueType_dispersionValueType__block_invoke()
{
  dispersionValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:12];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)dispersionValueType
{
  if (dispersionValueType_onceToken != -1)
  {
    dispatch_once(&dispersionValueType_onceToken, &__block_literal_global_10_6633);
  }

  v3 = dispersionValueType_value;

  return v3;
}

uint64_t __43__LNMeasurementValueType_durationValueType__block_invoke()
{
  durationValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:7];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)electricChargeValueType
{
  if (electricChargeValueType_onceToken != -1)
  {
    dispatch_once(&electricChargeValueType_onceToken, &__block_literal_global_14_6629);
  }

  v3 = electricChargeValueType_value;

  return v3;
}

uint64_t __49__LNMeasurementValueType_electricChargeValueType__block_invoke()
{
  electricChargeValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:13];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __50__LNMeasurementValueType_electricCurrentValueType__block_invoke()
{
  electricCurrentValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:14];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)electricCurrentValueType
{
  if (electricCurrentValueType_onceToken != -1)
  {
    dispatch_once(&electricCurrentValueType_onceToken, &__block_literal_global_16_6627);
  }

  v3 = electricCurrentValueType_value;

  return v3;
}

+ (LNMeasurementValueType)electricPotentialDifferenceValueType
{
  if (electricPotentialDifferenceValueType_onceToken != -1)
  {
    dispatch_once(&electricPotentialDifferenceValueType_onceToken, &__block_literal_global_18_6625);
  }

  v3 = electricPotentialDifferenceValueType_value;

  return v3;
}

+ (LNMeasurementValueType)electricResistanceValueType
{
  if (electricResistanceValueType_onceToken != -1)
  {
    dispatch_once(&electricResistanceValueType_onceToken, &__block_literal_global_20_6623);
  }

  v3 = electricResistanceValueType_value;

  return v3;
}

uint64_t __53__LNMeasurementValueType_electricResistanceValueType__block_invoke()
{
  electricResistanceValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:16];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)frequencyValueType
{
  if (frequencyValueType_onceToken != -1)
  {
    dispatch_once(&frequencyValueType_onceToken, &__block_literal_global_24_6619);
  }

  v3 = frequencyValueType_value;

  return v3;
}

+ (LNMeasurementValueType)fuelEfficiencyValueType
{
  if (fuelEfficiencyValueType_onceToken != -1)
  {
    dispatch_once(&fuelEfficiencyValueType_onceToken, &__block_literal_global_26_6617);
  }

  v3 = fuelEfficiencyValueType_value;

  return v3;
}

uint64_t __49__LNMeasurementValueType_fuelEfficiencyValueType__block_invoke()
{
  fuelEfficiencyValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:18];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)illuminanceValueType
{
  if (illuminanceValueType_onceToken != -1)
  {
    dispatch_once(&illuminanceValueType_onceToken, &__block_literal_global_28_6615);
  }

  v3 = illuminanceValueType_value;

  return v3;
}

uint64_t __46__LNMeasurementValueType_illuminanceValueType__block_invoke()
{
  illuminanceValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:19];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53__LNMeasurementValueType_informationStorageValueType__block_invoke()
{
  informationStorageValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:20];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41__LNMeasurementValueType_lengthValueType__block_invoke()
{
  lengthValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)powerValueType
{
  if (powerValueType_onceToken != -1)
  {
    dispatch_once(&powerValueType_onceToken, &__block_literal_global_36);
  }

  v3 = powerValueType_value;

  return v3;
}

+ (LNMeasurementValueType)temperatureValueType
{
  if (temperatureValueType_onceToken != -1)
  {
    dispatch_once(&temperatureValueType_onceToken, &__block_literal_global_42);
  }

  v3 = temperatureValueType_value;

  return v3;
}

+ (LNMeasurementValueType)angleValueType
{
  if (angleValueType_onceToken != -1)
  {
    dispatch_once(&angleValueType_onceToken, &__block_literal_global_4_6639);
  }

  v3 = angleValueType_value;

  return v3;
}

uint64_t __40__LNMeasurementValueType_angleValueType__block_invoke()
{
  angleValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:9];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __39__LNMeasurementValueType_areaValueType__block_invoke()
{
  areaValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:10];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)concentrationMassValueType
{
  if (concentrationMassValueType_onceToken != -1)
  {
    dispatch_once(&concentrationMassValueType_onceToken, &__block_literal_global_8_6635);
  }

  v3 = concentrationMassValueType_value;

  return v3;
}

+ (LNMeasurementValueType)energyValueType
{
  if (energyValueType_onceToken != -1)
  {
    dispatch_once(&energyValueType_onceToken, &__block_literal_global_22_6621);
  }

  v3 = energyValueType_value;

  return v3;
}

uint64_t __41__LNMeasurementValueType_energyValueType__block_invoke()
{
  energyValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:6];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62__LNMeasurementValueType_electricPotentialDifferenceValueType__block_invoke()
{
  electricPotentialDifferenceValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:15];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44__LNMeasurementValueType_frequencyValueType__block_invoke()
{
  frequencyValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:17];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)informationStorageValueType
{
  if (informationStorageValueType_onceToken != -1)
  {
    dispatch_once(&informationStorageValueType_onceToken, &__block_literal_global_30_6613);
  }

  v3 = informationStorageValueType_value;

  return v3;
}

+ (LNMeasurementValueType)lengthValueType
{
  if (lengthValueType_onceToken != -1)
  {
    dispatch_once(&lengthValueType_onceToken, &__block_literal_global_32_6611);
  }

  v3 = lengthValueType_value;

  return v3;
}

uint64_t __39__LNMeasurementValueType_massValueType__block_invoke()
{
  massValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)massValueType
{
  if (massValueType_onceToken != -1)
  {
    dispatch_once(&massValueType_onceToken, &__block_literal_global_34);
  }

  v3 = massValueType_value;

  return v3;
}

uint64_t __40__LNMeasurementValueType_powerValueType__block_invoke()
{
  powerValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:21];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)pressureValueType
{
  if (pressureValueType_onceToken != -1)
  {
    dispatch_once(&pressureValueType_onceToken, &__block_literal_global_38_6609);
  }

  v3 = pressureValueType_value;

  return v3;
}

uint64_t __43__LNMeasurementValueType_pressureValueType__block_invoke()
{
  pressureValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:22];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)speedValueType
{
  if (speedValueType_onceToken != -1)
  {
    dispatch_once(&speedValueType_onceToken, &__block_literal_global_40);
  }

  v3 = speedValueType_value;

  return v3;
}

uint64_t __40__LNMeasurementValueType_speedValueType__block_invoke()
{
  speedValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:5];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__LNMeasurementValueType_temperatureValueType__block_invoke()
{
  temperatureValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:3];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41__LNMeasurementValueType_volumeValueType__block_invoke()
{
  volumeValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:4];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)volumeValueType
{
  if (volumeValueType_onceToken != -1)
  {
    dispatch_once(&volumeValueType_onceToken, &__block_literal_global_44);
  }

  v3 = volumeValueType_value;

  return v3;
}

+ (LNMeasurementValueType)accelerationValueType
{
  if (accelerationValueType_onceToken[0] != -1)
  {
    dispatch_once(accelerationValueType_onceToken, &__block_literal_global_2_6641);
  }

  v3 = accelerationValueType_value;

  return v3;
}

uint64_t __47__LNMeasurementValueType_accelerationValueType__block_invoke()
{
  accelerationValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:8];

  return MEMORY[0x1EEE66BB8]();
}

+ (LNMeasurementValueType)durationValueType
{
  if (durationValueType_onceToken != -1)
  {
    dispatch_once(&durationValueType_onceToken, &__block_literal_global_12_6631);
  }

  v3 = durationValueType_value;

  return v3;
}

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = LNMeasurementValueType;
  if (![(LNValueType *)&v10 isEqual:v6])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  unitType = [(LNMeasurementValueType *)self unitType];
  v8 = unitType == [(LNMeasurementValueType *)v6 unitType];
LABEL_8:

LABEL_10:
  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = LNMeasurementValueType;
  v3 = [(LNValueType *)&v5 hash];
  return [(LNMeasurementValueType *)self unitType]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LNMeasurementValueType;
  coderCopy = coder;
  [(LNValueType *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[LNMeasurementValueType unitType](self forKey:{"unitType", v5.receiver, v5.super_class), @"unitType"}];
}

- (LNMeasurementValueType)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"unitType"];

  return [(LNMeasurementValueType *)self initWithUnitType:v4];
}

- (id)description
{
  unitType = [(LNMeasurementValueType *)self unitType];
  if ((unitType - 1) > 0x15)
  {
    return @"Unsupported measurement type";
  }

  else
  {
    return off_1E72B1358[unitType - 1];
  }
}

- (id)typeIdentifierAsString
{
  unitType = [(LNMeasurementValueType *)self unitType];
  if ((unitType - 1) > 0x15)
  {
    return @"Unsupported measurement type";
  }

  else
  {
    return off_1E72B1358[unitType - 1];
  }
}

- (LNMeasurementValueType)initWithUnitType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = LNMeasurementValueType;
  v4 = [(LNValueType *)&v8 initWithContentType:0];
  v5 = v4;
  if (v4)
  {
    v4->_unitType = type;
    v6 = v4;
  }

  return v5;
}

+ (LNMeasurementValueType)unsupportedMeasurementValueType
{
  if (unsupportedMeasurementValueType_onceToken != -1)
  {
    dispatch_once(&unsupportedMeasurementValueType_onceToken, &__block_literal_global_6643);
  }

  v3 = unsupportedMeasurementValueType_value;

  return v3;
}

uint64_t __57__LNMeasurementValueType_unsupportedMeasurementValueType__block_invoke()
{
  unsupportedMeasurementValueType_value = [[LNMeasurementValueType alloc] initWithUnitType:0];

  return MEMORY[0x1EEE66BB8]();
}

@end