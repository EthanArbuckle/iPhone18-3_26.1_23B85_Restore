@interface HDFakeDataCollectorConfiguration
+ (id)configurationForWorkoutActivityType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDFakeDataCollectorConfiguration

+ (id)configurationForWorkoutActivityType:(unint64_t)type
{
  v4 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  v5 = v4;
  if (type <= 38)
  {
    if (type > 34)
    {
      if (type == 35)
      {
        v27 = MEMORY[0x277CCD7E8];
        v28 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v29 = [v27 quantityWithUnit:v28 doubleValue:4.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v29];

        v9 = 10;
        goto LABEL_22;
      }

      if (type == 37)
      {
        v15 = MEMORY[0x277CCD7E8];
        v16 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v17 = [v15 quantityWithUnit:v16 doubleValue:3.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v17];

        v9 = 2;
        goto LABEL_22;
      }
    }

    else
    {
      if (type == 13)
      {
        v21 = MEMORY[0x277CCD7E8];
        v22 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v23 = [v21 quantityWithUnit:v22 doubleValue:10.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v23];

        v9 = 3;
        goto LABEL_22;
      }

      if (type == 31)
      {
        v6 = MEMORY[0x277CCD7E8];
        v7 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v8 = [v6 quantityWithUnit:v7 doubleValue:2.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v8];

        v9 = 8;
        goto LABEL_22;
      }
    }

LABEL_21:
    [(HDFakeDataCollectorConfiguration *)v4 setSpeed:0];
    v9 = 4;
    goto LABEL_22;
  }

  if (type > 51)
  {
    if (type == 52)
    {
      v30 = MEMORY[0x277CCD7E8];
      v31 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      v32 = [v30 quantityWithUnit:v31 doubleValue:1.7];
      [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v32];

      v9 = 1;
      goto LABEL_22;
    }

    if (type == 60)
    {
      v18 = MEMORY[0x277CCD7E8];
      v19 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      v20 = [v18 quantityWithUnit:v19 doubleValue:2.0];
      [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v20];

      v9 = 11;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (type == 39)
  {
    v24 = MEMORY[0x277CCD7E8];
    v25 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v26 = [v24 quantityWithUnit:v25 doubleValue:4.0];
    [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v26];

    v9 = 9;
    goto LABEL_22;
  }

  if (type != 46)
  {
    goto LABEL_21;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (!isAppleWatch)
  {
    goto LABEL_23;
  }

  v12 = MEMORY[0x277CCD7E8];
  v13 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
  v14 = [v12 quantityWithUnit:v13 doubleValue:1.5];
  [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v14];

  v9 = 6;
LABEL_22:
  [(HDFakeDataCollectorConfiguration *)v5 setActivityType:v9];
LABEL_23:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_speed == equalCopy[2] && self->_activityType == equalCopy[1];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  [(HDFakeDataCollectorConfiguration *)v4 setSpeed:self->_speed];
  [(HDFakeDataCollectorConfiguration *)v4 setActivityType:self->_activityType];
  return v4;
}

@end