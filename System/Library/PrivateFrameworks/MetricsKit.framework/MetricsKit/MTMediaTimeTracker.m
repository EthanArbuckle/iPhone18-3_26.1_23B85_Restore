@interface MTMediaTimeTracker
- (MTMediaTimeTracker)initWithPosition:(unint64_t)a3 playbackRate:(float)a4;
- (float)playbackRate;
- (id)estimatedTimeAtPastPosition:(unint64_t)a3;
- (id)estimatedTimeAtPosition:(unint64_t)a3;
- (void)updatePosition:(unint64_t)a3;
- (void)updatePosition:(unint64_t)a3 playbackRate:(float)a4;
@end

@implementation MTMediaTimeTracker

- (MTMediaTimeTracker)initWithPosition:(unint64_t)a3 playbackRate:(float)a4
{
  v10.receiver = self;
  v10.super_class = MTMediaTimeTracker;
  v6 = [(MTMediaTimeTracker *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = a4;
    [(MTMediaTimeTracker *)v6 updatePosition:a3 playbackRate:v7];
  }

  return v8;
}

- (void)updatePosition:(unint64_t)a3
{
  v5 = +[MTFrameworkEnvironment sharedEnvironment];
  v6 = [v5 date];
  [(MTMediaTimeTracker *)self setDate:v6];

  [(MTMediaTimeTracker *)self setPosition:a3];
}

- (void)updatePosition:(unint64_t)a3 playbackRate:(float)a4
{
  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  v8 = [v7 date];
  [(MTMediaTimeTracker *)self setDate:v8];

  [(MTMediaTimeTracker *)self setPosition:a3];
  *&v9 = a4;

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

- (id)estimatedTimeAtPosition:(unint64_t)a3
{
  v4 = (a3 - [(MTMediaTimeTracker *)self position]) / 1000.0;
  v5 = [(MTMediaTimeTracker *)self date];
  [(MTMediaTimeTracker *)self playbackRate];
  v7 = [v5 dateByAddingTimeInterval:v4 / v6];

  return v7;
}

- (id)estimatedTimeAtPastPosition:(unint64_t)a3
{
  v3 = [(MTMediaTimeTracker *)self estimatedTimeAtPosition:a3];
  v4 = +[MTFrameworkEnvironment sharedEnvironment];
  v5 = [v4 date];

  if ([v3 compare:v5] == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

@end