@interface HDFakeDataCollectorConfiguration
+ (id)configurationForWorkoutActivityType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDFakeDataCollectorConfiguration

+ (id)configurationForWorkoutActivityType:(unint64_t)a3
{
  v4 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  v5 = v4;
  if (a3 <= 38)
  {
    if (a3 > 34)
    {
      if (a3 == 35)
      {
        v27 = MEMORY[0x277CCD7E8];
        v28 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v29 = [v27 quantityWithUnit:v28 doubleValue:4.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v29];

        v9 = 10;
        goto LABEL_22;
      }

      if (a3 == 37)
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
      if (a3 == 13)
      {
        v21 = MEMORY[0x277CCD7E8];
        v22 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
        v23 = [v21 quantityWithUnit:v22 doubleValue:10.0];
        [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v23];

        v9 = 3;
        goto LABEL_22;
      }

      if (a3 == 31)
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

  if (a3 > 51)
  {
    if (a3 == 52)
    {
      v30 = MEMORY[0x277CCD7E8];
      v31 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      v32 = [v30 quantityWithUnit:v31 doubleValue:1.7];
      [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v32];

      v9 = 1;
      goto LABEL_22;
    }

    if (a3 == 60)
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

  if (a3 == 39)
  {
    v24 = MEMORY[0x277CCD7E8];
    v25 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v26 = [v24 quantityWithUnit:v25 doubleValue:4.0];
    [(HDFakeDataCollectorConfiguration *)v5 setSpeed:v26];

    v9 = 9;
    goto LABEL_22;
  }

  if (a3 != 46)
  {
    goto LABEL_21;
  }

  v10 = [MEMORY[0x277CCDD30] sharedBehavior];
  v11 = [v10 isAppleWatch];

  if (!v11)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_speed == v4[2] && self->_activityType == v4[1];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  [(HDFakeDataCollectorConfiguration *)v4 setSpeed:self->_speed];
  [(HDFakeDataCollectorConfiguration *)v4 setActivityType:self->_activityType];
  return v4;
}

@end