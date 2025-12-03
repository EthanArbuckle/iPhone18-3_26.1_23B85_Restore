@interface HDFirstPartyWorkoutSessionController
- (BOOL)endWithError:(id *)error;
- (BOOL)pauseWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)startActivityWithDate:(id)date error:(id *)error;
- (BOOL)stopActivityWithDate:(id)date error:(id *)error;
- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error;
- (HDFirstPartyWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (void)autoPauseWithDate:(id)date;
- (void)autoResumeWithDate:(id)date;
- (void)didBeginNewActivity:(id)activity;
- (void)didDetectActivityChange:(id)change;
- (void)didEndCurrentActivity:(id)activity;
- (void)endHeartRateRecovery;
- (void)finish;
- (void)finishAggregationWithDate:(id)date;
- (void)generateConfigurationUpdate:(id)update;
- (void)generateError:(id)error;
- (void)generateEvent:(id)event;
- (void)generateMetadata:(id)metadata;
@end

@implementation HDFirstPartyWorkoutSessionController

- (HDFirstPartyWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state
{
  profileCopy = profile;
  configurationCopy = configuration;
  controllerCopy = controller;
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = HDFirstPartyWorkoutSessionController;
  v14 = [(HDFirstPartyWorkoutSessionController *)&v18 init];
  if (v14)
  {
    v15 = [[HDDefaultWorkoutSessionController alloc] initWithProfile:profileCopy sessionConfiguration:configurationCopy sessionStateController:v14 recoveryState:stateCopy];
    defaultSessionController = v14->_defaultSessionController;
    v14->_defaultSessionController = v15;

    objc_storeWeak(&v14->_sessionStateController, controllerCopy);
  }

  return v14;
}

- (BOOL)prepareWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained prepareWithError:error];

  return error;
}

- (BOOL)startActivityWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained startActivityWithDate:dateCopy error:error];

  return error;
}

- (BOOL)stopActivityWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained startActivityWithDate:dateCopy error:error];

  return error;
}

- (BOOL)endWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained endWithError:error];

  return error;
}

- (BOOL)pauseWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained pauseWithError:error];

  return error;
}

- (BOOL)resumeWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained resumeWithError:error];

  return error;
}

- (void)autoPauseWithDate:(id)date
{
  dateCopy = date;
  if (self)
  {
    v4 = HKObjectForNanoPreferencesUserDefaultsKey();
    if (v4)
    {
      v5 = v4;
      bOOLValue = [v4 BOOLValue];

      if (!bOOLValue)
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
      [WeakRetained autoPauseWithDate:dateCopy];
    }

    else
    {
      WeakRetained = 0;
    }
  }

LABEL_7:
}

- (void)autoResumeWithDate:(id)date
{
  if (self->_currentState == 9)
  {
    dateCopy = date;
    WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
    [WeakRetained autoResumeWithDate:dateCopy];
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

- (void)finishAggregationWithDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained finishAggregationWithDate:dateCopy];
}

- (void)generateEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateEvent:eventCopy];
}

- (void)generateError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateError:errorCopy];
}

- (void)generateMetadata:(id)metadata
{
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateMetadata:metadataCopy];
}

- (void)generateConfigurationUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained generateConfigurationUpdate:updateCopy];
}

- (void)didBeginNewActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didBeginNewActivity:activityCopy];
}

- (void)didEndCurrentActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didEndCurrentActivity:activityCopy];
}

- (void)didDetectActivityChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didDetectActivityChange:changeCopy];
}

- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  LOBYTE(error) = [WeakRetained storeSessionControllerState:stateCopy forRecoveryIdentifier:identifierCopy error:error];

  return error;
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  workoutDataAccumulator = [WeakRetained workoutDataAccumulator];

  return workoutDataAccumulator;
}

@end