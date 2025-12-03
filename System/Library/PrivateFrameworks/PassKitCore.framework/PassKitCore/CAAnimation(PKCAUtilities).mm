@interface CAAnimation(PKCAUtilities)
+ (id)pkui_shakeAnimationWithInitalOffest:()PKCAUtilities springStiffness:springDamping:;
- (id)pkui_completionHandler;
- (id)pkui_didStartHandler;
- (void)pkui_setCompletionHandler:()PKCAUtilities;
- (void)pkui_setDidStartHandler:()PKCAUtilities;
@end

@implementation CAAnimation(PKCAUtilities)

+ (id)pkui_shakeAnimationWithInitalOffest:()PKCAUtilities springStiffness:springDamping:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v6 setAdditive:1];
  [v6 setMass:1.20000005];
  [v6 setStiffness:a2];
  [v6 setDamping:a3];
  LODWORD(v7) = 1028389654;
  LODWORD(v8) = 990057071;
  LODWORD(v9) = 1059712716;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :v8 :v9 :v10];
  [v6 setTimingFunction:v11];

  [v6 setInitialVelocity:0.0];
  v12 = *MEMORY[0x1E69797E8];
  [v6 setFillMode:*MEMORY[0x1E69797E8]];
  [v6 durationForEpsilon:0.001];
  [v6 setDuration:?];
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  [v6 pkui_updateForAdditiveAnimationFromPoint:self toPoint:0.0 withLayerPoint:{*MEMORY[0x1E695EFF8], v14, self, 0.0}];
  v15 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  [v15 setAdditive:1];
  LODWORD(v16) = 1054276898;
  LODWORD(v17) = 1058305108;
  LODWORD(v18) = 1.0;
  v19 = [MEMORY[0x1E69793D0] functionWithControlPoints:v16 :0.0 :v17 :v18];
  [v15 setTimingFunction:v19];

  [v15 setDuration:0.100000001];
  [v15 setFillMode:v12];
  [v15 pkui_updateForAdditiveAnimationFromPoint:v13 toPoint:v14 withLayerPoint:{self, 0.0, v13, v14}];
  animation = [MEMORY[0x1E6979308] animation];
  v27[0] = v6;
  v27[1] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  [animation setAnimations:v21];

  [v6 duration];
  v23 = v22;
  [v15 duration];
  if (v23 <= v24)
  {
    v25 = v15;
  }

  else
  {
    v25 = v6;
  }

  [v25 duration];
  [animation setDuration:?];

  return animation;
}

- (id)pkui_didStartHandler
{
  delegate = [self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    didStartHandler = [delegate didStartHandler];
  }

  else
  {
    didStartHandler = 0;
  }

  v3 = _Block_copy(didStartHandler);

  return v3;
}

- (void)pkui_setDidStartHandler:()PKCAUtilities
{
  v5 = a3;
  delegate = [self delegate];
  if (v5 && !delegate)
  {
    delegate = objc_alloc_init(PKUIAnimationDelegate);
    [self setDelegate:delegate];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKUIAnimationDelegate *)delegate setDidStartHandler:v5];
  }
}

- (id)pkui_completionHandler
{
  delegate = [self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    completionHandler = [delegate completionHandler];
  }

  else
  {
    completionHandler = 0;
  }

  v3 = _Block_copy(completionHandler);

  return v3;
}

- (void)pkui_setCompletionHandler:()PKCAUtilities
{
  v6 = a3;
  delegate = [self delegate];
  if (!delegate)
  {
    v5 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    delegate = objc_alloc_init(PKUIAnimationDelegate);
    [self setDelegate:delegate];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __break(1u);
    return;
  }

  [(PKUIAnimationDelegate *)delegate setCompletionHandler:v6];

  v5 = v6;
LABEL_6:
}

@end