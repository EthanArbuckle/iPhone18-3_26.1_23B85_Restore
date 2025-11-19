@interface GTTelemetryUpdateConfiguration
- (GTTelemetryUpdateConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTelemetryUpdateConfiguration

- (GTTelemetryUpdateConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTTelemetryUpdateConfiguration;
  v5 = [(GTTelemetryRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTTelemetryUpdateConfiguration;
  v4 = a3;
  [(GTTelemetryRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

@end