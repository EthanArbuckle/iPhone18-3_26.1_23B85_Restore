@interface GTTelemetryRecordObject
- (GTTelemetryRecordObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTelemetryRecordObject

- (GTTelemetryRecordObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTTelemetryRecordObject;
  v5 = [(GTTelemetryRecordObject *)&v10 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"min"];
    v5->_min = v6;
    [v4 decodeFloatForKey:@"max"];
    v5->_max = v7;
    [v4 decodeFloatForKey:@"average"];
    v5->_average = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  min = self->_min;
  v8 = a3;
  *&v5 = min;
  [v8 encodeFloat:@"min" forKey:v5];
  *&v6 = self->_max;
  [v8 encodeFloat:@"max" forKey:v6];
  *&v7 = self->_average;
  [v8 encodeFloat:@"average" forKey:v7];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryRecordObject;
  v2 = [(GTTelemetryRecordObject *)&v4 description];

  return v2;
}

@end