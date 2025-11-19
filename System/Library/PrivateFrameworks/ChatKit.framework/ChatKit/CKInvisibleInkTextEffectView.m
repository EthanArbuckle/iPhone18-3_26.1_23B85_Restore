@interface CKInvisibleInkTextEffectView
- (CKInvisibleInkTextEffectView)initWithFrame:(CGRect)a3;
- (CKTextBalloonView)balloonView;
- (UIColor)currentDustColor;
- (id)_newEmitterForCharacterRects:(id)a3 lineBounds:(CGRect)a4;
- (id)createDrawEmitter;
- (id)makeDustEmitter;
- (void)_configureInvisibleInkEmitterUsingTextKit1;
- (void)_configureInvisibleInkEmitterUsingTextKit2;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)attachToBalloonView:(id)a3;
- (void)cullSubviewsWithVisibleBounds:(CGRect)a3;
- (void)detachFromBalloonView;
- (void)didMoveToWindow;
- (void)endDrawEmitterEffects;
- (void)endDustEmitterLayerFingerEffects:(id)a3;
- (void)endTouches;
- (void)layoutSubviews;
- (void)moveEmittersForTouchesBegan:(id)a3;
- (void)moveEmittersForTouchesMoved:(id)a3;
- (void)moveEmittersWithTouches:(id)a3;
- (void)reset;
- (void)setBlendingEnabled:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setSuspended:(BOOL)a3;
- (void)updateDustCellColor;
@end

@implementation CKInvisibleInkTextEffectView

- (CKInvisibleInkTextEffectView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CKInvisibleInkTextEffectView;
  v3 = [(CKInvisibleInkEffectView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(CKInvisibleInkTextEffectView *)v3 setDustEmitterContainerLayer:v4];

    v5 = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    [v5 setMasksToBounds:1];

    v6 = [(CKInvisibleInkTextEffectView *)v3 createDrawEmitter];
    [(CKInvisibleInkTextEffectView *)v3 setTextDrawEmitterLayer:v6];

    v7 = [(CKInvisibleInkTextEffectView *)v3 createDrawEmitter];
    [(CKInvisibleInkTextEffectView *)v3 setDustDrawEmitterLayer:v7];

    v8 = [(CKInvisibleInkTextEffectView *)v3 layer];
    v9 = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    [v8 addSublayer:v9];

    v10 = [(CKInvisibleInkTextEffectView *)v3 dustEmitterContainerLayer];
    v11 = [(CKInvisibleInkTextEffectView *)v3 dustDrawEmitterLayer];
    [v10 addSublayer:v11];
  }

  return v3;
}

- (UIColor)currentDustColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [(CKInvisibleInkTextEffectView *)self balloonView];
  v6 = [v4 balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  v7 = [v6 colorWithAlphaComponent:0.0];

  return v7;
}

- (id)createDrawEmitter
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6979360] emitterCell];
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"blurSmall"];
  [v2 setContents:{objc_msgSend(v3, "CGImage")}];

  LODWORD(v4) = 1114636288;
  [v2 setBirthRate:v4];
  [v2 setDuration:INFINITY];
  LODWORD(v5) = 4.0;
  [v2 setLifetime:v5];
  LODWORD(v6) = 1.0;
  [v2 setLifetimeRange:v6];
  [v2 setParticleType:*MEMORY[0x1E6979778]];
  [v2 setOrientationLongitude:3.14159265];
  [v2 setOrientationLatitude:0.0];
  [v2 setEmissionRange:0.0];
  [v2 setScale:1.0];
  [v2 setVelocityRange:20.0];
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
  v12 = [MEMORY[0x1E6979368] layer];
  [v12 setLifetime:0.0];
  [v12 setMasksToBounds:1];
  [v12 setEmitterMode:*MEMORY[0x1E69797A8]];
  v17 = v2;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v12 setEmitterCells:v13];

  v16[0] = v7;
  v16[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v12 setEmitterBehaviors:v14];

  [v12 setRenderMode:@"cheapAdditive"];
  [objc_opt_class() updateInterval];
  [v12 setUpdateInterval:?];
  [v12 setRasterizationScale:0.25];

  return v12;
}

- (id)makeDustEmitter
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979360] emitterCell];
  v4 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"textSpeckle"];
  [v3 setContents:{objc_msgSend(v4, "CGImage")}];

  LODWORD(v5) = 1150681088;
  [v3 setBirthRate:v5];
  [v3 setContentsScale:1.79999995];
  [v3 setEmissionRange:6.28318531];
  LODWORD(v6) = 3.0;
  [v3 setMass:v6];
  LODWORD(v7) = 2.0;
  [v3 setMassRange:v7];
  LODWORD(v8) = 1.0;
  [v3 setLifetime:v8];
  [v3 setScale:0.5];
  [v3 setVelocityRange:20.0];
  [v3 setName:@"dustCell"];
  [v3 setParticleType:*MEMORY[0x1E6979778]];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = 0.0;
  v11 = [v9 colorWithAlphaComponent:0.0];
  [v3 setColor:{objc_msgSend(v11, "CGColor")}];

  LODWORD(v12) = 1.0;
  [v3 setAlphaRange:v12];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979758]];
  [v14 setName:@"fingerAttractor"];
  [v13 addObject:v14];
  v15 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v15 setName:@"alphaBehavior"];
  [v15 setValue:@"color.alpha" forKey:@"keyPath"];
  [v15 setValue:&unk_1F04E67B0 forKey:@"values"];
  [v15 setValue:MEMORY[0x1E695E118] forKey:@"additive"];
  [v13 addObject:v15];
  v16 = [MEMORY[0x1E6979368] layer];
  v20[0] = v3;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v16 setEmitterCells:v17];

  [v16 setEmitterShape:*MEMORY[0x1E69797B8]];
  [v16 setEmitterBehaviors:v13];
  if (![(CKInvisibleInkTextEffectView *)self blendingEnabled])
  {
    [objc_opt_class() updateInterval];
    v10 = v18;
  }

  [v16 setUpdateInterval:v10];
  [v16 setSeed:arc4random()];
  [(CKInvisibleInkTextEffectView *)self endDustEmitterLayerFingerEffects:v16];

  return v16;
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v50 layoutSubviews];
  v3 = [(CKInvisibleInkTextEffectView *)self window];

  if (v3)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v46 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v6);
    }

    [(CKInvisibleInkTextEffectView *)self bounds];
    v10 = v9;
    [(CKInvisibleInkTextEffectView *)self bounds];
    v12 = v11;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v13 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
    [v13 setFrame:{0.0, 0.0, v10, v12}];

    v14 = [(CKInvisibleInkTextEffectView *)self layer];
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v10;
    v53.size.height = v12;
    v54 = CGRectInset(v53, -4.0, -4.0);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    v19 = [(CKInvisibleInkTextEffectView *)self textView];
    v20 = [v19 layer];
    [v14 convertRect:v20 toLayer:{x, y, width, height}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [v29 setFrame:{v22, v24, v26, v28}];

    v30 = [(CKInvisibleInkTextEffectView *)self layer];
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = v10;
    v55.size.height = v12;
    v56 = CGRectInset(v55, -4.0, -4.0);
    v31 = v56.origin.x;
    v32 = v56.origin.y;
    v33 = v56.size.width;
    v34 = v56.size.height;
    v35 = [(CKInvisibleInkTextEffectView *)self textView];
    v36 = [v35 layer];
    [v30 convertRect:v36 fromLayer:{v31, v32, v33, v34}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
    [v45 setFrame:{v38, v40, v42, v44}];

    [(CKInvisibleInkTextEffectView *)self _configureInvisibleInkEmitterUsingTextKit2];
    [MEMORY[0x1E6979518] commit];
  }
}

- (id)_newEmitterForCharacterRects:(id)a3 lineBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ([v9 count])
  {
    v10 = [(CKInvisibleInkTextEffectView *)self textView];
    [v10 textContainerInset];
    v12 = x + v11;

    v13 = [(CKInvisibleInkTextEffectView *)self textView];
    [v13 textContainerInset];
    v15 = y + v14;

    v16 = [(CKInvisibleInkTextEffectView *)self textView];
    v17 = [v16 layer];
    v18 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
    [v17 convertPoint:v18 toLayer:{v12, v15}];
    v20 = v19;
    v22 = v21;

    v23 = [(CKInvisibleInkTextEffectView *)self makeDustEmitter];
    [v23 setEmitterPosition:{21.5, 23.0}];
    [v23 setEmitterSize:{1.0, 1.0}];
    v52.origin.x = v20;
    v52.origin.y = v22;
    v52.size.width = width;
    v52.size.height = height;
    v53 = CGRectInset(v52, -22.0, -22.0);
    [v23 setFrame:{v53.origin.x, v53.origin.y, v53.size.width, v53.size.height}];
    [v23 setMasksToBounds:1];
    v24 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = v9;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v44 = v9;
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
          [v24 addObject:v36];

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
      v9 = v44;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = [v24 copy];
    [v23 setEmitterRects:v39];

    *&v40 = ([(CKInvisibleInkEffectView *)self isSuspended]^ 1);
    [v23 setBirthRate:v40];
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    [v23 setValue:v41 forKeyPath:@"emitterCells.dustCell.birthRate"];

    v42 = [(CKInvisibleInkTextEffectView *)self currentDustColor];
    [v23 setValue:objc_msgSend(v42 forKeyPath:{"CGColor"), @"emitterCells.dustCell.color"}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
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

  v3 = [(CKInvisibleInkTextEffectView *)self textView];
  v4 = [v3 textLayoutManager];

  v5 = [v4 documentRange];
  [v4 ensureLayoutForRange:v5];

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v4 documentRange];
  v8 = [v7 location];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit2__block_invoke;
  v70[3] = &unk_1E72EBE08;
  v71 = v4;
  v9 = v6;
  v72 = v9;
  v51 = v71;
  [v71 enumerateSubstringsFromLocation:v8 options:2 usingBlock:v70];

  v10 = [MEMORY[0x1E695DF70] array];
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
        if ([v10 count] <= v14)
        {
          v25 = [MEMORY[0x1E695DF70] array];
          [v10 addObject:v25];
        }

        else
        {
          v25 = [v10 objectAtIndexedSubscript:v14];
        }

        v65[0] = v19;
        *&v65[1] = v15;
        v65[2] = v22;
        v65[3] = v24;
        v26 = [MEMORY[0x1E696B098] valueWithBytes:v65 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v25 addObject:v26];

        ++v16;
        v17 = v15;
      }

      while (v12 != v16);
      v12 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v12);
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = v10;
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

        v49 = [(CKInvisibleInkTextEffectView *)self _newEmitterForCharacterRects:v33 lineBounds:x, y, width, height];
        if (v49)
        {
          [v27 addObject:v49];
          v50 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
          [v50 insertSublayer:v49 atIndex:0];
        }

        ++v31;
      }

      while (v31 != v29);
      v29 = [v28 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v29);
  }

  [(CKInvisibleInkTextEffectView *)self setDustEmitterLayers:v27];
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
  v5 = [(CKInvisibleInkTextEffectView *)self textView];
  v6 = [v5 text];
  v7 = [(CKInvisibleInkTextEffectView *)self textView];
  v8 = [v7 text];
  v45.length = [v8 length];
  v45.location = 0;
  cf = v3;
  v9 = CFStringTokenizerCreate(v4, v6, v45, 4uLL, v3);

  v10 = [MEMORY[0x1E695DF70] array];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__2;
  v43[4] = __Block_byref_object_dispose__2;
  v44 = [MEMORY[0x1E695DF70] array];
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
  v24 = v10;
  v32 = v24;
  v12 = _Block_copy(aBlock);
  while (CFStringTokenizerAdvanceToNextToken(v9))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v9);
    v14 = [(CKInvisibleInkTextEffectView *)self textView];
    v15 = [v14 layoutManager];
    v16 = [v15 glyphRangeForCharacterRange:CurrentTokenRange.location actualCharacterRange:{CurrentTokenRange.length, 0}];
    v18 = v17;

    v19 = [(CKInvisibleInkTextEffectView *)self textView];
    v20 = [v19 layoutManager];
    v21 = [(CKInvisibleInkTextEffectView *)self textView];
    v22 = [v21 textContainer];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__CKInvisibleInkTextEffectView__configureInvisibleInkEmitterUsingTextKit1__block_invoke_2;
    v25[3] = &unk_1E72EBE58;
    v27 = v37;
    v26 = v12;
    v28 = v43;
    v29 = v42;
    v30 = v39;
    [v20 enumerateEnclosingRectsForGlyphRange:v16 withinSelectedGlyphRange:v18 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v22, v25}];
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
  v3 = [(CKInvisibleInkTextEffectView *)self window];

  if (v3)
  {

    [(CKInvisibleInkTextEffectView *)self setNeedsLayout];
  }
}

- (void)setBlendingEnabled:(BOOL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_blendingEnabled != a3)
  {
    v3 = a3;
    self->_blendingEnabled = a3;
    v5 = [(CKInvisibleInkTextEffectView *)self textView];
    v6 = [v5 layer];
    v7 = v6;
    if (v3)
    {
      [v6 setHidden:0];

      v8 = *MEMORY[0x1E6979CA0];
      v9 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [v9 setCompositingFilter:v8];

      v10 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [v10 setShouldRasterize:1];

      v11 = *MEMORY[0x1E69798E8];
      v12 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [v12 setCompositingFilter:v11];

      v13 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [v13 setShouldRasterize:1];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
              objc_enumerationMutation(v14);
            }

            [*(*(&v35 + 1) + 8 * i) setUpdateInterval:0.0];
          }

          v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      v19 = 0.0;
    }

    else
    {
      [v6 setHidden:1];

      v20 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [v20 setCompositingFilter:0];

      v21 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [v21 setShouldRasterize:0];

      v22 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [v22 setCompositingFilter:0];

      v23 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
      [v23 setShouldRasterize:0];

      [objc_opt_class() updateInterval];
      v19 = v24;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v25 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
              objc_enumerationMutation(v14);
            }

            [*(*(&v31 + 1) + 8 * j) setUpdateInterval:v19];
          }

          v26 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v26);
      }
    }

    v29 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
    [v29 setUpdateInterval:v19];

    v30 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [v30 setUpdateInterval:v19];
  }
}

- (void)endDrawEmitterEffects
{
  v3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v3 setLifetime:0.0];

  v4 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [v4 setLifetime:0.0];

  if (![(CKInvisibleInkEffectView *)self isSuspended])
  {
    v6 = [MEMORY[0x1E6979300] animation];
    [v6 setDuration:5.0];
    [v6 setDelegate:self];
    v5 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [v5 addAnimation:v6 forKey:@"disableBlending"];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:0];
  }
}

- (void)endDustEmitterLayerFingerEffects:(id)a3
{
  v3 = a3;
  [v3 setValue:&unk_1F04E75D8 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];
  [v3 setValue:MEMORY[0x1E695E110] forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
}

- (void)endTouches
{
  v15 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkTextEffectView *)self endDrawEmitterEffects];
  v3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v3 removeAnimationForKey:@"scale"];

  v4 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [v4 removeAnimationForKey:@"scale"];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(CKInvisibleInkTextEffectView *)self endDustEmitterLayerFingerEffects:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)moveEmittersWithTouches:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [a3 anyObject];
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v29 = v4;
  [v4 force];
  v10 = fmin(fmax(v9 / 3.8, 0.0), 1.0);
  v11 = [(CKInvisibleInkTextEffectView *)self traitCollection];
  v12 = [v11 forceTouchCapability];

  if (v12 == 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0.5;
  }

  v14 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v14 setEmitterPosition:{v6, v8}];

  v15 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  [v15 setEmitterPosition:{v6, v8}];

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
        v26 = [(CKInvisibleInkTextEffectView *)self layer];
        [v26 convertPoint:v22 toLayer:{v6, v8}];
        v27 = [v25 valueWithCGPoint:?];
        [v22 setValue:v27 forKeyPath:@"emitterBehaviors.fingerAttractor.position"];
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v28 = [(CKInvisibleInkEffectView *)self coverageTracker];
  [v28 recordTouchAtPoint:{v6, v8}];
}

- (void)moveEmittersForTouchesBegan:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  LODWORD(v5) = 1.0;
  [v4 setLifetime:v5];

  v6 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  LODWORD(v7) = 1.0;
  [v6 setLifetime:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        [v14 setValue:&unk_1F04E7620 forKeyPath:@"emitterBehaviors.fingerAttractor.stiffness"];
        [v14 setValue:v12 forKeyPath:@"emitterBehaviors.fingerAttractor.enabled"];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v15 removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:1];
  v16 = [MEMORY[0x1E6979318] animation];
  [v16 setFromValue:&unk_1F04E75F0];
  [v16 setToValue:&unk_1F04E7638];
  [v16 setDuration:4.0];
  [v16 setRemovedOnCompletion:0];
  [v16 setFillMode:*MEMORY[0x1E69797E8]];
  [v16 setKeyPath:@"scale"];
  v17 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  v18 = [v16 keyPath];
  [v17 addAnimation:v16 forKey:v18];

  v19 = [(CKInvisibleInkTextEffectView *)self dustDrawEmitterLayer];
  v20 = [v16 keyPath];
  [v19 addAnimation:v16 forKey:v20];

  [(CKInvisibleInkTextEffectView *)self moveEmittersWithTouches:v21];
  [MEMORY[0x1E6979518] commit];
}

- (void)moveEmittersForTouchesMoved:(id)a3
{
  v4 = MEMORY[0x1E6979518];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CKInvisibleInkTextEffectView *)self moveEmittersWithTouches:v5];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)updateDustCellColor
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [(CKInvisibleInkTextEffectView *)self balloonView];
  v6 = [v4 balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  v7 = [v6 colorWithAlphaComponent:0.0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"emitterCells.dustCell.color"}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)attachToBalloonView:(id)a3
{
  v4 = a3;
  [(CKInvisibleInkTextEffectView *)self setBalloonView:v4];
  v8 = [v4 textView];

  [(CKInvisibleInkTextEffectView *)self setTextView:v8];
  v5 = [v8 layer];
  v6 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v5 addSublayer:v6];

  LOBYTE(v6) = self->_blendingEnabled;
  v7 = [v8 layer];
  [v7 setHidden:(v6 & 1) == 0];

  [(CKInvisibleInkTextEffectView *)self updateDustCellColor];
}

- (void)detachFromBalloonView
{
  v3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v3 removeFromSuperlayer];

  v4 = [(CKInvisibleInkTextEffectView *)self textView];
  v5 = [v4 layer];
  [v5 setHidden:0];

  [(CKInvisibleInkTextEffectView *)self setTextView:0];

  [(CKInvisibleInkTextEffectView *)self setBalloonView:0];
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v5 reset];
  v3 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
  [v3 removeAnimationForKey:@"disableBlending"];

  [(CKInvisibleInkTextEffectView *)self setBlendingEnabled:0];
  v4 = [(CKInvisibleInkTextEffectView *)self balloonView];

  if (v4)
  {
    [(CKInvisibleInkTextEffectView *)self updateDustCellColor];
  }
}

- (void)cullSubviewsWithVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v67 = *MEMORY[0x1E69E9840];
  v8 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v9 = [v8 count];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
  v13 = [v12 countByEnumeratingWithState:&v60 objects:v66 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v60 + 1) + 8 * v16);
        v18 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
        [v17 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [(CKInvisibleInkTextEffectView *)self layer];
        [v18 convertRect:v27 toLayer:{v20, v22, v24, v26}];
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
        LOBYTE(v27) = CGRectIsEmpty(v69);
        v36 = [v17 superlayer];
        v37 = v36;
        if (v27)
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
      v39 = [v12 countByEnumeratingWithState:&v60 objects:v66 count:16];
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
          v51 = [(CKInvisibleInkTextEffectView *)self dustEmitterContainerLayer];
          [v51 insertSublayer:v50 atIndex:0];

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

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInvisibleInkEffectView *)self isPaused];
  v34.receiver = self;
  v34.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v34 setPaused:v3];
  if (v5 != v3)
  {
    [MEMORY[0x1E6979518] begin];
    v6 = [(CKInvisibleInkTextEffectView *)self layer];
    v8 = v6;
    if (v3)
    {
      [v6 setSpeed:0.0];

      v9 = [(CKInvisibleInkTextEffectView *)self layer];
      v10 = [(CKInvisibleInkTextEffectView *)self layer];
      v11 = [v10 superlayer];
      [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
      v13 = v12;
      [v9 timeOffset];
      [v9 setTimeOffset:v13 + v14];

      v15 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      [v15 setSpeed:0.0];

      v16 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      v17 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
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

      v23 = [(CKInvisibleInkTextEffectView *)self layer];
      v24 = [(CKInvisibleInkTextEffectView *)self layer];
      v25 = [v24 superlayer];
      [v25 convertTime:0 fromLayer:CACurrentMediaTime()];
      v27 = v26;
      [v23 timeOffset];
      [v23 setTimeOffset:v28 - v27];

      v29 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      LODWORD(v30) = 1.0;
      [v29 setSpeed:v30];

      v16 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
      v17 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
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
  v38 = *MEMORY[0x1E69E9840];
  v5 = [(CKInvisibleInkEffectView *)self isSuspended];
  v35.receiver = self;
  v35.super_class = CKInvisibleInkTextEffectView;
  [(CKInvisibleInkEffectView *)&v35 setSuspended:v3];
  if (v5 != v3)
  {
    [(CKInvisibleInkTextEffectView *)self setUserInteractionEnabled:v3 ^ 1];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (!v3)
    {
      v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"birthRate"];
      [v6 setFromValue:&unk_1F04E75D8];
      [v6 setToValue:&unk_1F04E75F0];
      [v6 setDuration:1.0];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
              objc_enumerationMutation(v7);
            }

            [*(*(&v31 + 1) + 8 * i) addAnimation:v6 forKey:@"birthRate"];
          }

          v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v9);
      }

      [(CKInvisibleInkTextEffectView *)self endDrawEmitterEffects];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [(CKInvisibleInkTextEffectView *)self dustEmitterLayers];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
            objc_enumerationMutation(v12);
          }

          *&v14 = (v3 ^ 1);
          [*(*(&v27 + 1) + 8 * j) setBirthRate:v14];
        }

        v15 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v15);
    }

    v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    if (v3)
    {
      v19 = [MEMORY[0x1E69DC888] clearColor];
      [v18 setFromValue:{objc_msgSend(v19, "CGColor")}];

      v20 = [MEMORY[0x1E69DC888] whiteColor];
      v21 = 0.5;
    }

    else
    {
      v22 = [MEMORY[0x1E69DC888] whiteColor];
      [v18 setFromValue:{objc_msgSend(v22, "CGColor")}];

      v20 = [MEMORY[0x1E69DC888] clearColor];
      v21 = 3.0;
    }

    [v18 setToValue:{objc_msgSend(v20, "CGColor")}];

    [v18 setDuration:v21];
    v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    [v18 setTimingFunction:v23];

    v24 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [v24 addAnimation:v18 forKey:@"backgroundColor"];

    if (v3)
    {
      v24 = [MEMORY[0x1E69DC888] whiteColor];
      v25 = [v24 CGColor];
    }

    else
    {
      v25 = 0;
    }

    v26 = [(CKInvisibleInkTextEffectView *)self textDrawEmitterLayer];
    [v26 setBackgroundColor:v25];

    if (v3)
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