@interface HKInspectableValue(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableInspectableValue)codableRepresentationForSync;
@end

@implementation HKInspectableValue(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    inspectableValueWithNull = 0;
    goto LABEL_25;
  }

  v4 = v3;
  if (![v4 hasStringValue])
  {
    if ([v4 hasRatioValue])
    {
      v9 = MEMORY[0x277CCD880];
      ratioValue = [v4 ratioValue];
      stringValue = [v9 createWithCodable:ratioValue];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithRatio:stringValue];
        goto LABEL_23;
      }
    }

    else if ([v4 hasMedicalDateValue])
    {
      v11 = MEMORY[0x277CCD5D8];
      medicalDateValue = [v4 medicalDateValue];
      stringValue = [v11 createWithCodable:medicalDateValue];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:stringValue];
        goto LABEL_23;
      }
    }

    else if ([v4 hasDateComponentsValue])
    {
      v13 = MEMORY[0x277CBEAB8];
      dateComponentsValue = [v4 dateComponentsValue];
      stringValue = [v13 hk_dateComponentsWithCodableDateComponents:dateComponentsValue];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithDateComponents:stringValue];
        goto LABEL_23;
      }
    }

    else if ([v4 hasCodedQuantityValue])
    {
      v15 = MEMORY[0x277CCD198];
      codedQuantityValue = [v4 codedQuantityValue];
      stringValue = [v15 createWithCodable:codedQuantityValue];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:stringValue];
        goto LABEL_23;
      }
    }

    else if ([v4 hasMedicalCodingValue])
    {
      v17 = MEMORY[0x277CCD5C0];
      medicalCodingValue = [v4 medicalCodingValue];
      stringValue = [(HKMedicalCoding *)v17 _medicalCodingsWithCodable:medicalCodingValue];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithMedicalCodings:stringValue];
        goto LABEL_23;
      }
    }

    else
    {
      if (![v4 hasCodedValueCollection])
      {
        inspectableValueWithNull = [MEMORY[0x277CCD550] inspectableValueWithNull];
        goto LABEL_24;
      }

      v19 = MEMORY[0x277CCD1A8];
      codedValueCollection = [v4 codedValueCollection];
      stringValue = [v19 createWithCodable:codedValueCollection];

      if (stringValue)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithCodedValueCollection:stringValue];
        goto LABEL_23;
      }
    }

    inspectableValueWithNull = 0;
    goto LABEL_24;
  }

  v5 = MEMORY[0x277CCD550];
  stringValue = [v4 stringValue];
  v7 = [v5 inspectableValueWithString:stringValue];
LABEL_23:
  inspectableValueWithNull = v7;

LABEL_24:
LABEL_25:

  return inspectableValueWithNull;
}

- (HDCodableInspectableValue)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableInspectableValue);
  valueType = [self valueType];
  if (valueType > 5)
  {
    if (valueType > 8)
    {
      if (valueType != 9)
      {
        if (valueType == 10)
        {
          inspectableIntegerValue = [self inspectableIntegerValue];
          -[HDCodableInspectableValue setInspectableIntegerValue:](v2, "setInspectableIntegerValue:", [inspectableIntegerValue longLongValue]);
        }

        else
        {
          if (valueType != 11)
          {
            goto LABEL_27;
          }

          inspectableIntegerValue = [self BOOLeanValue];
          -[HDCodableInspectableValue setBooleanValue:](v2, "setBooleanValue:", [inspectableIntegerValue BOOLValue]);
        }

        goto LABEL_26;
      }

      v7 = MEMORY[0x277CCD5C0];
      inspectableIntegerValue = [self dataAbsentReasonCodings];
      codableRepresentationForSync = [(HKMedicalCoding *)v7 _codeableRepresentationForMedicalCodings:inspectableIntegerValue];
      [(HDCodableInspectableValue *)v2 setDataAbsentReasonCodingsValue:codableRepresentationForSync];
    }

    else if (valueType == 6)
    {
      inspectableIntegerValue = [self codedQuantityValue];
      codableRepresentationForSync = [inspectableIntegerValue codableRepresentationForSync];
      [(HDCodableInspectableValue *)v2 setCodedQuantityValue:codableRepresentationForSync];
    }

    else if (valueType == 7)
    {
      v6 = MEMORY[0x277CCD5C0];
      inspectableIntegerValue = [self medicalCodings];
      codableRepresentationForSync = [(HKMedicalCoding *)v6 _codeableRepresentationForMedicalCodings:inspectableIntegerValue];
      [(HDCodableInspectableValue *)v2 setMedicalCodingValue:codableRepresentationForSync];
    }

    else
    {
      inspectableIntegerValue = [self codedValueCollection];
      codableRepresentationForSync = [inspectableIntegerValue codableRepresentationForSync];
      [(HDCodableInspectableValue *)v2 setCodedValueCollection:codableRepresentationForSync];
    }

    goto LABEL_25;
  }

  if (valueType > 1)
  {
    switch(valueType)
    {
      case 2:
        inspectableIntegerValue = [self medicalDateValue];
        codableRepresentationForSync = [inspectableIntegerValue codableRepresentationForSync];
        [(HDCodableInspectableValue *)v2 setMedicalDateValue:codableRepresentationForSync];
        break;
      case 3:
        inspectableIntegerValue = [self medicalDateIntervalValue];
        codableRepresentationForSync = [inspectableIntegerValue codableRepresentationForSync];
        [(HDCodableInspectableValue *)v2 setMedicalDateIntervalValue:codableRepresentationForSync];
        break;
      case 4:
        inspectableIntegerValue = [self dateComponentsValue];
        codableRepresentationForSync = [inspectableIntegerValue hk_codableDateComponents];
        [(HDCodableInspectableValue *)v2 setDateComponentsValue:codableRepresentationForSync];
        break;
      default:
        goto LABEL_27;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (valueType)
  {
    if (valueType != 1)
    {
      goto LABEL_27;
    }

    inspectableIntegerValue = [self ratioValue];
    codableRepresentationForSync = [inspectableIntegerValue codableRepresentationForSync];
    [(HDCodableInspectableValue *)v2 setRatioValue:codableRepresentationForSync];
    goto LABEL_25;
  }

  inspectableIntegerValue = [self stringValue];
  [(HDCodableInspectableValue *)v2 setStringValue:inspectableIntegerValue];
LABEL_26:

LABEL_27:

  return v2;
}

@end