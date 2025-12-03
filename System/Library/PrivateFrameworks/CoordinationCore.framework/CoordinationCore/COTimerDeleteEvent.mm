@interface COTimerDeleteEvent
- (COTimerDeleteEvent)initWithCoder:(id)coder;
- (COTimerDeleteEvent)initWithIdentifier:(id)identifier date:(id)date;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerDeleteEvent

- (COTimerDeleteEvent)initWithIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = COTimerDeleteEvent;
  v9 = [(COTimerDeleteEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_date, date);
  }

  return v10;
}

- (COTimerDeleteEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = COTimerDeleteEvent;
  v5 = [(COTimerDeleteEvent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(COTimerDeleteEvent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  date = [(COTimerDeleteEvent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  date = [(COTimerDeleteEvent *)self date];
  date2 = [compareCopy date];

  v7 = [date compare:date2];
  return v7;
}

@end