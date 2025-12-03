@interface COAlarmSnoozeNotification
- (COAlarmSnoozeNotification)initWithAlarmIdentifier:(id)identifier;
- (COAlarmSnoozeNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COAlarmSnoozeNotification

- (COAlarmSnoozeNotification)initWithAlarmIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = COAlarmSnoozeNotification;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (COAlarmSnoozeNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COAlarmSnoozeNotification;
  v5 = [(COMeshCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COAlarmSnoozeNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COAlarmSnoozeNotification *)self identifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];
}

@end