@interface CDMSetupResponseCommand
- (CDMSetupResponseCommand)initWithServiceState:(int64_t)state serviceName:(id)name;
@end

@implementation CDMSetupResponseCommand

- (CDMSetupResponseCommand)initWithServiceState:(int64_t)state serviceName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CDMSetupResponseCommand;
  v7 = [(CDMBaseCommand *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_serviceState = state;
    v9 = [nameCopy copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;
  }

  return v8;
}

@end