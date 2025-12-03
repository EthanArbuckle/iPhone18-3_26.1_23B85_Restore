@interface CKInvisibleInkEmojiEffectView
- (CKInvisibleInkEmojiEffectView)initWithFrame:(CGRect)frame;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)attachToBalloonView:(id)view;
- (void)createDrawEmitter;
- (void)createDustEmitter;
- (void)detachFromBalloonView;
- (void)disableBlending;
- (void)displayLayer:(id)layer;
- (void)enableBlending;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterLayerFingerEffects;
- (void)endTouches;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)began;
- (void)moveEmittersForTouchesMoved:(id)moved;
- (void)moveEmittersWithTouches:(id)touches;
- (void)prepareForDisplay;
- (void)reset;
- (void)setPaused:(BOOL)paused;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation CKInvisibleInkEmojiEffectView

- (CKInvisibleInkEmojiEffectView)initWithFrame:(CGRect)frame
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = CKInvisibleInkEmojiEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKInvisibleInkEmojiEffectView *)v3 createDrawEmitter];
    layer = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setEmojiContainerLayer:layer];

    emojiContainerLayer = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [emojiContainerLayer setMasksToBounds:1];

    emojiContainerLayer2 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [emojiContainerLayer2 setHidden:1];

    layer2 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setEmojiLayer:layer2];

    emojiContainerLayer3 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    emojiLayer = [(CKInvisibleInkEmojiEffectView *)v4 emojiLayer];
    [emojiContainerLayer3 addSublayer:emojiLayer];

    emojiContainerLayer4 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)v4 drawEmitterLayer];
    [emojiContainerLayer4 addSublayer:drawEmitterLayer];

    layer3 = [(CKInvisibleInkEmojiEffectView *)v4 layer];
    emojiContainerLayer5 = [(CKInvisibleInkEmojiEffectView *)v4 emojiContainerLayer];
    [layer3 addSublayer:emojiContainerLayer5];

    [(CKInvisibleInkEmojiEffectView *)v4 createDustEmitter];
    layer4 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setDustContainerLayer:layer4];

    v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v16 setValue:&unk_1F04E7560 forKey:@"inputRadius"];
    [v16 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    layer5 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setBlurredEmojiLayer:layer5];

    blurredEmojiLayer = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [blurredEmojiLayer setShouldRasterize:1];

    blurredEmojiLayer2 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [blurredEmojiLayer2 setRasterizationScale:0.5];

    v44[0] = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    blurredEmojiLayer3 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [blurredEmojiLayer3 setFilters:v20];

    blurredEmojiLayer4 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [blurredEmojiLayer4 setMasksToBounds:1];

    v23 = *MEMORY[0x1E6979D28];
    blurredEmojiLayer5 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [blurredEmojiLayer5 setCompositingFilter:v23];

    layer6 = [MEMORY[0x1E6979398] layer];
    [(CKInvisibleInkEmojiEffectView *)v4 setMaskLayer:layer6];

    maskLayer = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [maskLayer setShouldRasterize:1];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v29 = v28;
    maskLayer2 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [maskLayer2 setRasterizationScale:v29];

    v31 = *MEMORY[0x1E69798E0];
    maskLayer3 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [maskLayer3 setCompositingFilter:v31];

    maskLayer4 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [maskLayer4 setMasksToBounds:1];

    dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)v4 dustEmitterLayer];
    blurredEmojiLayer6 = [(CKInvisibleInkEmojiEffectView *)v4 blurredEmojiLayer];
    [dustEmitterLayer addSublayer:blurredEmojiLayer6];

    dustContainerLayer = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)v4 dustEmitterLayer];
    [dustContainerLayer addSublayer:dustEmitterLayer2];

    dustContainerLayer2 = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    maskLayer5 = [(CKInvisibleInkEmojiEffectView *)v4 maskLayer];
    [dustContainerLayer2 addSublayer:maskLayer5];

    layer7 = [(CKInvisibleInkEmojiEffectView *)v4 layer];
    dustContainerLayer3 = [(CKInvisibleInkEmojiEffectView *)v4 dustContainerLayer];
    [layer7 addSublayer:dustContainerLayer3];
  }

  return v4;
}

- (void)createDustEmitter
{
  v24[1] = *MEMORY[0x1E69E9840];
  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setMasksToBounds:1];

  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"speckle"];
  [emitterCell setContents:{objc_msgSend(v5, "CGImage")}];

  [emitterCell setContentsScale:1.79999995];
  [emitterCell setEmissionRange:6.28318531];
  LODWORD(v6) = 1008981770;
  [emitterCell setMassRange:v6];
  LODWORD(v7) = 8.0;
  [emitterCell setLifetime:v7];
  [emitterCell setScale:0.5];
  [emitterCell setVelocityRange:20.0];
  [emitterCell setName:@"dustCell"];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [whiteColor colorWithAlphaComponent:0.0];
  [emitterCell setColor:{objc_msgSend(v9, "CGColor")}];

  LODWORD(v10) = 1.0;
  [emitterCell setAlphaRange:v10];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  array = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v12 setName:@"alphaBehavior"];
  [v12 setValue:@"color.alpha" forKey:@"keyPath"];
  [v12 setValue:&unk_1F04E6708 forKey:@"values"];
  [v12 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  [array addObject:v12];
  v13 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979748]];
  [v13 setValue:&unk_1F04E8688 forKey:@"orientationLongitude"];
  [v13 setValue:&unk_1F04E8698 forKey:@"orientationLatitude"];
  [v13 setName:@"fingerAttractor"];
  [array addObject:v13];
  layer = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkEmojiEffectView *)self setDustEmitterLayer:layer];

  dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setMasksToBounds:1];

  v24[0] = emitterCell;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  dustEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer3 setEmitterCells:v16];

  dustEmitterLayer4 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer4 setEmitterBehaviors:array];

  v19 = *MEMORY[0x1E69797B0];
  dustEmitterLayer5 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer5 setEmitterShape:v19];

  [objc_opt_class() updateInterval];
  v22 = v21;
  dustEmitterLayer6 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer6 setUpdateInterval:v22];

  [(CKInvisibleInkEmojiEffectView *)self endDustEmitterLayerFingerEffects];
}

- (void)createDrawEmitter
{
  v29[2] = *MEMORY[0x1E69E9840];
  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v4 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurLarge"];
  [emitterCell setContents:{objc_msgSend(v4, "CGImage")}];

  LODWORD(v5) = 1114636288;
  [emitterCell setBirthRate:v5];
  [emitterCell setDuration:INFINITY];
  LODWORD(v6) = 6.0;
  [emitterCell setLifetime:v6];
  LODWORD(v7) = 1.0;
  [emitterCell setLifetimeRange:v7];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  [emitterCell setOrientationLongitude:3.14159265];
  [emitterCell setOrientationLatitude:0.0];
  [emitterCell setEmissionRange:0.0];
  [emitterCell setScale:1.0];
  [emitterCell setVelocityRange:10.0];
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
  layer = [MEMORY[0x1E6979368] layer];
  [(CKInvisibleInkEmojiEffectView *)self setDrawEmitterLayer:layer];

  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setLifetime:0.0];

  drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setMasksToBounds:1];

  v16 = *MEMORY[0x1E69797A8];
  drawEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer3 setEmitterMode:v16];

  v28 = emitterCell;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  drawEmitterLayer4 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer4 setEmitterCells:v18];

  v27[0] = v8;
  v27[1] = v12;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  drawEmitterLayer5 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer5 setEmitterBehaviors:v20];

  [objc_opt_class() updateInterval];
  v23 = v22;
  drawEmitterLayer6 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer6 setUpdateInterval:v23];

  drawEmitterLayer7 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer7 setShouldRasterize:1];

  drawEmitterLayer8 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer8 setRasterizationScale:0.25];
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v42 layoutSubviews];
  textView = [(CKInvisibleInkEmojiEffectView *)self textView];
  layer = [textView layer];
  textView2 = [(CKInvisibleInkEmojiEffectView *)self textView];
  layer2 = [textView2 layer];
  [layer2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layer3 = [(CKInvisibleInkEmojiEffectView *)self layer];
  [layer convertRect:layer3 toLayer:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  emojiContainerLayer = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [emojiContainerLayer setFrame:{v17, v19, v21, v23}];

  dustContainerLayer = [(CKInvisibleInkEmojiEffectView *)self dustContainerLayer];
  [dustContainerLayer setFrame:{v17, v19, v21, v23}];

  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  emojiLayer = [(CKInvisibleInkEmojiEffectView *)self emojiLayer];
  [emojiLayer setFrame:{v26, v27, v21, v23}];

  v43.origin.x = v26;
  v43.origin.y = v27;
  v43.size.width = v21;
  v43.size.height = v23;
  v44 = CGRectInset(v43, -4.0, -4.0);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setFrame:{x, y, width, height}];

  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setFrame:{v26, v27, v21, v23}];

  dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setEmitterPosition:{v21 * 0.5, v23 * 0.5}];

  dustEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer3 setEmitterSize:{v21, v23}];

  blurredEmojiLayer = [(CKInvisibleInkEmojiEffectView *)self blurredEmojiLayer];
  [blurredEmojiLayer setFrame:{v26, v27, v21, v23}];

  maskLayer = [(CKInvisibleInkEmojiEffectView *)self maskLayer];
  [maskLayer setFrame:{v26, v27, v21, v23}];

  dustEmitterLayer4 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:v23 * (v21 * 0.09)];
  [dustEmitterLayer4 setValue:v40 forKeyPath:@"emitterCells.dustCell.birthRate"];

  layer4 = [(CKInvisibleInkEmojiEffectView *)self layer];
  [layer4 setNeedsDisplay];
}

- (void)displayLayer:(id)layer
{
  v41 = *MEMORY[0x1E69E9840];
  textView = [(CKInvisibleInkEmojiEffectView *)self textView];
  [textView setNeedsDisplay];

  textView2 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [textView2 forceDisplayIfNeeded];

  textView3 = [(CKInvisibleInkEmojiEffectView *)self textView];
  attributedText = [textView3 attributedText];

  v8 = +[CKUIBehavior sharedBehaviors];
  __ck_bigEmojiStyle = [attributedText __ck_bigEmojiStyle];
  v10 = 0;
  v33 = attributedText;
  if (__ck_bigEmojiStyle > 1)
  {
    if (__ck_bigEmojiStyle == 2)
    {
      multipleBigEmojiFont = [v8 multipleBigEmojiFont];
    }

    else
    {
      if (__ck_bigEmojiStyle != 3)
      {
        goto LABEL_11;
      }

      multipleBigEmojiFont = [v8 singleBigAssetFont];
    }
  }

  else if (__ck_bigEmojiStyle)
  {
    if (__ck_bigEmojiStyle != 1)
    {
      goto LABEL_11;
    }

    multipleBigEmojiFont = [v8 singleBigEmojiFont];
  }

  else
  {
    multipleBigEmojiFont = [v8 balloonTextFont];
  }

  v10 = multipleBigEmojiFont;
LABEL_11:
  v32 = v8;
  textView4 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [textView4 setFont:v10];

  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setScale:0.0];
  [preferredFormat setPreferredRange:0];
  [preferredFormat setOpaque:0];
  v14 = objc_alloc(MEMORY[0x1E69DCA78]);
  textView5 = [(CKInvisibleInkEmojiEffectView *)self textView];
  [textView5 bounds];
  v18 = [v14 initWithSize:preferredFormat format:{v16, v17}];

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
  emojiLayer = [(CKInvisibleInkEmojiEffectView *)self emojiLayer];
  v39[0] = emojiLayer;
  blurredEmojiLayer = [(CKInvisibleInkEmojiEffectView *)self blurredEmojiLayer];
  v39[1] = blurredEmojiLayer;
  maskLayer = [(CKInvisibleInkEmojiEffectView *)self maskLayer];
  v39[2] = maskLayer;
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
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
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
  isSuspended = [(CKInvisibleInkEffectView *)self isSuspended];
  textView = [(CKInvisibleInkEmojiEffectView *)self textView];
  layer = [textView layer];
  *&v5 = isSuspended;
  [layer setOpacity:v5];
}

- (void)attachToBalloonView:(id)view
{
  textView = [view textView];
  [(CKInvisibleInkEmojiEffectView *)self setTextView:textView];

  textView2 = [(CKInvisibleInkEmojiEffectView *)self textView];
  layer = [textView2 layer];
  [layer setOpacity:0.0];
}

- (void)detachFromBalloonView
{
  textView = [(CKInvisibleInkEmojiEffectView *)self textView];
  layer = [textView layer];
  LODWORD(v5) = 1.0;
  [layer setOpacity:v5];

  [(CKInvisibleInkEmojiEffectView *)self setTextView:0];
}

- (void)enableBlending
{
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer removeAnimationForKey:@"disableBlending"];

  v4 = *MEMORY[0x1E6979CA0];
  drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setCompositingFilter:v4];

  emojiContainerLayer = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [emojiContainerLayer setHidden:0];

  drawEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer3 setUpdateInterval:0.0];

  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setUpdateInterval:0.0];
}

- (void)disableBlending
{
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setCompositingFilter:0];

  emojiContainerLayer = [(CKInvisibleInkEmojiEffectView *)self emojiContainerLayer];
  [emojiContainerLayer setHidden:1];

  [objc_opt_class() updateInterval];
  v6 = v5;
  drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer2 setUpdateInterval:v6];

  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setUpdateInterval:v6];
}

- (void)endDrawEmitterEffects
{
  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
    [drawEmitterLayer setLifetime:0.0];

    if (![(CKInvisibleInkEffectView *)self isSuspended])
    {
      animation = [MEMORY[0x1E6979300] animation];
      [animation setDuration:7.0];
      [animation setDelegate:self];
      drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      [drawEmitterLayer2 addAnimation:animation forKey:@"disableBlending"];
    }
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [(CKInvisibleInkEmojiEffectView *)self disableBlending];
  }
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v4 reset];
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkEmojiEffectView *)self disableBlending];
  [(CKInvisibleInkEmojiEffectView *)self setNeedsLayout];
}

- (void)moveEmittersWithTouches:(id)touches
{
  anyObject = [touches anyObject];
  [anyObject locationInView:self];
  v5 = v4;
  v7 = v6;
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer setEmitterPosition:{v5, v7}];

  [anyObject force];
  v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
  traitCollection = [(CKInvisibleInkEmojiEffectView *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  v13 = 0.5;
  if (forceTouchCapability == 2)
  {
    v13 = v10;
  }

  v14 = v13 * 130.0 + 190.0;
  v15 = v13 * -65.0 + -95.0;
  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [dustEmitterLayer setValue:v17 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

  dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  [dustEmitterLayer2 setValue:v19 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

  dustEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  v21 = MEMORY[0x1E696B098];
  layer = [(CKInvisibleInkEmojiEffectView *)self layer];
  dustEmitterLayer4 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [layer convertPoint:dustEmitterLayer4 toLayer:{v5, v7}];
  v24 = [v21 valueWithCGPoint:?];
  [dustEmitterLayer3 setValue:v24 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];
}

- (void)endDustEmitterLayerFingerEffects
{
  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setValue:&unk_1F04E7578 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
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

- (void)moveEmittersForTouchesBegan:(id)began
{
  v4 = MEMORY[0x1E6979518];
  beganCopy = began;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  [drawEmitterLayer removeAnimationForKey:@"disableBlending"];

  drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
  LODWORD(v8) = 1.0;
  [drawEmitterLayer2 setLifetime:v8];

  dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer setValue:&unk_1F04E75C0 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];

  dustEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
  [dustEmitterLayer2 setValue:MEMORY[0x1E695E118] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];

  [(CKInvisibleInkEmojiEffectView *)self enableBlending];
  [(CKInvisibleInkEmojiEffectView *)self moveEmittersWithTouches:beganCopy];

  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)moveEmittersForTouchesMoved:(id)moved
{
  v4 = MEMORY[0x1E6979518];
  movedCopy = moved;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkEmojiEffectView *)self moveEmittersWithTouches:movedCopy];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  isPaused = [(CKInvisibleInkEffectView *)self isPaused];
  v34.receiver = self;
  v34.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v34 setPaused:pausedCopy];
  if (isPaused != pausedCopy)
  {
    [MEMORY[0x1E6979518] begin];
    layer = [(CKInvisibleInkEmojiEffectView *)self layer];
    v8 = layer;
    if (pausedCopy)
    {
      [layer setSpeed:0.0];

      layer2 = [(CKInvisibleInkEmojiEffectView *)self layer];
      layer3 = [(CKInvisibleInkEmojiEffectView *)self layer];
      superlayer = [layer3 superlayer];
      [superlayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [layer2 timeOffset];
      [layer2 setTimeOffset:v13 + v14];

      drawEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      [drawEmitterLayer setSpeed:0.0];

      drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      drawEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      superlayer2 = [drawEmitterLayer3 superlayer];
      [superlayer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v20 = v19;
      [drawEmitterLayer2 timeOffset];
      v22 = v20 + v21;
    }

    else
    {
      LODWORD(v7) = 1.0;
      [layer setSpeed:v7];

      layer4 = [(CKInvisibleInkEmojiEffectView *)self layer];
      layer5 = [(CKInvisibleInkEmojiEffectView *)self layer];
      superlayer3 = [layer5 superlayer];
      [superlayer3 convertTime:0 fromLayer:CACurrentMediaTime()];
      v27 = v26;
      [layer4 timeOffset];
      [layer4 setTimeOffset:v28 - v27];

      drawEmitterLayer4 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      LODWORD(v30) = 1.0;
      [drawEmitterLayer4 setSpeed:v30];

      drawEmitterLayer2 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      drawEmitterLayer3 = [(CKInvisibleInkEmojiEffectView *)self drawEmitterLayer];
      superlayer2 = [drawEmitterLayer3 superlayer];
      [superlayer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v32 = v31;
      [drawEmitterLayer2 timeOffset];
      v22 = v33 - v32;
    }

    [drawEmitterLayer2 setTimeOffset:v22];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  isSuspended = [(CKInvisibleInkEffectView *)self isSuspended];
  v9.receiver = self;
  v9.super_class = CKInvisibleInkEmojiEffectView;
  [(CKInvisibleInkEffectView *)&v9 setSuspended:suspendedCopy];
  if (isSuspended != suspendedCopy)
  {
    v6 = suspendedCopy ^ 1;
    [(CKInvisibleInkEmojiEffectView *)self setUserInteractionEnabled:v6];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    dustEmitterLayer = [(CKInvisibleInkEmojiEffectView *)self dustEmitterLayer];
    *&v8 = v6;
    [dustEmitterLayer setBirthRate:v8];

    [MEMORY[0x1E6979518] commit];
  }
}

@end