@interface BDSDistributedPriceTrackingConfig
+ (BDSDistributedPriceTrackingConfig)disabledConfig;
- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)coder;
- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)ds updateScheduleSteps:(id)steps dealAbsoluteThreshold:(id)threshold dealRelativeThreshold:(id)relativeThreshold notification:(id)notification cardLimit:(id)limit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSDistributedPriceTrackingConfig

+ (BDSDistributedPriceTrackingConfig)disabledConfig
{
  v2 = [self alloc];
  v3 = [v2 initWithItemIDs:MEMORY[0x1E695E0F0] updateScheduleSteps:MEMORY[0x1E695E0F0] dealAbsoluteThreshold:&unk_1F5E78F80 dealRelativeThreshold:&unk_1F5E78F80 notification:0 cardLimit:&unk_1F5E78F80];

  return v3;
}

- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)ds updateScheduleSteps:(id)steps dealAbsoluteThreshold:(id)threshold dealRelativeThreshold:(id)relativeThreshold notification:(id)notification cardLimit:(id)limit
{
  dsCopy = ds;
  stepsCopy = steps;
  thresholdCopy = threshold;
  relativeThresholdCopy = relativeThreshold;
  notificationCopy = notification;
  limitCopy = limit;
  v38.receiver = self;
  v38.super_class = BDSDistributedPriceTrackingConfig;
  v20 = [(BDSDistributedPriceTrackingConfig *)&v38 init];
  if (v20)
  {
    v21 = [dsCopy copy];
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

    v25 = [stepsCopy copy];
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

    v28 = [thresholdCopy copy];
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

    v31 = [relativeThresholdCopy copy];
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

    objc_storeStrong(&v20->_notification, notification);
    v34 = [limitCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemIDs = [(BDSDistributedPriceTrackingConfig *)self itemIDs];
  [coderCopy encodeObject:itemIDs forKey:@"itemIDs"];

  updateScheduleSteps = [(BDSDistributedPriceTrackingConfig *)self updateScheduleSteps];
  [coderCopy encodeObject:updateScheduleSteps forKey:@"updateScheduleSteps"];

  dealAbsoluteThreshold = [(BDSDistributedPriceTrackingConfig *)self dealAbsoluteThreshold];
  [coderCopy encodeObject:dealAbsoluteThreshold forKey:@"dealAbsoluteThreshold"];

  dealRelativeThreshold = [(BDSDistributedPriceTrackingConfig *)self dealRelativeThreshold];
  [coderCopy encodeObject:dealRelativeThreshold forKey:@"dealRelativeThreshold"];

  notification = [(BDSDistributedPriceTrackingConfig *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];

  cardLimit = [(BDSDistributedPriceTrackingConfig *)self cardLimit];
  [coderCopy encodeObject:cardLimit forKey:@"cardLimit"];
}

- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy bds_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemIDs"];
  v6 = [coderCopy bds_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"updateScheduleSteps"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dealAbsoluteThreshold"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dealRelativeThreshold"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardLimit"];

  v11 = [(BDSDistributedPriceTrackingConfig *)self initWithItemIDs:v5 updateScheduleSteps:v6 dealAbsoluteThreshold:v7 dealRelativeThreshold:v8 notification:v9 cardLimit:v10];
  return v11;
}

@end