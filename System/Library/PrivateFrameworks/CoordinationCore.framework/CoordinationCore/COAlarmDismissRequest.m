@interface COAlarmDismissRequest
- (COAlarmDismissRequest)initWithAlarmIdentifier:(id)a3;
- (COAlarmDismissRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COAlarmDismissRequest

- (COAlarmDismissRequest)initWithAlarmIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COAlarmDismissRequest;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (COAlarmDismissRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COAlarmDismissRequest;
  v5 = [(COMeshCommand *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COAlarmDismissRequest;
  v4 = a3;
  [(COMeshCommand *)&v6 encodeWithCoder:v4];
  v5 = [(COAlarmDismissRequest *)self identifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

@end