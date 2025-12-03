@interface JEMediaTimeTracker
- (JEMediaTimeTracker)initWithPosition:(unint64_t)position playbackRate:(float)rate;
- (float)playbackRate;
- (id)estimatedTimeAtPastPosition:(unint64_t)position;
- (id)estimatedTimeAtPosition:(unint64_t)position;
- (void)updatePosition:(unint64_t)position;
- (void)updatePosition:(unint64_t)position playbackRate:(float)rate;
@end

@implementation JEMediaTimeTracker

- (JEMediaTimeTracker)initWithPosition:(unint64_t)position playbackRate:(float)rate
{
  v10.receiver = self;
  v10.super_class = JEMediaTimeTracker;
  v6 = [(JEMediaTimeTracker *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(JEMediaTimeTrackerDateProvider);
    [(JEMediaTimeTracker *)v6 setDateProvider:v7];

    *&v8 = rate;
    [(JEMediaTimeTracker *)v6 updatePosition:position playbackRate:v8];
  }

  return v6;
}

- (void)updatePosition:(unint64_t)position
{
  dateProvider = [(JEMediaTimeTracker *)self dateProvider];
  date = [dateProvider date];
  [(JEMediaTimeTracker *)self setDate:date];

  [(JEMediaTimeTracker *)self setPosition:position];
}

- (void)updatePosition:(unint64_t)position playbackRate:(float)rate
{
  dateProvider = [(JEMediaTimeTracker *)self dateProvider];
  date = [dateProvider date];
  [(JEMediaTimeTracker *)self setDate:date];

  [(JEMediaTimeTracker *)self setPosition:position];
  *&v9 = rate;

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

- (id)estimatedTimeAtPosition:(unint64_t)position
{
  v4 = (position - [(JEMediaTimeTracker *)self position]) / 1000.0;
  date = [(JEMediaTimeTracker *)self date];
  [(JEMediaTimeTracker *)self playbackRate];
  v7 = [date dateByAddingTimeInterval:v4 / v6];

  return v7;
}

- (id)estimatedTimeAtPastPosition:(unint64_t)position
{
  v3 = [(JEMediaTimeTracker *)self estimatedTimeAtPosition:position];
  date = [MEMORY[0x1E695DF00] date];
  if ([v3 compare:date] == -1)
  {
    v5 = v3;
  }

  else
  {
    v5 = date;
  }

  v6 = v5;

  return v5;
}

@end