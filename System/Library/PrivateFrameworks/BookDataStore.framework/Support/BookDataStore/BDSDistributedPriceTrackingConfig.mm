@interface BDSDistributedPriceTrackingConfig
+ (BDSDistributedPriceTrackingConfig)disabledConfig;
- (BDSDistributedPriceTrackingConfig)initWithCoder:(id)coder;
- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)ds updateScheduleSteps:(id)steps dealAbsoluteThreshold:(id)threshold dealRelativeThreshold:(id)relativeThreshold notification:(id)notification cardLimit:(id)limit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSDistributedPriceTrackingConfig

+ (BDSDistributedPriceTrackingConfig)disabledConfig
{
  v2 = [[self alloc] initWithItemIDs:&__NSArray0__struct updateScheduleSteps:&__NSArray0__struct dealAbsoluteThreshold:&off_100250F18 dealRelativeThreshold:&off_100250F18 notification:0 cardLimit:&off_100250F18];

  return v2;
}

- (BDSDistributedPriceTrackingConfig)initWithItemIDs:(id)ds updateScheduleSteps:(id)steps dealAbsoluteThreshold:(id)threshold dealRelativeThreshold:(id)relativeThreshold notification:(id)notification cardLimit:(id)limit
{
  dsCopy = ds;
  stepsCopy = steps;
  thresholdCopy = threshold;
  relativeThresholdCopy = relativeThreshold;
  notificationCopy = notification;
  limitCopy = limit;
  v37.receiver = self;
  v37.super_class = BDSDistributedPriceTrackingConfig;
  v20 = [(BDSDistributedPriceTrackingConfig *)&v37 init];
  if (v20)
  {
    v21 = [dsCopy copy];
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

    v24 = [stepsCopy copy];
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

    v27 = [thresholdCopy copy];
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

    v30 = [relativeThresholdCopy copy];
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

    objc_storeStrong(&v20->_notification, notification);
    v33 = [limitCopy copy];
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