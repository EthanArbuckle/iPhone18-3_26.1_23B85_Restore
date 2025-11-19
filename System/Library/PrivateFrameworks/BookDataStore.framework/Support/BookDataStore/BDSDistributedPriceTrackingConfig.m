@interface BDSDistributedPriceTrackingConfig
+ (BDSDistributedPriceTrackingConfig)disabledConfig;
- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)a3;
- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)a3 updateScheduleSteps:(id)a4 dealAbsoluteThreshold:(id)a5 dealRelativeThreshold:(id)a6 notification:(id)a7 cardLimit:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSDistributedPriceTrackingConfig

+ (BDSDistributedPriceTrackingConfig)disabledConfig
{
  v2 = [[a1 alloc] initWithItemIDs:&__NSArray0__struct updateScheduleSteps:&__NSArray0__struct dealAbsoluteThreshold:&off_100250F18 dealRelativeThreshold:&off_100250F18 notification:0 cardLimit:&off_100250F18];

  return v2;
}

- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)a3 updateScheduleSteps:(id)a4 dealAbsoluteThreshold:(id)a5 dealRelativeThreshold:(id)a6 notification:(id)a7 cardLimit:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v37.receiver = self;
  v37.super_class = BDSDistributedPriceTrackingConfig;
  v20 = [(BDSDistributedPriceTrackingConfig *)&v37 init];
  if (v20)
  {
    v21 = [v14 copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &__NSArray0__struct;
    }

    objc_storeStrong(&v20->_itemIDs, v23);

    v24 = [v15 copy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    objc_storeStrong(&v20->_updateScheduleSteps, v26);

    v27 = [v16 copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &off_100250F18;
    }

    objc_storeStrong(&v20->_dealAbsoluteThreshold, v29);

    v30 = [v17 copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &off_100250F18;
    }

    objc_storeStrong(&v20->_dealRelativeThreshold, v32);

    objc_storeStrong(&v20->_notification, a7);
    v33 = [v19 copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &off_100250F18;
    }

    objc_storeStrong(&v20->_cardLimit, v35);
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSDistributedPriceTrackingConfig *)self itemIDs];
  [v4 encodeObject:v5 forKey:@"itemIDs"];

  v6 = [(BDSDistributedPriceTrackingConfig *)self updateScheduleSteps];
  [v4 encodeObject:v6 forKey:@"updateScheduleSteps"];

  v7 = [(BDSDistributedPriceTrackingConfig *)self dealAbsoluteThreshold];
  [v4 encodeObject:v7 forKey:@"dealAbsoluteThreshold"];

  v8 = [(BDSDistributedPriceTrackingConfig *)self dealRelativeThreshold];
  [v4 encodeObject:v8 forKey:@"dealRelativeThreshold"];

  v9 = [(BDSDistributedPriceTrackingConfig *)self notification];
  [v4 encodeObject:v9 forKey:@"notification"];

  v10 = [(BDSDistributedPriceTrackingConfig *)self cardLimit];
  [v4 encodeObject:v10 forKey:@"cardLimit"];
}

- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 bds_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemIDs"];
  v6 = [v4 bds_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"updateScheduleSteps"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dealAbsoluteThreshold"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dealRelativeThreshold"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardLimit"];

  v11 = [(BDSDistributedPriceTrackingConfig *)self initWithItemIDs:v5 updateScheduleSteps:v6 dealAbsoluteThreshold:v7 dealRelativeThreshold:v8 notification:v9 cardLimit:v10];
  return v11;
}

@end