@interface DTSysmonTapConfig
- (BOOL)sampleCPUUsage;
- (DTSysmonTapConfig)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)sampleInterval;
- (void)setCoalitionAttributes:(id)a3;
- (void)setPids:(id)a3;
- (void)setProcessAttributes:(id)a3;
- (void)setSampleInterval:(unint64_t)a3;
- (void)setSessionHandler:(id)a3;
- (void)setSystemAttributes:(id)a3;
@end

@implementation DTSysmonTapConfig

- (DTSysmonTapConfig)init
{
  v3.receiver = self;
  v3.super_class = DTSysmonTapConfig;
  return [(DTTapConfig *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = DTSysmonTapConfig;
  v4 = [(DTTapConfig *)&v8 copyWithZone:a3];
  v5 = _Block_copy(self->_sessionHandler);
  v6 = v4[10];
  v4[10] = v5;

  return v4;
}

- (void)setSessionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = v4;
}

- (unint64_t)sampleInterval
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"sampleInterval"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setSampleInterval:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"sampleInterval"];
}

- (void)setProcessAttributes:(id)a3
{
  v4 = [a3 copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"procAttrs"];
}

- (void)setSystemAttributes:(id)a3
{
  v4 = [a3 copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"sysAttrs"];
}

- (void)setCoalitionAttributes:(id)a3
{
  v4 = [a3 copy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"coalAttrs"];
}

- (BOOL)sampleCPUUsage
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"cpuUsage"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPids:(id)a3
{
  v4 = [a3 mutableCopy];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"pids"];
}

@end