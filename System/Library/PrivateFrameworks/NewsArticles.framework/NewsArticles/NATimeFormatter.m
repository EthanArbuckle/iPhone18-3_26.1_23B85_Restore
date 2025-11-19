@interface NATimeFormatter
- (NATimeFormatter)init;
- (id)formatElapsedDuration:(double)a3;
- (id)formatRemainingDuration:(double)a3;
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

    v4 = [(NATimeFormatter *)v2 elapsedDurationFormatter];
    [v4 setStyle:1];

    v5 = objc_alloc_init(MEMORY[0x1E6988158]);
    [(NATimeFormatter *)v2 setRemainingDurationFormatter:v5];

    v6 = [(NATimeFormatter *)v2 remainingDurationFormatter];
    [v6 setStyle:2];
  }

  return v2;
}

- (id)formatElapsedDuration:(double)a3
{
  v4 = [(NATimeFormatter *)self elapsedDurationFormatter];
  v5 = [v4 stringFromSeconds:a3];

  return v5;
}

- (id)formatRemainingDuration:(double)a3
{
  v4 = [(NATimeFormatter *)self remainingDurationFormatter];
  v5 = [v4 stringFromSeconds:a3];

  return v5;
}

@end