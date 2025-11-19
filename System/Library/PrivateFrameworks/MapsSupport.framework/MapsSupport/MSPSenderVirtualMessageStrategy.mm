@interface MSPSenderVirtualMessageStrategy
- (MSPSenderVirtualMessageStrategy)initWithDelegate:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5;
@end

@implementation MSPSenderVirtualMessageStrategy

- (MSPSenderVirtualMessageStrategy)initWithDelegate:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277D0EC70] sharedPlatform];
  v11 = [v10 isInternalInstall];

  if (v11)
  {
    v15.receiver = self;
    v15.super_class = MSPSenderVirtualMessageStrategy;
    v12 = [(MSPSenderMessageStrategy *)&v15 initWithDelegate:v8 capabilityType:a4 serviceName:v9];
    if (v12)
    {
      v12->super.super._loggingOnly = 1;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end