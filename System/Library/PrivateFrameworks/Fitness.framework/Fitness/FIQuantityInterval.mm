@interface FIQuantityInterval
- (FIQuantityInterval)initWithIntervalDefinition:(id)definition activityType:(unint64_t)type startDate:(id)date;
@end

@implementation FIQuantityInterval

- (FIQuantityInterval)initWithIntervalDefinition:(id)definition activityType:(unint64_t)type startDate:(id)date
{
  definitionCopy = definition;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = FIQuantityInterval;
  v11 = [(FIQuantityInterval *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_definition, definition);
    objc_storeStrong(&v12->_startDate, date);
    if (type == 13)
    {
      v13 = MEMORY[0x277CCCB10];
    }

    else
    {
      v13 = MEMORY[0x277CCCB40];
    }

    if (type == 46)
    {
      v13 = MEMORY[0x277CCCB38];
    }

    v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*v13];
    trackedQuantityType = v12->_trackedQuantityType;
    v12->_trackedQuantityType = v14;
  }

  return v12;
}

@end