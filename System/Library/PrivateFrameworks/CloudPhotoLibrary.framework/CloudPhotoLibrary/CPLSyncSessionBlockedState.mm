@interface CPLSyncSessionBlockedState
- (CPLSyncSessionBlockedState)initWithRescheduler:(id)a3 blocked:(BOOL)a4 syncHasBeenRequested:(BOOL)a5 runtimeCharacteristics:(id)a6;
@end

@implementation CPLSyncSessionBlockedState

- (CPLSyncSessionBlockedState)initWithRescheduler:(id)a3 blocked:(BOOL)a4 syncHasBeenRequested:(BOOL)a5 runtimeCharacteristics:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CPLSyncSessionBlockedState;
  v13 = [(CPLSyncSessionBlockedState *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_rescheduler, a3);
    v14->_blocked = a4;
    v14->_syncHasBeenRequested = a5;
    objc_storeStrong(&v14->_runtimeCharacteristics, a6);
  }

  return v14;
}

@end