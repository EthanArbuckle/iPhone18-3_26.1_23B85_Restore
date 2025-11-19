@interface UIView(ChatKit)
- (double)ck_identityTransformFrame;
- (double)ck_identityTransformFrameInView:()ChatKit;
- (void)ck_performAnimationVisibility:()ChatKit animated:completion:;
- (void)ck_performUnanimatedVisibility:()ChatKit completion:;
@end

@implementation UIView(ChatKit)

- (void)ck_performAnimationVisibility:()ChatKit animated:completion:
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = MEMORY[0x1E6979300];
    v8 = a5;
    v9 = [v7 ck_springAnimationForRevealingSticker:a3];
    v10 = [MEMORY[0x1E6979300] ck_opacityAnimationForRevealingSticker:a3];
    v11 = [MEMORY[0x1E6979308] animation];
    v18[0] = v9;
    v18[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v11 setAnimations:v12];

    [v11 setFillMode:*MEMORY[0x1E69797E0]];
    [v11 setRemovedOnCompletion:0];
    [MEMORY[0x1E6979518] begin];
    v13 = MEMORY[0x1E6979518];
    [v9 settlingDuration];
    v15 = v14;
    [v10 settlingDuration];
    if (v15 >= v16)
    {
      v16 = v15;
    }

    [v13 setAnimationDuration:v16];
    [MEMORY[0x1E6979518] setCompletionBlock:v8];

    v17 = [a1 layer];
    [v17 addAnimation:v11 forKey:0];

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    v9 = a5;
    [a1 ck_performUnanimatedVisibility:a3 completion:v9];
  }
}

- (void)ck_performUnanimatedVisibility:()ChatKit completion:
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = &unk_1F04E7F38;
  }

  else
  {
    v5 = &unk_1F04E7F50;
  }

  if (a3)
  {
    v6 = &unk_1F04E7F50;
  }

  else
  {
    v6 = &unk_1F04E7F38;
  }

  v7 = MEMORY[0x1E6979318];
  v8 = a4;
  v9 = [v7 animationWithKeyPath:@"transform.scale.xy"];
  [v9 setToValue:v5];
  [v9 setFromValue:v6];
  v10 = *MEMORY[0x1E69797E0];
  [v9 setFillMode:*MEMORY[0x1E69797E0]];
  [v9 setRemovedOnCompletion:0];
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v11 setToValue:v5];
  [v11 setFromValue:v6];
  [v11 setFillMode:v10];
  [v11 setRemovedOnCompletion:0];
  v12 = [MEMORY[0x1E6979308] animation];
  v15[0] = v9;
  v15[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v12 setAnimations:v13];

  [v12 setFillMode:v10];
  [v12 setRemovedOnCompletion:0];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.01];
  [MEMORY[0x1E6979518] setCompletionBlock:v8];

  v14 = [a1 layer];
  [v14 addAnimation:v12 forKey:0];

  [MEMORY[0x1E6979518] commit];
}

- (double)ck_identityTransformFrame
{
  memset(&v7[1], 0, sizeof(CGAffineTransform));
  [a1 transform];
  v7[0] = v7[1];
  if (CGAffineTransformIsIdentity(v7))
  {
    [a1 frame];
    return v2;
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7[0].a = *MEMORY[0x1E695EFD0];
    *&v7[0].c = v4;
    *&v7[0].tx = *(MEMORY[0x1E695EFD0] + 32);
    [a1 setTransform:v7];
    [a1 frame];
    v3 = v5;
    v7[0] = v7[1];
    [a1 setTransform:v7];
  }

  return v3;
}

- (double)ck_identityTransformFrameInView:()ChatKit
{
  v4 = a3;
  [a1 ck_identityTransformFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 superview];
  [v4 convertRect:v13 fromView:{v6, v8, v10, v12}];
  v15 = v14;

  return v15;
}

@end