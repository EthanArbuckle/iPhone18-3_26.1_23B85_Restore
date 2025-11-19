@interface COTimerDeleteEvent
- (COTimerDeleteEvent)initWithCoder:(id)a3;
- (COTimerDeleteEvent)initWithIdentifier:(id)a3 date:(id)a4;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COTimerDeleteEvent

- (COTimerDeleteEvent)initWithIdentifier:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = COTimerDeleteEvent;
  v9 = [(COTimerDeleteEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_date, a4);
  }

  return v10;
}

- (COTimerDeleteEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = COTimerDeleteEvent;
  v5 = [(COTimerDeleteEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(COTimerDeleteEvent *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(COTimerDeleteEvent *)self date];
  [v4 encodeObject:v6 forKey:@"date"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(COTimerDeleteEvent *)self date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

@end