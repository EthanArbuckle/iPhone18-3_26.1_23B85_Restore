@interface GTTelemetryStatistics
- (GTTelemetryStatistics)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTTelemetryStatistics

- (GTTelemetryStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GTTelemetryStatistics;
  v5 = [(GTTelemetryStatistics *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"devices"];
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"queues"];
    queues = v5->_queues;
    v5->_queues = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"layers"];
    layers = v5->_layers;
    v5->_layers = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  devices = self->_devices;
  coderCopy = coder;
  [coderCopy encodeObject:devices forKey:@"devices"];
  [coderCopy encodeObject:self->_queues forKey:@"queues"];
  [coderCopy encodeObject:self->_layers forKey:@"layers"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryStatistics;
  v2 = [(GTTelemetryStatistics *)&v4 description];

  return v2;
}

@end