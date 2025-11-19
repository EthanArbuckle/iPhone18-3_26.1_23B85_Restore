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
    v8 = 0;
    goto LABEL_25;
  }

  v4 = v3;
  if (![v4 hasStringValue])
  {
    if ([v4 hasRatioValue])
    {
      v9 = MEMORY[0x277CCD880];
      v10 = [v4 ratioValue];
      v6 = [v9 createWithCodable:v10];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithRatio:v6];
        goto LABEL_23;
      }
    }

    else if ([v4 hasMedicalDateValue])
    {
      v11 = MEMORY[0x277CCD5D8];
      v12 = [v4 medicalDateValue];
      v6 = [v11 createWithCodable:v12];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v6];
        goto LABEL_23;
      }
    }

    else if ([v4 hasDateComponentsValue])
    {
      v13 = MEMORY[0x277CBEAB8];
      v14 = [v4 dateComponentsValue];
      v6 = [v13 hk_dateComponentsWithCodableDateComponents:v14];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithDateComponents:v6];
        goto LABEL_23;
      }
    }

    else if ([v4 hasCodedQuantityValue])
    {
      v15 = MEMORY[0x277CCD198];
      v16 = [v4 codedQuantityValue];
      v6 = [v15 createWithCodable:v16];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v6];
        goto LABEL_23;
      }
    }

    else if ([v4 hasMedicalCodingValue])
    {
      v17 = MEMORY[0x277CCD5C0];
      v18 = [v4 medicalCodingValue];
      v6 = [(HKMedicalCoding *)v17 _medicalCodingsWithCodable:v18];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithMedicalCodings:v6];
        goto LABEL_23;
      }
    }

    else
    {
      if (![v4 hasCodedValueCollection])
      {
        v8 = [MEMORY[0x277CCD550] inspectableValueWithNull];
        goto LABEL_24;
      }

      v19 = MEMORY[0x277CCD1A8];
      v20 = [v4 codedValueCollection];
      v6 = [v19 createWithCodable:v20];

      if (v6)
      {
        v7 = [MEMORY[0x277CCD550] inspectableValueWithCodedValueCollection:v6];
        goto LABEL_23;
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

  v5 = MEMORY[0x277CCD550];
  v6 = [v4 stringValue];
  v7 = [v5 inspectableValueWithString:v6];
LABEL_23:
  v8 = v7;

LABEL_24:
LABEL_25:

  return v8;
}

- (HDCodableInspectableValue)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableInspectableValue);
  v3 = [a1 valueType];
  if (v3 > 5)
  {
    if (v3 > 8)
    {
      if (v3 != 9)
      {
        if (v3 == 10)
        {
          v4 = [a1 inspectableIntegerValue];
          -[HDCodableInspectableValue setInspectableIntegerValue:](v2, "setInspectableIntegerValue:", [v4 longLongValue]);
        }

        else
        {
          if (v3 != 11)
          {
            goto LABEL_27;
          }

          v4 = [a1 BOOLeanValue];
          -[HDCodableInspectableValue setBooleanValue:](v2, "setBooleanValue:", [v4 BOOLValue]);
        }

        goto LABEL_26;
      }

      v7 = MEMORY[0x277CCD5C0];
      v4 = [a1 dataAbsentReasonCodings];
      v5 = [(HKMedicalCoding *)v7 _codeableRepresentationForMedicalCodings:v4];
      [(HDCodableInspectableValue *)v2 setDataAbsentReasonCodingsValue:v5];
    }

    else if (v3 == 6)
    {
      v4 = [a1 codedQuantityValue];
      v5 = [v4 codableRepresentationForSync];
      [(HDCodableInspectableValue *)v2 setCodedQuantityValue:v5];
    }

    else if (v3 == 7)
    {
      v6 = MEMORY[0x277CCD5C0];
      v4 = [a1 medicalCodings];
      v5 = [(HKMedicalCoding *)v6 _codeableRepresentationForMedicalCodings:v4];
      [(HDCodableInspectableValue *)v2 setMedicalCodingValue:v5];
    }

    else
    {
      v4 = [a1 codedValueCollection];
      v5 = [v4 codableRepresentationForSync];
      [(HDCodableInspectableValue *)v2 setCodedValueCollection:v5];
    }

    goto LABEL_25;
  }

  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v4 = [a1 medicalDateValue];
        v5 = [v4 codableRepresentationForSync];
        [(HDCodableInspectableValue *)v2 setMedicalDateValue:v5];
        break;
      case 3:
        v4 = [a1 medicalDateIntervalValue];
        v5 = [v4 codableRepresentationForSync];
        [(HDCodableInspectableValue *)v2 setMedicalDateIntervalValue:v5];
        break;
      case 4:
        v4 = [a1 dateComponentsValue];
        v5 = [v4 hk_codableDateComponents];
        [(HDCodableInspectableValue *)v2 setDateComponentsValue:v5];
        break;
      default:
        goto LABEL_27;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_27;
    }

    v4 = [a1 ratioValue];
    v5 = [v4 codableRepresentationForSync];
    [(HDCodableInspectableValue *)v2 setRatioValue:v5];
    goto LABEL_25;
  }

  v4 = [a1 stringValue];
  [(HDCodableInspectableValue *)v2 setStringValue:v4];
LABEL_26:

LABEL_27:

  return v2;
}

@end