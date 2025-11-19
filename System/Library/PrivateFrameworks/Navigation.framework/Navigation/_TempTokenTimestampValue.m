@interface _TempTokenTimestampValue
- (_TempTokenTimestampValue)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _TempTokenTimestampValue

- (void)encodeWithCoder:(id)a3
{
  timeStamp = self->_timeStamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timeStamp];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v5 encodeObject:self->_formatPattern forKey:@"formatPattern"];
}

- (_TempTokenTimestampValue)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _TempTokenTimestampValue;
  v5 = [(_TempTokenTimestampValue *)&v12 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timeStamp = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatPattern"];
    formatPattern = v5->_formatPattern;
    v5->_formatPattern = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v9;
  }

  return v5;
}

@end