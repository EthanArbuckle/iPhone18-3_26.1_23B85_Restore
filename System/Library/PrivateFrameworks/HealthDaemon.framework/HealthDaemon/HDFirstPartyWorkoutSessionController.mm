@interface HDFirstPartyWorkoutSessionController
- (BOOL)endWithError:(id *)a3;
- (BOOL)pauseWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)resumeWithError:(id *)a3;
- (BOOL)startActivityWithDate:(id)a3 error:(id *)a4;
- (BOOL)stopActivityWithDate:(id)a3 error:(id *)a4;
- (BOOL)storeSessionControllerState:(id)a3 forRecoveryIdentifier:(id)a4 error:(id *)a5;
- (HDFirstPartyWorkoutSessionController)initWithProfile:(id)a3 sessionConfiguration:(id)a4 sessionStateController:(id)a5 recoveryState:(id)a6;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (void)autoPauseWithDate:(id)a3;
- (void)autoResumeWithDate:(id)a3;
- (void)didBeginNewActivity:(id)a3;
- (void)didDetectActivityChange:(id)a3;
- (void)didEndCurrentActivity:(id)a3;
- (void)endHeartRateRecovery;
- (void)finish;
- (void)finishAggregationWithDate:(id)a3;
- (void)generateConfigurationUpdate:(id)a3;
- (void)generateError:(id)a3;
- (void)generateEvent:(id)a3;
- (void)generateMetadata:(id)a3;
@end

@implementation HDFirstPartyWorkoutSessionController

- (HDFirstPartyWorkoutSessionController)initWithProfile:(id)a3 sessionConfiguration:(id)a4 sessionStateController:(id)a5 recoveryState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = HDFirstPartyWorkoutSessionController;
  v14 = [(HDFirstPartyWorkoutSessionController *)&v18 init];
  if (v14)
  {
    v15 = [[HDDefaultWorkoutSessionController alloc] initWithProfile:v10 sessionConfiguration:v11 sessionStateController:v14 recoveryState:v13];
    defaultSessionController = v14->_defaultSessionController;
    v14->_defaultSessionController = v15;

    objc_storeWeak(&v14->_sessionStateController, v12);
  }

  return v14;
}

- (BOOL)prepareWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained prepareWithError:a3];

  return a3;
}

- (BOOL)startActivityWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a4) = [WeakRetained startActivityWithDate:v6 error:a4];

  return a4;
}

- (BOOL)stopActivityWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a4) = [WeakRetained startActivityWithDate:v6 error:a4];

  return a4;
}

- (BOOL)endWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained endWithError:a3];

  return a3;
}

- (BOOL)pauseWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained pauseWithError:a3];

  return a3;
}

- (BOOL)resumeWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a3) = [WeakRetained resumeWithError:a3];

  return a3;
}

- (void)autoPauseWithDate:(id)a3
{
  v8 = a3;
  if (self)
  {
    v4 = HKObjectForNanoPreferencesUserDefaultsKey();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 BOOLValue];

      if (!v6)
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
      [WeakRetained autoPauseWithDate:v8];
    }

    else
    {
      WeakRetained = 0;
    }
  }

LABEL_7:
}

- (void)autoResumeWithDate:(id)a3
{
  if (self->_currentState == 9)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
    [WeakRetained autoResumeWithDate:v5];
  }
}

- (void)endHeartRateRecovery
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained endHeartRateRecovery];
}

- (void)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finish];
}

- (void)finishAggregationWithDate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finishAggregationWithDate:v4];
}

- (void)generateEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateEvent:v4];
}

- (void)generateError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateError:v4];
}

- (void)generateMetadata:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateMetadata:v4];
}

- (void)generateConfigurationUpdate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateConfigurationUpdate:v4];
}

- (void)didBeginNewActivity:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didBeginNewActivity:v4];
}

- (void)didEndCurrentActivity:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didEndCurrentActivity:v4];
}

- (void)didDetectActivityChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didDetectActivityChange:v4];
}

- (BOOL)storeSessionControllerState:(id)a3 forRecoveryIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(a5) = [WeakRetained storeSessionControllerState:v9 forRecoveryIdentifier:v8 error:a5];

  return a5;
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  v3 = [WeakRetained workoutDataAccumulator];

  return v3;
}

@end