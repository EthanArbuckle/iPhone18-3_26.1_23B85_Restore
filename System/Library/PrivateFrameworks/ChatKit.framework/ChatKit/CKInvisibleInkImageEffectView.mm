@interface CKInvisibleInkImageEffectView
- (CKInvisibleInkImageEffectView)initWithFrame:(CGRect)a3;
- (void)addDustRandomEmitterAnimationsWithSize:(CGSize)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)disableBlending;
- (void)enableBlending;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterFingerEffects;
- (void)endEmittersForTouchesCancelled:(id)a3;
- (void)endEmittersForTouchesEnded:(id)a3;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)a3;
- (void)moveEmittersForTouchesMoved:(id)a3;
- (void)moveEmittersWithTouches:(id)a3;
- (void)reset;
- (void)setImage:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setRandomAttractorsEnabled:(BOOL)a3;
- (void)setSuspended:(BOOL)a3;
- (void)setupDrawEmitter;
- (void)setupDustEmitter;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CKInvisibleInkImageEffectView

- (CKInvisibleInkImageEffectView)initWithFrame:(CGRect)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKInvisibleInkImageEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkImageEffectView *)v3 setBlurredImageContainerLayer:v4];

    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v5 setValue:&unk_1F04E8400 forKey:@"inputRadius"];
    [v5 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    v6 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkImageEffectView *)v3 setBlurredImageLayer:v6];

    v7 = *MEMORY[0x1E6979DF0];
    v8 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v8 setContentsGravity:v7];

    v9 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v9 setShouldRasterize:1];

    v10 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v10 setRasterizationScale:0.5];

    v28[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v12 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v12 setFilters:v11];

    v13 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v13 setMasksToBounds:1];

    [(CKInvisibleInkImageEffectView *)v3 setupDrawEmitter];
    [(CKInvisibleInkImageEffectView *)v3 setupDustEmitter];
    v14 = [(CKInvisibleInkImageEffectView *)v3 layer];
    v15 = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    [v14 addSublayer:v15];

    v16 = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    v17 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [v16 addSublayer:v17];

    v18 = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    v19 = [(CKInvisibleInkImageEffectView *)v3 drawEmitterContainerLayer];
    [v18 addSublayer:v19];

    v20 = [(CKInvisibleInkImageEffectView *)v3 drawEmitterContainerLayer];
    v21 = [(CKInvisibleInkImageEffectView *)v3 drawEmitterLayer];
    [v20 addSublayer:v21];

    v22 = [(CKInvisibleInkImageEffectView *)v3 layer];
    v23 = [(CKInvisibleInkImageEffectView *)v3 dustEmitterContainerLayer];
    [v22 addSublayer:v23];

    v24 = [(CKInvisibleInkImageEffectView *)v3 dustEmitterContainerLayer];
    v25 = [(CKInvisibleInkImageEffectView *)v3 dustEmitterLayer];
    [v24 addSublayer:v25];
  }

  return v3;
}

- (void)setupDrawEmitter
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979398] layer];
  [(CKInvisibleInkImageEffectView *)self setDrawEmitterContainerLayer:v3];

  v4 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v4 setMasksToBounds:1];

  v5 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v5 setRasterizationScale:0.25];

  v6 = [MEMORY[0x1E6979360] emitterCell];
  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurLarge"];
  [v6 setContents:{objc_msgSend(v7, "CGImage")}];

  LODWORD(v8) = 1114636288;
  [v6 setBirthRate:v8];
  [v6 setDuration:INFINITY];
  [v6 setEmissionRange:0.785398163];
  LODWORD(v9) = 2.0;
  [v6 setLifetime:v9];
  LODWORD(v10) = 2.0;
  [v6 setLifetimeRange:v10];
  [v6 setScale:4.4];
  [v6 setVelocityRange:45.0];
  [v6 setEmissionRange:0.785398163];
  [v6 setParticleType:*MEMORY[0x1E6979778]];
  [v6 setName:@"drawCell"];
  v11 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979750]];
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v33[0] = [v12 CGColor];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v33[1] = [v13 CGColor];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v11 setValue:v14 forKey:@"colors"];

  [v11 setValue:&unk_1F04E7398 forKey:@"locations"];
  v15 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v15 setName:@"scaleBehavior"];
  [v15 setValue:@"scale" forKey:@"keyPath"];
  [v15 setValue:&unk_1F04E73B0 forKey:@"values"];
  [v15 setValue:&unk_1F04E73C8 forKey:@"locations"];
  v16 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkImageEffectView *)self setDrawEmitterLayer:v16];

  v17 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v17 setInheritsTiming:0];

  v18 = CACurrentMediaTime();
  v19 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v19 setBeginTime:v18];

  v20 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v20 setLifetime:0.0];

  v21 = *MEMORY[0x1E69797A8];
  v22 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v22 setEmitterMode:v21];

  v23 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v23 setRenderMode:@"cheapAdditive"];

  v32 = v6;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v25 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v25 setEmitterCells:v24];

  v31[0] = v11;
  v31[1] = v15;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v27 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v27 setEmitterBehaviors:v26];

  [objc_opt_class() updateInterval];
  v29 = v28;
  v30 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v30 setUpdateInterval:v29];
}

- (void)setupDustEmitter
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979398] layer];
  [(CKInvisibleInkImageEffectView *)self setDustEmitterContainerLayer:v3];

  v4 = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  v5 = 1;
  [v4 setMasksToBounds:1];

  v47 = self;
  v6 = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  [v6 setAllowsGroupBlending:0];

  v7 = [MEMORY[0x1E6979360] emitterCell];
  v8 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"speckle"];
  [v7 setContents:{objc_msgSend(v8, "CGImage")}];

  LODWORD(v9) = 1150681088;
  [v7 setBirthRate:v9];
  [v7 setContentsScale:1.79999995];
  [v7 setEmissionRange:6.28318531];
  LODWORD(v10) = 1008981770;
  [v7 setMassRange:v10];
  LODWORD(v11) = 8.0;
  [v7 setLifetime:v11];
  [v7 setScale:0.5];
  [v7 setVelocityRange:0.0];
  [v7 setName:@"dustCell"];
  v12 = [MEMORY[0x1E69DC888] whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.0];
  [v7 setColor:{objc_msgSend(v13, "CGColor")}];

  LODWORD(v14) = 1.0;
  [v7 setAlphaRange:v14];
  v46 = v7;
  [v7 setParticleType:*MEMORY[0x1E6979778]];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = *MEMORY[0x1E6979758];
  v17 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979758]];
  [v17 setName:@"fingerAttractor"];
  v45 = v17;
  [v15 addObject:v17];
  v18 = *MEMORY[0x1E6979760];
  v19 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v19 setName:@"alphaBehavior"];
  [v19 setValue:@"color.alpha" forKey:@"keyPath"];
  [v19 setValue:&unk_1F04E73E0 forKey:@"values"];
  [v19 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  v44 = v19;
  [v15 addObject:v19];
  v20 = [MEMORY[0x1E6979358] behaviorWithType:v18];
  [v20 setName:@"scaleBehavior"];
  [v20 setValue:@"scale" forKey:@"keyPath"];
  [v20 setValue:&unk_1F04E73F8 forKey:@"values"];
  [v20 setValue:&unk_1F04E7410 forKey:@"locations"];
  v43 = v20;
  [v15 addObject:v20];
  v21 = 0;
  v22 = *MEMORY[0x1E695EFF8];
  v23 = *(MEMORY[0x1E695EFF8] + 8);
  do
  {
    v24 = v5;
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"randomAttractor%d", v21];
    v26 = [MEMORY[0x1E6979358] behaviorWithType:v16];
    [v26 setName:v25];
    [v26 setValue:&unk_1F04E8460 forKey:@"radius"];
    [v26 setValue:&unk_1F04E8478 forKey:@"stiffness"];
    [v26 setValue:&unk_1F04E8490 forKey:@"falloff"];
    v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v23}];
    [v26 setValue:v27 forKey:@"position"];

    [v15 addObject:v26];
    v5 = 0;
    v21 = 1;
  }

  while ((v24 & 1) != 0);
  v28 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkImageEffectView *)v47 setDustEmitterLayer:v28];

  v29 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v29 setInheritsTiming:0];

  v30 = CACurrentMediaTime();
  v31 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v31 setBeginTime:v30];

  v32 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v32 setMasksToBounds:1];

  v48[0] = v46;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v34 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v34 setEmitterCells:v33];

  v35 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v35 setEmitterBehaviors:v15];

  v36 = *MEMORY[0x1E69797B0];
  v37 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v37 setEmitterShape:v36];

  v38 = *MEMORY[0x1E6979790];
  v39 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v39 setRenderMode:v38];

  [objc_opt_class() updateInterval];
  v41 = v40;
  v42 = [(CKInvisibleInkImageEffectView *)v47 dustEmitterLayer];
  [v42 setUpdateInterval:v41];

  [(CKInvisibleInkImageEffectView *)v47 endDustEmitterFingerEffects];
}

- (void)addDustRandomEmitterAnimationsWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v32 = [MEMORY[0x1E6979318] animation];
  v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v32 setTimingFunction:v5];

  [v32 setFromValue:&unk_1F04E84A8];
  [v32 setToValue:&unk_1F04E84C0];
  [v32 setDuration:2.0];
  LODWORD(v6) = 2139095040;
  [v32 setRepeatCount:v6];
  v7 = 1;
  [v32 setAutoreverses:1];
  [v32 setRemovedOnCompletion:0];
  v8 = *MEMORY[0x1E69797E0];
  [v32 setFillMode:*MEMORY[0x1E69797E0]];
  v9 = [MEMORY[0x1E6979390] animation];
  [v9 setCalculationMode:*MEMORY[0x1E69795A0]];
  [v9 setDuration:3.0];
  LODWORD(v10) = 2139095040;
  [v9 setRepeatCount:v10];
  [v9 setAutoreverses:1];
  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:v8];
  v11 = 0;
  v12 = 0.5;
  do
  {
    v13 = v7;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.falloff", v11];
    [v32 setKeyPath:v14];

    v15 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v16 = [v32 keyPath];
    [v15 addAnimation:v32 forKey:v16];

    v33 = dbl_190DD1B88[v11];
    v34 = dbl_190DD1B68[v11];
    v17 = 36;
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:36];
    v19 = v11;
    v20 = v11 * 0.1 + 0.3;
    v21 = 0.0;
    do
    {
      v22 = v21 * v12;
      v23 = height;
      v24 = v22 + v19;
      v25 = width * (v20 * cos(v34 * (v22 + v19) * 3.14159265) + 0.5);
      v26 = v33 * v24;
      height = v23;
      v12 = 0.5;
      v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, (height * (v20 * sin(v26 * 3.14159265) + 0.5))}];
      [v18 addObject:v27];

      v21 = v21 + 1.0;
      --v17;
    }

    while (v17);
    [v9 setValues:v18];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.position", v11];
    [v9 setKeyPath:v28];

    v29 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v30 = [v9 keyPath];
    [v29 addAnimation:v9 forKey:v30];

    v7 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
}

- (void)setImage:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKInvisibleInkImageEffectView;
  v4 = a3;
  [(CKInvisibleInkEffectView *)&v8 setImage:v4];
  v5 = v4;
  v6 = [v5 CGImage];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v7 = [(CKInvisibleInkImageEffectView *)self blurredImageLayer];
  [v7 setContents:v6];

  [MEMORY[0x1E6979518] commit];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v30 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self bounds];
  v4 = v3;
  [(CKInvisibleInkImageEffectView *)self bounds];
  v6 = v5;
  v7 = [(CKInvisibleInkImageEffectView *)self blurredImageLayer];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  v8 = [(CKInvisibleInkImageEffectView *)self blurredImageContainerLayer];
  [v8 setFrame:{0.0, 0.0, v4, v6}];

  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v4;
  v31.size.height = v6;
  v32 = CGRectInset(v31, -4.0, -4.0);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v13 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v13 setFrame:{x, y, width, height}];

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v4;
  v33.size.height = v6;
  v34 = CGRectOffset(v33, 4.0, 4.0);
  v14 = v34.origin.x;
  v15 = v34.origin.y;
  v16 = v34.size.width;
  v17 = v34.size.height;
  v18 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v18 setFrame:{v14, v15, v16, v17}];

  v19 = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  [v19 setFrame:{0.0, 0.0, v4, v6}];

  v20 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v20 setFrame:{0.0, 0.0, v4, v6}];

  v21 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v21 setEmitterPosition:{v4 * 0.5, v6 * 0.5}];

  v22 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v22 setEmitterSize:{v4, v6}];

  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v4;
  v35.size.height = v6;
  v36 = CGRectInset(v35, -5.0, -5.0);
  v23 = v36.origin.x;
  v24 = v36.origin.y;
  v25 = v36.size.width;
  v26 = v36.size.height;
  v27 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v27 setCullRect:{v23, v24, v25, v26}];

  v28 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * 1200.0 * v6 / 50000.0];
  [v28 setValue:v29 forKeyPath:@"emitterCells.dustCell.birthRate"];

  [(CKInvisibleInkImageEffectView *)self addDustRandomEmitterAnimationsWithSize:v4, v6];
  [MEMORY[0x1E6979518] commit];
}

- (void)enableBlending
{
  v3 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v3 removeAnimationForKey:@"disableBlending"];

  v4 = *MEMORY[0x1E69798E8];
  v5 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v5 setCompositingFilter:v4];

  v6 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v6 setShouldRasterize:1];

  v7 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v7 setUpdateInterval:0.0];

  v8 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v8 setUpdateInterval:0.0];
}

- (void)disableBlending
{
  v3 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v3 setCompositingFilter:0];

  v4 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v4 setShouldRasterize:0];

  v5 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v5 setCompositingFilter:0];

  [objc_opt_class() updateInterval];
  v7 = v6;
  v8 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v8 setUpdateInterval:v7];

  v9 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v9 setUpdateInterval:v7];
}

- (void)endDrawEmitterEffects
{
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    v3 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
    [v3 setLifetime:0.0];

    v5 = [MEMORY[0x1E6979300] animation];
    [v5 setDuration:4.0];
    [v5 setDelegate:self];
    v4 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
    [v4 addAnimation:v5 forKey:@"disableBlending"];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(CKInvisibleInkImageEffectView *)self disableBlending];
  }
}

- (void)setRandomAttractorsEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.stiffness", 0];
  v6 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v6 setValue:v9 forKeyPath:v5];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.stiffness", 1];
  v8 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v8 setValue:v9 forKeyPath:v7];
}

- (void)endDustEmitterFingerEffects
{
  v3 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v3 setValue:&unk_1F04E8418 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  v4 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v4 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:1];
}

- (void)moveEmittersWithTouches:(id)a3
{
  v22 = a3;
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    v4 = [v22 anyObject];
    [v4 locationInView:self];
    v6 = v5;
    v8 = v7;
    [v4 force];
    v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
    v11 = [(CKInvisibleInkImageEffectView *)self traitCollection];
    v12 = [v11 forceTouchCapability];

    if (v12 == 2)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
    [v14 setEmitterPosition:{v6, v8}];

    v15 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * 130.0 + 190.0];
    [v15 setValue:v16 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

    v17 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * -65.0 + -95.0];
    [v17 setValue:v18 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

    v19 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v6, v8}];
    [v19 setValue:v20 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];

    v21 = [(CKInvisibleInkEffectView *)self coverageTracker];
    [v21 recordTouchAtPoint:{v6, v8}];
  }
}

- (void)moveEmittersForTouchesBegan:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  LODWORD(v4) = CKIsRunningInMacCatalyst();
  v6 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  v7 = v6;
  LODWORD(v8) = 3.0;
  if (!v4)
  {
    *&v8 = 1.0;
  }

  [v6 setLifetime:v8];

  v9 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v9 setValue:&unk_1F04E84D8 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  v10 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v10 setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:0];
  [(CKInvisibleInkImageEffectView *)self enableBlending];
  [(CKInvisibleInkImageEffectView *)self moveEmittersWithTouches:v5];

  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKInvisibleInkImageEffectView;
  v6 = a3;
  [(CKInvisibleInkImageEffectView *)&v7 touchesMoved:v6 withEvent:a4];
  [(CKInvisibleInkImageEffectView *)self moveEmittersForTouchesMoved:v6, v7.receiver, v7.super_class];
}

- (void)moveEmittersForTouchesMoved:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self moveEmittersWithTouches:v5];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)endEmittersForTouchesEnded:(id)a3
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self endDrawEmitterEffects];
  [(CKInvisibleInkImageEffectView *)self endDustEmitterFingerEffects];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)endEmittersForTouchesCancelled:(id)a3
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self endDrawEmitterEffects];
  [(CKInvisibleInkImageEffectView *)self endDustEmitterFingerEffects];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)reset
{
  v13.receiver = self;
  v13.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v13 reset];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v3 setLifetime:0.0];

  v4 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [v4 removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkImageEffectView *)self disableBlending];
  [(CKInvisibleInkImageEffectView *)self endDustEmitterFingerEffects];
  v5 = [(CKInvisibleInkImageEffectView *)self layer];
  [v5 convertTime:0 fromLayer:CACurrentMediaTime()];
  v7 = v6;
  v8 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [v8 setBeginTime:v7];

  v9 = [(CKInvisibleInkImageEffectView *)self layer];
  [v9 convertTime:0 fromLayer:CACurrentMediaTime()];
  v11 = v10;
  v12 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [v12 setBeginTime:v11];

  [MEMORY[0x1E6979518] commit];
  [(CKInvisibleInkImageEffectView *)self setNeedsLayout];
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInvisibleInkEffectView *)self isSuspended];
  v37.receiver = self;
  v37.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v37 setSuspended:v3];
  if (v5 != v3)
  {
    v6 = !v3;
    [(CKInvisibleInkImageEffectView *)self setUserInteractionEnabled:v3 ^ 1];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v7 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v8 = v7;
    if (v6)
    {
      [v7 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

      v27 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      LODWORD(v28) = 1.0;
      [v27 setBirthRate:v28];

      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"birthRate"];
      [v23 setDuration:1.0];
      v29 = *MEMORY[0x1E6979EB8];
      v30 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v23 setTimingFunction:v30];

      [v23 setFromValue:&unk_1F04E8418];
      [v23 setToValue:&unk_1F04E8430];
      v31 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      v32 = [v23 keyPath];
      [v31 addAnimation:v23 forKey:v32];

      [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:1];
      v33 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [v33 setValue:&unk_1F04E7440 forKeyPath:@"emitterBehaviors.scaleBehavior.values"];

      v25 = [MEMORY[0x1E6979318] animationWithKeyPath:@"emitterBehaviors.scaleBehavior.values.@index(1)"];
      [v25 setDuration:2.0];
      v34 = [MEMORY[0x1E69793D0] functionWithName:v29];
      [v25 setTimingFunction:v34];

      [v25 setFromValue:&unk_1F04E8E98];
      [v25 setToValue:&unk_1F04E8E88];
      v35 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      v36 = [v25 keyPath];
      [v35 addAnimation:v25 forKey:v36];

      [(CKInvisibleInkImageEffectView *)self endDrawEmitterEffects];
    }

    else
    {
      [v7 setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

      v9 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [v9 setValue:&unk_1F04E8478 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

      v10 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [v10 setValue:&unk_1F04E84F0 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

      v11 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [v11 setValue:&unk_1F04E8508 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

      [(CKInvisibleInkImageEffectView *)self bounds];
      v13 = v12 * 0.5;
      [(CKInvisibleInkImageEffectView *)self bounds];
      v15 = v14 * 0.5;
      v16 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{v13, v15}];
      [v16 setValue:v17 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];

      v18 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [v18 setBirthRate:0.0];

      [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:0];
      v19 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [v19 setEmitterPosition:{v13, v15}];

      v20 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      LODWORD(v21) = 1.0;
      [v20 setLifetime:v21];

      v22 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [v22 setValue:&unk_1F04E7428 forKeyPath:@"emitterBehaviors.scaleBehavior.values"];

      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"emitterBehaviors.scaleBehavior.values.@index(1)"];
      [v23 setDuration:1.0];
      v24 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v23 setTimingFunction:v24];

      [v23 setFromValue:&unk_1F04E8E88];
      [v23 setToValue:&unk_1F04E8E98];
      v25 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      v26 = [v23 keyPath];
      [v25 addAnimation:v23 forKey:v26];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInvisibleInkEffectView *)self isPaused];
  v19.receiver = self;
  v19.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v19 setPaused:v3];
  if (v5 != v3)
  {
    [MEMORY[0x1E6979518] begin];
    v6 = [(CKInvisibleInkImageEffectView *)self layer];
    v8 = v6;
    if (v3)
    {
      [v6 setSpeed:0.0];

      v9 = [(CKInvisibleInkImageEffectView *)self layer];
      v10 = [(CKInvisibleInkImageEffectView *)self layer];
      v11 = [v10 superlayer];
      [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [v9 timeOffset];
      v15 = v13 + v14;
    }

    else
    {
      LODWORD(v7) = 1.0;
      [v6 setSpeed:v7];

      v9 = [(CKInvisibleInkImageEffectView *)self layer];
      v10 = [(CKInvisibleInkImageEffectView *)self layer];
      v11 = [v10 superlayer];
      [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;
      [v9 timeOffset];
      v15 = v18 - v17;
    }

    [v9 setTimeOffset:v15];

    [MEMORY[0x1E6979518] commit];
  }
}

@end