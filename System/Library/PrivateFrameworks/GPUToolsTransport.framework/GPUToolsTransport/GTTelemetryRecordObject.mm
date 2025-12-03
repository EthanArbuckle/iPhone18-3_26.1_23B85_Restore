@interface GTTelemetryRecordObject
- (GTTelemetryRecordObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTTelemetryRecordObject

- (GTTelemetryRecordObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTTelemetryRecordObject;
  v5 = [(GTTelemetryRecordObject *)&v10 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"min"];
    v5->_min = v6;
    [coderCopy decodeFloatForKey:@"max"];
    v5->_max = v7;
    [coderCopy decodeFloatForKey:@"average"];
    v5->_average = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  min = self->_min;
  coderCopy = coder;
  *&v5 = min;
  [coderCopy encodeFloat:@"min" forKey:v5];
  *&v6 = self->_max;
  [coderCopy encodeFloat:@"max" forKey:v6];
  *&v7 = self->_average;
  [coderCopy encodeFloat:@"average" forKey:v7];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryRecordObject;
  v2 = [(GTTelemetryRecordObject *)&v4 description];

  return v2;
}

@end