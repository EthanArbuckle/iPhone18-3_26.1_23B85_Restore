@interface IMSimulatedMessageConfiguration
- (IMSimulatedMessageConfiguration)init;
- (IMSimulatedMessageConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMSimulatedMessageConfiguration

- (IMSimulatedMessageConfiguration)init
{
  v3.receiver = self;
  v3.super_class = IMSimulatedMessageConfiguration;
  result = [(IMSimulatedMessageConfiguration *)&v3 init];
  if (result)
  {
    result->_indexImmediately = 1;
    *&result->_clientBatchSize = xmmword_1A88E1220;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IMSimulatedMessageConfiguration indexImmediately](self forKey:{"indexImmediately"), @"i"}];
  [v4 encodeInteger:-[IMSimulatedMessageConfiguration clientBatchSize](self forKey:{"clientBatchSize"), @"c"}];
  [v4 encodeInteger:-[IMSimulatedMessageConfiguration daemonBatchSize](self forKey:{"daemonBatchSize"), @"b"}];
}

- (IMSimulatedMessageConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  -[IMSimulatedMessageConfiguration setIndexImmediately:](self, "setIndexImmediately:", [v4 decodeBoolForKey:@"i"]);
  -[IMSimulatedMessageConfiguration setClientBatchSize:](self, "setClientBatchSize:", [v4 decodeIntegerForKey:@"c"]);
  v5 = [v4 decodeIntegerForKey:@"b"];

  [(IMSimulatedMessageConfiguration *)self setDaemonBatchSize:v5];
  return self;
}

@end