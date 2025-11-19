@interface CALNMutableTriggeredEventNotificationData
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlarmID:(id)a3;
- (void)setLastFireTimeOfAlertOffsetFromTravelTime:(id)a3;
- (void)setLastTimeNotificationAdded:(id)a3;
@end

@implementation CALNMutableTriggeredEventNotificationData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CALNTriggeredEventNotificationData alloc];
  v5 = [(CALNTriggeredEventNotificationData *)self alarmID];
  v6 = [(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart];
  v7 = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  v8 = [(CALNTriggeredEventNotificationData *)self hypothesis];
  v9 = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveByMessage];
  v10 = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveNowMessage];
  v11 = [(CALNTriggeredEventNotificationData *)self hasDisplayedRunningLateMessage];
  v12 = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  LOBYTE(v15) = v11;
  v13 = [(CALNTriggeredEventNotificationData *)v4 _initWithAlarmID:v5 isOffsetFromTravelTimeStart:v6 lastFireTimeOfAlertOffsetFromTravelTime:v7 hypothesis:v8 hasDisplayedLeaveByMessage:v9 hasDisplayedLeaveNowMessage:v10 hasDisplayedRunningLateMessage:v15 lastTimeNotificationAdded:v12];

  return v13;
}

- (void)setAlarmID:(id)a3
{
  v4 = [a3 copy];
  alarmID = self->super._alarmID;
  self->super._alarmID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastFireTimeOfAlertOffsetFromTravelTime:(id)a3
{
  v4 = [a3 copy];
  lastFireTimeOfAlertOffsetFromTravelTime = self->super._lastFireTimeOfAlertOffsetFromTravelTime;
  self->super._lastFireTimeOfAlertOffsetFromTravelTime = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastTimeNotificationAdded:(id)a3
{
  v4 = [a3 copy];
  lastTimeNotificationAdded = self->super._lastTimeNotificationAdded;
  self->super._lastTimeNotificationAdded = v4;

  MEMORY[0x2821F96F8]();
}

@end