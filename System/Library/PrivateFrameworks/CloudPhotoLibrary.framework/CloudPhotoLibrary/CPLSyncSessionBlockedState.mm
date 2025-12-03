@interface CPLSyncSessionBlockedState
- (CPLSyncSessionBlockedState)initWithRescheduler:(id)rescheduler blocked:(BOOL)blocked syncHasBeenRequested:(BOOL)requested runtimeCharacteristics:(id)characteristics;
@end

@implementation CPLSyncSessionBlockedState

- (CPLSyncSessionBlockedState)initWithRescheduler:(id)rescheduler blocked:(BOOL)blocked syncHasBeenRequested:(BOOL)requested runtimeCharacteristics:(id)characteristics
{
  reschedulerCopy = rescheduler;
  characteristicsCopy = characteristics;
  v16.receiver = self;
  v16.super_class = CPLSyncSessionBlockedState;
  v13 = [(CPLSyncSessionBlockedState *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_rescheduler, rescheduler);
    v14->_blocked = blocked;
    v14->_syncHasBeenRequested = requested;
    objc_storeStrong(&v14->_runtimeCharacteristics, characteristics);
  }

  return v14;
}

@end