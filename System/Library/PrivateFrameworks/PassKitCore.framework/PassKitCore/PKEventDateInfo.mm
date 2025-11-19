@interface PKEventDateInfo
- (PKEventDateInfo)initWithCoder:(id)a3;
- (PKEventDateInfo)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKEventDateInfo

- (PKEventDateInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKEventDateInfo;
  v5 = [(PKEventDateInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKDateForKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v5->_ignoreTimeComponents = [v4 PKBoolForKey:@"ignoreTimeComponents"];
    v5->_unannounced = [v4 PKBoolForKey:@"unannounced"];
    v5->_undetermined = [v4 PKBoolForKey:@"undetermined"];
    v8 = [v4 PKStringForKey:@"timeZone"];
    v9 = PKTimeZoneFromString(v8);
    timeZone = v5->_timeZone;
    v5->_timeZone = v9;
  }

  return v5;
}

- (PKEventDateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKEventDateInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v5->_ignoreTimeComponents = [v4 decodeBoolForKey:@"ignoreTimeComponents"];
    v5->_unannounced = [v4 decodeBoolForKey:@"unannounced"];
    v5->_undetermined = [v4 decodeBoolForKey:@"undetermined"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v5 encodeBool:self->_ignoreTimeComponents forKey:@"ignoreTimeComponents"];
  [v5 encodeBool:self->_unannounced forKey:@"unannounced"];
  [v5 encodeBool:self->_undetermined forKey:@"undetermined"];
}

@end