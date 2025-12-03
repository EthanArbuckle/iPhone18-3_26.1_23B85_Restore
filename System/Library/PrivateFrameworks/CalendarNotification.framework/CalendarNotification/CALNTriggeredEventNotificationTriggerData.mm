@interface CALNTriggeredEventNotificationTriggerData
- (CALNTriggeredEventNotificationTriggerData)initWithTrigger:(unint64_t)trigger alarmID:(id)d isOffsetFromTravelTimeStart:(BOOL)start hypothesis:(id)hypothesis;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationTriggerData

- (CALNTriggeredEventNotificationTriggerData)initWithTrigger:(unint64_t)trigger alarmID:(id)d isOffsetFromTravelTimeStart:(BOOL)start hypothesis:(id)hypothesis
{
  dCopy = d;
  hypothesisCopy = hypothesis;
  v17.receiver = self;
  v17.super_class = CALNTriggeredEventNotificationTriggerData;
  v12 = [(CALNTriggeredEventNotificationTriggerData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_trigger = trigger;
    v14 = [dCopy copy];
    alarmID = v13->_alarmID;
    v13->_alarmID = v14;

    v13->_isOffsetFromTravelTimeStart = start;
    objc_storeStrong(&v13->_hypothesis, hypothesis);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CALNTriggeredEventNotificationTriggerData trigger](self, "trigger")}];
  alarmID = [(CALNTriggeredEventNotificationTriggerData *)self alarmID];
  if ([(CALNTriggeredEventNotificationTriggerData *)self isOffsetFromTravelTimeStart])
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  hypothesis = [(CALNTriggeredEventNotificationTriggerData *)self hypothesis];
  v9 = [v3 stringWithFormat:@"<%@: %p>(trigger = %@, alarmID = %@, isOffsetFromTravelTimeStart = %@, hypothesis = %@)", v4, self, v5, alarmID, v7, hypothesis];

  return v9;
}

@end