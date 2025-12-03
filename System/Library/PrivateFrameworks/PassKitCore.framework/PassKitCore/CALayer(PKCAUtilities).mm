@interface CALayer(PKCAUtilities)
- (__CFString)pkui_additiveAnimationKeyPrefixForKeyPath:()PKCAUtilities;
- (double)pkui_animateToOpacity:()PKCAUtilities withCompletion:;
- (double)pkui_elapsedDurationForAnimation:()PKCAUtilities;
- (double)pkui_elapsedDurationForAnimationWithKey:()PKCAUtilities;
- (double)pkui_remainingDurationForAnimation:()PKCAUtilities;
- (double)pkui_remainingDurationForAnimationWithKey:()PKCAUtilities;
- (id)pkui_addAdditiveAnimation:()PKCAUtilities withKeyPath:;
- (uint64_t)_pkui_createNextAdditiveAnimationKeyWithKeyPath:()PKCAUtilities;
- (uint64_t)pkui_hasAdditiveAnimationForKeyPath:()PKCAUtilities;
@end

@implementation CALayer(PKCAUtilities)

- (double)pkui_elapsedDurationForAnimationWithKey:()PKCAUtilities
{
  v2 = [self animationForKey:?];
  [self pkui_elapsedDurationForAnimation:v2];
  v4 = v3;

  return v4;
}

- (double)pkui_elapsedDurationForAnimation:()PKCAUtilities
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = a3;
  [self convertTime:0 fromLayer:CACurrentMediaTime()];
  v6 = v5;
  [v4 beginTime];
  v8 = v7;

  return v6 - v8;
}

- (double)pkui_remainingDurationForAnimationWithKey:()PKCAUtilities
{
  v2 = [self animationForKey:?];
  [self pkui_remainingDurationForAnimation:v2];
  v4 = v3;

  return v4;
}

- (double)pkui_remainingDurationForAnimation:()PKCAUtilities
{
  if (!a3)
  {
    return 0.0;
  }

  v4 = a3;
  [v4 duration];
  v6 = v5;
  [self pkui_elapsedDurationForAnimation:v4];
  v8 = v7;

  return v6 - v8;
}

- (uint64_t)pkui_hasAdditiveAnimationForKeyPath:()PKCAUtilities
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [self pkui_additiveAnimationKeyPrefixForKeyPath:?];
  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    animationKeys = [self animationKeys];
    v4 = [animationKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(animationKeys);
          }

          if ([*(*(&v8 + 1) + 8 * i) hasPrefix:v2])
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [animationKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__CFString)pkui_additiveAnimationKeyPrefixForKeyPath:()PKCAUtilities
{
  v3 = a3;
  v4 = @"com.apple.Passbook.additive";
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.Passbook.additive", v3];
  }

  return v4;
}

- (id)pkui_addAdditiveAnimation:()PKCAUtilities withKeyPath:
{
  if (a3)
  {
    v6 = a3;
    v7 = [self _pkui_createNextAdditiveAnimationKeyWithKeyPath:a4];
    [self addAnimation:v6 forKey:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_pkui_createNextAdditiveAnimationKeyWithKeyPath:()PKCAUtilities
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_getAssociatedObject(self, &AdditiveAnimationKeyPrefix);
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  animationKeys = [self animationKeys];
  v8 = [animationKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(animationKeys);
      }

      if ([*(*(&v17 + 1) + 8 * v11) hasPrefix:@"com.apple.Passbook.additive"])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [animationKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    unsignedIntegerValue = 0;
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [self pkui_additiveAnimationKeyPrefixForKeyPath:v4];
  v14 = [v12 initWithFormat:@"%@.%lu", v13, unsignedIntegerValue];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  objc_setAssociatedObject(self, &AdditiveAnimationKeyPrefix, v15, 0x303);

  return v14;
}

- (double)pkui_animateToOpacity:()PKCAUtilities withCompletion:
{
  v6 = a4;
  v7 = fmax(fmin(a2, 1.0), 0.0);
  [self opacity];
  v9 = *&v8;
  if (v7 == *&v8)
  {
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    *&v8 = v7;
    [self setOpacity:v8];
    v10 = [PKSpringAnimationFactory springAnimationWithKeyPath:@"opacity"];
    [v10 pkui_updateForAdditiveAnimationFromScalar:v9 toScalar:v7];
    if (v6)
    {
      [v10 pkui_setCompletionHandler:v6];
    }

    v11 = [self pkui_addAdditiveAnimation:v10];
  }

  return v9;
}

@end