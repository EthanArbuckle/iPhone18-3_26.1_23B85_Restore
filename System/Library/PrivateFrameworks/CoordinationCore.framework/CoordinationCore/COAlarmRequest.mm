@interface COAlarmRequest
- (COAlarmRequest)initWithAlarm:(id)a3;
- (COAlarmRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COAlarmRequest

- (COAlarmRequest)initWithAlarm:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COAlarmRequest;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (COAlarmRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COAlarmRequest;
  v5 = [(COMeshCommand *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alarm"];
    alarm = v5->_alarm;
    v5->_alarm = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COAlarmRequest;
  v4 = a3;
  [(COMeshCommand *)&v6 encodeWithCoder:v4];
  v5 = [(COAlarmRequest *)self alarm:v6.receiver];
  [v4 encodeObject:v5 forKey:@"alarm"];
}

@end