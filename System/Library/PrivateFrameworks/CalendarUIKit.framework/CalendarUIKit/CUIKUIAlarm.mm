@interface CUIKUIAlarm
- (BOOL)isEqualToUIAlarm:(id)a3;
- (CUIKUIAlarm)initWithAlarm:(id)a3;
- (id)description;
- (id)initDefaultAlarm;
- (id)initLeaveNowAlarm;
- (id)localizedDescriptionAllDay:(BOOL)a3;
@end

@implementation CUIKUIAlarm

- (CUIKUIAlarm)initWithAlarm:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CUIKUIAlarm;
  v6 = [(CUIKUIAlarm *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLeaveNowAlarm = 0;
    v6->_isDefaultAlarm = [v5 isDefaultAlarm];
    objc_storeStrong(&v7->_alarm, a3);
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
  v6 = [v5 build];

  return v6;
}

- (id)localizedDescriptionAllDay:(BOOL)a3
{
  if (self->_isLeaveNowAlarm)
  {
    v3 = CUIKBundle();
    v4 = [v3 localizedStringForKey:@"Time to Leave" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    alarm = self->_alarm;
    if (a3)
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

- (BOOL)isEqualToUIAlarm:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CUIKUIAlarm *)self isDefaultAlarm];
    if (v5 == [v4 isDefaultAlarm])
    {
      v6 = [(CUIKUIAlarm *)self isLeaveNowAlarm];
      if (v6 == [v4 isLeaveNowAlarm])
      {
        if (-[CUIKUIAlarm isLeaveNowAlarm](self, "isLeaveNowAlarm") && ([v4 isLeaveNowAlarm] & 1) != 0)
        {
          v7 = 1;
          goto LABEL_5;
        }

        v9 = [(CUIKUIAlarm *)self alarm];
        v10 = [v4 alarm];
        v11 = v10;
        if (v9)
        {
          v10 = v9;
          v12 = v11;
        }

        else
        {
          if (!v10)
          {
            v7 = 1;
            goto LABEL_14;
          }

          v12 = 0;
        }

        v7 = [v10 isTopographicallyEqualToAlarm:v12];
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