@interface FadeLayerThruBlack
@end

@implementation FadeLayerThruBlack

void ___FadeLayerThruBlack_block_invoke(uint64_t a1)
{
  [getCATransactionClass[0]() begin];
  [getCATransactionClass[0]() setDisableActions:1];
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  if (CGColorGetBlack_sOnce != -1)
  {
    dispatch_once_f(&CGColorGetBlack_sOnce, &CGColorGetBlack_sContext, _CGColorCreateWithRGB);
  }

  [*(a1 + 32) setBackgroundColor:CGColorGetBlack_sColor];
  [*(a1 + 32) setOpacity:0.0];
  v2 = *(a1 + 56);
  [*(a1 + 40) zPosition];
  v4 = -1.0;
  if (!v2)
  {
    v4 = 1.0;
  }

  [*(a1 + 32) setZPosition:v3 + v4];
  v5 = [*(a1 + 40) superlayer];
  [v5 addSublayer:*(a1 + 32)];

  [getCATransactionClass[0]() commit];
  LODWORD(v6) = 1.0;
  [*(a1 + 32) setOpacity:v6];
  v13 = [getCABasicAnimationClass[0]() animationWithKeyPath:@"opacity"];
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v13 setFromValue:v7];

  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v13 setToValue:v9];

  v10 = getCAMediaTimingFunctionClass[0]();
  v11 = getkCAMediaTimingFunctionEaseOut[0]();
  v12 = [(objc_class *)v10 functionWithName:v11];
  [v13 setTimingFunction:v12];

  [v13 setDuration:*(a1 + 48)];
  [*(a1 + 32) addAnimation:v13 forKey:@"fadeToBlack"];
}

void ___FadeLayerThruBlack_block_invoke_2(uint64_t a1, double a2)
{
  if (*(a1 + 72))
  {
    v3 = 32;
    v4 = 1.0;
  }

  else
  {
    [getCATransactionClass[0]() begin];
    [getCATransactionClass[0]() setDisableActions:1];
    v4 = 0.0;
    [*(a1 + 32) setOpacity:0.0];
    [getCATransactionClass[0]() commit];
    v3 = 40;
  }

  *&a2 = v4;
  [*(a1 + v3) setOpacity:a2];
  v5 = [getCABasicAnimationClass[0]() animationWithKeyPath:@"opacity"];
  if (*(a1 + 72))
  {
    *&v6 = 0.0;
  }

  else
  {
    *&v6 = 1.0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setFromValue:v7];

  if (*(a1 + 72))
  {
    *&v8 = 1.0;
  }

  else
  {
    *&v8 = 0.0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v5 setToValue:v9];

  v10 = getCAMediaTimingFunctionClass[0]();
  v11 = getkCAMediaTimingFunctionEaseIn[0]();
  v12 = [(objc_class *)v10 functionWithName:v11];
  [v5 setTimingFunction:v12];

  [v5 setDuration:*(a1 + 64)];
  v13 = objc_alloc_init(CAAnimationDelegateBlockHelper);
  [v5 setDelegate:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___FadeLayerThruBlack_block_invoke_3;
  v16[3] = &unk_1E73A28E8;
  v17 = *(a1 + 40);
  v19 = *(a1 + 56);
  v18 = *(a1 + 48);
  [(CAAnimationDelegateBlockHelper *)v13 setAnimationDidStopBlock:v16];
  v14 = 32;
  if (*(a1 + 72))
  {
    v15 = @"fadeInTarget";
  }

  else
  {
    v14 = 40;
    v15 = @"fadeOutBlack";
  }

  [*(a1 + v14) addAnimation:v5 forKey:v15];
}

void ___FadeLayerThruBlack_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___FadeLayerThruBlack_block_invoke_4;
    block[3] = &unk_1E73A4FD0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

@end