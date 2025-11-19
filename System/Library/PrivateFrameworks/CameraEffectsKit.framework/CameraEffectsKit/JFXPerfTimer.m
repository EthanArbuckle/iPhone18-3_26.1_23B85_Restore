@interface JFXPerfTimer
- (JFXPerfTimer)init;
- (double)end;
@end

@implementation JFXPerfTimer

- (JFXPerfTimer)init
{
  v5.receiver = self;
  v5.super_class = JFXPerfTimer;
  v2 = [(JFXPerfTimer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_start = 0.0;
    v2->_end = 0.0;
    [(JFXPerfTimer *)v2 start];
  }

  return v3;
}

- (double)end
{
  self->_end = JTGetHostTime();

  [(JFXPerfTimer *)self elapsedTimeMS];
  return result;
}

@end