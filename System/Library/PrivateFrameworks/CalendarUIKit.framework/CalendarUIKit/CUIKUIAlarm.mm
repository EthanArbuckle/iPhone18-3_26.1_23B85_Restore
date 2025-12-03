@interface CUIKUIAlarm
- (BOOL)isEqualToUIAlarm:(id)alarm;
- (CUIKUIAlarm)initWithAlarm:(id)alarm;
- (id)description;
- (id)initDefaultAlarm;
- (id)initLeaveNowAlarm;
- (id)localizedDescriptionAllDay:(BOOL)day;
@end

@implementation CUIKUIAlarm

- (CUIKUIAlarm)initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v9.receiver = self;
  v9.super_class = CUIKUIAlarm;
  v6 = [(CUIKUIAlarm *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLeaveNowAlarm = 0;
    v6->_isDefaultAlarm = [alarmCopy isDefaultAlarm];
    objc_storeStrong(&v7->_alarm, alarm);
  }

  return v7;
}

- (id)initDefaultAlarm
{
  v6.receiver = self;
  v6.super_class = CUIKUIAlarm;
  v2 = [(CUIKUIAlarm *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isLeaveNowAlarm = 256;
    alarm = v2->_alarm;
    v2->_alarm = 0;
  }

  return v3;
}

- (id)initLeaveNowAlarm
{
  v6.receiver = self;
  v6.super_class = CUIKUIAlarm;
  v2 = [(CUIKUIAlarm *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isLeaveNowAlarm = 1;
    alarm = v2->_alarm;
    v2->_alarm = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v8.receiver = self;
  v8.super_class = CUIKUIAlarm;
  v4 = [(CUIKUIAlarm *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"_isLeaveNowAlarm" withBoolean:self->_isLeaveNowAlarm];
  [v5 setKey:@"_isDefaultAlarm" withBoolean:self->_isDefaultAlarm];
  [v5 setKey:@"_alarm" withObject:self->_alarm];
  build = [v5 build];

  return build;
}

- (id)localizedDescriptionAllDay:(BOOL)day
{
  if (self->_isLeaveNowAlarm)
  {
    v3 = CUIKBundle();
    v4 = [v3 localizedStringForKey:@"Time to Leave" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    alarm = self->_alarm;
    if (day)
    {
      [(EKAlarm *)alarm cuik_localizedAllDayDescription];
    }

    else
    {
      [(EKAlarm *)alarm cuik_localizedDescription];
    }
    v4 = ;
  }

  return v4;
}

- (BOOL)isEqualToUIAlarm:(id)alarm
{
  alarmCopy = alarm;
  if (alarmCopy)
  {
    isDefaultAlarm = [(CUIKUIAlarm *)self isDefaultAlarm];
    if (isDefaultAlarm == [alarmCopy isDefaultAlarm])
    {
      isLeaveNowAlarm = [(CUIKUIAlarm *)self isLeaveNowAlarm];
      if (isLeaveNowAlarm == [alarmCopy isLeaveNowAlarm])
      {
        if (-[CUIKUIAlarm isLeaveNowAlarm](self, "isLeaveNowAlarm") && ([alarmCopy isLeaveNowAlarm] & 1) != 0)
        {
          v7 = 1;
          goto LABEL_5;
        }

        alarm = [(CUIKUIAlarm *)self alarm];
        alarm2 = [alarmCopy alarm];
        v11 = alarm2;
        if (alarm)
        {
          alarm2 = alarm;
          v12 = v11;
        }

        else
        {
          if (!alarm2)
          {
            v7 = 1;
            goto LABEL_14;
          }

          v12 = 0;
        }

        v7 = [alarm2 isTopographicallyEqualToAlarm:v12];
LABEL_14:

        goto LABEL_5;
      }
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

@end