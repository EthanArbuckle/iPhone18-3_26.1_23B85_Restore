@interface NATimeFormatter
- (NATimeFormatter)init;
- (id)formatElapsedDuration:(double)duration;
- (id)formatRemainingDuration:(double)duration;
@end

@implementation NATimeFormatter

- (NATimeFormatter)init
{
  v8.receiver = self;
  v8.super_class = NATimeFormatter;
  v2 = [(NATimeFormatter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6988158]);
    [(NATimeFormatter *)v2 setElapsedDurationFormatter:v3];

    elapsedDurationFormatter = [(NATimeFormatter *)v2 elapsedDurationFormatter];
    [elapsedDurationFormatter setStyle:1];

    v5 = objc_alloc_init(MEMORY[0x1E6988158]);
    [(NATimeFormatter *)v2 setRemainingDurationFormatter:v5];

    remainingDurationFormatter = [(NATimeFormatter *)v2 remainingDurationFormatter];
    [remainingDurationFormatter setStyle:2];
  }

  return v2;
}

- (id)formatElapsedDuration:(double)duration
{
  elapsedDurationFormatter = [(NATimeFormatter *)self elapsedDurationFormatter];
  v5 = [elapsedDurationFormatter stringFromSeconds:duration];

  return v5;
}

- (id)formatRemainingDuration:(double)duration
{
  remainingDurationFormatter = [(NATimeFormatter *)self remainingDurationFormatter];
  v5 = [remainingDurationFormatter stringFromSeconds:duration];

  return v5;
}

@end