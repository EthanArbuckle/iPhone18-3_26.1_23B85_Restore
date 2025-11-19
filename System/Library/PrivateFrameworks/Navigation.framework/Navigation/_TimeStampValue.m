@interface _TimeStampValue
- (_TimeStampValue)initWithCoder:(id)a3;
- (_TimeStampValue)initWithTimeStamp:(double)a3 timeZone:(id)a4 formatPattern:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _TimeStampValue

- (void)encodeWithCoder:(id)a3
{
  timeStamp = self->_timeStamp;
  v5 = a3;
  [v5 encodeDouble:@"timeStamp" forKey:timeStamp];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v5 encodeObject:self->_formatPattern forKey:@"formatPattern"];
}

- (_TimeStampValue)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _TimeStampValue;
  v5 = [(_TimeStampValue *)&v13 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timeStamp"];
    v5->_timeStamp = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatPattern"];
    v10 = [v9 copy];
    formatPattern = v5->_formatPattern;
    v5->_formatPattern = v10;
  }

  return v5;
}

- (_TimeStampValue)initWithTimeStamp:(double)a3 timeZone:(id)a4 formatPattern:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _TimeStampValue;
  v11 = [(_TimeStampValue *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeStamp = a3;
    objc_storeStrong(&v11->_timeZone, a4);
    v13 = [v10 copy];
    formatPattern = v12->_formatPattern;
    v12->_formatPattern = v13;
  }

  return v12;
}

@end