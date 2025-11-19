@interface FIQuantityInterval
- (FIQuantityInterval)initWithIntervalDefinition:(id)a3 activityType:(unint64_t)a4 startDate:(id)a5;
@end

@implementation FIQuantityInterval

- (FIQuantityInterval)initWithIntervalDefinition:(id)a3 activityType:(unint64_t)a4 startDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = FIQuantityInterval;
  v11 = [(FIQuantityInterval *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_definition, a3);
    objc_storeStrong(&v12->_startDate, a5);
    if (a4 == 13)
    {
      v13 = MEMORY[0x277CCCB10];
    }

    else
    {
      v13 = MEMORY[0x277CCCB40];
    }

    if (a4 == 46)
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