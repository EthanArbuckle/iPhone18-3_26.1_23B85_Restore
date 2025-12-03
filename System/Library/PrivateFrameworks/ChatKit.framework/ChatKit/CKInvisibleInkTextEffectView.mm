@interface CKInvisibleInkTextEffectView
- (CKInvisibleInkTextEffectView)initWithFrame:(CGRect)frame;
- (CKTextBalloonView)balloonView;
- (UIColor)currentDustColor;
- (id)_newEmitterForCharacterRects:(id)rects lineBounds:(CGRect)bounds;
- (id)createDrawEmitter;
- (id)makeDustEmitter;
- (void)_configureInvisibleInkEmitterUsingTextKit1;
- (void)_configureInvisibleInkEmitterUsingTextKit2;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)attachToBalloonView:(id)view;
- (void)cullSubviewsWithVisibleBounds:(CGRect)bounds;
- (void)detachFromBalloonView;
- (void)didMoveToWindow;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterLayerFingerEffects:(id)effects;
- (void)endTouches;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)began;
- (void)moveEmittersForTouchesMoved:(id)moved;
- (void)moveEmittersWithTouches:(id)touches;
- (void)reset;
- (void)setBlendingEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
- (void)setSuspended:(BOOL)suspended;
- (void)updateDustCellColor;
@end

@implementation CKInvisibleInkTextEffectView

- (CKInvisibleInkTextEffectView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CKInvisibleInkTextEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(CKInvisibleInkTextEffectView *)v3 setDustEmitterContainerLayer:v4];

    dustEmitterContainerLayer = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    [dustEmitterContainerLayer setMasksToBounds:1];

    createDrawEmitter = [(CKInvisibleInkTextEffectView *)v3 createDrawEmitter];
    [(CKInvisibleInkTextEffectView *)v3 setTextDrawEmitterLayer:createDrawEmitter];

    createDrawEmitter2 = [(CKInvisibleInkTextEffectView *)v3 createDrawEmitter];
    [(CKInvisibleInkTextEffectView *)v3 setDustDrawEmitterLayer:createDrawEmitter2];

    layer = [(CKInvisibleInkTextEffectView *)v3 layer];
    dustEmitterContainerLayer2 = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    [layer addSublayer:dustEmitterContainerLayer2];

    dustEmitterContainerLayer3 = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)v3 dustDrawEmitterLayer];
    [dustEmitterContainerLayer3 addSublayer:dustDrawEmitterLayer];
  }

  return v3;
}

- (UIColor)currentDustColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  balloonView = [(CKInvisibleInkTextEffectView *)self balloonView];
  v6 = [theme balloonTextColorForColorType:{objc_msgSend(balloonView, "color")}];
  v7 = [v6 colorWithAlphaComponent:0.0];

  return v7;
}

- (id)createDrawEmitter
{
  v18[2] = *MEMORY[0x1E69E9840];
  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurSmall"];
  [emitterCell setContents:{objc_msgSend(v3, "CGImage")}];

  LODWORD(v4) = 1114636288;
  [emitterCell setBirthRate:v4];
  [emitterCell setDuration:INFINITY];
  LODWORD(v5) = 4.0;
  [emitterCell setLifetime:v5];
  LODWORD(v6) = 1.0;
  [emitterCell setLifetimeRange:v6];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  [emitterCell setOrientationLongitude:3.14159265];
  [emitterCell setOrientationLatitude:0.0];
  [emitterCell setEmissionRange:0.0];
  [emitterCell setScale:1.0];
  [emitterCell setVelocityRange:20.0];
  v7 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979750]];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v18[0] = [v8 CGColor];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v18[1] = [v9 CGColor];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v7 setValue:v10 forKey:@"colors"];

  [v7 setValue:&unk_1F04E6768 forKey:@"locations"];
  v11 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v11 setName:@"scaleBehavior"];
  [v11 setValue:@"scale" forKey:@"keyPath"];
  [v11 setValue:&unk_1F04E6780 forKey:@"values"];
  [v11 setValue:&unk_1F04E6798 forKey:@"locations"];
  layer = [MEMORY[0x1E6979368] layer];
  [layer setLifetime:0.0];
  [layer setMasksToBounds:1];
  [layer setEmitterMode:*MEMORY[0x1E69797A8]];
  v17 = emitterCell;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [layer setEmitterCells:v13];

  v16[0] = v7;
  v16[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [layer setEmitterBehaviors:v14];

  [layer setRenderMode:@"cheapAdditive"];
  [objc_opt_class() updateInterval];
  [layer setUpdateInterval:?];
  [layer setRasterizationScale:0.25];

  return layer;
}

- (id)makeDustEmitter
{
  v20[1] = *MEMORY[0x1E69E9840];
  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  v4 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"textSpeckle"];
  [emitterCell setContents:{objc_msgSend(v4, "CGImage")}];

  LODWORD(v5) = 1150681088;
  [emitterCell setBirthRate:v5];
  [emitterCell setContentsScale:1.79999995];
  [emitterCell setEmissionRange:6.28318531];
  LODWORD(v6) = 3.0;
  [emitterCell setMass:v6];
  LODWORD(v7) = 2.0;
  [emitterCell setMassRange:v7];
  LODWORD(v8) = 1.0;
  [emitterCell setLifetime:v8];
  [emitterCell setScale:0.5];
  [emitterCell setVelocityRange:20.0];
  [emitterCell setName:@"dustCell"];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v10 = 0.0;
  v11 = [whiteColor colorWithAlphaComponent:0.0];
  [emitterCell setColor:{objc_msgSend(v11, "CGColor")}];

  LODWORD(v12) = 1.0;
  [emitterCell setAlphaRange:v12];
  array = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979758]];
  [v14 setName:@"fingerAttractor"];
  [array addObject:v14];
  v15 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v15 setName:@"alphaBehavior"];
  [v15 setValue:@"color.alpha" forKey:@"keyPath"];
  [v15 setValue:&unk_1F04E67B0 forKey:@"values"];
  [v15 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  [array addObject:v15];
  layer = [MEMORY[0x1E6979368] layer];
  v20[0] = emitterCell;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [layer setEmitterCells:v17];

  [layer setEmitterShape:*MEMORY[0x1E69797B8]];
  [layer setEmitterBehaviors:array];
  if (![(CKInvisibleInkTextEffectView *)self blendingEnabled])
  {
    [objc_opt_class() updateInterval];
    v10 = v18;
  }

  [layer setUpdateInterval:v10];
  [layer setSeed:arc4random()];
  [(CKInvisibleInkTextEffectView *)self endDustEmitterLayerFingerEffects:layer];

  return layer;
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v50 layoutSubviews];
  window = [(CKInvisibleInkTextEffectView *)self window];

  if (window)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
    v5 = [dustEmitterLayers countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v47;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(dustEmitterLayers);
          }

          [*(*(&v46 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [dustEmitterLayers countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v6);
    }

    [(CKInvisibleInkTextEffectView *)self bounds];
    v10 = v9;
    [(CKInvisibleInkTextEffectView *)self bounds];
    v12 = v11;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    dustEmitterContainerLayer = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
    [dustEmitterContainerLayer setFrame:{0.0, 0.0, v10, v12}];

    layer = [(CKInvisibleInkTextEffectView *)self layer];
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v10;
    v53.size.height = v12;
    v54 = CGRectInset(v53, -4.0, -4.0);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    textView = [(CKInvisibleInkTextEffectView *)self textView];
    layer2 = [textView layer];
    [layer convertRect:layer2 toLayer:{x, y, width, height}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [textDrawEmitterLayer setFrame:{v22, v24, v26, v28}];

    layer3 = [(CKInvisibleInkTextEffectView *)self layer];
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = v10;
    v55.size.height = v12;
    v56 = CGRectInset(v55, -4.0, -4.0);
    v31 = v56.origin.x;
    v32 = v56.origin.y;
    v33 = v56.size.width;
    v34 = v56.size.height;
    textView2 = [(CKInvisibleInkTextEffectView *)self textView];
    layer4 = [textView2 layer];
    [layer3 convertRect:layer4 fromLayer:{v31, v32, v33, v34}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
    [dustDrawEmitterLayer setFrame:{v38, v40, v42, v44}];

    [(CKInvisibleInkTextEffectView *)self _configureInvisibleInkEmitterUsingTextKit2];
    [MEMORY[0x1E6979518] commit];
  }
}

- (id)_newEmitterForCharacterRects:(id)rects lineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    textView = [(CKInvisibleInkTextEffectView *)self textView];
    [textView textContainerInset];
    v12 = x + v11;

    textView2 = [(CKInvisibleInkTextEffectView *)self textView];
    [textView2 textContainerInset];
    v15 = y + v14;

    textView3 = [(CKInvisibleInkTextEffectView *)self textView];
    layer = [textView3 layer];
    dustEmitterContainerLayer = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
    [layer convertPoint:dustEmitterContainerLayer toLayer:{v12, v15}];
    v20 = v19;
    v22 = v21;

    makeDustEmitter = [(CKInvisibleInkTextEffectView *)self makeDustEmitter];
    [makeDustEmitter setEmitterPosition:{21.5, 23.0}];
    [makeDustEmitter setEmitterSize:{1.0, 1.0}];
    v52.origin.x = v20;
    v52.origin.y = v22;
    v52.size.width = width;
    v52.size.height = height;
    v53 = CGRectInset(v52, -22.0, -22.0);
    [makeDustEmitter setFrame:{v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
    [makeDustEmitter setMasksToBounds:1];
    array = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = rectsCopy;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v44 = rectsCopy;
      v28 = *v47;
      v29 = 0.0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v46 + 1) + 8 * i) CGRectValue];
          v54.origin.x = v31 + -3.0;
          v54.origin.y = 0.0;
          v55 = CGRectInset(v54, 2.0, 5.0);
          v32 = v55.origin.x;
          v33 = v55.origin.y;
          v34 = v55.size.width;
          v35 = v55.size.height;
          v45 = v55;
          v36 = [MEMORY[0x1E696B098] valueWithBytes:&v45 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [array addObject:v36];

          v56.origin.x = v32;
          v56.origin.y = v33;
          v56.size.width = v34;
          v56.size.height = v35;
          v37 = CGRectGetWidth(v56);
          v57.origin.x = v32;
          v57.origin.y = v33;
          v57.size.width = v34;
          v57.size.height = v35;
          v29 = v29 + v37 * CGRectGetHeight(v57);
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v27);
      v38 = v29 * 0.8;
      rectsCopy = v44;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = [array copy];
    [makeDustEmitter setEmitterRects:v39];

    *&v40 = ([(CKInvisibleInkEffectView *)self isSuspended]^ 1);
    [makeDustEmitter setBirthRate:v40];
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    [makeDustEmitter setValue:v41 forKeyPath:@"emitterCells.dustCell.birthRate"];

    currentDustColor = [(CKInvisibleInkTextEffectView *)self currentDustColor];
    [makeDustEmitter setValue:objc_msgSend(currentDustColor forKeyPath:{"CGColor"), @"emitterCells.dustCell.color"}];
  }

  else
  {
    makeDustEmitter = 0;
  }

  return makeDustEmitter;
}

- (void)_configureInvisibleInkEmitterUsingTextKit2
{
  v77 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Configuring invisble ink emitter using TK2.", buf, 2u);
    }
  }

  textView = [(CKInvisibleInkTextEffectView *)self textView];
  textLayoutManager = [textView textLayoutManager];

  documentRange = [textLayoutManager documentRange];
  [textLayoutManager ensureLayoutForRange:documentRange];

  array = [MEMORY[0x1E695DF70] array];
  documentRange2 = [textLayoutManager documentRange];
  location = [documentRange2 location];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit2__block_invoke;
  v70[3] = &unk_1E72EBE08;
  v71 = textLayoutManager;
  v9 = array;
  v72 = v9;
  v51 = v71;
  [v71 enumerateSubstringsFromLocation:location options:2 usingBlock:v70];

  array2 = [MEMORY[0x1E695DF70] array];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v12)
  {
    v13 = *v67;
    v14 = -1;
    v15 = -1.0;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v66 + 1) + 8 * v16) CGRectValue];
        v19 = v18;
        v15 = v20;
        v22 = v21;
        v24 = v23;
        v14 += !CKFloatApproximatelyEqualToFloatWithTolerance(v20, v17, 0.00000999999975);
        if ([array2 count] <= v14)
        {
          array3 = [MEMORY[0x1E695DF70] array];
          [array2 addObject:array3];
        }

        else
        {
          array3 = [array2 objectAtIndexedSubscript:v14];
        }

        v65[0] = v19;
        *&v65[1] = v15;
        v65[2] = v22;
        v65[3] = v24;
        v26 = [MEMORY[0x1E696B098] valueWithBytes:v65 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [array3 addObject:v26];

        ++v16;
        v17 = v15;
      }

      while (v12 != v16);
      v12 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v12);
  }

  array4 = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = array2;
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v29)
  {
    v30 = *v62;
    v55 = *(MEMORY[0x1E695F058] + 8);
    v56 = *MEMORY[0x1E695F058];
    v53 = *(MEMORY[0x1E695F058] + 24);
    v54 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      v31 = 0;
      do
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v61 + 1) + 8 * v31);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v57 objects:v74 count:16];
        y = v55;
        x = v56;
        height = v53;
        width = v54;
        if (v34)
        {
          v39 = *v58;
          y = v55;
          x = v56;
          height = v53;
          width = v54;
          do
          {
            v40 = 0;
            do
            {
              if (*v58 != v39)
              {
                objc_enumerationMutation(v33);
              }

              [*(*(&v57 + 1) + 8 * v40) CGRectValue];
              v42 = v41;
              v44 = v43;
              v46 = v45;
              v48 = v47;
              v78.origin.x = x;
              v78.origin.y = y;
              v78.size.width = width;
              v78.size.height = height;
              v81.origin.y = v55;
              v81.origin.x = v56;
              v81.size.height = v53;
              v81.size.width = v54;
              if (CGRectEqualToRect(v78, v81))
              {
                x = v42;
                y = v44;
                width = v46;
                height = v48;
              }

              else
              {
                v79.origin.x = x;
                v79.origin.y = y;
                v79.size.width = width;
                v79.size.height = height;
                v82.origin.x = v42;
                v82.origin.y = v44;
                v82.size.width = v46;
                v82.size.height = v48;
                v80 = CGRectUnion(v79, v82);
                x = v80.origin.x;
                y = v80.origin.y;
                width = v80.size.width;
                height = v80.size.height;
              }

              ++v40;
            }

            while (v34 != v40);
            v34 = [v33 countByEnumeratingWithState:&v57 objects:v74 count:16];
          }

          while (v34);
        }

        height = [(CKInvisibleInkTextEffectView *)self _newEmitterForCharacterRects:v33 lineBounds:x, y, width, height];
        if (height)
        {
          [array4 addObject:height];
          dustEmitterContainerLayer = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
          [dustEmitterContainerLayer insertSublayer:height atIndex:0];
        }

        ++v31;
      }

      while (v31 != v29);
      v29 = [v28 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v29);
  }

  [(CKInvisibleInkTextEffectView *)self setDustEmitterLayers:array4];
}

void __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit2__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit2__block_invoke_2;
  v5[3] = &unk_1E72EBDE0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 enumerateTextSegmentsInRange:a3 type:0 options:0 usingBlock:v5];
}

uint64_t __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit2__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v8 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v5 addObject:v6];

  return 1;
}

- (void)_configureInvisibleInkEmitterUsingTextKit1
{
  v3 = CFLocaleCopyCurrent();
  v4 = *MEMORY[0x1E695E480];
  textView = [(CKInvisibleInkTextEffectView *)self textView];
  text = [textView text];
  textView2 = [(CKInvisibleInkTextEffectView *)self textView];
  text2 = [textView2 text];
  v45.length = [text2 length];
  v45.location = 0;
  cf = v3;
  v9 = CFStringTokenizerCreate(v4, text, v45, 4uLL, v3);

  array = [MEMORY[0x1E695DF70] array];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__2;
  v43[4] = __Block_byref_object_dispose__2;
  array2 = [MEMORY[0x1E695DF70] array];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x4010000000;
  v39[3] = &unk_190F92BB2;
  v11 = *(MEMORY[0x1E695F058] + 16);
  v40 = *MEMORY[0x1E695F058];
  v41 = v11;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3010000000;
  v37[3] = &unk_190F92BB2;
  v38 = vdupq_n_s64(0xFFF0000000000000);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit1__block_invoke;
  aBlock[3] = &unk_1E72EBE30;
  v33 = v43;
  v34 = v37;
  aBlock[4] = self;
  v35 = v39;
  v36 = v42;
  v24 = array;
  v32 = v24;
  v12 = _Block_copy(aBlock);
  while (CFStringTokenizerAdvanceToNextToken(v9))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v9);
    textView3 = [(CKInvisibleInkTextEffectView *)self textView];
    layoutManager = [textView3 layoutManager];
    v16 = [layoutManager glyphRangeForCharacterRange:CurrentTokenRange.location actualCharacterRange:{CurrentTokenRange.length, 0}];
    v18 = v17;

    textView4 = [(CKInvisibleInkTextEffectView *)self textView];
    layoutManager2 = [textView4 layoutManager];
    textView5 = [(CKInvisibleInkTextEffectView *)self textView];
    textContainer = [textView5 textContainer];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit1__block_invoke_2;
    v25[3] = &unk_1E72EBE58;
    v27 = v37;
    v26 = v12;
    v28 = v43;
    v29 = v42;
    v30 = v39;
    [layoutManager2 enumerateEnclosingRectsForGlyphRange:v16 withinSelectedGlyphRange:v18 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, textContainer, v25}];
  }

  CFRelease(v9);
  CFRelease(cf);
  v12[2](v12);
  [(CKInvisibleInkTextEffectView *)self setDustEmitterLayers:v24];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
}

void __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit1__block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = [*(a1 + 32) textView];
    [v5 textContainerInset];
    v7 = v3 + v6;

    v8 = [*(a1 + 32) textView];
    [v8 textContainerInset];
    v10 = v4 + v9;

    v11 = [*(a1 + 32) textView];
    v12 = [v11 layer];
    v13 = [*(a1 + 32) dustEmitterContainerLayer];
    [v12 convertPoint:v13 toLayer:{v7, v10}];
    v15 = v14;
    v17 = v16;

    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 48);
    v20 = *(v18 + 56);
    v25 = [*(a1 + 32) makeDustEmitter];
    [v25 setEmitterPosition:{21.5, 23.0}];
    [v25 setEmitterSize:{1.0, 1.0}];
    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v20;
    v28 = CGRectInset(v27, -22.0, -22.0);
    [v25 setFrame:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
    [v25 setMasksToBounds:1];
    [v25 setEmitterRects:*(*(*(a1 + 48) + 8) + 40)];
    *&v21 = ([*(a1 + 32) isSuspended] ^ 1);
    [v25 setBirthRate:v21];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 72) + 8) + 24) * 0.8];
    [v25 setValue:v22 forKeyPath:@"emitterCells.dustCell.birthRate"];

    v23 = [*(a1 + 32) currentDustColor];
    [v25 setValue:objc_msgSend(v23 forKeyPath:{"CGColor"), @"emitterCells.dustCell.color"}];

    [*(a1 + 40) addObject:v25];
    v24 = [*(a1 + 32) dustEmitterContainerLayer];
    [v24 insertSublayer:v25 atIndex:0];
  }
}

void __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit1__block_invoke_2(void *a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  if (a3 > v11)
  {
    (*(a1[4] + 16))();
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(a1[7] + 8) + 24) = 0;
    v15 = *(a1[8] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    *(v15 + 32) = *MEMORY[0x1E695F058];
    *(v15 + 48) = v16;
    *(*(a1[5] + 8) + 32) = a2;
    *(*(a1[5] + 8) + 40) = a3;
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
  }

  v23.origin.x = a2 - *(v10 + 32);
  v23.origin.y = a3 - v11;
  height = 2.0;
  v23.size.width = a4;
  v23.size.height = a5;
  v24 = CGRectInset(v23, 2.0, 5.0);
  x = v24.origin.x;
  y = v24.origin.y;
  if (v24.size.width >= 2.0)
  {
    width = v24.size.width;
  }

  else
  {
    width = 2.0;
  }

  if (v24.size.height >= 2.0)
  {
    height = v24.size.height;
  }

  v21 = *(*(a1[6] + 8) + 40);
  v22 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v21 addObject:v22];

  *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + height * width;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  *(*(a1[8] + 8) + 32) = CGRectUnion(*(*(a1[8] + 8) + 32), v25);
}

- (void)didMoveToWindow
{
  window = [(CKInvisibleInkTextEffectView *)self window];

  if (window)
  {

    [(CKInvisibleInkTextEffectView *)self setNeedsLayout];
  }
}

- (void)setBlendingEnabled:(BOOL)enabled
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_blendingEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_blendingEnabled = enabled;
    textView = [(CKInvisibleInkTextEffectView *)self textView];
    layer = [textView layer];
    v7 = layer;
    if (enabledCopy)
    {
      [layer setHidden:0];

      v8 = *MEMORY[0x1E6979CA0];
      textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [textDrawEmitterLayer setCompositingFilter:v8];

      textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [textDrawEmitterLayer2 setShouldRasterize:1];

      v11 = *MEMORY[0x1E69798E8];
      dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [dustDrawEmitterLayer setCompositingFilter:v11];

      dustDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [dustDrawEmitterLayer2 setShouldRasterize:1];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v15 = [dustEmitterLayers countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(dustEmitterLayers);
            }

            [*(*(&v35 + 1) + 8 * i) setUpdateInterval:0.0];
          }

          v16 = [dustEmitterLayers countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      v19 = 0.0;
    }

    else
    {
      [layer setHidden:1];

      textDrawEmitterLayer3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [textDrawEmitterLayer3 setCompositingFilter:0];

      textDrawEmitterLayer4 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [textDrawEmitterLayer4 setShouldRasterize:0];

      dustDrawEmitterLayer3 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [dustDrawEmitterLayer3 setCompositingFilter:0];

      dustDrawEmitterLayer4 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [dustDrawEmitterLayer4 setShouldRasterize:0];

      [objc_opt_class() updateInterval];
      v19 = v24;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v25 = [dustEmitterLayers countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v32;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v32 != v27)
            {
              objc_enumerationMutation(dustEmitterLayers);
            }

            [*(*(&v31 + 1) + 8 * j) setUpdateInterval:v19];
          }

          v26 = [dustEmitterLayers countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v26);
      }
    }

    dustDrawEmitterLayer5 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
    [dustDrawEmitterLayer5 setUpdateInterval:v19];

    textDrawEmitterLayer5 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [textDrawEmitterLayer5 setUpdateInterval:v19];
  }
}

- (void)endDrawEmitterEffects
{
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer setLifetime:0.0];

  dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [dustDrawEmitterLayer setLifetime:0.0];

  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    animation = [MEMORY[0x1E6979300] animation];
    [animation setDuration:5.0];
    [animation setDelegate:self];
    textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [textDrawEmitterLayer2 addAnimation:animation forKey:@"disableBlending"];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:0];
  }
}

- (void)endDustEmitterLayerFingerEffects:(id)effects
{
  effectsCopy = effects;
  [effectsCopy setValue:&unk_1F04E75D8 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];
  [effectsCopy setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
}

- (void)endTouches
{
  v15 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkTextEffectView *)self endDrawEmitterEffects];
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer removeAnimationForKey:@"scale"];

  dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [dustDrawEmitterLayer removeAnimationForKey:@"scale"];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v6 = [dustEmitterLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(dustEmitterLayers);
        }

        [(CKInvisibleInkTextEffectView *)self endDustEmitterLayerFingerEffects:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [dustEmitterLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)moveEmittersWithTouches:(id)touches
{
  v36 = *MEMORY[0x1E69E9840];
  anyObject = [touches anyObject];
  [anyObject locationInView:self];
  v6 = v5;
  v8 = v7;
  v29 = anyObject;
  [anyObject force];
  v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
  traitCollection = [(CKInvisibleInkTextEffectView *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0.5;
  }

  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer setEmitterPosition:{v6, v8}];

  dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [dustDrawEmitterLayer setEmitterPosition:{v6, v8}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = v13 * 130.0 + 190.0;
    v19 = v13 * -65.0 + -95.0;
    v20 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [v22 setValue:v23 forKeyPath:@"emitterBehaviors.fingerAttractor.radius"];

        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
        [v22 setValue:v24 forKeyPath:@"emitterBehaviors.fingerAttractor.falloff"];

        v25 = MEMORY[0x1E696B098];
        layer = [(CKInvisibleInkTextEffectView *)self layer];
        [layer convertPoint:v22 toLayer:{v6, v8}];
        v27 = [v25 valueWithCGPoint:?];
        [v22 setValue:v27 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  coverageTracker = [(CKInvisibleInkEffectView *)self coverageTracker];
  [coverageTracker recordTouchAtPoint:{v6, v8}];
}

- (void)moveEmittersForTouchesBegan:(id)began
{
  v27 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  LODWORD(v5) = 1.0;
  [textDrawEmitterLayer setLifetime:v5];

  dustDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  LODWORD(v7) = 1.0;
  [dustDrawEmitterLayer setLifetime:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [dustEmitterLayers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = MEMORY[0x1E695E118];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(dustEmitterLayers);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        [v14 setValue:&unk_1F04E7620 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];
        [v14 setValue:v12 forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
      }

      v10 = [dustEmitterLayers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer2 removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:1];
  animation = [MEMORY[0x1E6979318] animation];
  [animation setFromValue:&unk_1F04E75F0];
  [animation setToValue:&unk_1F04E7638];
  [animation setDuration:4.0];
  [animation setRemovedOnCompletion:0];
  [animation setFillMode:*MEMORY[0x1E69797E8]];
  [animation setKeyPath:@"scale"];
  textDrawEmitterLayer3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  keyPath = [animation keyPath];
  [textDrawEmitterLayer3 addAnimation:animation forKey:keyPath];

  dustDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  keyPath2 = [animation keyPath];
  [dustDrawEmitterLayer2 addAnimation:animation forKey:keyPath2];

  [(CKInvisibleInkTextEffectView *)self moveEmittersWithTouches:beganCopy];
  [MEMORY[0x1E6979518] commit];
}

- (void)moveEmittersForTouchesMoved:(id)moved
{
  v4 = MEMORY[0x1E6979518];
  movedCopy = moved;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkTextEffectView *)self moveEmittersWithTouches:movedCopy];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)updateDustCellColor
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  balloonView = [(CKInvisibleInkTextEffectView *)self balloonView];
  v6 = [theme balloonTextColorForColorType:{objc_msgSend(balloonView, "color")}];
  v7 = [v6 colorWithAlphaComponent:0.0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [dustEmitterLayers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(dustEmitterLayers);
        }

        [*(*(&v13 + 1) + 8 * v12++) setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"emitterCells.dustCell.color"}];
      }

      while (v10 != v12);
      v10 = [dustEmitterLayers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)attachToBalloonView:(id)view
{
  viewCopy = view;
  [(CKInvisibleInkTextEffectView *)self setBalloonView:viewCopy];
  textView = [viewCopy textView];

  [(CKInvisibleInkTextEffectView *)self setTextView:textView];
  layer = [textView layer];
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [layer addSublayer:textDrawEmitterLayer];

  LOBYTE(textDrawEmitterLayer) = self->_blendingEnabled;
  layer2 = [textView layer];
  [layer2 setHidden:(textDrawEmitterLayer & 1) == 0];

  [(CKInvisibleInkTextEffectView *)self updateDustCellColor];
}

- (void)detachFromBalloonView
{
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer removeFromSuperlayer];

  textView = [(CKInvisibleInkTextEffectView *)self textView];
  layer = [textView layer];
  [layer setHidden:0];

  [(CKInvisibleInkTextEffectView *)self setTextView:0];

  [(CKInvisibleInkTextEffectView *)self setBalloonView:0];
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v5 reset];
  textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [textDrawEmitterLayer removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:0];
  balloonView = [(CKInvisibleInkTextEffectView *)self balloonView];

  if (balloonView)
  {
    [(CKInvisibleInkTextEffectView *)self updateDustCellColor];
  }
}

- (void)cullSubviewsWithVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v67 = *MEMORY[0x1E69E9840];
  dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [dustEmitterLayers count];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  dustEmitterLayers2 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v13 = [dustEmitterLayers2 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    do
    {
      v16 = 0;
      do
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(dustEmitterLayers2);
        }

        v17 = *(*(&v60 + 1) + 8 * v16);
        dustEmitterContainerLayer = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
        [v17 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        layer = [(CKInvisibleInkTextEffectView *)self layer];
        [dustEmitterContainerLayer convertRect:layer toLayer:{v20, v22, v24, v26}];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = height;
        v70.origin.x = v29;
        v70.origin.y = v31;
        v70.size.width = v33;
        v70.size.height = v35;
        v69 = CGRectIntersection(v68, v70);
        LOBYTE(layer) = CGRectIsEmpty(v69);
        superlayer = [v17 superlayer];
        v37 = superlayer;
        if (layer)
        {

          v38 = v11;
          if (!v37)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v38 addObject:v17];
          goto LABEL_9;
        }

        v38 = v10;
        if (!v37)
        {
          goto LABEL_8;
        }

LABEL_9:
        ++v16;
      }

      while (v14 != v16);
      v39 = [dustEmitterLayers2 countByEnumeratingWithState:&v60 objects:v66 count:16];
      v14 = v39;
    }

    while (v39);
  }

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = v11;
    v41 = [v40 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      do
      {
        v44 = 0;
        do
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [*(*(&v56 + 1) + 8 * v44++) removeFromSuperlayer];
        }

        while (v42 != v44);
        v42 = [v40 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v42);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = v10;
    v46 = [v45 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v53;
      do
      {
        v49 = 0;
        do
        {
          if (*v53 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v52 + 1) + 8 * v49);
          dustEmitterContainerLayer2 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
          [dustEmitterContainerLayer2 insertSublayer:v50 atIndex:0];

          ++v49;
        }

        while (v47 != v49);
        v47 = [v45 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v47);
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  isPaused = [(CKInvisibleInkEffectView *)self isPaused];
  v34.receiver = self;
  v34.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v34 setPaused:pausedCopy];
  if (isPaused != pausedCopy)
  {
    [MEMORY[0x1E6979518] begin];
    layer = [(CKInvisibleInkTextEffectView *)self layer];
    v8 = layer;
    if (pausedCopy)
    {
      [layer setSpeed:0.0];

      layer2 = [(CKInvisibleInkTextEffectView *)self layer];
      layer3 = [(CKInvisibleInkTextEffectView *)self layer];
      superlayer = [layer3 superlayer];
      [superlayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [layer2 timeOffset];
      [layer2 setTimeOffset:v13 + v14];

      textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [textDrawEmitterLayer setSpeed:0.0];

      textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      textDrawEmitterLayer3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      superlayer2 = [textDrawEmitterLayer3 superlayer];
      [superlayer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v20 = v19;
      [textDrawEmitterLayer2 timeOffset];
      v22 = v20 + v21;
    }

    else
    {
      LODWORD(v7) = 1.0;
      [layer setSpeed:v7];

      layer4 = [(CKInvisibleInkTextEffectView *)self layer];
      layer5 = [(CKInvisibleInkTextEffectView *)self layer];
      superlayer3 = [layer5 superlayer];
      [superlayer3 convertTime:0 fromLayer:CACurrentMediaTime()];
      v27 = v26;
      [layer4 timeOffset];
      [layer4 setTimeOffset:v28 - v27];

      textDrawEmitterLayer4 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      LODWORD(v30) = 1.0;
      [textDrawEmitterLayer4 setSpeed:v30];

      textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      textDrawEmitterLayer3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      superlayer2 = [textDrawEmitterLayer3 superlayer];
      [superlayer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v32 = v31;
      [textDrawEmitterLayer2 timeOffset];
      v22 = v33 - v32;
    }

    [textDrawEmitterLayer2 setTimeOffset:v22];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v38 = *MEMORY[0x1E69E9840];
  isSuspended = [(CKInvisibleInkEffectView *)self isSuspended];
  v35.receiver = self;
  v35.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v35 setSuspended:suspendedCopy];
  if (isSuspended != suspendedCopy)
  {
    [(CKInvisibleInkTextEffectView *)self setUserInteractionEnabled:suspendedCopy ^ 1];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (!suspendedCopy)
    {
      v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"birthRate"];
      [v6 setFromValue:&unk_1F04E75D8];
      [v6 setToValue:&unk_1F04E75F0];
      [v6 setDuration:1.0];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      dustEmitterLayers = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v8 = [dustEmitterLayers countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v32;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(dustEmitterLayers);
            }

            [*(*(&v31 + 1) + 8 * i) addAnimation:v6 forKey:@"birthRate"];
          }

          v9 = [dustEmitterLayers countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v9);
      }

      [(CKInvisibleInkTextEffectView *)self endDrawEmitterEffects];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    dustEmitterLayers2 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
    v13 = [dustEmitterLayers2 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v28;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(dustEmitterLayers2);
          }

          *&v14 = (suspendedCopy ^ 1);
          [*(*(&v27 + 1) + 8 * j) setBirthRate:v14];
        }

        v15 = [dustEmitterLayers2 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v15);
    }

    v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    if (suspendedCopy)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v18 setFromValue:{objc_msgSend(clearColor, "CGColor")}];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v21 = 0.5;
    }

    else
    {
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [v18 setFromValue:{objc_msgSend(whiteColor2, "CGColor")}];

      whiteColor = [MEMORY[0x1E69DC888] clearColor];
      v21 = 3.0;
    }

    [v18 setToValue:{objc_msgSend(whiteColor, "CGColor")}];

    [v18 setDuration:v21];
    v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    [v18 setTimingFunction:v23];

    textDrawEmitterLayer = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [textDrawEmitterLayer addAnimation:v18 forKey:@"backgroundColor"];

    if (suspendedCopy)
    {
      textDrawEmitterLayer = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [textDrawEmitterLayer CGColor];
    }

    else
    {
      cGColor = 0;
    }

    textDrawEmitterLayer2 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [textDrawEmitterLayer2 setBackgroundColor:cGColor];

    if (suspendedCopy)
    {
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (CKTextBalloonView)balloonView
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonView);

  return WeakRetained;
}

@end