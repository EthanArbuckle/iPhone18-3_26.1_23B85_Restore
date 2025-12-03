@interface HKWorkoutZone(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableWorkoutZone)codableRepresentationForSync;
@end

@implementation HKWorkoutZone(HDCodingSupport)

- (HDCodableWorkoutZone)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableWorkoutZone);
  identifier = [self identifier];
  uUIDString = [identifier UUIDString];
  [(HDCodableWorkoutZone *)v2 setUuid:uUIDString];

  type = [self type];
  -[HDCodableWorkoutZone setObjectType:](v2, "setObjectType:", [type code]);

  v6 = MEMORY[0x277CCDCE0];
  startQuantity = [self startQuantity];
  type2 = [self type];
  v9 = [v6 _valueForQuantity:startQuantity objectType:type2];

  if (v9)
  {
    [v9 doubleValue];
    [(HDCodableWorkoutZone *)v2 setStartQuantity:?];
  }

  v10 = MEMORY[0x277CCDCE0];
  endQuantity = [self endQuantity];
  type3 = [self type];
  v13 = [v10 _valueForQuantity:endQuantity objectType:type3];

  if (v13)
  {
    [v13 doubleValue];
    [(HDCodableWorkoutZone *)v2 setEndQuantity:?];
  }

  [self timeInZone];
  [(HDCodableWorkoutZone *)v2 setTimeInZone:v14];

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    uuid = [v4 uuid];
    v7 = [v5 initWithUUIDString:uuid];

    v8 = [MEMORY[0x277CCD720] dataTypeWithCode:{objc_msgSend(v4, "objectType")}];
    if ([v4 hasStartQuantity])
    {
      v9 = MEMORY[0x277CCDCE0];
      [v4 startQuantity];
      v10 = [v9 _quantityFromValue:v8 objectType:?];
    }

    else
    {
      v10 = 0;
    }

    if ([v4 hasEndQuantity])
    {
      v12 = MEMORY[0x277CCDCE0];
      [v4 endQuantity];
      v13 = [v12 _quantityFromValue:v8 objectType:?];
    }

    else
    {
      v13 = 0;
    }

    v11 = [objc_alloc(MEMORY[0x277CCDCE0]) _initWithIdentifier:v7 type:v8 startQuantity:v10 endQuantity:v13];
    [v11 _setTimeInZone:{objc_msgSend(v4, "timeInZone")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end