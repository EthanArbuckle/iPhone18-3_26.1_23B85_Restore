@interface CDMWarmupResponseCommand
- (CDMWarmupResponseCommand)initWithServiceState:(int64_t)a3 serviceName:(id)a4;
@end

@implementation CDMWarmupResponseCommand

- (CDMWarmupResponseCommand)initWithServiceState:(int64_t)a3 serviceName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CDMWarmupResponseCommand;
  v7 = [(CDMBaseCommand *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_serviceState = a3;
    v9 = [v6 copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;
  }

  return v8;
}

@end