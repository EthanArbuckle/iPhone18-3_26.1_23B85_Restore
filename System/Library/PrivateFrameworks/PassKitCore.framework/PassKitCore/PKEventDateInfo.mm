@interface PKEventDateInfo
- (PKEventDateInfo)initWithCoder:(id)coder;
- (PKEventDateInfo)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKEventDateInfo

- (PKEventDateInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKEventDateInfo;
  v5 = [(PKEventDateInfo *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v5->_ignoreTimeComponents = [dictionaryCopy PKBoolForKey:@"ignoreTimeComponents"];
    v5->_unannounced = [dictionaryCopy PKBoolForKey:@"unannounced"];
    v5->_undetermined = [dictionaryCopy PKBoolForKey:@"undetermined"];
    v8 = [dictionaryCopy PKStringForKey:@"timeZone"];
    v9 = PKTimeZoneFromString(v8);
    timeZone = v5->_timeZone;
    v5->_timeZone = v9;
  }

  return v5;
}

- (PKEventDateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKEventDateInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v5->_ignoreTimeComponents = [coderCopy decodeBoolForKey:@"ignoreTimeComponents"];
    v5->_unannounced = [coderCopy decodeBoolForKey:@"unannounced"];
    v5->_undetermined = [coderCopy decodeBoolForKey:@"undetermined"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeBool:self->_ignoreTimeComponents forKey:@"ignoreTimeComponents"];
  [coderCopy encodeBool:self->_unannounced forKey:@"unannounced"];
  [coderCopy encodeBool:self->_undetermined forKey:@"undetermined"];
}

@end