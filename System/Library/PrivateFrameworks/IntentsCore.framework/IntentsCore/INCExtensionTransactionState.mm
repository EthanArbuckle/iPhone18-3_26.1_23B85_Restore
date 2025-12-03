@interface INCExtensionTransactionState
- (INCExtensionTransactionState)initWithType:(int64_t)type intent:(id)intent intentResponse:(id)response userActivities:(id)activities;
- (id)description;
@end

@implementation INCExtensionTransactionState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = INCExtensionTransactionState;
  v4 = [(INCExtensionTransactionState *)&v16 description];
  type = self->_type;
  if (type > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2797E7798[type];
  }

  v7 = v6;
  intent = self->_intent;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  intentResponse = self->_intentResponse;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v3 stringWithFormat:@"%@ {type = %ld (%@), intent = %@, intentResponse = %@, userActivities = %@}", v4, type, v7, v10, v13, self->_userActivities];

  return v14;
}

- (INCExtensionTransactionState)initWithType:(int64_t)type intent:(id)intent intentResponse:(id)response userActivities:(id)activities
{
  intentCopy = intent;
  responseCopy = response;
  activitiesCopy = activities;
  v17.receiver = self;
  v17.super_class = INCExtensionTransactionState;
  v14 = [(INCExtensionTransactionState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_intent, intent);
    objc_storeStrong(&v15->_intentResponse, response);
    objc_storeStrong(&v15->_userActivities, activities);
  }

  return v15;
}

@end