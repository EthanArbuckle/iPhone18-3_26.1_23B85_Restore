@interface CALNTriggeredEventNotificationData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNotificationData:(id)a3;
- (CALNTriggeredEventNotificationData)initWithCoder:(id)a3;
- (id)_initWithAlarmID:(id)a3 isOffsetFromTravelTimeStart:(BOOL)a4 lastFireTimeOfAlertOffsetFromTravelTime:(id)a5 hypothesis:(id)a6 hasDisplayedLeaveByMessage:(BOOL)a7 hasDisplayedLeaveNowMessage:(BOOL)a8 hasDisplayedRunningLateMessage:(BOOL)a9 lastTimeNotificationAdded:(id)a10;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNTriggeredEventNotificationData

- (id)_initWithAlarmID:(id)a3 isOffsetFromTravelTimeStart:(BOOL)a4 lastFireTimeOfAlertOffsetFromTravelTime:(id)a5 hypothesis:(id)a6 hasDisplayedLeaveByMessage:(BOOL)a7 hasDisplayedLeaveNowMessage:(BOOL)a8 hasDisplayedRunningLateMessage:(BOOL)a9 lastTimeNotificationAdded:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = CALNTriggeredEventNotificationData;
  v20 = [(CALNTriggeredEventNotificationData *)&v30 init];
  if (v20)
  {
    v21 = [v16 copy];
    alarmID = v20->_alarmID;
    v20->_alarmID = v21;

    v20->_isOffsetFromTravelTimeStart = a4;
    v23 = [v17 copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v20->_lastFireTimeOfAlertOffsetFromTravelTime;
    v20->_lastFireTimeOfAlertOffsetFromTravelTime = v23;

    v25 = [v18 copy];
    hypothesis = v20->_hypothesis;
    v20->_hypothesis = v25;

    v20->_hasDisplayedLeaveByMessage = a7;
    v20->_hasDisplayedLeaveNowMessage = a8;
    v20->_hasDisplayedRunningLateMessage = a9;
    v27 = [v19 copy];
    lastTimeNotificationAdded = v20->_lastTimeNotificationAdded;
    v20->_lastTimeNotificationAdded = v27;
  }

  return v20;
}

- (CALNTriggeredEventNotificationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alarmID"];
  v6 = [v4 decodeBoolForKey:@"isOffsetFromTravelTimeStart"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hypothesis"];
  v9 = [v4 decodeBoolForKey:@"hasDisplayedLeaveByMessage"];
  v10 = [v4 decodeBoolForKey:@"hasDisplayedLeaveNowMessage"];
  v11 = [v4 decodeBoolForKey:@"hasDisplayedRunningLateMessage"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastTimeNotificationAdded"];

  LOBYTE(v15) = v11;
  v13 = [(CALNTriggeredEventNotificationData *)self _initWithAlarmID:v5 isOffsetFromTravelTimeStart:v6 lastFireTimeOfAlertOffsetFromTravelTime:v7 hypothesis:v8 hasDisplayedLeaveByMessage:v9 hasDisplayedLeaveNowMessage:v10 hasDisplayedRunningLateMessage:v15 lastTimeNotificationAdded:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationData *)self alarmID];
  [v4 encodeObject:v5 forKey:@"alarmID"];

  [v4 encodeBool:-[CALNTriggeredEventNotificationData isOffsetFromTravelTimeStart](self forKey:{"isOffsetFromTravelTimeStart"), @"isOffsetFromTravelTimeStart"}];
  v6 = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  [v4 encodeObject:v6 forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];

  v7 = [(CALNTriggeredEventNotificationData *)self hypothesis];
  [v4 encodeObject:v7 forKey:@"hypothesis"];

  [v4 encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedLeaveByMessage](self forKey:{"hasDisplayedLeaveByMessage"), @"hasDisplayedLeaveByMessage"}];
  [v4 encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedLeaveNowMessage](self forKey:{"hasDisplayedLeaveNowMessage"), @"hasDisplayedLeaveNowMessage"}];
  [v4 encodeBool:-[CALNTriggeredEventNotificationData hasDisplayedRunningLateMessage](self forKey:{"hasDisplayedRunningLateMessage"), @"hasDisplayedRunningLateMessage"}];
  v8 = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  [v4 encodeObject:v8 forKey:@"lastTimeNotificationAdded"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CALNMutableTriggeredEventNotificationData alloc];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNTriggeredEventNotificationData *)self isEqualToNotificationData:v4];

  return v5;
}

- (BOOL)isEqualToNotificationData:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationData *)self alarmID];
  v6 = [v4 alarmID];
  v7 = CalEqualStrings();

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart];
  if (v8 != [v4 isOffsetFromTravelTimeStart])
  {
    goto LABEL_8;
  }

  v9 = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  v10 = [v4 lastFireTimeOfAlertOffsetFromTravelTime];
  v11 = CalEqualObjects();

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [(CALNTriggeredEventNotificationData *)self hypothesis];
  v13 = [v4 hypothesis];
  v14 = CalEqualObjects();

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [(CALNTriggeredEventNotificationData *)self hasDisplayedLeaveByMessage];
  if (v15 == [v4 hasDisplayedLeaveByMessage] && (v16 = -[CALNTriggeredEventNotificationData hasDisplayedLeaveNowMessage](self, "hasDisplayedLeaveNowMessage"), v16 == objc_msgSend(v4, "hasDisplayedLeaveNowMessage")) && (v17 = -[CALNTriggeredEventNotificationData hasDisplayedRunningLateMessage](self, "hasDisplayedRunningLateMessage"), v17 == objc_msgSend(v4, "hasDisplayedRunningLateMessage")))
  {
    v20 = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
    v21 = [v4 lastTimeNotificationAdded];
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
  v4 = [(CALNTriggeredEventNotificationData *)self alarmID];
  v5 = @"YES";
  if ([(CALNTriggeredEventNotificationData *)self isOffsetFromTravelTimeStart])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(CALNTriggeredEventNotificationData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  v8 = [(CALNTriggeredEventNotificationData *)self hypothesis];
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

  v11 = [(CALNTriggeredEventNotificationData *)self lastTimeNotificationAdded];
  v12 = [v14 stringWithFormat:@"<%@: %p>(alarmID = %@, isOffsetFromTravelTimeStart = %@, lastFireTimeOfAlertOffsetFromTravelTime = %@, hypothesis = %@, hasDisplayedLeaveByMessage = %@, hasDisplayedLeaveNowMessage = %@, hasDisplayedRunningLateMessage = %@, lastTimeNotificationAdded = %@)", v3, self, v4, v6, v7, v8, v9, v10, v5, v11];

  return v12;
}

@end