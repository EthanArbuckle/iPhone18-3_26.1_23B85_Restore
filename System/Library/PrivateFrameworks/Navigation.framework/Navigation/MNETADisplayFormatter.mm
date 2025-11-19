@interface MNETADisplayFormatter
- (MNETADisplayFormatter)initWithTimeZone:(id)a3;
- (MNETADisplayFormatterDelegate)delegate;
- (id)_displayDateWithRemainingTime:(double)a3;
- (void)_scheduleUpdateTimer;
- (void)_updateDisplayETA;
- (void)_updateTimerFired;
- (void)dealloc;
@end

@implementation MNETADisplayFormatter

- (MNETADisplayFormatterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_displayDateWithRemainingTime:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSince1970];
  v6 = floor(v5 * 0.0166666667);

  v7 = MEMORY[0x1E695DF00];

  return [v7 dateWithTimeIntervalSince1970:a3 + v6 * 60.0];
}

- (void)_updateTimerFired
{
  [(MNWeakTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  [(MNETADisplayFormatter *)self _updateDisplayETA];
}

- (void)_scheduleUpdateTimer
{
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [MNWeakTimer scheduledTimerWithTimeInterval:self target:sel__updateTimerFired selector:60.0 - (v5 % 0x3C)];
  updateTimer = self->_updateTimer;
  self->_updateTimer = v6;
}

- (void)_updateDisplayETA
{
  [(MNETADisplayFormatter *)self _displayTimeIntervalForTimeInterval:self->_remainingTimeToEndOfLeg];
  v4 = v3;
  v5 = [(MNETADisplayFormatter *)self _displayDateWithRemainingTime:?];
  [(MNETADisplayFormatter *)self _displayTimeIntervalForTimeInterval:self->_remainingTimeToEndOfRoute];
  v7 = v6;
  v8 = [(MNETADisplayFormatter *)self _displayDateWithRemainingTime:?];
  v13 = [[MNDisplayETAInfo alloc] initWithDisplayETAToEndOfLeg:v5 displayRemainingMinutesToEndOfLeg:v4 displayETAToEndOfRoute:v8 displayRemainingMinutesToEndOfRoute:v7];
  displayETAToEndOfLeg = self->_displayETAToEndOfLeg;
  if (displayETAToEndOfLeg != v5 || self->_displayRemainingTimeToEndOfLeg != v4 || self->_displayETAToEndOfRoute != v8 || self->_displayRemainingTimeToEndOfRoute != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained etaDisplayFormatter:self didUpdateDisplayETA:v13];

    displayETAToEndOfLeg = self->_displayETAToEndOfLeg;
  }

  self->_displayRemainingTimeToEndOfLeg = v4;
  self->_displayETAToEndOfLeg = v5;
  v11 = v5;

  self->_displayRemainingTimeToEndOfRoute = v7;
  displayETAToEndOfRoute = self->_displayETAToEndOfRoute;
  self->_displayETAToEndOfRoute = v8;

  if (!self->_updateTimer)
  {
    [(MNETADisplayFormatter *)self _scheduleUpdateTimer];
  }
}

- (void)dealloc
{
  [(MNWeakTimer *)self->_updateTimer invalidate];
  v3.receiver = self;
  v3.super_class = MNETADisplayFormatter;
  [(MNETADisplayFormatter *)&v3 dealloc];
}

- (MNETADisplayFormatter)initWithTimeZone:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MNETADisplayFormatter;
  v6 = [(MNETADisplayFormatter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeZone, a3);
    v8 = v7;
  }

  return v7;
}

@end