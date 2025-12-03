@interface CKInvisibleInkImageEffectView
- (CKInvisibleInkImageEffectView)initWithFrame:(CGRect)frame;
- (void)addDustRandomEmitterAnimationsWithSize:(CGSize)size;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)disableBlending;
- (void)enableBlending;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterFingerEffects;
- (void)endEmittersForTouchesCancelled:(id)cancelled;
- (void)endEmittersForTouchesEnded:(id)ended;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)began;
- (void)moveEmittersForTouchesMoved:(id)moved;
- (void)moveEmittersWithTouches:(id)touches;
- (void)reset;
- (void)setImage:(id)image;
- (void)setPaused:(BOOL)paused;
- (void)setRandomAttractorsEnabled:(BOOL)enabled;
- (void)setSuspended:(BOOL)suspended;
- (void)setupDrawEmitter;
- (void)setupDustEmitter;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CKInvisibleInkImageEffectView

- (CKInvisibleInkImageEffectView)initWithFrame:(CGRect)frame
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKInvisibleInkImageEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkImageEffectView *)v3 setBlurredImageContainerLayer:layer];

    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v5 setValue:&unk_1F04E8400 forKey:@"inputRadius"];
    [v5 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    layer2 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkImageEffectView *)v3 setBlurredImageLayer:layer2];

    v7 = *MEMORY[0x1E6979DF0];
    blurredImageLayer = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageLayer setContentsGravity:v7];

    blurredImageLayer2 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageLayer2 setShouldRasterize:1];

    blurredImageLayer3 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageLayer3 setRasterizationScale:0.5];

    v28[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    blurredImageLayer4 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageLayer4 setFilters:v11];

    blurredImageLayer5 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageLayer5 setMasksToBounds:1];

    [(CKInvisibleInkImageEffectView *)v3 setupDrawEmitter];
    [(CKInvisibleInkImageEffectView *)v3 setupDustEmitter];
    layer3 = [(CKInvisibleInkImageEffectView *)v3 layer];
    blurredImageContainerLayer = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    [layer3 addSublayer:blurredImageContainerLayer];

    blurredImageContainerLayer2 = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    blurredImageLayer6 = [(CKInvisibleInkImageEffectView *)v3 blurredImageLayer];
    [blurredImageContainerLayer2 addSublayer:blurredImageLayer6];

    blurredImageContainerLayer3 = [(CKInvisibleInkImageEffectView *)v3 blurredImageContainerLayer];
    drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)v3 drawEmitterContainerLayer];
    [blurredImageContainerLayer3 addSublayer:drawEmitterContainerLayer];

    drawEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)v3 drawEmitterContainerLayer];
    drawEmitterLayer = [(CKInvisibleInkImageEffectView *)v3 drawEmitterLayer];
    [drawEmitterContainerLayer2 addSublayer:drawEmitterLayer];

    layer4 = [(CKInvisibleInkImageEffectView *)v3 layer];
    dustEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)v3 dustEmitterContainerLayer];
    [layer4 addSublayer:dustEmitterContainerLayer];

    dustEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)v3 dustEmitterContainerLayer];
    dustEmitterLayer = [(CKInvisibleInkImageEffectView *)v3 dustEmitterLayer];
    [dustEmitterContainerLayer2 addSublayer:dustEmitterLayer];
  }

  return v3;
}

- (void)setupDrawEmitter
{
  v33[2] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979398] layer];
  [(CKInvisibleInkImageEffectView *)self setDrawEmitterContainerLayer:layer];

  drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer setMasksToBounds:1];

  drawEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer2 setRasterizationScale:0.25];

  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurLarge"];
  [emitterCell setContents:{objc_msgSend(v7, "CGImage")}];

  LODWORD(v8) = 1114636288;
  [emitterCell setBirthRate:v8];
  [emitterCell setDuration:INFINITY];
  [emitterCell setEmissionRange:0.785398163];
  LODWORD(v9) = 2.0;
  [emitterCell setLifetime:v9];
  LODWORD(v10) = 2.0;
  [emitterCell setLifetimeRange:v10];
  [emitterCell setScale:4.4];
  [emitterCell setVelocityRange:45.0];
  [emitterCell setEmissionRange:0.785398163];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  [emitterCell setName:@"drawCell"];
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
  layer2 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkImageEffectView *)self setDrawEmitterLayer:layer2];

  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setInheritsTiming:0];

  v18 = CACurrentMediaTime();
  drawEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setBeginTime:v18];

  drawEmitterLayer3 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer3 setLifetime:0.0];

  v21 = *MEMORY[0x1E69797A8];
  drawEmitterLayer4 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer4 setEmitterMode:v21];

  drawEmitterLayer5 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer5 setRenderMode:@"cheapAdditive"];

  v32 = emitterCell;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  drawEmitterLayer6 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer6 setEmitterCells:v24];

  v31[0] = v11;
  v31[1] = v15;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  drawEmitterLayer7 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer7 setEmitterBehaviors:v26];

  [objc_opt_class() updateInterval];
  v29 = v28;
  drawEmitterLayer8 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer8 setUpdateInterval:v29];
}

- (void)setupDustEmitter
{
  v48[1] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979398] layer];
  [(CKInvisibleInkImageEffectView *)self setDustEmitterContainerLayer:layer];

  dustEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  v5 = 1;
  [dustEmitterContainerLayer setMasksToBounds:1];

  selfCopy = self;
  dustEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  [dustEmitterContainerLayer2 setAllowsGroupBlending:0];

  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v8 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"speckle"];
  [emitterCell setContents:{objc_msgSend(v8, "CGImage")}];

  LODWORD(v9) = 1150681088;
  [emitterCell setBirthRate:v9];
  [emitterCell setContentsScale:1.79999995];
  [emitterCell setEmissionRange:6.28318531];
  LODWORD(v10) = 1008981770;
  [emitterCell setMassRange:v10];
  LODWORD(v11) = 8.0;
  [emitterCell setLifetime:v11];
  [emitterCell setScale:0.5];
  [emitterCell setVelocityRange:0.0];
  [emitterCell setName:@"dustCell"];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v13 = [whiteColor colorWithAlphaComponent:0.0];
  [emitterCell setColor:{objc_msgSend(v13, "CGColor")}];

  LODWORD(v14) = 1.0;
  [emitterCell setAlphaRange:v14];
  v46 = emitterCell;
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  array = [MEMORY[0x1E695DF70] array];
  v16 = *MEMORY[0x1E6979758];
  v17 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979758]];
  [v17 setName:@"fingerAttractor"];
  v45 = v17;
  [array addObject:v17];
  v18 = *MEMORY[0x1E6979760];
  v19 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v19 setName:@"alphaBehavior"];
  [v19 setValue:@"color.alpha" forKey:@"keyPath"];
  [v19 setValue:&unk_1F04E73E0 forKey:@"values"];
  [v19 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  v44 = v19;
  [array addObject:v19];
  v20 = [MEMORY[0x1E6979358] behaviorWithType:v18];
  [v20 setName:@"scaleBehavior"];
  [v20 setValue:@"scale" forKey:@"keyPath"];
  [v20 setValue:&unk_1F04E73F8 forKey:@"values"];
  [v20 setValue:&unk_1F04E7410 forKey:@"locations"];
  v43 = v20;
  [array addObject:v20];
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

    [array addObject:v26];
    v5 = 0;
    v21 = 1;
  }

  while ((v24 & 1) != 0);
  layer2 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkImageEffectView *)selfCopy setDustEmitterLayer:layer2];

  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer setInheritsTiming:0];

  v30 = CACurrentMediaTime();
  dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer2 setBeginTime:v30];

  dustEmitterLayer3 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer3 setMasksToBounds:1];

  v48[0] = v46;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  dustEmitterLayer4 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer4 setEmitterCells:v33];

  dustEmitterLayer5 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer5 setEmitterBehaviors:array];

  v36 = *MEMORY[0x1E69797B0];
  dustEmitterLayer6 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer6 setEmitterShape:v36];

  v38 = *MEMORY[0x1E6979790];
  dustEmitterLayer7 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer7 setRenderMode:v38];

  [objc_opt_class() updateInterval];
  v41 = v40;
  dustEmitterLayer8 = [(CKInvisibleInkImageEffectView *)selfCopy dustEmitterLayer];
  [dustEmitterLayer8 setUpdateInterval:v41];

  [(CKInvisibleInkImageEffectView *)selfCopy endDustEmitterFingerEffects];
}

- (void)addDustRandomEmitterAnimationsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  animation = [MEMORY[0x1E6979318] animation];
  v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [animation setTimingFunction:v5];

  [animation setFromValue:&unk_1F04E84A8];
  [animation setToValue:&unk_1F04E84C0];
  [animation setDuration:2.0];
  LODWORD(v6) = 2139095040;
  [animation setRepeatCount:v6];
  v7 = 1;
  [animation setAutoreverses:1];
  [animation setRemovedOnCompletion:0];
  v8 = *MEMORY[0x1E69797E0];
  [animation setFillMode:*MEMORY[0x1E69797E0]];
  animation2 = [MEMORY[0x1E6979390] animation];
  [animation2 setCalculationMode:*MEMORY[0x1E69795A0]];
  [animation2 setDuration:3.0];
  LODWORD(v10) = 2139095040;
  [animation2 setRepeatCount:v10];
  [animation2 setAutoreverses:1];
  [animation2 setRemovedOnCompletion:0];
  [animation2 setFillMode:v8];
  v11 = 0;
  v12 = 0.5;
  do
  {
    v13 = v7;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.falloff", v11];
    [animation setKeyPath:v14];

    dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    keyPath = [animation keyPath];
    [dustEmitterLayer addAnimation:animation forKey:keyPath];

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
    [animation2 setValues:v18];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.position", v11];
    [animation2 setKeyPath:v28];

    dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    keyPath2 = [animation2 keyPath];
    [dustEmitterLayer2 addAnimation:animation2 forKey:keyPath2];

    v7 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
}

- (void)setImage:(id)image
{
  v8.receiver = self;
  v8.super_class = CKInvisibleInkImageEffectView;
  imageCopy = image;
  [(CKInvisibleInkEffectView *)&v8 setImage:imageCopy];
  v5 = imageCopy;
  cGImage = [v5 CGImage];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  blurredImageLayer = [(CKInvisibleInkImageEffectView *)self blurredImageLayer];
  [blurredImageLayer setContents:cGImage];

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
  blurredImageLayer = [(CKInvisibleInkImageEffectView *)self blurredImageLayer];
  [blurredImageLayer setFrame:{0.0, 0.0, v4, v6}];

  blurredImageContainerLayer = [(CKInvisibleInkImageEffectView *)self blurredImageContainerLayer];
  [blurredImageContainerLayer setFrame:{0.0, 0.0, v4, v6}];

  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v4;
  v31.size.height = v6;
  v32 = CGRectInset(v31, -4.0, -4.0);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer setFrame:{x, y, width, height}];

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v4;
  v33.size.height = v6;
  v34 = CGRectOffset(v33, 4.0, 4.0);
  v14 = v34.origin.x;
  v15 = v34.origin.y;
  v16 = v34.size.width;
  v17 = v34.size.height;
  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setFrame:{v14, v15, v16, v17}];

  dustEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterContainerLayer];
  [dustEmitterContainerLayer setFrame:{0.0, 0.0, v4, v6}];

  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setFrame:{0.0, 0.0, v4, v6}];

  dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setEmitterPosition:{v4 * 0.5, v6 * 0.5}];

  dustEmitterLayer3 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer3 setEmitterSize:{v4, v6}];

  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v4;
  v35.size.height = v6;
  v36 = CGRectInset(v35, -5.0, -5.0);
  v23 = v36.origin.x;
  v24 = v36.origin.y;
  v25 = v36.size.width;
  v26 = v36.size.height;
  dustEmitterLayer4 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer4 setCullRect:{v23, v24, v25, v26}];

  dustEmitterLayer5 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * 1200.0 * v6 / 50000.0];
  [dustEmitterLayer5 setValue:v29 forKeyPath:@"emitterCells.dustCell.birthRate"];

  [(CKInvisibleInkImageEffectView *)self addDustRandomEmitterAnimationsWithSize:v4, v6];
  [MEMORY[0x1E6979518] commit];
}

- (void)enableBlending
{
  drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer removeAnimationForKey:@"disableBlending"];

  v4 = *MEMORY[0x1E69798E8];
  drawEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer2 setCompositingFilter:v4];

  drawEmitterContainerLayer3 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer3 setShouldRasterize:1];

  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setUpdateInterval:0.0];

  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setUpdateInterval:0.0];
}

- (void)disableBlending
{
  drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer setCompositingFilter:0];

  drawEmitterContainerLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer2 setShouldRasterize:0];

  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setCompositingFilter:0];

  [objc_opt_class() updateInterval];
  v7 = v6;
  drawEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setUpdateInterval:v7];

  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setUpdateInterval:v7];
}

- (void)endDrawEmitterEffects
{
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
    [drawEmitterLayer setLifetime:0.0];

    animation = [MEMORY[0x1E6979300] animation];
    [animation setDuration:4.0];
    [animation setDelegate:self];
    drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
    [drawEmitterContainerLayer addAnimation:animation forKey:@"disableBlending"];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [(CKInvisibleInkImageEffectView *)self disableBlending];
  }
}

- (void)setRandomAttractorsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.stiffness", 0];
  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setValue:v9 forKeyPath:v5];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emitterBehaviors.randomAttractor%d.stiffness", 1];
  dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setValue:v9 forKeyPath:v7];
}

- (void)endDustEmitterFingerEffects
{
  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setValue:&unk_1F04E8418 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:1];
}

- (void)moveEmittersWithTouches:(id)touches
{
  touchesCopy = touches;
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    anyObject = [touchesCopy anyObject];
    [anyObject locationInView:self];
    v6 = v5;
    v8 = v7;
    [anyObject force];
    v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
    traitCollection = [(CKInvisibleInkImageEffectView *)self traitCollection];
    forceTouchCapability = [traitCollection forceTouchCapability];

    if (forceTouchCapability == 2)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0.5;
    }

    drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
    [drawEmitterLayer setEmitterPosition:{v6, v8}];

    dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * 130.0 + 190.0];
    [dustEmitterLayer setValue:v16 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

    dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13 * -65.0 + -95.0];
    [dustEmitterLayer2 setValue:v18 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

    dustEmitterLayer3 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{v6, v8}];
    [dustEmitterLayer3 setValue:v20 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];

    coverageTracker = [(CKInvisibleInkEffectView *)self coverageTracker];
    [coverageTracker recordTouchAtPoint:{v6, v8}];
  }
}

- (void)moveEmittersForTouchesBegan:(id)began
{
  v4 = MEMORY[0x1E6979518];
  beganCopy = began;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  LODWORD(v4) = CKIsRunningInMacCatalyst();
  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  v7 = drawEmitterLayer;
  LODWORD(v8) = 3.0;
  if (!v4)
  {
    *&v8 = 1.0;
  }

  [drawEmitterLayer setLifetime:v8];

  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setValue:&unk_1F04E84D8 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:0];
  [(CKInvisibleInkImageEffectView *)self enableBlending];
  [(CKInvisibleInkImageEffectView *)self moveEmittersWithTouches:beganCopy];

  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CKInvisibleInkImageEffectView;
  movedCopy = moved;
  [(CKInvisibleInkImageEffectView *)&v7 touchesMoved:movedCopy withEvent:event];
  [(CKInvisibleInkImageEffectView *)self moveEmittersForTouchesMoved:movedCopy, v7.receiver, v7.super_class];
}

- (void)moveEmittersForTouchesMoved:(id)moved
{
  v4 = MEMORY[0x1E6979518];
  movedCopy = moved;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self moveEmittersWithTouches:movedCopy];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)endEmittersForTouchesEnded:(id)ended
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkImageEffectView *)self endDrawEmitterEffects];
  [(CKInvisibleInkImageEffectView *)self endDustEmitterFingerEffects];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)endEmittersForTouchesCancelled:(id)cancelled
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
  drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setLifetime:0.0];

  drawEmitterContainerLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterContainerLayer];
  [drawEmitterContainerLayer removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkImageEffectView *)self disableBlending];
  [(CKInvisibleInkImageEffectView *)self endDustEmitterFingerEffects];
  layer = [(CKInvisibleInkImageEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v7 = v6;
  drawEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setBeginTime:v7];

  layer2 = [(CKInvisibleInkImageEffectView *)self layer];
  [layer2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v11 = v10;
  dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setBeginTime:v11];

  [MEMORY[0x1E6979518] commit];
  [(CKInvisibleInkImageEffectView *)self setNeedsLayout];
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  isSuspended = [(CKInvisibleInkEffectView *)self isSuspended];
  v37.receiver = self;
  v37.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v37 setSuspended:suspendedCopy];
  if (isSuspended != suspendedCopy)
  {
    v6 = !suspendedCopy;
    [(CKInvisibleInkImageEffectView *)self setUserInteractionEnabled:suspendedCopy ^ 1];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    dustEmitterLayer = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
    v8 = dustEmitterLayer;
    if (v6)
    {
      [dustEmitterLayer setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

      dustEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      LODWORD(v28) = 1.0;
      [dustEmitterLayer2 setBirthRate:v28];

      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"birthRate"];
      [v23 setDuration:1.0];
      v29 = *MEMORY[0x1E6979EB8];
      v30 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v23 setTimingFunction:v30];

      [v23 setFromValue:&unk_1F04E8418];
      [v23 setToValue:&unk_1F04E8430];
      dustEmitterLayer3 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      keyPath = [v23 keyPath];
      [dustEmitterLayer3 addAnimation:v23 forKey:keyPath];

      [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:1];
      drawEmitterLayer = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [drawEmitterLayer setValue:&unk_1F04E7440 forKeyPath:@"emitterBehaviors.scaleBehavior.values"];

      drawEmitterLayer6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"emitterBehaviors.scaleBehavior.values.@index(1)"];
      [drawEmitterLayer6 setDuration:2.0];
      v34 = [MEMORY[0x1E69793D0] functionWithName:v29];
      [drawEmitterLayer6 setTimingFunction:v34];

      [drawEmitterLayer6 setFromValue:&unk_1F04E8E98];
      [drawEmitterLayer6 setToValue:&unk_1F04E8E88];
      drawEmitterLayer2 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      keyPath2 = [drawEmitterLayer6 keyPath];
      [drawEmitterLayer2 addAnimation:drawEmitterLayer6 forKey:keyPath2];

      [(CKInvisibleInkImageEffectView *)self endDrawEmitterEffects];
    }

    else
    {
      [dustEmitterLayer setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

      dustEmitterLayer4 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [dustEmitterLayer4 setValue:&unk_1F04E8478 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

      dustEmitterLayer5 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [dustEmitterLayer5 setValue:&unk_1F04E84F0 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

      dustEmitterLayer6 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [dustEmitterLayer6 setValue:&unk_1F04E8508 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

      [(CKInvisibleInkImageEffectView *)self bounds];
      v13 = v12 * 0.5;
      [(CKInvisibleInkImageEffectView *)self bounds];
      v15 = v14 * 0.5;
      dustEmitterLayer7 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{v13, v15}];
      [dustEmitterLayer7 setValue:v17 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];

      dustEmitterLayer8 = [(CKInvisibleInkImageEffectView *)self dustEmitterLayer];
      [dustEmitterLayer8 setBirthRate:0.0];

      [(CKInvisibleInkImageEffectView *)self setRandomAttractorsEnabled:0];
      drawEmitterLayer3 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [drawEmitterLayer3 setEmitterPosition:{v13, v15}];

      drawEmitterLayer4 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      LODWORD(v21) = 1.0;
      [drawEmitterLayer4 setLifetime:v21];

      drawEmitterLayer5 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      [drawEmitterLayer5 setValue:&unk_1F04E7428 forKeyPath:@"emitterBehaviors.scaleBehavior.values"];

      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"emitterBehaviors.scaleBehavior.values.@index(1)"];
      [v23 setDuration:1.0];
      v24 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v23 setTimingFunction:v24];

      [v23 setFromValue:&unk_1F04E8E88];
      [v23 setToValue:&unk_1F04E8E98];
      drawEmitterLayer6 = [(CKInvisibleInkImageEffectView *)self drawEmitterLayer];
      keyPath3 = [v23 keyPath];
      [drawEmitterLayer6 addAnimation:v23 forKey:keyPath3];
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  isPaused = [(CKInvisibleInkEffectView *)self isPaused];
  v19.receiver = self;
  v19.super_class = CKInvisibleInkImageEffectView;
  [(CKInvisibleInkEffectView *)&v19 setPaused:pausedCopy];
  if (isPaused != pausedCopy)
  {
    [MEMORY[0x1E6979518] begin];
    layer = [(CKInvisibleInkImageEffectView *)self layer];
    v8 = layer;
    if (pausedCopy)
    {
      [layer setSpeed:0.0];

      layer2 = [(CKInvisibleInkImageEffectView *)self layer];
      layer3 = [(CKInvisibleInkImageEffectView *)self layer];
      superlayer = [layer3 superlayer];
      [superlayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [layer2 timeOffset];
      v15 = v13 + v14;
    }

    else
    {
      LODWORD(v7) = 1.0;
      [layer setSpeed:v7];

      layer2 = [(CKInvisibleInkImageEffectView *)self layer];
      layer3 = [(CKInvisibleInkImageEffectView *)self layer];
      superlayer = [layer3 superlayer];
      [superlayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;
      [layer2 timeOffset];
      v15 = v18 - v17;
    }

    [layer2 setTimeOffset:v15];

    [MEMORY[0x1E6979518] commit];
  }
}

@end