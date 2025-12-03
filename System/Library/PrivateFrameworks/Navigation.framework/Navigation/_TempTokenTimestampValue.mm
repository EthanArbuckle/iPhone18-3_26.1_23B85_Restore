@interface _TempTokenTimestampValue
- (_TempTokenTimestampValue)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _TempTokenTimestampValue

- (void)encodeWithCoder:(id)coder
{
  timeStamp = self->_timeStamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timeStamp];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeObject:self->_formatPattern forKey:@"formatPattern"];
}

- (_TempTokenTimestampValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _TempTokenTimestampValue;
  v5 = [(_TempTokenTimestampValue *)&v12 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timeStamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatPattern"];
    formatPattern = v5->_formatPattern;
    v5->_formatPattern = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v9;
  }

  return v5;
}

@end