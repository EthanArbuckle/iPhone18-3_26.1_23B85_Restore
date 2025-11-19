@interface MTSleepModeStateMachine
- (BOOL)isSleepModeEnabled:(BOOL *)a3;
- (BOOL)isUserAsleep;
- (MTSleepModeStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4;
- (id)currentDate;
- (id)keepOffUntilDate;
- (id)onStateWithSleepModeEndDate:(id)a3;
- (id)sleepAlarm;
- (id)userRequestedOffStateWithKeepOffUntilDate:(id)a3;
- (void)stateMachine:(id)a3 keepSleepModeOffUntilDate:(id)a4;
- (void)stateMachine:(id)a3 scheduleUpdateForSecondsFromNow:(double)a4;
- (void)stateMachineClearKeepSleepModeOff:(id)a3;
- (void)userWokeUp;
@end

@implementation MTSleepModeStateMachine

- (MTSleepModeStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4
{
  v12.receiver = self;
  v12.super_class = MTSleepModeStateMachine;
  v4 = [(MTStateMachine *)&v12 initWithDelegate:a3 infoProvider:a4];
  if (v4)
  {
    v5 = [(MTStateMachineState *)[MTSleepModeStateMachineInitialState alloc] initWithStateMachine:v4];
    initialState = v4->_initialState;
    v4->_initialState = v5;

    v7 = [(MTStateMachineState *)[MTSleepModeStateMachineOffState alloc] initWithStateMachine:v4];
    offState = v4->_offState;
    v4->_offState = v7;

    v9 = [(MTStateMachineState *)[MTSleepModeStateMachineWaitingState alloc] initWithStateMachine:v4];
    waitingState = v4->_waitingState;
    v4->_waitingState = v9;

    [(MTStateMachine *)v4 enterState:v4->_initialState];
  }

  return v4;
}

- (id)onStateWithSleepModeEndDate:(id)a3
{
  v4 = a3;
  v5 = [[MTSleepModeStateMachineOnState alloc] initWithSleepModeEndDate:v4 stateMachine:self];

  return v5;
}

- (id)userRequestedOffStateWithKeepOffUntilDate:(id)a3
{
  v4 = a3;
  v5 = [[MTSleepModeStateMachineUserRequestedOffState alloc] initWithKeepOffUntilDate:v4 stateMachine:self];

  return v5;
}

- (void)userWokeUp
{
  v2 = [(MTStateMachine *)self currentState];
  [v2 userWokeUp];
}

- (id)sleepAlarm
{
  v2 = [(MTStateMachine *)self infoProvider];
  v3 = [v2 sleepAlarm];

  return v3;
}

- (id)currentDate
{
  v2 = [(MTStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

- (BOOL)isSleepModeEnabled:(BOOL *)a3
{
  v4 = [(MTStateMachine *)self infoProvider];
  LOBYTE(a3) = [v4 isSleepModeEnabled:a3];

  return a3;
}

- (id)keepOffUntilDate
{
  v2 = [(MTStateMachine *)self infoProvider];
  v3 = [v2 keepOffUntilDate];

  return v3;
}

- (BOOL)isUserAsleep
{
  v2 = [(MTStateMachine *)self infoProvider];
  v3 = [v2 isUserAsleep];

  return v3;
}

- (void)stateMachine:(id)a3 keepSleepModeOffUntilDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTStateMachine *)self delegate];
  [v8 stateMachine:v7 keepSleepModeOffUntilDate:v6];
}

- (void)stateMachineClearKeepSleepModeOff:(id)a3
{
  v4 = a3;
  v5 = [(MTStateMachine *)self delegate];
  [v5 stateMachineClearKeepSleepModeOff:v4];
}

- (void)stateMachine:(id)a3 scheduleUpdateForSecondsFromNow:(double)a4
{
  v6 = a3;
  v7 = [(MTStateMachine *)self delegate];
  [v7 stateMachine:v6 scheduleUpdateForSecondsFromNow:a4];
}

@end