@interface MSPSenderVirtualMessageStrategy
- (MSPSenderVirtualMessageStrategy)initWithDelegate:(id)delegate capabilityType:(unint64_t)type serviceName:(id)name;
@end

@implementation MSPSenderVirtualMessageStrategy

- (MSPSenderVirtualMessageStrategy)initWithDelegate:(id)delegate capabilityType:(unint64_t)type serviceName:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
  isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

  if (isInternalInstall)
  {
    v15.receiver = self;
    v15.super_class = MSPSenderVirtualMessageStrategy;
    v12 = [(MSPSenderMessageStrategy *)&v15 initWithDelegate:delegateCopy capabilityType:type serviceName:nameCopy];
    if (v12)
    {
      v12->super.super._loggingOnly = 1;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end