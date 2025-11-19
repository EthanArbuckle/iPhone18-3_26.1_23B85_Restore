@interface DAESubscribedCalendarSummary
- (DAESubscribedCalendarSummary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAESubscribedCalendarSummary

- (DAESubscribedCalendarSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DAESubscribedCalendarSummary;
  v5 = [(DAESubscribedCalendarSummary *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v10;

    [v4 decodeDoubleForKey:@"refreshInterval"];
    v5->_refreshInterval = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionID"];
    subscriptionID = v5->_subscriptionID;
    v5->_subscriptionID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionURL"];
    subscriptionURL = v5->_subscriptionURL;
    v5->_subscriptionURL = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionICSData"];
    data = v5->_data;
    v5->_data = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_notes forKey:@"notes"];
  [v5 encodeObject:self->_color forKey:@"color"];
  [v5 encodeDouble:@"refreshInterval" forKey:self->_refreshInterval];
  [v5 encodeObject:self->_subscriptionID forKey:@"subscriptionID"];
  [v5 encodeObject:self->_subscriptionURL forKey:@"subscriptionURL"];
  [v5 encodeObject:self->_data forKey:@"subscriptionICSData"];
}

@end