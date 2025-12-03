@interface COMTAlarmCreateAction
- (COMTAlarmCreateAction)initWithAlarm:(id)alarm;
- (COMTAlarmCreateAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTAlarmCreateAction

- (COMTAlarmCreateAction)initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v9.receiver = self;
  v9.super_class = COMTAlarmCreateAction;
  v5 = [(COMTAction *)&v9 init];
  if (v5)
  {
    v6 = [alarmCopy copy];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (COMTAlarmCreateAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = COMTAlarmCreateAction;
  v5 = [(COMTAction *)&v11 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CA"];
  v7 = v6;
  if (v6)
  {
    v8 = [(COMTAlarmCreateAction *)v6 copy];
    alarm = v5->_alarm;
    v5->_alarm = v8;

LABEL_4:
    v7 = v5;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTAlarmCreateAction;
  coderCopy = coder;
  [(COMTAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTAlarmCreateAction *)self alarm:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CA"];
}

@end