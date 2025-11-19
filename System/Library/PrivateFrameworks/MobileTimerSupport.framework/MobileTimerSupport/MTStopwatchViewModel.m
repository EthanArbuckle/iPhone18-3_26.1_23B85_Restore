@interface MTStopwatchViewModel
- (MTStopwatch)getStopwatch;
- (double)runningTotalForLap:(int64_t)a3;
- (id)sourceIdentifier;
- (void)addLap:(double)a3;
- (void)clearAllLaps;
- (void)invalidateDisplayLink;
- (void)lapLapTimer;
- (void)pauseLapTimer;
- (void)resetLapTimer;
- (void)resumeLapTimer;
- (void)startLapTimer;
- (void)updateStopwatch:(id)a3;
- (void)updateTime;
- (void)updateWithDisplayLink;
@end

@implementation MTStopwatchViewModel

- (void)updateStopwatch:(id)a3
{
  v4 = a3;
  v5 = [(MTStopwatchViewModel *)self viewModel];
  [v5 updateStopwatch:v4];
}

- (void)updateWithDisplayLink
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 updateWithDisplayLink];
}

- (void)invalidateDisplayLink
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 invalidateDisplayLink];
}

- (void)addLap:(double)a3
{
  v4 = [(MTStopwatchViewModel *)self viewModel];
  [v4 addLap:a3];
}

- (void)clearAllLaps
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 clearAllLaps];
}

- (void)lapLapTimer
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 lapLapTimer];
}

- (void)pauseLapTimer
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 pauseLapTimer];
}

- (void)resetLapTimer
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 resetLapTimer];
}

- (void)resumeLapTimer
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 resumeLapTimer];
}

- (void)startLapTimer
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 startLapTimer];
}

- (MTStopwatch)getStopwatch
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  v3 = [v2 getStopwatch];

  return v3;
}

- (void)updateTime
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  [v2 updateTime];
}

- (double)runningTotalForLap:(int64_t)a3
{
  v4 = [(MTStopwatchViewModel *)self viewModel];
  [v4 runningTotalForLap:a3];
  v6 = v5;

  return v6;
}

- (id)sourceIdentifier
{
  v2 = [(MTStopwatchViewModel *)self viewModel];
  v3 = [v2 sourceIdentifier];

  return v3;
}

@end