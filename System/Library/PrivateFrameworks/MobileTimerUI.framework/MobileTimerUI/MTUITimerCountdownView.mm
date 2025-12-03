@interface MTUITimerCountdownView
- (BOOL)isStarted;
- (MTUITimerCountdownView)initWithBarColor:(id)color backgroundBarColor:(id)barColor barWidth:(double)width;
- (MTUITimerCountdownView)initWithBarColor:(id)color backgroundBarColor:(id)barColor barWidth:(double)width remainingTime:(double)time duration:(double)duration;
- (void)layoutSubviews;
- (void)pause;
- (void)resume;
- (void)setAnimationRemainingTime:(double)time totalTime:(double)totalTime;
- (void)setupBackgroundCircle;
- (void)start;
- (void)stop;
@end

@implementation MTUITimerCountdownView

- (MTUITimerCountdownView)initWithBarColor:(id)color backgroundBarColor:(id)barColor barWidth:(double)width
{
  colorCopy = color;
  barColorCopy = barColor;
  v13.receiver = self;
  v13.super_class = MTUITimerCountdownView;
  v10 = [(MTUITimerCountdownView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MTUITimerCountdownView *)v10 setBarColor:colorCopy];
    [(MTUITimerCountdownView *)v11 setBarWidth:width];
    [(MTUITimerCountdownView *)v11 setBackgroundBarColor:barColorCopy];
  }

  return v11;
}

- (MTUITimerCountdownView)initWithBarColor:(id)color backgroundBarColor:(id)barColor barWidth:(double)width remainingTime:(double)time duration:(double)duration
{
  v9 = [(MTUITimerCountdownView *)self initWithBarColor:color backgroundBarColor:barColor barWidth:width];
  v10 = v9;
  if (v9)
  {
    [(MTUITimerCountdownView *)v9 setRemainingTime:time];
    [(MTUITimerCountdownView *)v10 setDuration:duration];
  }

  return v10;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MTUITimerCountdownView;
  [(MTUITimerCountdownView *)&v24 layoutSubviews];
  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer beginTime];
  v5 = v4;

  if (v5 > 0.0)
  {
    if ([(MTUITimerCountdownView *)self state]== 2)
    {
      countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
      [countdownCircleLayer2 timeOffset];
      v8 = v7;
    }

    else
    {
      v9 = CACurrentMediaTime();
      countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
      [countdownCircleLayer2 beginTime];
      v8 = v9 - v10;
    }

    [(MTUITimerCountdownView *)self remainingTime];
    [(MTUITimerCountdownView *)self setRemainingTime:v11 - v8];
  }

  mainLayer = [(MTUITimerCountdownView *)self mainLayer];
  [mainLayer removeFromSuperlayer];

  v13 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(MTUITimerCountdownView *)self setMainLayer:v13];

  layer = [(MTUITimerCountdownView *)self layer];
  mainLayer2 = [(MTUITimerCountdownView *)self mainLayer];
  [layer addSublayer:mainLayer2];

  [(MTUITimerCountdownView *)self frame];
  v17 = v16;
  [(MTUITimerCountdownView *)self frame];
  v19 = v18;
  mainLayer3 = [(MTUITimerCountdownView *)self mainLayer];
  [mainLayer3 setFrame:{0.0, 0.0, v17, v19}];

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
  backgroundCircleLayer = [(MTUITimerCountdownView *)self backgroundCircleLayer];

  if (backgroundCircleLayer)
  {
    backgroundCircleLayer2 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
    [backgroundCircleLayer2 removeFromSuperlayer];
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
  cGPath = [v33 CGPath];
  backgroundCircleLayer3 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [backgroundCircleLayer3 setPath:cGPath];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor = [clearColor CGColor];
  backgroundCircleLayer4 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [backgroundCircleLayer4 setFillColor:cGColor];

  backgroundBarColor = [(MTUITimerCountdownView *)self backgroundBarColor];
  cGColor2 = [backgroundBarColor CGColor];
  backgroundCircleLayer5 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [backgroundCircleLayer5 setStrokeColor:cGColor2];

  [(MTUITimerCountdownView *)self barWidth];
  v28 = v27;
  backgroundCircleLayer6 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [backgroundCircleLayer6 setLineWidth:v28];

  backgroundCircleLayer7 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [backgroundCircleLayer7 setStrokeEnd:1.0];

  mainLayer = [(MTUITimerCountdownView *)self mainLayer];
  backgroundCircleLayer8 = [(MTUITimerCountdownView *)self backgroundCircleLayer];
  [mainLayer addSublayer:backgroundCircleLayer8];
}

- (void)setAnimationRemainingTime:(double)time totalTime:(double)totalTime
{
  [(MTUITimerCountdownView *)self setRemainingTime:?];
  [(MTUITimerCountdownView *)self setDuration:totalTime];
  [(MTUITimerCountdownView *)self angleForValue:time total:totalTime];
  v8 = v7;
  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];

  if (countdownCircleLayer)
  {
    countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer2 removeFromSuperlayer];
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
  cGPath = [v41 CGPath];
  countdownCircleLayer3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer3 setPath:cGPath];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor = [clearColor CGColor];
  countdownCircleLayer4 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer4 setFillColor:cGColor];

  barColor = [(MTUITimerCountdownView *)self barColor];
  cGColor2 = [barColor CGColor];
  countdownCircleLayer5 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer5 setStrokeColor:cGColor2];

  [(MTUITimerCountdownView *)self barWidth];
  v34 = v33;
  countdownCircleLayer6 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer6 setLineWidth:v34];

  countdownCircleLayer7 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer7 setStrokeEnd:1.0];

  v37 = *MEMORY[0x277CDA780];
  countdownCircleLayer8 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer8 setLineCap:v37];

  mainLayer = [(MTUITimerCountdownView *)self mainLayer];
  countdownCircleLayer9 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [mainLayer addSublayer:countdownCircleLayer9];
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

  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5;
  countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer2 setBeginTime:v6];

  countdownCircleLayer3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer3 setStrokeEnd:0.0];

  countdownCircleLayer4 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer4 addAnimation:v10 forKey:@"MTUITimerCountdownViewAnimationKey"];
}

- (void)pause
{
  [(MTUITimerCountdownView *)self setState:2];
  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer convertTime:0 fromLayer:CACurrentMediaTime()];
  v5 = v4;

  countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer2 setSpeed:0.0];

  countdownCircleLayer3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer3 setTimeOffset:v5];
}

- (void)stop
{
  [(MTUITimerCountdownView *)self setState:0];
  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];
  [countdownCircleLayer removeAnimationForKey:@"MTUITimerCountdownViewAnimationKey"];
}

- (void)resume
{
  [(MTUITimerCountdownView *)self setState:1];
  countdownCircleLayer = [(MTUITimerCountdownView *)self countdownCircleLayer];
  v4 = [countdownCircleLayer animationForKey:@"MTUITimerCountdownViewAnimationKey"];

  if (v4)
  {
    countdownCircleLayer2 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer2 timeOffset];
    v7 = v6;

    countdownCircleLayer3 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    LODWORD(v9) = 1.0;
    [countdownCircleLayer3 setSpeed:v9];

    countdownCircleLayer4 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer4 setTimeOffset:0.0];

    countdownCircleLayer5 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer5 setBeginTime:0.0];

    countdownCircleLayer6 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer6 convertTime:0 fromLayer:CACurrentMediaTime()];
    v14 = v13 - v7;

    countdownCircleLayer7 = [(MTUITimerCountdownView *)self countdownCircleLayer];
    [countdownCircleLayer7 setBeginTime:v14];
  }

  else
  {

    [(MTUITimerCountdownView *)self start];
  }
}

- (BOOL)isStarted
{
  state = [(MTUITimerCountdownView *)self state];
  if (state != 1)
  {
    LOBYTE(state) = [(MTUITimerCountdownView *)self state]== 2;
  }

  return state;
}

@end