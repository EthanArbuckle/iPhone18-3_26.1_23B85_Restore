@interface GTTelemetryDeviceObject
- (GTTelemetryDeviceObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTTelemetryDeviceObject

- (GTTelemetryDeviceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GTTelemetryDeviceObject;
  v5 = [(GTTelemetryDeviceObject *)&v9 init];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_commits = [coderCopy decodeInt64ForKey:@"commits"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gpuTime"];
    gpuTime = v5->_gpuTime;
    v5->_gpuTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  streamRef = self->_streamRef;
  coderCopy = coder;
  [coderCopy encodeInt64:streamRef forKey:@"streamRef"];
  [coderCopy encodeInt64:self->_commits forKey:@"commits"];
  [coderCopy encodeObject:self->_gpuTime forKey:@"gpuTime"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryDeviceObject;
  v2 = [(GTTelemetryDeviceObject *)&v4 description];

  return v2;
}

@end