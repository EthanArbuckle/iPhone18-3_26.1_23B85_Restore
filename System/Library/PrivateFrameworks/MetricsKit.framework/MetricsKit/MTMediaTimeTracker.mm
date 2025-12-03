@interface MTMediaTimeTracker
- (MTMediaTimeTracker)initWithPosition:(unint64_t)position playbackRate:(float)rate;
- (float)playbackRate;
- (id)estimatedTimeAtPastPosition:(unint64_t)position;
- (id)estimatedTimeAtPosition:(unint64_t)position;
- (void)updatePosition:(unint64_t)position;
- (void)updatePosition:(unint64_t)position playbackRate:(float)rate;
@end

@implementation MTMediaTimeTracker

- (MTMediaTimeTracker)initWithPosition:(unint64_t)position playbackRate:(float)rate
{
  v10.receiver = self;
  v10.super_class = MTMediaTimeTracker;
  v6 = [(MTMediaTimeTracker *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = rate;
    [(MTMediaTimeTracker *)v6 updatePosition:position playbackRate:v7];
  }

  return v8;
}

- (void)updatePosition:(unint64_t)position
{
  v5 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v5 date];
  [(MTMediaTimeTracker *)self setDate:date];

  [(MTMediaTimeTracker *)self setPosition:position];
}

- (void)updatePosition:(unint64_t)position playbackRate:(float)rate
{
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v7 date];
  [(MTMediaTimeTracker *)self setDate:date];

  [(MTMediaTimeTracker *)self setPosition:position];
  *&v9 = rate;

  [(MTMediaTimeTracker *)self setPlaybackRate:v9];
}

- (float)playbackRate
{
  result = self->_playbackRate;
  if (result == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (id)estimatedTimeAtPosition:(unint64_t)position
{
  v4 = (position - [(MTMediaTimeTracker *)self position]) / 1000.0;
  date = [(MTMediaTimeTracker *)self date];
  [(MTMediaTimeTracker *)self playbackRate];
  v7 = [date dateByAddingTimeInterval:v4 / v6];

  return v7;
}

- (id)estimatedTimeAtPastPosition:(unint64_t)position
{
  v3 = [(MTMediaTimeTracker *)self estimatedTimeAtPosition:position];
  v4 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v4 date];

  if ([v3 compare:date] == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = date;
  }

  v7 = v6;

  return v6;
}

@end