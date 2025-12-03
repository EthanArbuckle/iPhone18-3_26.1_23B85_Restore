@interface MTSleepCoordinatorStateMachine
- (BOOL)isUserAsleep;
- (MTSleepCoordinatorStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider;
- (id)currentDate;
- (id)sleepAlarm;
- (unint64_t)sleepTimeOutMinutes;
- (void)stateMachine:(id)machine dismissWakeUpAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)stateMachine:(id)machine shouldScheduleAlarmTimeoutForSecondsFromNow:(double)now;
- (void)stateMachineUserWentToBed:(id)bed;
- (void)stateMachineUserWokeUp:(id)up;
- (void)updateState;
- (void)userBedTimeReached:(id)reached;
- (void)userWakeTimeReached:(id)reached;
- (void)userWakeUpAlarmFired;
- (void)userWentToBed;
- (void)userWokeUp;
- (void)wakeUpAlarmTimedOut;
@end

@implementation MTSleepCoordinatorStateMachine

- (MTSleepCoordinatorStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = MTSleepCoordinatorStateMachine;
  v4 = [(MTStateMachine *)&v12 initWithDelegate:delegate infoProvider:provider];
  if (v4)
  {
    v5 = [(MTStateMachineState *)[MTSleepCoordinatorStateMachineAsleepState alloc] initWithStateMachine:v4];
    asleepState = v4->_asleepState;
    v4->_asleepState = v5;

    v7 = [(MTStateMachineState *)[MTSleepCoordinatorStateMachineAwakeState alloc] initWithStateMachine:v4];
    awakeState = v4->_awakeState;
    v4->_awakeState = v7;

    v9 = [(MTStateMachineState *)[MTSleepCoordinatorStateMachineDisabledState alloc] initWithStateMachine:v4];
    disabledState = v4->_disabledState;
    v4->_disabledState = v9;

    [(MTStateMachine *)v4 enterState:v4->_disabledState];
  }

  return v4;
}

- (BOOL)isUserAsleep
{
  currentState = [(MTStateMachine *)self currentState];
  asleepState = [(MTSleepCoordinatorStateMachine *)self asleepState];
  if (currentState == asleepState)
  {
    isKindOfClass = 1;
  }

  else
  {
    currentState2 = [(MTStateMachine *)self currentState];
    asleepState2 = [(MTSleepCoordinatorStateMachine *)self asleepState];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)updateState
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState updateState];
}

- (void)userWentToBed
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState userWentToBed];
}

- (void)userWokeUp
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState userWokeUp];
}

- (void)userBedTimeReached:(id)reached
{
  reachedCopy = reached;
  currentState = [(MTStateMachine *)self currentState];
  [currentState userBedTimeReached:reachedCopy];
}

- (void)userWakeTimeReached:(id)reached
{
  reachedCopy = reached;
  currentState = [(MTStateMachine *)self currentState];
  [currentState userWakeTimeReached:reachedCopy];
}

- (void)userWakeUpAlarmFired
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState userWakeUpAlarmFired];
}

- (void)wakeUpAlarmTimedOut
{
  currentState = [(MTStateMachine *)self currentState];
  [currentState wakeUpAlarmTimedOut];
}

- (id)sleepAlarm
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  sleepAlarm = [infoProvider sleepAlarm];

  return sleepAlarm;
}

- (id)currentDate
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (unint64_t)sleepTimeOutMinutes
{
  infoProvider = [(MTStateMachine *)self infoProvider];
  sleepTimeOutMinutes = [infoProvider sleepTimeOutMinutes];

  return sleepTimeOutMinutes;
}

- (void)stateMachineUserWokeUp:(id)up
{
  upCopy = up;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachineUserWokeUp:upCopy];
}

- (void)stateMachineUserWentToBed:(id)bed
{
  bedCopy = bed;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachineUserWentToBed:bedCopy];
}

- (void)stateMachine:(id)machine dismissWakeUpAlarm:(id)alarm dismissAction:(unint64_t)action
{
  alarmCopy = alarm;
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachine:machineCopy dismissWakeUpAlarm:alarmCopy dismissAction:action];
}

- (void)stateMachine:(id)machine shouldScheduleAlarmTimeoutForSecondsFromNow:(double)now
{
  machineCopy = machine;
  delegate = [(MTStateMachine *)self delegate];
  [delegate stateMachine:machineCopy shouldScheduleAlarmTimeoutForSecondsFromNow:now];
}

@end