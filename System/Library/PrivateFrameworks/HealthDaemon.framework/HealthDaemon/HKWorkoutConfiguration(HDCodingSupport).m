@interface HKWorkoutConfiguration(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableWorkoutConfiguration)codableRepresentationForSync;
@end

@implementation HKWorkoutConfiguration(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CCDC38]);
    [v5 setActivityType:{objc_msgSend(v4, "activityType")}];
    [v5 setLocationType:{objc_msgSend(v4, "locationType")}];
    [v5 setSwimmingLocationType:{objc_msgSend(v4, "wLocationType")}];
    if ([v4 hasWLengthUnitString])
    {
      v6 = MEMORY[0x277CCDAB0];
      v7 = [v4 wLengthUnitString];
      v8 = [v6 unitFromString:v7];

      v9 = MEMORY[0x277CCD7E8];
      [v4 wLengthValue];
      v10 = [v9 quantityWithUnit:v8 doubleValue:?];
      [v5 setLapLength:v10];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDCodableWorkoutConfiguration)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableWorkoutConfiguration);
  -[HDCodableWorkoutConfiguration setActivityType:](v2, "setActivityType:", [a1 activityType]);
  -[HDCodableWorkoutConfiguration setLocationType:](v2, "setLocationType:", [a1 locationType]);
  -[HDCodableWorkoutConfiguration setWLocationType:](v2, "setWLocationType:", [a1 swimmingLocationType]);
  v3 = [a1 lapLength];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _unit];
    [v4 doubleValueForUnit:v5];
    [(HDCodableWorkoutConfiguration *)v2 setWLengthValue:?];
    v6 = [v5 unitString];
    [(HDCodableWorkoutConfiguration *)v2 setWLengthUnitString:v6];
  }

  return v2;
}

@end