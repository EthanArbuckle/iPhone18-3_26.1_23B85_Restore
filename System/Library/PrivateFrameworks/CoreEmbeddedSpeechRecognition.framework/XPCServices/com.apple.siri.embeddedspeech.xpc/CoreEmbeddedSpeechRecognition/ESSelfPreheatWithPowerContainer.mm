@interface ESSelfPreheatWithPowerContainer
- (ESSelfPreheatWithPowerContainer)initWithPreheatContext:(id)context powerSnapshot:(id)snapshot powerEventContext:(id)eventContext;
@end

@implementation ESSelfPreheatWithPowerContainer

- (ESSelfPreheatWithPowerContainer)initWithPreheatContext:(id)context powerSnapshot:(id)snapshot powerEventContext:(id)eventContext
{
  contextCopy = context;
  snapshotCopy = snapshot;
  eventContextCopy = eventContext;
  v15.receiver = self;
  v15.super_class = ESSelfPreheatWithPowerContainer;
  v12 = [(ESSelfPreheatWithPowerContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preheatContext, context);
    objc_storeStrong(&v13->_powerSnapshot, snapshot);
    objc_storeStrong(&v13->_powerEventContext, eventContext);
  }

  return v13;
}

@end