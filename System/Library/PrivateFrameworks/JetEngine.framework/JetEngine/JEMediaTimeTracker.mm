@interface JEMediaTimeTracker
- (JEMediaTimeTracker)initWithPosition:(unint64_t)a3 playbackRate:(float)a4;
- (float)playbackRate;
- (id)estimatedTimeAtPastPosition:(unint64_t)a3;
- (id)estimatedTimeAtPosition:(unint64_t)a3;
- (void)updatePosition:(unint64_t)a3;
- (void)updatePosition:(unint64_t)a3 playbackRate:(float)a4;
@end

@implementation JEMediaTimeTracker

- (JEMediaTimeTracker)initWithPosition:(unint64_t)a3 playbackRate:(float)a4
{
  v10.receiver = self;
  v10.super_class = JEMediaTimeTracker;
  v6 = [(JEMediaTimeTracker *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(JEMediaTimeTrackerDateProvider);
    [(JEMediaTimeTracker *)v6 setDateProvider:v7];

    *&v8 = a4;
    [(JEMediaTimeTracker *)v6 updatePosition:a3 playbackRate:v8];
  }

  return v6;
}

- (void)updatePosition:(unint64_t)a3
{
  v5 = [(JEMediaTimeTracker *)self dateProvider];
  v6 = [v5 date];
  [(JEMediaTimeTracker *)self setDate:v6];

  [(JEMediaTimeTracker *)self setPosition:a3];
}

- (void)updatePosition:(unint64_t)a3 playbackRate:(float)a4
{
  v7 = [(JEMediaTimeTracker *)self dateProvider];
  v8 = [v7 date];
  [(JEMediaTimeTracker *)self setDate:v8];

  [(JEMediaTimeTracker *)self setPosition:a3];
  *&v9 = a4;

  [(JEMediaTimeTracker *)self setPlaybackRate:v9];
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
  v4 = (a3 - [(JEMediaTimeTracker *)self position]) / 1000.0;
  v5 = [(JEMediaTimeTracker *)self date];
  [(JEMediaTimeTracker *)self playbackRate];
  v7 = [v5 dateByAddingTimeInterval:v4 / v6];

  return v7;
}

- (id)estimatedTimeAtPastPosition:(unint64_t)a3
{
  v3 = [(JEMediaTimeTracker *)self estimatedTimeAtPosition:a3];
  v4 = [MEMORY[0x1E695DF00] date];
  if ([v3 compare:v4] == -1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

@end