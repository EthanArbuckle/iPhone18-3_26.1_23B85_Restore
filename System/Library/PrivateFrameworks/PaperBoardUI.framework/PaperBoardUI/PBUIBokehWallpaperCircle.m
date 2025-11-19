@interface PBUIBokehWallpaperCircle
+ (id)_newFadeAnimation;
+ (id)_newFlickerAnimation;
+ (id)_newScaleAnimation;
- (CGRect)superviewBounds;
- (PBUIBokehWallpaperCircle)initWithSuperviewBounds:(CGRect)a3 color:(int64_t)a4;
- (void)_pauseAnimations;
- (void)_resumeAnimations;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)configureAnimationsWithPhase:(double)a3;
- (void)randomize;
- (void)setAnimationsEnabled:(BOOL)a3;
- (void)setColor:(int64_t)a3;
- (void)updatePositionWithTime:(double)a3 dx:(double)a4 dy:(double)a5 lockScreen:(BOOL)a6;
@end

@implementation PBUIBokehWallpaperCircle

- (PBUIBokehWallpaperCircle)initWithSuperviewBounds:(CGRect)a3 color:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = PBUIBokehWallpaperCircle;
  v9 = [(PBUIBokehWallpaperCircle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_superviewBounds.origin.x = x;
    v9->_superviewBounds.origin.y = y;
    v9->_superviewBounds.size.width = width;
    v9->_superviewBounds.size.height = height;
    v9->_color = a4;
    [(PBUIBokehWallpaperCircle *)v9 randomize];
  }

  return v10;
}

- (void)randomize
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(PBUIBokehWallpaperCircle *)self setOpacity:0.0];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 130.0) + 40.0);
  v6 = 1.0;
  if (v4 == 1)
  {
    v6 = 1.5;
  }

  v7 = v6 * v5;
  v21 = CGRectInset(self->_superviewBounds, v6 * v5 * -0.5, v6 * v5 * -0.5);
  y = v21.origin.y;
  height = v21.size.height;
  x = v21.origin.x;
  width = v21.size.width;
  v12 = (x + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (width - x)));
  *&y = y;
  *&height = height;
  v13 = (*&y + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (*&height - *&y)));
  [(PBUIBokehWallpaperCircle *)self setBounds:0.0, 0.0, v7, v7];
  [(PBUIBokehWallpaperCircle *)self setPosition:v12, v13];
  [(PBUIBokehWallpaperCircle *)self setZPosition:v7];
  v14 = [PBUIBokehImageArbiter bokehImageForDiameter:v7];
  v15 = [PBUIBokehImageArbiter imageForBokehImage:v14];
  -[PBUIBokehWallpaperCircle setContents:](self, "setContents:", [v15 CGImage]);

  [(PBUIBokehWallpaperCircle *)self setColor:self->_color];
  v16 = ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 6.2832) + 0.0);
  v17 = ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 0.07) + 0.0);
  v18 = __sincos_stret(v16);
  self->_dxdt = v18.__cosval * v17;
  self->_dydt = v18.__sinval * v17;
  self->_speed = v7 * 1.5 / 170.0;
  [(PBUIBokehWallpaperCircle *)self configureAnimationsWithPhase:0.0];
  v19 = MEMORY[0x277CD9FF0];

  [v19 commit];
}

- (void)updatePositionWithTime:(double)a3 dx:(double)a4 dy:(double)a5 lockScreen:(BOOL)a6
{
  v6 = a6;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = 35.0;
  if (v6)
  {
    v13 = 140.0;
  }

  if (v12 == 1)
  {
    v14 = v13 * 1.5;
  }

  else
  {
    v14 = v13;
  }

  [(PBUIBokehWallpaperCircle *)self position];
  speed = self->_speed;
  v17 = v16 + (self->_dxdt + speed * a4 * v14) * 60.0 * a3;
  v19 = v18 + (self->_dydt + -(a5 * speed) * v14) * 60.0 * a3;

  [(PBUIBokehWallpaperCircle *)self setPosition:v17, v19];
}

- (void)setColor:(int64_t)a3
{
  self->_color = a3;
  v4 = [PBUIBokehColorArbiter randomCircleColorForBokehColor:a3];
  v5 = [v4 cgColor];

  [(PBUIBokehWallpaperCircle *)self setContentsMultiplyColor:v5];
}

- (void)configureAnimationsWithPhase:(double)a3
{
  [(PBUIBokehWallpaperCircle *)self removeAllAnimations];
  v8 = +[PBUIBokehWallpaperCircle _newFadeAnimation];
  [v8 setDelegate:self];
  [v8 setKeyPath:@"opacity"];
  [v8 setTimeOffset:a3];
  [(PBUIBokehWallpaperCircle *)self addAnimation:v8 forKey:@"fade"];
  v5 = +[PBUIBokehWallpaperCircle _newFlickerAnimation];
  [v5 setKeyPath:@"opacity"];
  [(PBUIBokehWallpaperCircle *)self addAnimation:v5 forKey:@"flicker"];
  if (vcvts_n_f32_s32(rand(), 0x1FuLL) < 0.5)
  {
    v6 = +[PBUIBokehWallpaperCircle _newScaleAnimation];
    [v6 setKeyPath:@"transform.scale.x"];
    [(PBUIBokehWallpaperCircle *)self addAnimation:v6 forKey:@"scale.x"];
    v7 = +[PBUIBokehWallpaperCircle _newScaleAnimation];
    [v7 setKeyPath:@"transform.scale.y"];
    [(PBUIBokehWallpaperCircle *)self addAnimation:v7 forKey:@"scale.y"];
  }
}

- (void)setAnimationsEnabled:(BOOL)a3
{
  v3 = a3;
  [(PBUIBokehWallpaperCircle *)self speed];
  if ((v5 != 0.0) != v3)
  {
    if (v3)
    {

      [(PBUIBokehWallpaperCircle *)self _resumeAnimations];
    }

    else
    {

      [(PBUIBokehWallpaperCircle *)self _pauseAnimations];
    }
  }
}

- (void)_pauseAnimations
{
  [(PBUIBokehWallpaperCircle *)self convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [(PBUIBokehWallpaperCircle *)self setSpeed:0.0];

  [(PBUIBokehWallpaperCircle *)self setTimeOffset:v4];
}

- (void)_resumeAnimations
{
  [(PBUIBokehWallpaperCircle *)self timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [(PBUIBokehWallpaperCircle *)self setSpeed:v3];
  [(PBUIBokehWallpaperCircle *)self setTimeOffset:0.0];
  [(PBUIBokehWallpaperCircle *)self setBeginTime:0.0];
  [(PBUIBokehWallpaperCircle *)self convertTime:0 fromLayer:CACurrentMediaTime()];
  [(PBUIBokehWallpaperCircle *)self setBeginTime:v5 - v4];
  v6 = [(PBUIBokehWallpaperCircle *)self animationForKey:@"fade"];

  if (!v6)
  {

    [(PBUIBokehWallpaperCircle *)self configureAnimationsWithPhase:0.0];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(PBUIBokehWallpaperCircle *)self randomize];
  }
}

+ (id)_newFadeAnimation
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 3.0) + 5.0) + 0.0;
  v3 = v2 + ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 14.0) + 3.0);
  v4 = v3 + ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 3.0) + 5.0);
  v5 = objc_alloc_init(MEMORY[0x277CD9EC8]);
  [v5 setAdditive:1];
  [v5 setValues:&unk_282FD59D8];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0 / v4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v2 / v4];
  v12[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v3 / v4];
  v12[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v4 / v4];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [v5 setKeyTimes:v10];

  [v5 setDuration:v4];
  v13 = CAFrameRateRangeMake(30.0, 60.0, 30.0);
  [v5 setPreferredFrameRateRange:{*&v13.minimum, *&v13.maximum, *&v13.preferred}];
  return v5;
}

+ (id)_newFlickerAnimation
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = rand();
  v3 = vcvts_n_f32_s32(rand(), 0x1FuLL);
  v4 = vcvts_n_f32_s32(rand(), 0x1FuLL);
  v5 = (v4 * 0.2) + 0.3;
  v6 = (v4 * 0.5) + 0.5;
  if (v3 >= 0.15)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = vcvts_n_f32_s32(rand(), 0x1FuLL);
  v9 = vcvts_n_f32_s32(rand(), 0x1FuLL);
  v10 = v9 + 0.5;
  v11 = (v9 * 0.4) + 0.1;
  if (v8 < 0.15)
  {
    v11 = v10;
  }

  v12 = ((vcvts_n_f32_s32(v2, 0x1FuLL) * 0.1) + 0.0);
  v13 = v11 * 0.5;
  v14 = v13 + 0.0;
  v15 = v13 + 0.0 + v7;
  v16 = v13 + v15;
  v17 = objc_alloc_init(MEMORY[0x277CD9EC8]);
  [v17 setAdditive:1];
  v30[0] = &unk_282FD5C68;
  v30[1] = &unk_282FD5C68;
  v18 = -v12;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v30[2] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v30[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v17 setValues:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:0.0 / v16];
  v29[0] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v14 / v16];
  v29[1] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v15 / v16];
  v29[2] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v16 / v16];
  v29[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v17 setKeyTimes:v26];

  [v17 setDuration:v16];
  [v17 setAutoreverses:1];
  LODWORD(v27) = 2139095040;
  [v17 setRepeatCount:v27];
  v31 = CAFrameRateRangeMake(30.0, 60.0, 30.0);
  [v17 setPreferredFrameRateRange:{*&v31.minimum, *&v31.maximum, *&v31.preferred}];
  return v17;
}

+ (id)_newScaleAnimation
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = ((vcvts_n_f32_s32(rand(), 0x1FuLL) * 0.4) + 0.2) * 0.5;
  v3 = v2 + 0.0;
  v4 = v2 + 0.0 + 0.4;
  v5 = v2 + v4;
  v6 = objc_alloc_init(MEMORY[0x277CD9EC8]);
  [v6 setAdditive:1];
  v18[0] = &unk_282FD5C68;
  v18[1] = &unk_282FD5C68;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:-0.0125];
  v18[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:-0.0125];
  v18[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v6 setValues:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0 / v5];
  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v3 / v5];
  v17[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v4 / v5];
  v17[2] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v5 / v5];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  [v6 setKeyTimes:v14];

  [v6 setDuration:v5];
  *&v5 = v5;
  [v6 setTimeOffset:{((vcvts_n_f32_s32(rand(), 0x1FuLL) * *&v5) + 0.0)}];
  [v6 setAutoreverses:1];
  LODWORD(v15) = 2139095040;
  [v6 setRepeatCount:v15];
  v19 = CAFrameRateRangeMake(30.0, 60.0, 30.0);
  [v6 setPreferredFrameRateRange:{*&v19.minimum, *&v19.maximum, *&v19.preferred}];
  return v6;
}

- (CGRect)superviewBounds
{
  x = self->_superviewBounds.origin.x;
  y = self->_superviewBounds.origin.y;
  width = self->_superviewBounds.size.width;
  height = self->_superviewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end