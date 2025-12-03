@interface CALNMutableTriggeredEventNotificationData
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlarmID:(id)d;
- (void)setLastFireTimeOfAlertOffsetFromTravelTime:(id)time;
- (void)setLastTimeNotificationAdded:(id)added;
@end

@implementation CALNMutableTriggeredEventNotificationData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CALNTriggeredEventNotificationData alloc];
  alarmID = [(CALNTriggeredEventNotificationData *)self alarmID];
  isOffsetFromTravelTimeStart = [(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart];
  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  hypothesis = [(CALNTriggeredEventNotificationData *)self hypothesis];
  hasDisplayedLeaveByMessage = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveByMessage];
  hasDisplayedLeaveNowMessage = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveNowMessage];
  hasDisplayedRunningLateMessage = [(CALNTriggeredEventNotificationData *)self hasDisplayedRunningLateMessage];
  lastTimeNotificationAdded = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  LOBYTE(v15) = hasDisplayedRunningLateMessage;
  v13 = [(CALNTriggeredEventNotificationData *)v4 _initWithAlarmID:alarmID isOffsetFromTravelTimeStart:isOffsetFromTravelTimeStart lastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime hypothesis:hypothesis hasDisplayedLeaveByMessage:hasDisplayedLeaveByMessage hasDisplayedLeaveNowMessage:hasDisplayedLeaveNowMessage hasDisplayedRunningLateMessage:v15 lastTimeNotificationAdded:lastTimeNotificationAdded];

  return v13;
}

- (void)setAlarmID:(id)d
{
  v4 = [d copy];
  alarmID = self->super._alarmID;
  self->super._alarmID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastFireTimeOfAlertOffsetFromTravelTime:(id)time
{
  v4 = [time copy];
  lastFireTimeOfAlertOffsetFromTravelTime = self->super._lastFireTimeOfAlertOffsetFromTravelTime;
  self->super._lastFireTimeOfAlertOffsetFromTravelTime = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setLastTimeNotificationAdded:(id)added
{
  v4 = [added copy];
  lastTimeNotificationAdded = self->super._lastTimeNotificationAdded;
  self->super._lastTimeNotificationAdded = v4;

  MEMORY[0x2821F96F8]();
}

@end