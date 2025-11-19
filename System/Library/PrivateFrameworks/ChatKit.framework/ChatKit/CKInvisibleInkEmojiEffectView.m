@interface CKInvisibleInkEmojiEffectView
- (CKInvisibleInkEmojiEffectView)initWithFrame:(CGRect)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)attachToBalloonView:(id)a3;
- (void)createDrawEmitter;
- (void)createDustEmitter;
- (void)detachFromBalloonView;
- (void)disableBlending;
- (void)displayLayer:(id)a3;
- (void)enableBlending;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterLayerFingerEffects;
- (void)endTouches;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)a3;
- (void)moveEmittersForTouchesMoved:(id)a3;
- (void)moveEmittersWithTouches:(id)a3;
- (void)prepareForDisplay;
- (void)reset;
- (void)setPaused:(BOOL)a3;
- (void)setSuspended:(BOOL)a3;
@end

@implementation CKInvisibleInkEmojiEffectView

- (CKInvisibleInkEmojiEffectView)initWithFrame:(CGRect)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = CKInvisibleInkEmojiEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKInvisibleInkEmojiEffectView *)v3 createDrawEmitter];
    v5 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setEmojiContainerLayer:v5];

    v6 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [v6 setMasksToBounds:1];

    v7 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [v7 setHidden:1];

    v8 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setEmojiLayer:v8];

    v9 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    v10 = [(CKInvisibleInkEmojiEffectView *)v4 emojiLayer];
    [v9 addSublayer:v10];

    v11 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    v12 = [(CKInvisibleInkEmojiEffectView *)v4 drawEmitterLayer];
    [v11 addSublayer:v12];

    v13 = [(CKInvisibleInkEmojiEffectView *)v4 layer];
    v14 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [v13 addSublayer:v14];

    [(CKInvisibleInkEmojiEffectView *)v4 createDustEmitter];
    v15 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setDustContainerLayer:v15];

    v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v16 setValue:&unk_1F04E7560 forKey:@"inputRadius"];
    [v16 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    v17 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setBlurredEmojiLayer:v17];

    v18 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v18 setShouldRasterize:1];

    v19 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v19 setRasterizationScale:0.5];

    v44[0] = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v21 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v21 setFilters:v20];

    v22 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v22 setMasksToBounds:1];

    v23 = *MEMORY[0x1E6979D28];
    v24 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v24 setCompositingFilter:v23];

    v25 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setMaskLayer:v25];

    v26 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [v26 setShouldRasterize:1];

    v27 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v27 scale];
    v29 = v28;
    v30 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [v30 setRasterizationScale:v29];

    v31 = *MEMORY[0x1E69798E0];
    v32 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [v32 setCompositingFilter:v31];

    v33 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [v33 setMasksToBounds:1];

    v34 = [(CKInvisibleInkEmojiEffectView *)v4 dustEmitterLayer];
    v35 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [v34 addSublayer:v35];

    v36 = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    v37 = [(CKInvisibleInkEmojiEffectView *)v4 dustEmitterLayer];
    [v36 addSublayer:v37];

    v38 = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    v39 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [v38 addSublayer:v39];

    v40 = [(CKInvisibleInkEmojiEffectView *)v4 layer];
    v41 = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    [v40 addSublayer:v41];
  }

  return v4;
}

- (void)createDustEmitter
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v3 setMasksToBounds:1];

  v4 = [MEMORY[0x1E6979360] emitterCell];
  v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"speckle"];
  [v4 setContents:{objc_msgSend(v5, "CGImage")}];

  [v4 setContentsScale:1.79999995];
  [v4 setEmissionRange:6.28318531];
  LODWORD(v6) = 1008981770;
  [v4 setMassRange:v6];
  LODWORD(v7) = 8.0;
  [v4 setLifetime:v7];
  [v4 setScale:0.5];
  [v4 setVelocityRange:20.0];
  [v4 setName:@"dustCell"];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [v8 colorWithAlphaComponent:0.0];
  [v4 setColor:{objc_msgSend(v9, "CGColor")}];

  LODWORD(v10) = 1.0;
  [v4 setAlphaRange:v10];
  [v4 setParticleType:*MEMORY[0x1E6979778]];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v12 setName:@"alphaBehavior"];
  [v12 setValue:@"color.alpha" forKey:@"keyPath"];
  [v12 setValue:&unk_1F04E6708 forKey:@"values"];
  [v12 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  [v11 addObject:v12];
  v13 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979748]];
  [v13 setValue:&unk_1F04E8688 forKey:@"orientationLongitude"];
  [v13 setValue:&unk_1F04E8698 forKey:@"orientationLatitude"];
  [v13 setName:@"fingerAttractor"];
  [v11 addObject:v13];
  v14 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkEmojiEffectView *)self setDustEmitterLayer:v14];

  v15 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v15 setMasksToBounds:1];

  v24[0] = v4;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v17 setEmitterCells:v16];

  v18 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v18 setEmitterBehaviors:v11];

  v19 = *MEMORY[0x1E69797B0];
  v20 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v20 setEmitterShape:v19];

  [objc_opt_class() updateInterval];
  v22 = v21;
  v23 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v23 setUpdateInterval:v22];

  [(CKInvisibleInkEmojiEffectView *)self endDustEmitterLayerFingerEffects];
}

- (void)createDrawEmitter
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979360] emitterCell];
  v4 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurLarge"];
  [v3 setContents:{objc_msgSend(v4, "CGImage")}];

  LODWORD(v5) = 1114636288;
  [v3 setBirthRate:v5];
  [v3 setDuration:INFINITY];
  LODWORD(v6) = 6.0;
  [v3 setLifetime:v6];
  LODWORD(v7) = 1.0;
  [v3 setLifetimeRange:v7];
  [v3 setParticleType:*MEMORY[0x1E6979778]];
  [v3 setOrientationLongitude:3.14159265];
  [v3 setOrientationLatitude:0.0];
  [v3 setEmissionRange:0.0];
  [v3 setScale:1.0];
  [v3 setVelocityRange:10.0];
  v8 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979750]];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v29[0] = [v9 CGColor];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v29[1] = [v10 CGColor];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [v8 setValue:v11 forKey:@"colors"];

  [v8 setValue:&unk_1F04E6720 forKey:@"locations"];
  v12 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v12 setName:@"scaleBehavior"];
  [v12 setValue:@"scale" forKey:@"keyPath"];
  [v12 setValue:&unk_1F04E6738 forKey:@"values"];
  [v12 setValue:&unk_1F04E6750 forKey:@"locations"];
  v13 = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkEmojiEffectView *)self setDrawEmitterLayer:v13];

  v14 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v14 setLifetime:0.0];

  v15 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v15 setMasksToBounds:1];

  v16 = *MEMORY[0x1E69797A8];
  v17 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v17 setEmitterMode:v16];

  v28 = v3;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v19 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v19 setEmitterCells:v18];

  v27[0] = v8;
  v27[1] = v12;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v21 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v21 setEmitterBehaviors:v20];

  [objc_opt_class() updateInterval];
  v23 = v22;
  v24 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v24 setUpdateInterval:v23];

  v25 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v25 setShouldRasterize:1];

  v26 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v26 setRasterizationScale:0.25];
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v42 layoutSubviews];
  v3 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v4 = [v3 layer];
  v5 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v6 = [v5 layer];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CKInvisibleInkEmojiEffectView *)self layer];
  [v4 convertRect:v15 toLayer:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [(CKInvisibleInkEmojiEffectView *)self dustContainerLayer];
  [v25 setFrame:{v17, v19, v21, v23}];

  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  v28 = [(CKInvisibleInkEmojiEffectView *)self emojiLayer];
  [v28 setFrame:{v26, v27, v21, v23}];

  v43.origin.x = v26;
  v43.origin.y = v27;
  v43.size.width = v21;
  v43.size.height = v23;
  v44 = CGRectInset(v43, -4.0, -4.0);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v33 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v33 setFrame:{x, y, width, height}];

  v34 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v34 setFrame:{v26, v27, v21, v23}];

  v35 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v35 setEmitterPosition:{v21 * 0.5, v23 * 0.5}];

  v36 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v36 setEmitterSize:{v21, v23}];

  v37 = [(CKInvisibleInkEmojiEffectView *)self blurredEmojiLayer];
  [v37 setFrame:{v26, v27, v21, v23}];

  v38 = [(CKInvisibleInkEmojiEffectView *)self maskLayer];
  [v38 setFrame:{v26, v27, v21, v23}];

  v39 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:v23 * (v21 * 0.09)];
  [v39 setValue:v40 forKeyPath:@"emitterCells.dustCell.birthRate"];

  v41 = [(CKInvisibleInkEmojiEffectView *)self layer];
  [v41 setNeedsDisplay];
}

- (void)displayLayer:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [v4 setNeedsDisplay];

  v5 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [v5 forceDisplayIfNeeded];

  v6 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v7 = [v6 attributedText];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v7 __ck_bigEmojiStyle];
  v10 = 0;
  v33 = v7;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = [v8 multipleBigEmojiFont];
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_11;
      }

      v11 = [v8 singleBigAssetFont];
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      goto LABEL_11;
    }

    v11 = [v8 singleBigEmojiFont];
  }

  else
  {
    v11 = [v8 balloonTextFont];
  }

  v10 = v11;
LABEL_11:
  v32 = v8;
  v12 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [v12 setFont:v10];

  v13 = [MEMORY[0x1E69DCA80] preferredFormat];
  [v13 setScale:0.0];
  [v13 setPreferredRange:0];
  [v13 setOpaque:0];
  v14 = objc_alloc(MEMORY[0x1E69DCA78]);
  v15 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [v15 bounds];
  v18 = [v14 initWithSize:v13 format:{v16, v17}];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __46__CKInvisibleInkEmojiEffectView_displayLayer___block_invoke;
  v38[3] = &unk_1E72EBBE8;
  v38[4] = self;
  v31 = v18;
  v19 = [v18 imageWithActions:v38];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [(CKInvisibleInkEmojiEffectView *)self emojiLayer];
  v39[0] = v20;
  v21 = [(CKInvisibleInkEmojiEffectView *)self blurredEmojiLayer];
  v39[1] = v21;
  v22 = [(CKInvisibleInkEmojiEffectView *)self maskLayer];
  v39[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];

  v24 = [v23 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    v27 = *MEMORY[0x1E6979E08];
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v34 + 1) + 8 * i);
        [v29 setContents:{objc_msgSend(v19, "CGImage")}];
        [v29 setContentsGravity:v27];
        v30 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v30 scale];
        [v29 setContentsScale:?];
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v25);
  }
}

void __46__CKInvisibleInkEmojiEffectView_displayLayer___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [*(a1 + 32) textView];
  v2 = [v1 subviews];

  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 frame];
        v20.origin.x = v6;
        v20.origin.y = v7;
        v20.size.width = v8;
        v20.size.height = v9;
        if (!CGRectEqualToRect(v19, v20))
        {
          v12 = [v11 layer];
          [v12 renderInContext:UIGraphicsGetCurrentContext()];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)prepareForDisplay
{
  v3 = [(CKInvisibleInkEffectView *)self isSuspended];
  v6 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v4 = [v6 layer];
  *&v5 = v3;
  [v4 setOpacity:v5];
}

- (void)attachToBalloonView:(id)a3
{
  v4 = [a3 textView];
  [(CKInvisibleInkEmojiEffectView *)self setTextView:v4];

  v6 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v5 = [v6 layer];
  [v5 setOpacity:0.0];
}

- (void)detachFromBalloonView
{
  v3 = [(CKInvisibleInkEmojiEffectView *)self textView];
  v4 = [v3 layer];
  LODWORD(v5) = 1.0;
  [v4 setOpacity:v5];

  [(CKInvisibleInkEmojiEffectView *)self setTextView:0];
}

- (void)enableBlending
{
  v3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v3 removeAnimationForKey:@"disableBlending"];

  v4 = *MEMORY[0x1E6979CA0];
  v5 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v5 setCompositingFilter:v4];

  v6 = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [v6 setHidden:0];

  v7 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v7 setUpdateInterval:0.0];

  v8 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v8 setUpdateInterval:0.0];
}

- (void)disableBlending
{
  v3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v3 setCompositingFilter:0];

  v4 = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [v4 setHidden:1];

  [objc_opt_class() updateInterval];
  v6 = v5;
  v7 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v7 setUpdateInterval:v6];

  v8 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v8 setUpdateInterval:v6];
}

- (void)endDrawEmitterEffects
{
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    v3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
    [v3 setLifetime:0.0];

    if (![(CKInvisibleInkEffectView *)self isSuspended])
    {
      v5 = [MEMORY[0x1E6979300] animation];
      [v5 setDuration:7.0];
      [v5 setDelegate:self];
      v4 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      [v4 addAnimation:v5 forKey:@"disableBlending"];
    }
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(CKInvisibleInkEmojiEffectView *)self disableBlending];
  }
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v4 reset];
  v3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v3 removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkEmojiEffectView *)self disableBlending];
  [(CKInvisibleInkEmojiEffectView *)self setNeedsLayout];
}

- (void)moveEmittersWithTouches:(id)a3
{
  v25 = [a3 anyObject];
  [v25 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v8 setEmitterPosition:{v5, v7}];

  [v25 force];
  v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
  v11 = [(CKInvisibleInkEmojiEffectView *)self traitCollection];
  v12 = [v11 forceTouchCapability];

  v13 = 0.5;
  if (v12 == 2)
  {
    v13 = v10;
  }

  v14 = v13 * 130.0 + 190.0;
  v15 = v13 * -65.0 + -95.0;
  v16 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v16 setValue:v17 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

  v18 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  [v18 setValue:v19 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

  v20 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v21 = MEMORY[0x1E696B098];
  v22 = [(CKInvisibleInkEmojiEffectView *)self layer];
  v23 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v22 convertPoint:v23 toLayer:{v5, v7}];
  v24 = [v21 valueWithCGPoint:?];
  [v20 setValue:v24 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];
}

- (void)endDustEmitterLayerFingerEffects
{
  v3 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v3 setValue:&unk_1F04E7578 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  v4 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v4 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
}

- (void)endTouches
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkEmojiEffectView *)self endDrawEmitterEffects];
  [(CKInvisibleInkEmojiEffectView *)self endDustEmitterLayerFingerEffects];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (void)moveEmittersForTouchesBegan:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v6 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [v6 removeAnimationForKey:@"disableBlending"];

  v7 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  LODWORD(v8) = 1.0;
  [v7 setLifetime:v8];

  v9 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v9 setValue:&unk_1F04E75C0 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  v10 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [v10 setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkEmojiEffectView *)self enableBlending];
  [(CKInvisibleInkEmojiEffectView *)self moveEmittersWithTouches:v5];

  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)moveEmittersForTouchesMoved:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkEmojiEffectView *)self moveEmittersWithTouches:v5];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInvisibleInkEffectView *)self isPaused];
  v34.receiver = self;
  v34.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v34 setPaused:v3];
  if (v5 != v3)
  {
    [MEMORY[0x1E6979518] begin];
    v6 = [(CKInvisibleInkEmojiEffectView *)self layer];
    v8 = v6;
    if (v3)
    {
      [v6 setSpeed:0.0];

      v9 = [(CKInvisibleInkEmojiEffectView *)self layer];
      v10 = [(CKInvisibleInkEmojiEffectView *)self layer];
      v11 = [v10 superlayer];
      [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [v9 timeOffset];
      [v9 setTimeOffset:v13 + v14];

      v15 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      [v15 setSpeed:0.0];

      v16 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      v17 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      v18 = [v17 superlayer];
      [v18 convertTime:0 fromLayer:CACurrentMediaTime()];
      v20 = v19;
      [v16 timeOffset];
      v22 = v20 + v21;
    }

    else
    {
      LODWORD(v7) = 1.0;
      [v6 setSpeed:v7];

      v23 = [(CKInvisibleInkEmojiEffectView *)self layer];
      v24 = [(CKInvisibleInkEmojiEffectView *)self layer];
      v25 = [v24 superlayer];
      [v25 convertTime:0 fromLayer:CACurrentMediaTime()];
      v27 = v26;
      [v23 timeOffset];
      [v23 setTimeOffset:v28 - v27];

      v29 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      LODWORD(v30) = 1.0;
      [v29 setSpeed:v30];

      v16 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      v17 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      v18 = [v17 superlayer];
      [v18 convertTime:0 fromLayer:CACurrentMediaTime()];
      v32 = v31;
      [v16 timeOffset];
      v22 = v33 - v32;
    }

    [v16 setTimeOffset:v22];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInvisibleInkEffectView *)self isSuspended];
  v9.receiver = self;
  v9.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v9 setSuspended:v3];
  if (v5 != v3)
  {
    v6 = v3 ^ 1;
    [(CKInvisibleInkEmojiEffectView *)self setUserInteractionEnabled:v6];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v7 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
    *&v8 = v6;
    [v7 setBirthRate:v8];

    [MEMORY[0x1E6979518] commit];
  }
}

@end