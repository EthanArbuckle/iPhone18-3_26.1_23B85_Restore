@interface COAlarmRequest
- (COAlarmRequest)initWithAlarm:(id)alarm;
- (COAlarmRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COAlarmRequest

- (COAlarmRequest)initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v9.receiver = self;
  v9.super_class = COAlarmRequest;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [alarmCopy copy];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (COAlarmRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COAlarmRequest;
  v5 = [(COMeshCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarm"];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COAlarmRequest;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COAlarmRequest *)self alarm:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"alarm"];
}

@end