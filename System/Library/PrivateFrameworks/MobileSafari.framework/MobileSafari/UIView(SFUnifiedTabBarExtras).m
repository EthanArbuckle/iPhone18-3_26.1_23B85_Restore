@interface UIView(SFUnifiedTabBarExtras)
- (id)safari_makeBounceAnimationWithDelay:()SFUnifiedTabBarExtras initialScale:finalScale:;
- (void)safari_tabBarBounceAfterDelay:()SFUnifiedTabBarExtras;
@end

@implementation UIView(SFUnifiedTabBarExtras)

- (id)safari_makeBounceAnimationWithDelay:()SFUnifiedTabBarExtras initialScale:finalScale:
{
  v6 = [MEMORY[0x1E69794A8] animation];
  [v6 setKeyPath:@"transform.scale.xy"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2 + -1.0];
  [v6 setFromValue:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3 + -1.0];
  [v6 setToValue:v8];

  [v6 setAdditive:1];
  [v6 setStiffness:306.0];
  [v6 setDamping:21.0];
  [v6 settlingDuration];
  [v6 setDuration:?];
  [v6 setBeginTime:CACurrentMediaTime() + a1];
  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  [v6 setRemovedOnCompletion:0];

  return v6;
}

- (void)safari_tabBarBounceAfterDelay:()SFUnifiedTabBarExtras
{
  v4 = [a1 layer];
  [a1 bounds];
  Width = CGRectGetWidth(v21);
  v6 = (Width + 4.0) / Width;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bounce-scale-up-%@", v8];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bounce-scale-down-%@", v8];
  [MEMORY[0x1E6979518] begin];
  v11 = MEMORY[0x1E6979518];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__UIView_SFUnifiedTabBarExtras__safari_tabBarBounceAfterDelay___block_invoke;
  v17[3] = &unk_1E721B650;
  v18 = v4;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v4;
  [v11 setCompletionBlock:v17];
  v15 = [a1 safari_makeBounceAnimationWithDelay:a2 initialScale:0.8 finalScale:v6];
  v16 = [a1 safari_makeBounceAnimationWithDelay:a2 + 0.25 initialScale:1.0 finalScale:1.0 / v6];
  [v14 addAnimation:v15 forKey:v13];
  [v14 addAnimation:v16 forKey:v12];
  [MEMORY[0x1E6979518] commit];
}

@end