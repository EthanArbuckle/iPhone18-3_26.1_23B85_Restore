@interface GTTelemetryStatistics
- (GTTelemetryStatistics)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTelemetryStatistics

- (GTTelemetryStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GTTelemetryStatistics;
  v5 = [(GTTelemetryStatistics *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"devices"];
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"queues"];
    queues = v5->_queues;
    v5->_queues = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"layers"];
    layers = v5->_layers;
    v5->_layers = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  devices = self->_devices;
  v5 = a3;
  [v5 encodeObject:devices forKey:@"devices"];
  [v5 encodeObject:self->_queues forKey:@"queues"];
  [v5 encodeObject:self->_layers forKey:@"layers"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryStatistics;
  v2 = [(GTTelemetryStatistics *)&v4 description];

  return v2;
}

@end