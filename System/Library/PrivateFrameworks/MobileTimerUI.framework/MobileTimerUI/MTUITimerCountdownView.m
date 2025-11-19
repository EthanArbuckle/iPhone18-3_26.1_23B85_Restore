@interface MTUITimerCountdownView
- (BOOL)isStarted;
- (MTUITimerCountdownView)initWithBarColor:(id)a3 backgroundBarColor:(id)a4 barWidth:(double)a5;
- (MTUITimerCountdownView)initWithBarColor:(id)a3 backgroundBarColor:(id)a4 barWidth:(double)a5 remainingTime:(double)a6 duration:(double)a7;
- (void)layoutSubviews;
- (void)pause;
- (void)resume;
- (void)setAnimationRemainingTime:(double)a3 totalTime:(double)a4;
- (void)setupBackgroundCircle;
- (void)start;
- (void)stop;
@end

@implementation MTUITimerCountdownView

- (MTUITimerCountdownView)initWithBarColor:(id)a3 backgroundBarColor:(id)a4 barWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MTUITimerCountdownView;
  v10 = [(MTUITimerCountdownView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MTUITimerCountdownView *)v10 setBarColor:v8];
    [(MTUITimerCountdownView *)v11 setBarWidth:a5];
    [(MTUITimerCountdownView *)v11 setBackgroundBarColor:v9];
  }

  return v11;
}

- (MTUITimerCountdownView)initWithBarColor:(id)a3 backgroundBarColor:(id)a4 barWidth:(double)a5 remainingTime:(double)a6 duration:(double)a7
{
  v9 = [(MTUITimerCountdownView *)self initWithBarColor:a3 backgroundBarColor:a4 barWidth:a5];
  v10 = v9;
  if (v9)
  {
    [(MTUITimerCountdownView *)v9 setRemainingTime:a6];
    [(MTUITimerCountdownView *)v10 setDuration:a7];
  }

  return v10;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MTUITimerCountdownView;
  [(MTUITimerCountdownView *)&v24 layoutSubviews];
  v3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v3 beginTime];
  v5 = v4;

  if (v5 > 0.0)
  {
    if ([(MTUITimerCountdownView *)self state]== 2)
    {
      v6 = [(MTUITimerCountdownView *)self countdownCircleLayer];
      [v6 timeOffset];
      v8 = v7;
    }

    else
    {
      v9 = CACurrentMediaTime();
      v6 = [(MTUITimerCountdownView *)self countdownCircleLayer];
      [v6 beginTime];
      v8 = v9 - v10;
    }

    [(MTUITimerCountdownView *)self remainingTime];
    [(MTUITimerCountdownView *)self setRemainingTime:v11 - v8];
  }

  v12 = [(MTUITimerCountdownView *)self mainLayer];
  [v12 removeFromSuperlayer];

  v13 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(MTUITimerCountdownView *)self setMainLayer:v13];

  v14 = [(MTUITimerCountdownView *)self layer];
  v15 = [(MTUITimerCountdownView *)self mainLayer];
  [v14 addSublayer:v15];

  [(MTUITimerCountdownView *)self frame];
  v17 = v16;
  [(MTUITimerCountdownView *)self frame];
  v19 = v18;
  v20 = [(MTUITimerCountdownView *)self mainLayer];
  [v20 setFrame:{0.0, 0.0, v17, v19}];

  [(MTUITimerCountdownView *)self setupBackgroundCircle];
  [(MTUITimerCountdownView *)self remainingTime];
  v22 = v21;
  [(MTUITimerCountdownView *)self duration];
  [(MTUITimerCountdownView *)self setAnimationRemainingTime:v22 totalTime:v23];
  if ([(MTUITimerCountdownView *)self state]== 1)
  {
    [(MTUITimerCountdownView *)self start];
  }
}

- (void)setupBackgroundCircle
{
  v3 = [(MTUITimerCountdownView *)self backgroundCircleLayer];

  if (v3)
  {
    v4 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
    [v4 removeFromSuperlayer];
  }

  v5 = MEMORY[0x277D75208];
  [(MTUITimerCountdownView *)self frame];
  v7 = v6 * 0.5;
  [(MTUITimerCountdownView *)self frame];
  v9 = v8 * 0.5;
  [(MTUITimerCountdownView *)self frame];
  v11 = v10 * 0.5;
  [(MTUITimerCountdownView *)self barWidth];
  v13 = v11 - v12 * 0.5;
  [(MTUITimerCountdownView *)self degToRad:-90.0];
  v15 = v14;
  [(MTUITimerCountdownView *)self degToRad:270.0];
  v33 = [v5 bezierPathWithArcCenter:1 radius:v7 startAngle:v9 endAngle:v13 clockwise:{v15, v16}];
  v17 = objc_opt_new();
  [(MTUITimerCountdownView *)self setBackgroundCircleLayer:v17];

  v18 = v33;
  v19 = [v33 CGPath];
  v20 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v20 setPath:v19];

  v21 = [MEMORY[0x277D75348] clearColor];
  v22 = [v21 CGColor];
  v23 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v23 setFillColor:v22];

  v24 = [(MTUITimerCountdownView *)self backgroundBarColor];
  v25 = [v24 CGColor];
  v26 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v26 setStrokeColor:v25];

  [(MTUITimerCountdownView *)self barWidth];
  v28 = v27;
  v29 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v29 setLineWidth:v28];

  v30 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v30 setStrokeEnd:1.0];

  v31 = [(MTUITimerCountdownView *)self mainLayer];
  v32 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [v31 addSublayer:v32];
}

- (void)setAnimationRemainingTime:(double)a3 totalTime:(double)a4
{
  [(MTUITimerCountdownView *)self setRemainingTime:?];
  [(MTUITimerCountdownView *)self setDuration:a4];
  [(MTUITimerCountdownView *)self angleForValue:a3 total:a4];
  v8 = v7;
  v9 = [(MTUITimerCountdownView *)self countdownCircleLayer];

  if (v9)
  {
    v10 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v10 removeFromSuperlayer];
  }

  v11 = MEMORY[0x277D75208];
  [(MTUITimerCountdownView *)self frame];
  v13 = v12 * 0.5;
  [(MTUITimerCountdownView *)self frame];
  v15 = v14 * 0.5;
  [(MTUITimerCountdownView *)self frame];
  v17 = v16 * 0.5;
  [(MTUITimerCountdownView *)self barWidth];
  v19 = v17 - v18 * 0.5;
  [(MTUITimerCountdownView *)self degToRad:-90.0];
  v21 = v20;
  [(MTUITimerCountdownView *)self degToRad:v8];
  v41 = [v11 bezierPathWithArcCenter:1 radius:v13 startAngle:v15 endAngle:v19 clockwise:{v21, v22}];
  v23 = objc_opt_new();
  [(MTUITimerCountdownView *)self setCountdownCircleLayer:v23];

  v24 = v41;
  v25 = [v41 CGPath];
  v26 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v26 setPath:v25];

  v27 = [MEMORY[0x277D75348] clearColor];
  v28 = [v27 CGColor];
  v29 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v29 setFillColor:v28];

  v30 = [(MTUITimerCountdownView *)self barColor];
  v31 = [v30 CGColor];
  v32 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v32 setStrokeColor:v31];

  [(MTUITimerCountdownView *)self barWidth];
  v34 = v33;
  v35 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v35 setLineWidth:v34];

  v36 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v36 setStrokeEnd:1.0];

  v37 = *MEMORY[0x277CDA780];
  v38 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v38 setLineCap:v37];

  v39 = [(MTUITimerCountdownView *)self mainLayer];
  v40 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v39 addSublayer:v40];
}

- (void)start
{
  [(MTUITimerCountdownView *)self setState:1];
  v10 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [(MTUITimerCountdownView *)self remainingTime];
  [v10 setDuration:?];
  [v10 setFromValue:&unk_286BC8C40];
  [v10 setToValue:&unk_286BC8C58];
  [v10 setRemovedOnCompletion:0];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v10 setTimingFunction:v3];

  v4 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5;
  v7 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v7 setBeginTime:v6];

  v8 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v8 setStrokeEnd:0.0];

  v9 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v9 addAnimation:v10 forKey:@"MTUITimerCountdownViewAnimationKey"];
}

- (void)pause
{
  [(MTUITimerCountdownView *)self setState:2];
  v3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
  v5 = v4;

  v6 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v6 setSpeed:0.0];

  v7 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v7 setTimeOffset:v5];
}

- (void)stop
{
  [(MTUITimerCountdownView *)self setState:0];
  v3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [v3 removeAnimationForKey:@"MTUITimerCountdownViewAnimationKey"];
}

- (void)resume
{
  [(MTUITimerCountdownView *)self setState:1];
  v3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  v4 = [v3 animationForKey:@"MTUITimerCountdownViewAnimationKey"];

  if (v4)
  {
    v5 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v5 timeOffset];
    v7 = v6;

    v8 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    LODWORD(v9) = 1.0;
    [v8 setSpeed:v9];

    v10 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v10 setTimeOffset:0.0];

    v11 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v11 setBeginTime:0.0];

    v12 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v12 convertTime:0 fromLayer:CACurrentMediaTime()];
    v14 = v13 - v7;

    v15 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [v15 setBeginTime:v14];
  }

  else
  {

    [(MTUITimerCountdownView *)self start];
  }
}

- (BOOL)isStarted
{
  v3 = [(MTUITimerCountdownView *)self state];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MTUITimerCountdownView *)self state]== 2;
  }

  return v3;
}

@end