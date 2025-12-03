@interface _TimeStampValue
- (_TimeStampValue)initWithCoder:(id)coder;
- (_TimeStampValue)initWithTimeStamp:(double)stamp timeZone:(id)zone formatPattern:(id)pattern;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _TimeStampValue

- (void)encodeWithCoder:(id)coder
{
  timeStamp = self->_timeStamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timeStamp" forKey:timeStamp];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeObject:self->_formatPattern forKey:@"formatPattern"];
}

- (_TimeStampValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _TimeStampValue;
  v5 = [(_TimeStampValue *)&v13 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timeStamp"];
    v5->_timeStamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatPattern"];
    v10 = [v9 copy];
    formatPattern = v5->_formatPattern;
    v5->_formatPattern = v10;
  }

  return v5;
}

- (_TimeStampValue)initWithTimeStamp:(double)stamp timeZone:(id)zone formatPattern:(id)pattern
{
  zoneCopy = zone;
  patternCopy = pattern;
  v16.receiver = self;
  v16.super_class = _TimeStampValue;
  v11 = [(_TimeStampValue *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeStamp = stamp;
    objc_storeStrong(&v11->_timeZone, zone);
    v13 = [patternCopy copy];
    formatPattern = v12->_formatPattern;
    v12->_formatPattern = v13;
  }

  return v12;
}

@end