@interface CKTypingIndicatorPunchOutLayer
- (CKTypingIndicatorPunchOutLayer)init;
- (CKTypingIndicatorPunchOutLayer)initWithLayer:(id)a3;
- (CKTypingIndicatorPunchOutLayer)initWithVisualConfiguration:(id)a3;
- (double)convertedCurrentMediaTime;
- (id)_findSublayerWithName:(id)a3;
- (id)_largeBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_largeBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_mediumBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (id)_smallBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_smallBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (void)_setup;
- (void)_updateBubbleColors;
- (void)_updateBubbleOpacity;
- (void)setIsWiderForImageIcon:(BOOL)a3;
- (void)startGrowAnimationWithCompletionBlock:(id)a3;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)a3;
- (void)stopAnimation;
- (void)stopPulseAnimation;
@end

@implementation CKTypingIndicatorPunchOutLayer

- (CKTypingIndicatorPunchOutLayer)initWithVisualConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKTypingIndicatorPunchOutLayer;
  v5 = [(CKTypingIndicatorPunchOutLayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CKTypingIndicatorPunchOutLayer *)v5 setVisualConfiguration:v4];
    [(CKTypingIndicatorPunchOutLayer *)v6 _setup];
  }

  return v6;
}

- (CKTypingIndicatorPunchOutLayer)init
{
  v5.receiver = self;
  v5.super_class = CKTypingIndicatorPunchOutLayer;
  v2 = [(CKTypingIndicatorPunchOutLayer *)&v5 init];
  if (v2)
  {
    v3 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
    [(CKTypingIndicatorPunchOutLayer *)v2 setVisualConfiguration:v3];

    [(CKTypingIndicatorPunchOutLayer *)v2 _setup];
  }

  return v2;
}

- (CKTypingIndicatorPunchOutLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKTypingIndicatorPunchOutLayer;
  v5 = [(CKTypingIndicatorPunchOutLayer *)&v13 initWithLayer:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 visualConfiguration];
      [(CKTypingIndicatorPunchOutLayer *)v5 setVisualConfiguration:v7];

      v8 = [v6 isWiderForImageIcon];
      [(CKTypingIndicatorPunchOutLayer *)v5 setIsWiderForImageIcon:v8];
      v9 = [(CKTypingIndicatorPunchOutLayer *)v5 _findSublayerWithName:@"PunchOut-SmallBubble"];
      [(CKTypingIndicatorPunchOutLayer *)v5 setSmallBubble:v9];

      v10 = [(CKTypingIndicatorPunchOutLayer *)v5 _findSublayerWithName:@"PunchOut-MediumBubble"];
      [(CKTypingIndicatorPunchOutLayer *)v5 setMediumBubble:v10];

      v11 = [(CKTypingIndicatorPunchOutLayer *)v5 _findSublayerWithName:@"PunchOut-LargeBubble"];
      [(CKTypingIndicatorPunchOutLayer *)v5 setLargeBubble:v11];
    }
  }

  return v5;
}

- (id)_findSublayerWithName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CKTypingIndicatorPunchOutLayer *)self sublayers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (double)convertedCurrentMediaTime
{
  v3 = CACurrentMediaTime();

  [(CKTypingIndicatorPunchOutLayer *)self convertTime:0 fromLayer:v3];
  return result;
}

- (void)_setup
{
  [(CKTypingIndicatorPunchOutLayer *)self frame];
  v4 = v3;
  v6 = v5;
  v7 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v7 defaultSize];
  v9 = v8;
  v11 = v10;

  [(CKTypingIndicatorPunchOutLayer *)self setFrame:v4, v6, v9, v11];
  v12 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v12 smallBubbleFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v42 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v42 setName:@"PunchOut-SmallBubble"];
  [v42 setCornerRadius:v18 * 0.5];
  [v42 setAnchorPoint:{0.318, 0.318}];
  [v42 setPosition:{v14, v16}];
  [v42 setBounds:{0.0, 0.0, v18, v20}];
  [(CKTypingIndicatorPunchOutLayer *)self addSublayer:v42];
  [(CKTypingIndicatorPunchOutLayer *)self setSmallBubble:v42];
  v21 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v21 mediumBubbleFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v30 setName:@"PunchOut-MediumBubble"];
  [v30 setCornerRadius:v29 * 0.5];
  [v30 setAnchorPoint:{0.326, 0.37}];
  [v30 setPosition:{v23, v25}];
  [v30 setBounds:{0.0, 0.0, v27, v29}];
  [(CKTypingIndicatorPunchOutLayer *)self addSublayer:v30];
  [(CKTypingIndicatorPunchOutLayer *)self setMediumBubble:v30];
  v31 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v31 largeBubbleFrame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v40 setName:@"PunchOut-LargeBubble"];
  [v40 setCornerRadius:v39 * 0.5];
  v41 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v41 largeBubbleAnchorPoint];
  [v40 setAnchorPoint:?];

  [v40 setPosition:{v33, v35}];
  [v40 setBounds:{0.0, 0.0, v37, v39}];
  [(CKTypingIndicatorPunchOutLayer *)self addSublayer:v40];
  [(CKTypingIndicatorPunchOutLayer *)self setLargeBubble:v40];
  [(CKTypingIndicatorPunchOutLayer *)self _updateBubbleColors];
  [(CKTypingIndicatorPunchOutLayer *)self _updateBubbleOpacity];
}

- (void)setIsWiderForImageIcon:(BOOL)a3
{
  if (self->_isWiderForImageIcon != a3)
  {
    v4 = a3;
    self->_isWiderForImageIcon = a3;
    v6 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
    [v6 largeBubbleFrame];
    v8 = v7;

    v9 = [(CKTypingIndicatorPunchOutLayer *)self largeBubble];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    MaxX = 0.0;
    if (v4)
    {
      v17 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
      [v17 iconImageFrame];
      MaxX = CGRectGetMaxX(v21);
    }

    v18 = v8 + MaxX;
    v19 = [(CKTypingIndicatorPunchOutLayer *)self largeBubble];
    [v19 setFrame:{v11, v13, v18, v15}];

    v20 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
    [v20 setFrame:{v11, v13, v18, v15}];
  }
}

- (void)_updateBubbleColors
{
  v3 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [v3 CGColor];

  v5 = [(CKTypingIndicatorPunchOutLayer *)self largeBubble];
  [v5 setBackgroundColor:v4];

  v6 = [(CKTypingIndicatorPunchOutLayer *)self mediumBubble];
  [v6 setBackgroundColor:v4];

  v7 = [(CKTypingIndicatorPunchOutLayer *)self smallBubble];
  [v7 setBackgroundColor:v4];
}

- (void)_updateBubbleOpacity
{
  v3 = [(CKTypingIndicatorPunchOutLayer *)self largeBubble];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v5 = [(CKTypingIndicatorPunchOutLayer *)self mediumBubble];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];

  v8 = [(CKTypingIndicatorPunchOutLayer *)self smallBubble];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

- (id)_smallBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v62[3] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"hidden"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v8 setFromValue:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v8 setToValue:v10];

  [v8 setDuration:0.0];
  v11 = *MEMORY[0x1E69797E8];
  [v8 setFillMode:*MEMORY[0x1E69797E8]];
  [v8 setRemovedOnCompletion:1];
  v12 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v12 smallBubbleGrowOffset];
  v14 = v13;
  v16 = v15;

  v17 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v18 = x;
  *&v19 = v18;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v62[0] = v20;
  v21 = x + v14;
  *&v21 = x + v14;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v62[1] = v22;
  *&v23 = x;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v62[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  [v17 setValues:v25];

  v26 = *MEMORY[0x1E6979598];
  [v17 setCalculationMode:*MEMORY[0x1E6979598]];
  [v17 setDuration:0.4];
  LODWORD(v27) = 0.25;
  LODWORD(v28) = 0.25;
  LODWORD(v29) = 1.0;
  LODWORD(v30) = 1036831949;
  v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v27 :v30 :v28 :v29];
  [v17 setTimingFunction:v31];

  *&a3 = a3;
  LODWORD(v32) = LODWORD(a3);
  [v17 setSpeed:v32];
  [v17 setFillMode:v11];
  [v17 setRemovedOnCompletion:1];
  v33 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.y"];
  v34 = y;
  *&v35 = v34;
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  v61[0] = v36;
  v37 = y + v16;
  *&v37 = y + v16;
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  v61[1] = v38;
  *&v39 = y;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  v61[2] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  [v33 setValues:v41];

  [v33 setCalculationMode:v26];
  [v33 setDuration:0.4];
  LODWORD(v42) = 1051315048;
  LODWORD(v43) = 1057991709;
  LODWORD(v44) = 1064582806;
  LODWORD(v45) = 1036831949;
  v46 = [MEMORY[0x1E69793D0] functionWithControlPoints:v42 :v45 :v43 :v44];
  [v33 setTimingFunction:v46];

  LODWORD(v47) = LODWORD(a3);
  [v33 setSpeed:v47];
  [v33 setFillMode:v11];
  [v33 setRemovedOnCompletion:1];
  v48 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  v49 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v48 setFromValue:v49];

  LODWORD(v50) = 1.0;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
  [v48 setToValue:v51];

  [v48 setDuration:0.25];
  LODWORD(v52) = LODWORD(a3);
  [v48 setSpeed:v52];
  LODWORD(v53) = 0.25;
  LODWORD(v54) = 0.25;
  LODWORD(v55) = 1.0;
  LODWORD(v56) = 1036831949;
  v57 = [MEMORY[0x1E69793D0] functionWithControlPoints:v53 :v56 :v54 :v55];
  [v48 setTimingFunction:v57];

  [v48 setFillMode:v11];
  [v48 setRemovedOnCompletion:1];
  v60[0] = v8;
  v60[1] = v17;
  v60[2] = v33;
  v60[3] = v48;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];

  return v58;
}

- (id)_smallBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v7 setValues:&unk_1F04E6D50];
  [v7 setCalculationMode:*MEMORY[0x1E6979598]];
  [v7 setTensionValues:&unk_1F04E6D68];
  [v7 setDuration:0.7];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v7 setBeginTime:v8 + a4];
  *&v9 = a3;
  [v7 setSpeed:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v7 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v7 setRepeatCount:v11];
  [v7 setAutoreverses:1];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];
  [v7 setRemovedOnCompletion:0];

  return v7;
}

- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v67[3] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"hidden"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v8 setFromValue:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v8 setToValue:v10];

  [v8 setDuration:0.25];
  v11 = *MEMORY[0x1E69797E8];
  [v8 setFillMode:*MEMORY[0x1E69797E8]];
  [v8 setRemovedOnCompletion:1];
  v64 = self;
  v12 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v12 mediumBubbleGrowOffset];
  v14 = v13;
  v16 = v15;

  v17 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v18 = x;
  *&v19 = v18;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v67[0] = v20;
  v21 = x + v14;
  *&v21 = x + v14;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v67[1] = v22;
  *&v23 = x;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v67[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  [v17 setValues:v25];

  v26 = *MEMORY[0x1E6979598];
  [v17 setCalculationMode:*MEMORY[0x1E6979598]];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v17 setBeginTime:v27 + 0.065];
  [v17 setDuration:0.4];
  LODWORD(v28) = 0.25;
  LODWORD(v29) = 0.25;
  LODWORD(v30) = 1.0;
  LODWORD(v31) = 1036831949;
  v32 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :v31 :v29 :v30];
  [v17 setTimingFunction:v32];

  *&a3 = a3;
  LODWORD(v33) = LODWORD(a3);
  [v17 setSpeed:v33];
  v34 = v11;
  [v17 setFillMode:v11];
  [v17 setRemovedOnCompletion:1];
  v35 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.y"];
  v36 = y;
  *&v37 = v36;
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  v66[0] = v38;
  v39 = y + v16;
  *&v39 = y + v16;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  v66[1] = v40;
  *&v41 = y;
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  v66[2] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
  [v35 setValues:v43];

  [v35 setCalculationMode:v26];
  [(CKTypingIndicatorPunchOutLayer *)v64 convertedCurrentMediaTime];
  [v35 setBeginTime:v44 + 0.065];
  [v35 setDuration:0.4];
  LODWORD(v45) = 1051315048;
  LODWORD(v46) = 1057991709;
  LODWORD(v47) = 1064582806;
  LODWORD(v48) = 1036831949;
  v49 = [MEMORY[0x1E69793D0] functionWithControlPoints:v45 :v48 :v46 :v47];
  [v35 setTimingFunction:v49];

  LODWORD(v50) = LODWORD(a3);
  [v35 setSpeed:v50];
  [v35 setFillMode:v34];
  [v35 setRemovedOnCompletion:1];
  v51 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  v52 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v51 setFromValue:v52];

  LODWORD(v53) = 1.0;
  v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
  [v51 setToValue:v54];

  [(CKTypingIndicatorPunchOutLayer *)v64 convertedCurrentMediaTime];
  [v51 setBeginTime:v55 + 0.065];
  [v51 setDuration:0.25];
  LODWORD(v56) = LODWORD(a3);
  [v51 setSpeed:v56];
  LODWORD(v57) = 0.25;
  LODWORD(v58) = 0.25;
  LODWORD(v59) = 1.0;
  LODWORD(v60) = 1036831949;
  v61 = [MEMORY[0x1E69793D0] functionWithControlPoints:v57 :v60 :v58 :v59];
  [v51 setTimingFunction:v61];

  [v51 setFillMode:v34];
  [v51 setRemovedOnCompletion:1];
  v65[0] = v8;
  v65[1] = v17;
  v65[2] = v35;
  v65[3] = v51;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];

  return v62;
}

- (id)_mediumBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v7 setValues:&unk_1F04E6D80];
  [v7 setCalculationMode:*MEMORY[0x1E6979598]];
  [v7 setTensionValues:&unk_1F04E6D98];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v7 setBeginTime:v8 + a4];
  [v7 setDuration:0.9];
  *&v9 = a3;
  [v7 setSpeed:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v7 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v7 setRepeatCount:v11];
  [v7 setAutoreverses:1];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];
  [v7 setRemovedOnCompletion:0];

  return v7;
}

- (id)_largeBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v69[3] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"hidden"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v8 setFromValue:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v8 setToValue:v10];

  [v8 setDuration:0.25];
  v11 = *MEMORY[0x1E69797E8];
  [v8 setFillMode:*MEMORY[0x1E69797E8]];
  [v8 setRemovedOnCompletion:1];
  v66 = self;
  v12 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v12 largeBubbleGrowOffset];
  v14 = v13;
  v16 = v15;

  v17 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v18 = x;
  *&v19 = v18;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v69[0] = v20;
  v21 = x + v14;
  *&v21 = x + v14;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v69[1] = v22;
  *&v23 = x;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v69[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
  [v17 setValues:v25];

  v26 = *MEMORY[0x1E6979598];
  [v17 setCalculationMode:*MEMORY[0x1E6979598]];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  v28 = v27;
  v29 = +[CKUIBehavior sharedBehaviors];
  [v29 transcriptTypingIndicatorLargeBubbleGrowBeginTime];
  [v17 setBeginTime:v28 + v30];

  [v17 setDuration:0.4];
  LODWORD(v31) = 0.25;
  LODWORD(v32) = 0.25;
  LODWORD(v33) = 1.0;
  LODWORD(v34) = 1036831949;
  v35 = [MEMORY[0x1E69793D0] functionWithControlPoints:v31 :v34 :v32 :v33];
  [v17 setTimingFunction:v35];

  *&a3 = a3;
  LODWORD(v36) = LODWORD(a3);
  [v17 setSpeed:v36];
  [v17 setFillMode:v11];
  [v17 setRemovedOnCompletion:1];
  v37 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.y"];
  v38 = y;
  *&v39 = v38;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  v68[0] = v40;
  v41 = y + v16;
  *&v41 = y + v16;
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  v68[1] = v42;
  *&v43 = y;
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
  v68[2] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
  [v37 setValues:v45];

  [v37 setCalculationMode:v26];
  [(CKTypingIndicatorPunchOutLayer *)v66 convertedCurrentMediaTime];
  [v37 setBeginTime:v46 + 0.12];
  [v37 setDuration:0.4];
  LODWORD(v47) = 1045836616;
  LODWORD(v48) = 1048849804;
  LODWORD(v49) = 1057991709;
  LODWORD(v50) = 1064582806;
  v51 = [MEMORY[0x1E69793D0] functionWithControlPoints:v47 :v48 :v49 :v50];
  [v37 setTimingFunction:v51];

  LODWORD(v52) = LODWORD(a3);
  [v37 setSpeed:v52];
  [v37 setFillMode:v11];
  [v37 setRemovedOnCompletion:1];
  v53 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  v54 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v53 setFromValue:v54];

  LODWORD(v55) = 1.0;
  v56 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
  [v53 setToValue:v56];

  [(CKTypingIndicatorPunchOutLayer *)v66 convertedCurrentMediaTime];
  [v53 setBeginTime:v57 + 0.12];
  [v53 setDuration:0.25];
  LODWORD(v58) = LODWORD(a3);
  [v53 setSpeed:v58];
  LODWORD(v59) = 0.25;
  LODWORD(v60) = 0.25;
  LODWORD(v61) = 1.0;
  LODWORD(v62) = 1036831949;
  v63 = [MEMORY[0x1E69793D0] functionWithControlPoints:v59 :v62 :v60 :v61];
  [v53 setTimingFunction:v63];

  [v53 setFillMode:v11];
  [v53 setRemovedOnCompletion:1];
  v67[0] = v8;
  v67[1] = v17;
  v67[2] = v37;
  v67[3] = v53;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];

  return v64;
}

- (id)_largeBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v7 setValues:&unk_1F04E6DB0];
  [v7 setCalculationMode:*MEMORY[0x1E6979598]];
  [v7 setTensionValues:&unk_1F04E6DC8];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v7 setBeginTime:v8 + a4];
  [v7 setDuration:1.9];
  *&v9 = a3;
  [v7 setSpeed:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v7 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v7 setRepeatCount:v11];
  [v7 setAutoreverses:1];
  [v7 setFillMode:*MEMORY[0x1E69797E8]];
  [v7 setRemovedOnCompletion:0];

  return v7;
}

- (void)startGrowAnimationWithCompletionBlock:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E6979518] begin];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v5 smallBubbleFrame];
  v8 = [(CKTypingIndicatorPunchOutLayer *)self _smallBubbleGrowAnimationsWithSpeed:1.0 offset:v6, v7];

  v9 = [v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      v12 = 0;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CALayer *)self->_smallBubble addAnimation:*(*(&v58 + 1) + 8 * v12++) forKey:0];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v10);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v13 mediumBubbleFrame];
  v16 = [(CKTypingIndicatorPunchOutLayer *)self _mediumBubbleGrowAnimationsWithSpeed:1.0 offset:v14, v15];

  v17 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v55;
    do
    {
      v20 = 0;
      do
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CALayer *)self->_mediumBubble addAnimation:*(*(&v54 + 1) + 8 * v20++) forKey:0];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  [(CALayer *)self->_largeBubble position];
  v23 = [(CKTypingIndicatorPunchOutLayer *)self _largeBubbleGrowAnimationsWithSpeed:1.0 offset:v21, v22];
  v24 = [v23 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v51;
    do
    {
      v27 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(CALayer *)self->_largeBubble addAnimation:*(*(&v50 + 1) + 8 * v27++) forKey:0];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v25);
  }

  v28 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];

  if (v28)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    [(CALayer *)self->_largeBubble position];
    v31 = [(CKTypingIndicatorPunchOutLayer *)self _largeBubbleGrowAnimationsWithSpeed:1.0 offset:v29, v30];
    v32 = [v31 countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      do
      {
        v35 = 0;
        do
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v46 + 1) + 8 * v35);
          v37 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
          [v37 addAnimation:v36 forKey:0];

          ++v35;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v46 objects:v62 count:16];
      }

      while (v33);
    }
  }

  v38 = MEMORY[0x1E6979518];
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __72__CKTypingIndicatorPunchOutLayer_startGrowAnimationWithCompletionBlock___block_invoke;
  v43 = &unk_1E72ED1C8;
  v44 = self;
  v45 = v4;
  v39 = v4;
  [v38 setCompletionBlock:&v40];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __72__CKTypingIndicatorPunchOutLayer_startGrowAnimationWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBubbleOpacity];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startPulseAnimation
{
  [(CKTypingIndicatorPunchOutLayer *)self stopPulseAnimation];
  [MEMORY[0x1E6979518] begin];
  smallBubble = self->_smallBubble;
  v4 = [(CKTypingIndicatorPunchOutLayer *)self _smallBubblePulseAnimationWithSpeed:1.0 delay:0.25];
  [(CALayer *)smallBubble addAnimation:v4 forKey:@"kCKAnimationKeyPulse"];

  mediumBubble = self->_mediumBubble;
  v6 = [(CKTypingIndicatorPunchOutLayer *)self _mediumBubblePulseAnimationWithSpeed:1.0 delay:0.314999998];
  [(CALayer *)mediumBubble addAnimation:v6 forKey:@"kCKAnimationKeyPulse"];

  largeBubble = self->_largeBubble;
  v8 = [(CKTypingIndicatorPunchOutLayer *)self _largeBubblePulseAnimationWithSpeed:1.0 delay:0.370000005];
  [(CALayer *)largeBubble addAnimation:v8 forKey:@"kCKAnimationKeyPulse"];

  v9 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  v10 = [(CKTypingIndicatorPunchOutLayer *)self _largeBubblePulseAnimationWithSpeed:1.0 delay:0.370000005];
  [v9 addAnimation:v10 forKey:@"kCKAnimationKeyPulse"];

  v11 = MEMORY[0x1E6979518];

  [v11 commit];
}

- (void)stopPulseAnimation
{
  [(CALayer *)self->_smallBubble removeAnimationForKey:@"kCKAnimationKeyPulse"];
  [(CALayer *)self->_mediumBubble removeAnimationForKey:@"kCKAnimationKeyPulse"];
  [(CALayer *)self->_largeBubble removeAnimationForKey:@"kCKAnimationKeyPulse"];
  v3 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  [v3 removeAnimationForKey:@"kCKAnimationKeyPulse"];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)a3
{
  v60[3] = *MEMORY[0x1E69E9840];
  v56 = a3;
  [(CKTypingIndicatorPunchOutLayer *)self stopPulseAnimation];
  [MEMORY[0x1E6979518] begin];
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v4 setFromValue:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v4 setToValue:v7];

  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v4 setBeginTime:?];
  [v4 setDuration:0.25];
  LODWORD(v8) = 1.0;
  [v4 setSpeed:v8];
  LODWORD(v9) = 0.25;
  LODWORD(v10) = 0.25;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1036831949;
  v13 = [MEMORY[0x1E69793D0] functionWithControlPoints:v9 :v12 :v10 :v11];
  [v4 setTimingFunction:v13];

  v14 = *MEMORY[0x1E69797E8];
  v55 = *MEMORY[0x1E69797E8];
  [v4 setFillMode:*MEMORY[0x1E69797E8]];
  [v4 setRemovedOnCompletion:1];
  [(CALayer *)self->_smallBubble addAnimation:v4 forKey:0];
  [(CALayer *)self->_mediumBubble addAnimation:v4 forKey:0];
  [(CALayer *)self->_largeBubble addAnimation:v4 forKey:0];
  v15 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  [v15 addAnimation:v4 forKey:0];

  v16 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  v17 = [(CKTypingIndicatorPunchOutLayer *)self visualConfiguration];
  [v17 largeBubbleFrame];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  *&v23 = v22;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v60[0] = v24;
  v25 = v19 + 5.0;
  *&v25 = v19 + 5.0;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v60[1] = v26;
  *&v27 = v19;
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v60[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
  [v16 setValues:v29];

  v30 = *MEMORY[0x1E6979598];
  [v16 setCalculationMode:*MEMORY[0x1E6979598]];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v16 setBeginTime:?];
  [v16 setDuration:0.25];
  LODWORD(v31) = 0.25;
  LODWORD(v32) = 0.25;
  LODWORD(v33) = 1.0;
  LODWORD(v34) = 1036831949;
  v35 = [MEMORY[0x1E69793D0] functionWithControlPoints:v31 :v34 :v32 :v33];
  [v16 setTimingFunction:v35];

  LODWORD(v36) = 1.0;
  [v16 setSpeed:v36];
  [v16 setFillMode:v14];
  [v16 setRemovedOnCompletion:1];
  [(CALayer *)self->_smallBubble addAnimation:v16 forKey:0];
  [(CALayer *)self->_mediumBubble addAnimation:v16 forKey:0];
  [(CALayer *)self->_largeBubble addAnimation:v16 forKey:0];
  v37 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  [v37 addAnimation:v16 forKey:0];

  v38 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.y"];
  v39 = v21;
  *&v40 = v39;
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  v59[0] = v41;
  v42 = v21 + -6.0;
  *&v42 = v21 + -6.0;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  v59[1] = v43;
  *&v44 = v21;
  v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
  v59[2] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
  [v38 setValues:v46];

  [v38 setCalculationMode:v30];
  [(CKTypingIndicatorPunchOutLayer *)self convertedCurrentMediaTime];
  [v38 setBeginTime:?];
  [v38 setDuration:0.25];
  LODWORD(v47) = 1045836616;
  LODWORD(v48) = 1048849804;
  LODWORD(v49) = 1057991709;
  LODWORD(v50) = 1064582806;
  v51 = [MEMORY[0x1E69793D0] functionWithControlPoints:v47 :v48 :v49 :v50];
  [v38 setTimingFunction:v51];

  LODWORD(v52) = 1.0;
  [v38 setSpeed:v52];
  [v38 setFillMode:v55];
  [v38 setRemovedOnCompletion:1];
  [(CALayer *)self->_smallBubble addAnimation:v38 forKey:0];
  [(CALayer *)self->_mediumBubble addAnimation:v38 forKey:0];
  [(CALayer *)self->_largeBubble addAnimation:v38 forKey:0];
  v53 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  [v53 addAnimation:v38 forKey:0];

  if (v56)
  {
    v54 = MEMORY[0x1E6979518];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __74__CKTypingIndicatorPunchOutLayer_startShrinkAnimationWithCompletionBlock___block_invoke;
    v57[3] = &unk_1E72EBDB8;
    v58 = v56;
    [v54 setCompletionBlock:v57];
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)stopAnimation
{
  [(CKTypingIndicatorPunchOutLayer *)self stopPulseAnimation];
  [(CALayer *)self->_smallBubble removeAllAnimations];
  [(CALayer *)self->_mediumBubble removeAllAnimations];
  [(CALayer *)self->_largeBubble removeAllAnimations];
  v3 = [(CKTypingIndicatorPunchOutLayer *)self alignedContentLayer];
  [v3 removeAllAnimations];
}

@end