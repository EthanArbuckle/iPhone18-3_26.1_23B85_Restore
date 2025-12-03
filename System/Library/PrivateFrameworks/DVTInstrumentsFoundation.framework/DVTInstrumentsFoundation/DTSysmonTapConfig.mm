@interface DTSysmonTapConfig
- (BOOL)sampleCPUUsage;
- (DTSysmonTapConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)sampleInterval;
- (void)setCoalitionAttributes:(id)attributes;
- (void)setPids:(id)pids;
- (void)setProcessAttributes:(id)attributes;
- (void)setSampleInterval:(unint64_t)interval;
- (void)setSessionHandler:(id)handler;
- (void)setSystemAttributes:(id)attributes;
@end

@implementation DTSysmonTapConfig

- (DTSysmonTapConfig)init
{
  v3.receiver = self;
  v3.super_class = DTSysmonTapConfig;
  return [(DTTapConfig *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = DTSysmonTapConfig;
  v4 = [(DTTapConfig *)&v8 copyWithZone:zone];
  v5 = _Block_copy(self->_sessionHandler);
  v6 = v4[10];
  v4[10] = v5;

  return v4;
}

- (void)setSessionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = v4;
}

- (unint64_t)sampleInterval
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"sampleInterval"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setSampleInterval:(unint64_t)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:interval];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"sampleInterval"];
}

- (void)setProcessAttributes:(id)attributes
{
  v4 = [attributes copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"procAttrs"];
}

- (void)setSystemAttributes:(id)attributes
{
  v4 = [attributes copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"sysAttrs"];
}

- (void)setCoalitionAttributes:(id)attributes
{
  v4 = [attributes copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"coalAttrs"];
}

- (BOOL)sampleCPUUsage
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"cpuUsage"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPids:(id)pids
{
  v4 = [pids mutableCopy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"pids"];
}

@end