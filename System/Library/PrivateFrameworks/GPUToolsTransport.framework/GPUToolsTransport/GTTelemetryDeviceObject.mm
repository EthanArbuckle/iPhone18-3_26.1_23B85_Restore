@interface GTTelemetryDeviceObject
- (GTTelemetryDeviceObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTelemetryDeviceObject

- (GTTelemetryDeviceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTTelemetryDeviceObject;
  v5 = [(GTTelemetryDeviceObject *)&v9 init];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_commits = [v4 decodeInt64ForKey:@"commits"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gpuTime"];
    gpuTime = v5->_gpuTime;
    v5->_gpuTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  streamRef = self->_streamRef;
  v5 = a3;
  [v5 encodeInt64:streamRef forKey:@"streamRef"];
  [v5 encodeInt64:self->_commits forKey:@"commits"];
  [v5 encodeObject:self->_gpuTime forKey:@"gpuTime"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryDeviceObject;
  v2 = [(GTTelemetryDeviceObject *)&v4 description];

  return v2;
}

@end