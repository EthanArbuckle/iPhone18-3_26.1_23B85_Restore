@interface GTTelemetryConfiguration
- (GTTelemetryConfiguration)init;
- (GTTelemetryConfiguration)initWithCoder:(id)a3;
@end

@implementation GTTelemetryConfiguration

- (GTTelemetryConfiguration)init
{
  v6.receiver = self;
  v6.super_class = GTTelemetryConfiguration;
  v2 = [(GTTelemetryConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_reportFrequencyInSeconds = INFINITY;
    v4 = v2;
  }

  return v3;
}

- (GTTelemetryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTTelemetryConfiguration;
  v5 = [(GTTelemetryConfiguration *)&v9 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"reportFrequencyInSeconds"];
    v5->_reportFrequencyInSeconds = v6;
    v7 = v5;
  }

  return v5;
}

@end