@interface MTStopwatchViewModel
- (MTStopwatch)getStopwatch;
- (double)runningTotalForLap:(int64_t)lap;
- (id)sourceIdentifier;
- (void)addLap:(double)lap;
- (void)clearAllLaps;
- (void)invalidateDisplayLink;
- (void)lapLapTimer;
- (void)pauseLapTimer;
- (void)resetLapTimer;
- (void)resumeLapTimer;
- (void)startLapTimer;
- (void)updateStopwatch:(id)stopwatch;
- (void)updateTime;
- (void)updateWithDisplayLink;
@end

@implementation MTStopwatchViewModel

- (void)updateStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel updateStopwatch:stopwatchCopy];
}

- (void)updateWithDisplayLink
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel updateWithDisplayLink];
}

- (void)invalidateDisplayLink
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel invalidateDisplayLink];
}

- (void)addLap:(double)lap
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel addLap:lap];
}

- (void)clearAllLaps
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel clearAllLaps];
}

- (void)lapLapTimer
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel lapLapTimer];
}

- (void)pauseLapTimer
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel pauseLapTimer];
}

- (void)resetLapTimer
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel resetLapTimer];
}

- (void)resumeLapTimer
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel resumeLapTimer];
}

- (void)startLapTimer
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel startLapTimer];
}

- (MTStopwatch)getStopwatch
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  getStopwatch = [viewModel getStopwatch];

  return getStopwatch;
}

- (void)updateTime
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel updateTime];
}

- (double)runningTotalForLap:(int64_t)lap
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  [viewModel runningTotalForLap:lap];
  v6 = v5;

  return v6;
}

- (id)sourceIdentifier
{
  viewModel = [(MTStopwatchViewModel *)self viewModel];
  sourceIdentifier = [viewModel sourceIdentifier];

  return sourceIdentifier;
}

@end