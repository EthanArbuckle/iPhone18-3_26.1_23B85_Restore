@interface IMSimulatedMessageConfiguration
- (IMSimulatedMessageConfiguration)init;
- (IMSimulatedMessageConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IMSimulatedMessageConfiguration indexImmediately](self forKey:{"indexImmediately"), @"i"}];
  [coderCopy encodeInteger:-[IMSimulatedMessageConfiguration clientBatchSize](self forKey:{"clientBatchSize"), @"c"}];
  [coderCopy encodeInteger:-[IMSimulatedMessageConfiguration daemonBatchSize](self forKey:{"daemonBatchSize"), @"b"}];
}

- (IMSimulatedMessageConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  -[IMSimulatedMessageConfiguration setIndexImmediately:](self, "setIndexImmediately:", [coderCopy decodeBoolForKey:@"i"]);
  -[IMSimulatedMessageConfiguration setClientBatchSize:](self, "setClientBatchSize:", [coderCopy decodeIntegerForKey:@"c"]);
  v5 = [coderCopy decodeIntegerForKey:@"b"];

  [(IMSimulatedMessageConfiguration *)self setDaemonBatchSize:v5];
  return self;
}

@end