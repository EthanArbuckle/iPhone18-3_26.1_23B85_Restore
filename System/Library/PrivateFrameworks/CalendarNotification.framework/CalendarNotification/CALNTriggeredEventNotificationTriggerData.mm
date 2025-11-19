@interface CALNTriggeredEventNotificationTriggerData
- (CALNTriggeredEventNotificationTriggerData)initWithTrigger:(unint64_t)a3 alarmID:(id)a4 isOffsetFromTravelTimeStart:(BOOL)a5 hypothesis:(id)a6;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationTriggerData

- (CALNTriggeredEventNotificationTriggerData)initWithTrigger:(unint64_t)a3 alarmID:(id)a4 isOffsetFromTravelTimeStart:(BOOL)a5 hypothesis:(id)a6
{
  v10 = a4;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = CALNTriggeredEventNotificationTriggerData;
  v12 = [(CALNTriggeredEventNotificationTriggerData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_trigger = a3;
    v14 = [v10 copy];
    alarmID = v13->_alarmID;
    v13->_alarmID = v14;

    v13->_isOffsetFromTravelTimeStart = a5;
    objc_storeStrong(&v13->_hypothesis, a6);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CALNTriggeredEventNotificationTriggerData trigger](self, "trigger")}];
  v6 = [(CALNTriggeredEventNotificationTriggerData *)self alarmID];
  if ([(CALNTriggeredEventNotificationTriggerData *)self isOffsetFromTravelTimeStart])
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v8 = [(CALNTriggeredEventNotificationTriggerData *)self hypothesis];
  v9 = [v3 stringWithFormat:@"<%@: %p>(trigger = %@, alarmID = %@, isOffsetFromTravelTimeStart = %@, hypothesis = %@)", v4, self, v5, v6, v7, v8];

  return v9;
}

@end