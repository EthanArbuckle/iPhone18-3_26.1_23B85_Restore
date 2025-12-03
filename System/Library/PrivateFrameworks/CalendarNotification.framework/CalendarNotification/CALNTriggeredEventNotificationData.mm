@interface CALNTriggeredEventNotificationData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNotificationData:(id)data;
- (CALNTriggeredEventNotificationData)initWithCoder:(id)coder;
- (id)_initWithAlarmID:(id)d isOffsetFromTravelTimeStart:(BOOL)start lastFireTimeOfAlertOffsetFromTravelTime:(id)time hypothesis:(id)hypothesis hasDisplayedLeaveByMessage:(BOOL)message hasDisplayedLeaveNowMessage:(BOOL)nowMessage hasDisplayedRunningLateMessage:(BOOL)lateMessage lastTimeNotificationAdded:(id)self0;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNTriggeredEventNotificationData

- (id)_initWithAlarmID:(id)d isOffsetFromTravelTimeStart:(BOOL)start lastFireTimeOfAlertOffsetFromTravelTime:(id)time hypothesis:(id)hypothesis hasDisplayedLeaveByMessage:(BOOL)message hasDisplayedLeaveNowMessage:(BOOL)nowMessage hasDisplayedRunningLateMessage:(BOOL)lateMessage lastTimeNotificationAdded:(id)self0
{
  dCopy = d;
  timeCopy = time;
  hypothesisCopy = hypothesis;
  addedCopy = added;
  v30.receiver = self;
  v30.super_class = CALNTriggeredEventNotificationData;
  v20 = [(CALNTriggeredEventNotificationData *)&v30 init];
  if (v20)
  {
    v21 = [dCopy copy];
    alarmID = v20->_alarmID;
    v20->_alarmID = v21;

    v20->_isOffsetFromTravelTimeStart = start;
    v23 = [timeCopy copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v20->_lastFireTimeOfAlertOffsetFromTravelTime;
    v20->_lastFireTimeOfAlertOffsetFromTravelTime = v23;

    v25 = [hypothesisCopy copy];
    hypothesis = v20->_hypothesis;
    v20->_hypothesis = v25;

    v20->_hasDisplayedLeaveByMessage = message;
    v20->_hasDisplayedLeaveNowMessage = nowMessage;
    v20->_hasDisplayedRunningLateMessage = lateMessage;
    v27 = [addedCopy copy];
    lastTimeNotificationAdded = v20->_lastTimeNotificationAdded;
    v20->_lastTimeNotificationAdded = v27;
  }

  return v20;
}

- (CALNTriggeredEventNotificationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmID"];
  v6 = [coderCopy decodeBoolForKey:@"isOffsetFromTravelTimeStart"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hypothesis"];
  v9 = [coderCopy decodeBoolForKey:@"hasDisplayedLeaveByMessage"];
  v10 = [coderCopy decodeBoolForKey:@"hasDisplayedLeaveNowMessage"];
  v11 = [coderCopy decodeBoolForKey:@"hasDisplayedRunningLateMessage"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastTimeNotificationAdded"];

  LOBYTE(v15) = v11;
  v13 = [(CALNTriggeredEventNotificationData *)self _initWithAlarmID:v5 isOffsetFromTravelTimeStart:v6 lastFireTimeOfAlertOffsetFromTravelTime:v7 hypothesis:v8 hasDisplayedLeaveByMessage:v9 hasDisplayedLeaveNowMessage:v10 hasDisplayedRunningLateMessage:v15 lastTimeNotificationAdded:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alarmID = [(CALNTriggeredEventNotificationData *)self alarmID];
  [coderCopy encodeObject:alarmID forKey:@"alarmID"];

  [coderCopy encodeBool:-[CALNTriggeredEventNotificationData isOffsetFromTravelTimeStart](self forKey:{"isOffsetFromTravelTimeStart"), @"isOffsetFromTravelTimeStart"}];
  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  [coderCopy encodeObject:lastFireTimeOfAlertOffsetFromTravelTime forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];

  hypothesis = [(CALNTriggeredEventNotificationData *)self hypothesis];
  [coderCopy encodeObject:hypothesis forKey:@"hypothesis"];

  [coderCopy encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedLeaveByMessage](self forKey:{"hasDisplayedLeaveByMessage"), @"hasDisplayedLeaveByMessage"}];
  [coderCopy encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedLeaveNowMessage](self forKey:{"hasDisplayedLeaveNowMessage"), @"hasDisplayedLeaveNowMessage"}];
  [coderCopy encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedRunningLateMessage](self forKey:{"hasDisplayedRunningLateMessage"), @"hasDisplayedRunningLateMessage"}];
  lastTimeNotificationAdded = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  [coderCopy encodeObject:lastTimeNotificationAdded forKey:@"lastTimeNotificationAdded"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CALNMutableTriggeredEventNotificationData alloc];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNTriggeredEventNotificationData *)self isEqualToNotificationData:equalCopy];

  return v5;
}

- (BOOL)isEqualToNotificationData:(id)data
{
  dataCopy = data;
  alarmID = [(CALNTriggeredEventNotificationData *)self alarmID];
  alarmID2 = [dataCopy alarmID];
  v7 = CalEqualStrings();

  if (!v7)
  {
    goto LABEL_8;
  }

  isOffsetFromTravelTimeStart = [(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart];
  if (isOffsetFromTravelTimeStart != [dataCopy isOffsetFromTravelTimeStart])
  {
    goto LABEL_8;
  }

  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  lastFireTimeOfAlertOffsetFromTravelTime2 = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];
  v11 = CalEqualObjects();

  if (!v11)
  {
    goto LABEL_8;
  }

  hypothesis = [(CALNTriggeredEventNotificationData *)self hypothesis];
  hypothesis2 = [dataCopy hypothesis];
  v14 = CalEqualObjects();

  if (!v14)
  {
    goto LABEL_8;
  }

  hasDisplayedLeaveByMessage = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveByMessage];
  if (hasDisplayedLeaveByMessage == [dataCopy hasDisplayedLeaveByMessage] && (v16 = -[CALNTriggeredEventNotificationData hasDisplayedLeaveNowMessage](self, "hasDisplayedLeaveNowMessage"), v16 == objc_msgSend(dataCopy, "hasDisplayedLeaveNowMessage")) && (v17 = -[CALNTriggeredEventNotificationData hasDisplayedRunningLateMessage](self, "hasDisplayedRunningLateMessage"), v17 == objc_msgSend(dataCopy, "hasDisplayedRunningLateMessage")))
  {
    lastTimeNotificationAdded = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
    lastTimeNotificationAdded2 = [dataCopy lastTimeNotificationAdded];
    v18 = CalEqualObjects();
  }

  else
  {
LABEL_8:
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  alarmID = [(CALNTriggeredEventNotificationData *)self alarmID];
  v5 = @"YES";
  if ([(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  hypothesis = [(CALNTriggeredEventNotificationData *)self hypothesis];
  if ([(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveByMessage])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveNowMessage])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (![(CALNTriggeredEventNotificationData *)self hasDisplayedRunningLateMessage])
  {
    v5 = @"NO";
  }

  lastTimeNotificationAdded = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  v12 = [v14 stringWithFormat:@"<%@: %p>(alarmID = %@, isOffsetFromTravelTimeStart = %@, lastFireTimeOfAlertOffsetFromTravelTime = %@, hypothesis = %@, hasDisplayedLeaveByMessage = %@, hasDisplayedLeaveNowMessage = %@, hasDisplayedRunningLateMessage = %@, lastTimeNotificationAdded = %@)", v3, self, alarmID, v6, lastFireTimeOfAlertOffsetFromTravelTime, hypothesis, v9, v10, v5, lastTimeNotificationAdded];

  return v12;
}

@end