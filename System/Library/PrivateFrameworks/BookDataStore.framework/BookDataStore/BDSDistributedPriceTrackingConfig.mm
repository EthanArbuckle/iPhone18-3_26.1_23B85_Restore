@interface BDSDistributedPriceTrackingConfig
+ (BDSDistributedPriceTrackingConfig)disabledConfig;
- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)a3;
- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)a3 updateScheduleSteps:(id)a4 dealAbsoluteThreshold:(id)a5 dealRelativeThreshold:(id)a6 notification:(id)a7 cardLimit:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSDistributedPriceTrackingConfig

+ (BDSDistributedPriceTrackingConfig)disabledConfig
{
  v2 = [a1 alloc];
  v3 = [v2 initWithItemIDs:MEMORY[0x1E695E0F0] updateScheduleSteps:MEMORY[0x1E695E0F0] dealAbsoluteThreshold:&unk_1F5E78F80 dealRelativeThreshold:&unk_1F5E78F80 notification:0 cardLimit:&unk_1F5E78F80];

  return v3;
}

- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)a3 updateScheduleSteps:(id)a4 dealAbsoluteThreshold:(id)a5 dealRelativeThreshold:(id)a6 notification:(id)a7 cardLimit:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v38.receiver = self;
  v38.super_class = BDSDistributedPriceTrackingConfig;
  v20 = [(BDSDistributedPriceTrackingConfig *)&v38 init];
  if (v20)
  {
    v21 = [v14 copy];
    v22 = v21;
    v23 = MEMORY[0x1E695E0F0];
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v20->_itemIDs, v24);

    v25 = [v15 copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    objc_storeStrong(&v20->_updateScheduleSteps, v27);

    v28 = [v16 copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &unk_1F5E78F80;
    }

    objc_storeStrong(&v20->_dealAbsoluteThreshold, v30);

    v31 = [v17 copy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &unk_1F5E78F80;
    }

    objc_storeStrong(&v20->_dealRelativeThreshold, v33);

    objc_storeStrong(&v20->_notification, a7);
    v34 = [v19 copy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = &unk_1F5E78F80;
    }

    objc_storeStrong(&v20->_cardLimit, v36);
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