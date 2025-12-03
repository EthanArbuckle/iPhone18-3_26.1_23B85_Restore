@interface DAESubscribedCalendarSummary
- (DAESubscribedCalendarSummary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAESubscribedCalendarSummary

- (DAESubscribedCalendarSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = DAESubscribedCalendarSummary;
  v5 = [(DAESubscribedCalendarSummary *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v10;

    [coderCopy decodeDoubleForKey:@"refreshInterval"];
    v5->_refreshInterval = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionID"];
    subscriptionID = v5->_subscriptionID;
    v5->_subscriptionID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionURL"];
    subscriptionURL = v5->_subscriptionURL;
    v5->_subscriptionURL = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionICSData"];
    data = v5->_data;
    v5->_data = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_notes forKey:@"notes"];
  [coderCopy encodeObject:self->_color forKey:@"color"];
  [coderCopy encodeDouble:@"refreshInterval" forKey:self->_refreshInterval];
  [coderCopy encodeObject:self->_subscriptionID forKey:@"subscriptionID"];
  [coderCopy encodeObject:self->_subscriptionURL forKey:@"subscriptionURL"];
  [coderCopy encodeObject:self->_data forKey:@"subscriptionICSData"];
}

@end